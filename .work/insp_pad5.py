"""Inspect the records repair_padding.py could not align, showing exactly which
physical lines have differing token structure."""
import json
import re
from pathlib import Path

W = Path(".work/tr2")
PAD = re.compile("\u3000+|[ ]{2,}")
UNRESOLVED = {
    ("batch_000", 181), ("batch_002", 29), ("batch_002", 56),
    ("batch_002", 117), ("batch_005", 110),
}


def tokenize(line):
    texts, pads = [], []
    pos = 0
    for m in PAD.finditer(line):
        texts.append(line[pos:m.start()])
        pads.append(m.group(0))
        pos = m.end()
    texts.append(line[pos:])
    return texts, pads


def show(t):
    """Make padding visible."""
    return t.replace("\u3000", "[U3000]").replace(" ", ".")


recs = [json.loads(l) for l in
        (W / "fix" / "padfix_000.jsonl").read_text(encoding="utf-8").splitlines()
        if l.strip()]
for rec in recs:
    key = (rec["batch"], rec["orig_id"])
    if key not in UNRESOLVED:
        continue
    print("=" * 70)
    print("%s / %d" % key)
    sl, el = rec["source"].split("<CRLF>"), rec["current"].split("<CRLF>")
    for i, (a, c) in enumerate(zip(sl, el)):
        ta, pa = tokenize(a)
        tc, pc = tokenize(c)
        if len(ta) == len(tc) and len(pa) == len(pc):
            continue
        print("  L%-2d  src_texts=%d src_pads=%d | dst_texts=%d dst_pads=%d"
              % (i, len(ta), len(pa), len(tc), len(pc)))
        print("    SRC: %s" % show(a))
        print("    DST: %s" % show(c))
    print()
