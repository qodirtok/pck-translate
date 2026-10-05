"""Deterministic repair of two mechanical worker defects found in the tr2 corpus.

1. Skill-suffix separator
   Source header lines use the middle dot as a name/suffix separator:
       ^c3dbff力战·怒
   Some workers emitted a colon instead:
       ^c3dbffBattle Might: Wrath
   The colon is wrong (it collides with the `label: value` stat syntax and is not
   the game's separator), so we restore ` · `. The count of `·` in the source
   line drives how many colons are replaced.

2. `Req.:` double punctuation
       Learning Req.: Ranged
   is a typo left by abbreviating `Requirement` and then still using its colon.
   We drop the stray period so the label becomes a normal `label: value` pair and
   the consistency pass can align it.

Both repairs touch ONLY the first physical line / the label text. Sentinel
counts, colour codes, placeholders, padding runs and numeric values are
verified unchanged before anything is written.
"""

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
PH = re.compile(r"%(?:\.\d+)?[sdfx%]|\*level|%\d+%")


def fingerprints(t):
    """Structural invariants that must survive a repair.

    Only runs of 2+ spaces are tracked. Single spaces are ordinary word
    separators and legitimately change when the `·` separator is restored
    (`Might: Wrath` -> `Might · Wrath` adds one), whereas multi-space and
    U+3000 runs are column padding and must survive byte-for-byte.
    """
    return [COLOR.findall(t), sorted(PH.findall(t)), t.count("\u3000"),
            [len(m) for m in re.findall(r"[ ]{2,}", t)],
            sum(t.count(k) for k in TOKENS),
            re.findall(r"\d+(?:\.\d+)?", t)]


def first_line(t):
    for tok in TOKENS:
        i = t.find(tok)
        if i != -1:
            return t[:i], t[i:]
    return t, ""


def repair(src, eng):
    """Return (new_eng, n_dot_fixes, n_reqdot_fixes)."""
    dot_fix = 0
    req_fix = 0
    if not src:
        return eng, 0, 0

    head, tail = first_line(eng)
    shead, _ = first_line(src)
    n_dots = shead.count("\u00b7") + shead.count("\u30fb")
    if n_dots:
        out = []
        i = 0
        remaining = n_dots
        # NB: walk the whole line. Stopping the loop once `remaining` hits zero
        # would silently discard the rest of the header (name suffix, trailing
        # colour code), which is exactly the kind of corruption we must avoid.
        while i < len(head):
            if remaining and head[i] == ":" and (i == 0 or head[i - 1] != ":"):
                out.append(" \u00b7 ")
                remaining -= 1
                dot_fix += 1
                i += 1
                if i < len(head) and head[i] == " ":
                    i += 1
                continue
            out.append(head[i])
            i += 1
        head = "".join(out)
    new = head + tail

    # Learning Req.: -> Learning Req:   (label colon only, never mid-prose)
    def _req(m):
        return m.group(1) + ":"

    new2, k = re.subn(r"\b([A-Za-z][A-Za-z ]{1,24}?)\.(?=:\s)", _req, new)
    req_fix = k
    return new2, dot_fix, req_fix


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
        new, nd, nr = repair(src, eng)
        if new == eng:
            continue
        before, after = fingerprints(eng), fingerprints(new)
        for i, nm in enumerate(["color codes", "placeholders", "U+3000 count",
                                "padding runs (2+ sp)", "sentinel count", "numeric values"]):
            if before[i] != after[i]:
                viol.append((b, r["id"], nm, before[i], after[i]))
        stats["dot"] += nd
        stats["reqdot"] += nr
        updates[(b, r["id"])] = new

    print("mode: %s" % ("APPLY" if apply_changes else "DRY-RUN"))
    print("files=%d  middle-dot fixes=%d  Req.: fixes=%d"
          % (len({b for b, _ in updates}), stats["dot"], stats["reqdot"]))
    print("structural violations: %d" % len(viol))
    for v in viol[:20]:
        print("  ", v)

    if apply_changes and not viol and updates:
        files, written = rp_io.write_updates(wd, updates)
        print("written: %d files, %d records" % (files, written))
    elif apply_changes:
        print("ABORTED: structural violations detected, nothing written")


if __name__ == "__main__":
    main()