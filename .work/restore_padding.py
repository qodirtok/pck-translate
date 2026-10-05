"""Restore per-line padding structure (U+3000 runs and multi-space runs) exactly.

Several workers re-typed the column padding: some rendered the source's U+3000
ideographic spaces as ASCII spaces, some did the reverse, and some dropped a run
entirely. AGENTS.md requires the technical structure to survive, and it is the
source line that defines the column layout, so we put the source's padding back.

Method (deterministic, never guesses)
-------------------------------------
Split each physical line into alternating [text, pad, text, pad, ...] where a
"pad" is either a U+3000 run or a run of 2+ ASCII spaces. A single ASCII space is
a word separator, not padding, so it stays inside the text token.

If both lines yield the SAME number of text tokens and the SAME number of pads,
the pads correspond one-to-one and we copy the source pads across verbatim.

If the token or pad counts differ we cannot know which column a missing pad
belonged to, so the line is left untouched and the record is reported for manual
review instead of being guessed at.
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
PH = re.compile(r"%(?:\d+\$)?(?:\.\d+)?[sdfx%]|\*level")
PAD = re.compile("\u3000+|[ ]{2,}")


def tokenize(line):
    """-> (texts, pads); pads[i] sits between texts[i] and texts[i+1]."""
    texts, pads = [], []
    pos = 0
    for m in PAD.finditer(line):
        texts.append(line[pos:m.start()])
        pads.append(m.group(0))
        pos = m.end()
    texts.append(line[pos:])
    return texts, pads


def restore_line(sline, eline):
    st, sp = tokenize(sline)
    et, ep = tokenize(eline)
    if len(st) != len(et) or len(sp) != len(ep):
        return None
    out = []
    for i, t in enumerate(et):
        out.append(t)
        if i < len(ep):
            out.append(sp[i])
    return "".join(out)


def main():
    import importlib.util
    spec = importlib.util.spec_from_file_location(
        "nl", str(Path(__file__).with_name("normalize_labels.py")))
    nl = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(nl)

    wd = Path(sys.argv[1] if len(sys.argv) > 1 else ".work/tr2")
    apply_changes = "--apply" in sys.argv

    fixed = 0
    manual = []
    viol = []
    updates = {}
    for b, r, src in nl.iter_records(wd):
        eng = r.get("english", "")
        if not src:
            continue
        # Compare padding POSITIONALLY, not by total. A record can carry the
        # right number of U+3000 characters yet distribute them across lines
        # differently from the source, which a total-count check would let
        # through untouched.
        if ([m.group(0) for m in PAD.finditer(src)]
                == [m.group(0) for m in PAD.finditer(eng)]):
            continue
        sl, el = src.split("<CRLF>"), eng.split("<CRLF>")
        if len(sl) != len(el):
            manual.append((b, r["id"], "physical line count differs"))
            continue
        new_lines, bad = [], False
        for a, c in zip(sl, el):
            fixed_line = restore_line(a, c)
            if fixed_line is None:
                bad = True
                new_lines.append(c)
            else:
                new_lines.append(fixed_line)
        if bad:
            manual.append((b, r["id"], "pad/text token count differs"))
            continue
        new = "<CRLF>".join(new_lines)
        if new == eng:
            continue
        if sorted(COLOR.findall(src)) != sorted(COLOR.findall(new)):
            viol.append((b, r["id"], "color changed")); continue
        if sorted(PH.findall(src)) != sorted(PH.findall(new)):
            viol.append((b, r["id"], "placeholder changed")); continue
        if sum(src.count(k) for k in TOKENS) != sum(new.count(k) for k in TOKENS):
            viol.append((b, r["id"], "sentinel changed")); continue
        if src.count("\u3000") != new.count("\u3000"):
            viol.append((b, r["id"], "u3000 count not restored")); continue
        fixed += 1
        updates[(b, r["id"])] = new

    print("mode: %s" % ("APPLY" if apply_changes else "DRY-RUN"))
    print("records re-padded to the source layout: %d" % fixed)
    print("left for manual review: %d" % len(manual))
    print("invariant violations: %d" % len(viol))
    for v in viol[:20]:
        print("  ", v)
    print("manual-review records:")
    for m in manual:
        print("  ", m)

    if apply_changes and not viol and updates:
        files, written = rp_io.write_updates(wd, updates)
        print("written: %d files, %d records" % (files, written))
    elif apply_changes:
        print("ABORTED: invariant violations, nothing written")


if __name__ == "__main__":
    main()