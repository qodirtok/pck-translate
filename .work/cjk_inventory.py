"""Inventory every CJK-range character sitting in the worker English payloads.

verify_tr2's residual_cjk check used a narrow [\u4e00-\u9fff] ideograph range,
so it saw ideographs but not the Fullwidth Forms block (U+FF01-FF5E) that
core.count_cjk also counts. That is why the audit's cjk_remaining fires while
verify_tr2 reported zero.

This scans the tr2 worker outputs and prints each distinct CJK-range character
with a count, so the conversion set is chosen from evidence rather than guess.
Only characters the audit would count are listed (same ranges as core).
"""

import json
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))
import core

W = ROOT / ".work" / "tr2"
RANGES = ((0x3400, 0x4DBF), (0x4E00, 0x9FFF), (0xF900, 0xFAFF), (0xFF01, 0xFF5E))


def cjk_chars(s: str):
    for c in s:
        o = ord(c)
        if any(a <= o <= b for a, b in RANGES):
            yield c


counts = Counter()
records_with_cjk = 0
records_total = 0
examples = {}

for pf in sorted((W / "out").glob("batch_*.jsonl")):
    if pf.name.startswith("fix_"):
        continue
    for line in pf.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        r = json.loads(line)
        eng = r.get("english", "")
        if not eng:
            continue
        records_total += 1
        hit = False
        for c in cjk_chars(eng):
            counts[c] += 1
            hit = True
            if c not in examples:
                examples[c] = (pf.name, r["id"], eng[:80])
        if hit:
            records_with_cjk += 1

print("records scanned: %d" % records_total)
print("records containing a CJK-range character: %d" % records_with_cjk)
print()
print("distinct CJK-range characters and counts:")
for c, n in counts.most_common():
    try:
        name = c
    except Exception:
        name = "?"
    o = ord(c)
    print("  U+%04X %r  count=%-6d block=%s"
          % (o, c, n,
             "fullwidth" if 0xFF01 <= o <= 0xFF5E
             else "ideograph" if 0x4E00 <= o <= 0x9FFF
             else "extA" if 0x3400 <= o <= 0x4DBF
             else "compat"))
print()
print("example english per character:")
for c, (bid, rid, sample) in examples.items():
    print("  U+%04X %r  from %s/%s" % (ord(c), c, bid, rid))
    print("      %s" % sample)
