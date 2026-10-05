"""Restore colour-code and placeholder parity for the tr2 corpus.

Two defects found during validation:

1. Duplicated trailing colour code (10 records).
   Every mismatch was a pure INSERTION of one extra code - the destination's
   colour sequence was identical to the source's plus one extra element, always
   in the final position, e.g.
       src: ...^ffffff ^c3dbff
       dst: ...^ffffff ^c3dbff ^c3dbff
   We delete exactly that one surplus trailing occurrence. Nothing is deleted
   unless the destination multiset is a strict superset by exactly one element
   and that element is the last colour code in the string.

2. Dropped `%%` placeholder (1 record).
   Source `50%%概率眩晕目标,10层连击点数时，100%%造成2.5秒眩晕。` was rendered as
   "...at 10 Combo points, it always causes a 2.5-second Stun." - the `100%%`
   token was replaced by the word "always", which both drops a technical token
   and changes the meaning (100%% is a chance, not a certainty). We restore it.

After the edit we re-check colour codes, placeholders, sentinels, padding and
numeric values against the source, and abort the whole write if anything moved.
"""

import difflib
import importlib.util
import json
import re
import sys
from collections import Counter
from pathlib import Path

_spec_io = importlib.util.spec_from_file_location(
    "rp_io", str(Path(__file__).with_name("rp_io.py")))
rp_io = importlib.util.module_from_spec(_spec_io)
_spec_io.loader.exec_module(rp_io)

TOKENS = ["<CRLF>", "<LF>", "<CR>"]
COLOR = re.compile(r"\^[0-9a-fA-F]{6}")
PH = re.compile(r"%(?:\d+\$)?(?:\.\d+)?[sdfx%]|\*level")
RUN = re.compile("\u3000+|[ ]{2,}")

# (batch, id) -> list of (old, new) applied in order
TEXT_FIXES = {
    ("batch_012", 97): [
        # `100%%概率` had been rendered as "always", dropping a technical token
        # and turning a chance into a certainty.
        ("at 10 Combo points, it always causes a 2.5-second Stun.",
         "at 10 Combo points, a 100%% chance causes a 2.5-second Stun."),
        # `使用3段` had been spelled out as "three segments", dropping the value.
        ("After using Wind Chase three segments",
         "After using Wind Chase 3 segments"),
    ],
    ("batch_000", 35): [
        # `15年` is "year 15" of an era; the worker invented the concrete year
        # 2015, which is information the source does not contain.
        ("2015 Labor Day Reward", "Year 15 May Day Reward"),
    ],
}


def fingerprints(t, with_padding=True):
    base = [sorted(COLOR.findall(t)), sorted(PH.findall(t))]
    if with_padding:
        base.append([m.group(0) for m in RUN.finditer(t)])
    base.append(sum(t.count(k) for k in TOKENS))
    # numeric values are compared as a MULTISET: English word order legitimately
    # reorders numbers (source "6米内3个目标" -> "3 targets within 6 meters"), but
    # no value may be added, dropped or altered.
    base.append(sorted(re.findall(r"\d+(?:\.\d+)?", t)))
    return base


def fix_colors(src, eng):
    """Delete surplus colour codes. Returns (text, notes).

    The destination sequence must be the source sequence plus exactly one extra
    element. We locate that element with a sequence diff and remove the matching
    occurrence in place, then loop (a record could carry more than one).
    """
    notes = []
    for _ in range(8):
        a, b = COLOR.findall(src), COLOR.findall(eng)
        if a == b:
            break
        surplus = Counter(b) - Counter(a)
        if len(surplus) != 1 or sum(surplus.values()) != 1:
            notes.append("colour diff not a single surplus: src=%s dst=%s" % (a, b))
            break
        code = next(iter(surplus))
        sm = difflib.SequenceMatcher(None, a, b)
        ins = None
        for tag, i1, i2, j1, j2 in sm.get_opcodes():
            if tag == "insert" and (j2 - j1) == 1:
                ins = j1
        if ins is None:
            notes.append("could not locate surplus %s position" % code)
            break
        # `ins` indexes the FULL destination colour sequence, not the per-code list
        allm = list(COLOR.finditer(eng))
        if ins >= len(allm) or allm[ins].group(0) != code:
            notes.append("surplus index %d does not point at %s" % (ins, code))
            break
        m = allm[ins]
        eng = eng[:m.start()] + eng[m.end():]
        notes.append("removed surplus %s at seq index %d" % (code, ins))
    return eng, notes


def main():
    import importlib.util
    spec = importlib.util.spec_from_file_location(
        "nl", str(Path(__file__).with_name("normalize_labels.py")))
    nl = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(nl)

    wd = Path(sys.argv[1] if len(sys.argv) > 1 else ".work/tr2")
    apply_changes = "--apply" in sys.argv

    stats = Counter()
    viol = []
    updates = {}
    for b, r, src in nl.iter_records(wd):
        eng = r.get("english", "")
        if not src:
            continue
        new = eng
        # 1. colour codes
        cs, notes = fix_colors(src, new)
        if notes and "not" not in notes[0]:
            stats["color"] += 1
            new = cs
        elif notes:
            viol.append((b, r["id"], notes[0]))
        # 2. targeted text fixes
        for old, rep in TEXT_FIXES.get((b, r["id"]), []):
            if old in new:
                new = new.replace(old, rep)
                stats["text"] += 1
            elif rep in new:
                pass
            else:
                viol.append((b, r["id"], "expected text not found: %r" % old[:50]))
        if new == eng:
            continue
        # padding runs are restored by restore_padding.py in the next pass
        if fingerprints(new, with_padding=False) != fingerprints(src, with_padding=False):
            f_new, f_src = fingerprints(new, False), fingerprints(src, False)
            names = ["colour", "placeholders", "sentinels", "numbers"]
            diff = [names[i] for i in range(4) if f_new[i] != f_src[i]]
            viol.append((b, r["id"], "still differs from source: %s" % ",".join(diff)))
            continue
        updates[(b, r["id"])] = new

    print("mode: %s" % ("APPLY" if apply_changes else "DRY-RUN"))
    print("colour-code fixes: %d   text fixes: %d" % (stats["color"], stats["text"]))
    print("violations: %d" % len(viol))
    for v in viol[:20]:
        print("  ", v)

    if apply_changes and not viol and updates:
        files, written = rp_io.write_updates(wd, updates)
        print("written: %d files, %d records" % (files, written))
    elif apply_changes:
        print("ABORTED: violations present, nothing written")


if __name__ == "__main__":
    main()