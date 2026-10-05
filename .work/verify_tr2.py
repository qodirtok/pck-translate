"""Numeral-aware validation of the tr2 corpus against its source payloads.

A raw digit-multiset comparison is useless on Chinese source text: it flags every
idiomatic numeric conversion as a defect. Chinese ordinals are written as digits
in English (第一段 -> "Stage 1"), calendar months are spelled out (10月 -> "October"),
festival names carry digits (七夕 -> "Qixi") and measure words lose them
(一颗 -> "a"). All of those are correct English.

So numeric parity is judged by numeric_check.nums(), which normalises both sides
before comparing. Everything this reports is a genuine defect.

The padding check is stricter: every U+3000 run and every run of 2+ ASCII spaces
is compared positionally, because those runs are column layout and must survive
byte-for-byte.
"""

import importlib.util
import re
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import numeric_check as nc

W = Path(sys.argv[1] if len(sys.argv) > 1 else ".work/tr2")
_spec = importlib.util.spec_from_file_location("nl", str(W.parent / "normalize_labels.py"))
nl = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(nl)

COLOR = re.compile(r"\^[0-9a-fA-F]{6}")
PH = re.compile(r"%(?:\d+\$)?(?:\.\d+)?[sdfx%]|\*level")
PAD = re.compile("\u3000+|[ ]{2,}")
CJK = re.compile(r"[\u4e00-\u9fff\u3400-\u4dbf\u3040-\u30ff]")
TOKENS = ("<CRLF>", "<LF>", "<CR>")


def pad_list(t):
    return [m.group(0) for m in PAD.finditer(t)]


def sentinel_list(t):
    return [s for s in re.findall(r"<CRLF>|<LF>|<CR>", t)]


prob = Counter()
detail = []
n = 0

for b, r, src in nl.iter_records(W):
    e = r.get("english", "")
    if src is None:
        prob["no_source"] += 1
        continue
    n += 1

    def bad(tag, a, c):
        prob[tag] += 1
        if len(detail) < 40:
            detail.append((b, r["id"], tag, a, c))

    if sentinel_list(src) != sentinel_list(e):
        bad("sentinel", sentinel_list(src), sentinel_list(e))
    if len(re.findall(r"<CRLF>|<LF>|<CR>", src)) != len(re.findall(r"<CRLF>|<LF>|<CR>", e)):
        bad("sentinel_count", src.count("<CRLF>"), e.count("<CRLF>"))
    if sorted(COLOR.findall(src)) != sorted(COLOR.findall(e)):
        bad("color", sorted(COLOR.findall(src)), sorted(COLOR.findall(e)))
    if sorted(PH.findall(src)) != sorted(PH.findall(e)):
        bad("placeholder", sorted(PH.findall(src)), sorted(PH.findall(e)))
    miss, add = nc.diff(src, e)
    if miss or add:
        bad("numeric", miss, add)
    if src.count("\u3000") != e.count("\u3000"):
        bad("u3000_count", src.count("\u3000"), e.count("\u3000"))
    if pad_list(src) != pad_list(e):
        bad("pad_runs", pad_list(src), pad_list(e))
    for esc in (r"\r", r"\n"):
        if src.count(esc) != e.count(esc):
            bad("escape_%s" % esc, src.count(esc), e.count(esc))
    m = CJK.search(e)
    if m:
        bad("residual_cjk", m.group(0), "")
    if '"' in e:
        prob["straight_quote"] += 1
    if not e.strip():
        prob["empty"] += 1

print("records checked:", n)
print("problems:", dict(prob) if prob else "NONE")
for d in detail:
    print("   ", d)
sys.exit(1 if prob else 0)
