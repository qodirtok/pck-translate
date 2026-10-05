"""Inspect the 91 tr3 in/ records whose source matches a need.json VALUE but no
KEY, and reconcile with the 244 real LF characters found in need.json keys.

Theory to confirm or kill: need.json["payloads"] maps ORIGINAL -> NORMALIZED.
For single-line payloads normalize() is a no-op so key == value (18,844
records). For multi-line payloads the original carries real LF and the
normalized form carries sentinels, so key != value (the 91 records). finalize
does trans[sent_to_orig.get(in_source)] = english, then rebuilds by looking up
the span text extracted from the current/ source file - so what matters is
whether the FILE span form matches the trans key form.

For each of the 91: print in/ source repr, the entry key repr, the entry value
repr, and LF/sentinel counts on each side.
"""
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
W = ROOT / ".work" / "tr3"

need = json.loads((W / "need.json").read_text(encoding="utf-8"))
sent_map = need["payloads"]          # as written by build.py
sent_to_orig = {v: k for k, v in sent_map.items()}

keys = set(sent_map)
vals = set(sent_to_orig)

hits = []
for inf in sorted((W / "in").glob("batch_*.jsonl")):
    for line in inf.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        r = json.loads(line)
        s = r["source"]
        if s not in keys and s in vals:
            hits.append((inf.name, r["id"], s))

print("value-not-key records: %d" % len(hits))
print()


def form(tag, s):
    print("  %-10s len=%-6d realLF=%-4d realCR=%-4d lit\\r=%-4d "
          "lit\\n=%-4d <CRLF>=%-3d <LF>=%-3d <CR>=%-3d" % (
              tag, len(s), s.count("\n"), s.count("\r"),
              s.count("\\r"), s.count("\\n"),
              s.count("<CRLF>"), s.count("<LF>"), s.count("<CR>")))


for fname, rid, s in hits[:6]:
    print("=" * 70)
    print("%s id=%s" % (fname, rid))
    k = sent_to_orig[s]               # the key this value belongs to
    form("in/ src", s)
    form("key", k)
    form("value", s)
    print("  in/ src == key : %s" % (s == k))
    print("  in/ src repr   : %r" % s[:130])
    print("  key repr       : %r" % k[:130])

# how do the 244 real LF distribute?
lf_keys = [(k, v) for k, v in sent_map.items() if "\n" in k]
print()
print("=" * 70)
print("need.json keys containing real LF: %d" % len(lf_keys))
total_lf = sum(k.count("\n") for k, _ in lf_keys)
print("total real LF across those keys: %d" % total_lf)
for k, v in lf_keys[:3]:
    print("  key   : %r" % k[:110])
    print("  value : %r" % v[:110])
    print("  value has sentinels: <CRLF>=%d <LF>=%d <CR>=%d  realLF=%d" % (
        v.count("<CRLF>"), v.count("<LF>"), v.count("<CR>"), v.count("\n")))
    print()

# and what does the CURRENT source file carry at those offsets? Find one
# multi-line payload's text directly in current/configs/item_ext_desc.txt.
sys.path.insert(0, str(ROOT / "tools"))
import core
import mlspan
raw = (ROOT / "current" / "configs" / "item_ext_desc.txt").read_bytes()
_b, codec = core.detect(raw)
text = raw.decode("utf-16" if codec.startswith("utf-16") else codec,
                  errors="replace")
if lf_keys:
    probe = lf_keys[0][0]             # original multi-line payload
    idx = text.find(probe[:40])
    print("=" * 70)
    print("file contains the multi-line original? idx=%d" % idx)
    if idx >= 0:
        span = text[idx:idx + len(probe)]
        print("  file span == key: %s" % (span == probe))
        print("  file span repr  : %r" % span[:130])
