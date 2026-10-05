"""Find where the rebuilt line's trailing space actually comes from.

strip_trailing.py found nothing to strip in the batch english fields, yet the
rebuilt file has 116 lines per file ending in whitespace. So the space is not
where expected. This traces one concrete case end to end: locate the rebuilt
line, find the payload segment that produced it, and print the source and
english payloads byte-exactly (repr) so the origin is visible.
"""

import importlib.util
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))
import core
import mlspan

W = ROOT / ".work" / "tr2"
CURRENT = ROOT / "current"
STAGING = W / "audit_probe3"

need = json.loads((W / "need.json").read_text(encoding="utf-8"))
sent_map = need["payloads"]
sent_to_orig = {v: k for k, v in sent_map.items()}


def curly(s):
    out, open_q = [], True
    for ch in s:
        if ch == '"':
            out.append("\u201c" if open_q else "\u201d")
            open_q = not open_q
        else:
            out.append(ch)
    return "".join(out)


# sentinel -> english, plus remember which batch/id it came from
origin = {}
trans_sent = {}
for bid in need["batch_order"]:
    pf = W / "out" / (bid + ".jsonl")
    if not pf.is_file():
        continue
    id2sent = {}
    for line in (W / "in" / (bid + ".jsonl")).read_text(encoding="utf-8").splitlines():
        if line.strip():
            r = json.loads(line)
            id2sent[r["id"]] = r["source"]
    for line in pf.read_text(encoding="utf-8").splitlines():
        if line.strip():
            r = json.loads(line)
            s = id2sent.get(r["id"])
            e = r.get("english", "")
            if s is not None and e:
                trans_sent[s] = e
                origin[s] = (bid, r["id"])

trans = {}
for s, eng in trans_sent.items():
    orig = sent_to_orig.get(s)
    if orig is not None:
        trans[orig] = (curly(mlspan.denormalize(eng)), origin[s])

fname = sys.argv[1] if len(sys.argv) > 1 else "skillstr.txt"
target_line = int(sys.argv[2]) if len(sys.argv) > 2 else 646

src = CURRENT / "configs" / fname
raw = src.read_bytes()
bom, codec = core.detect(raw)
text = raw.decode("utf-16" if codec.startswith("utf-16") else codec, errors="replace")
segs = mlspan.extract_segments(text)
trans_map = {}
for s, e in segs:
    p = text[s:e]
    if p in trans:
        trans_map[p] = trans[p][0]
new_text, _ = mlspan.rebuild(text, segs, trans_map)

STAGING.mkdir(parents=True, exist_ok=True)
staged = STAGING / fname
staged.write_bytes(bom + new_text.encode(codec, errors="replace"))

_bs, _es, _eols, sl, _cs = core.read_text(src)
_bd, _ed, _eold, dl, _cd = core.read_text(staged)

print("file=%s  target rebuilt line=%d" % (fname, target_line))
print()
print("SRC line %d repr: %r" % (target_line, sl[target_line]))
print("DST line %d repr: %r" % (target_line, dl[target_line]))
print()

# Which payload spans cover that source line?
pos = 0
line_starts = []
for ln in sl:
    line_starts.append(pos)
    pos += len(ln) + 1  # approximate; refine below
# recompute exactly by walking the raw text
line_starts = [0]
i = 0
for ln in sl:
    i += len(ln)
    if i < len(text) and text[i] == "\n":
        i += 1
    elif i + 1 < len(text) and text[i:i + 2] == "\r\n":
        i += 2
    line_starts.append(i)

target_off = line_starts[target_line]
covering = [(s, e) for s, e in segs if s <= target_off < e]
print("payload spans covering source line %d:" % target_line)
for s, e in covering:
    p = text[s:e]
    print("  span [%d,%d)" % (s, e))
    print("    SOURCE payload repr: %r" % p)
    if p in trans:
        eng, (bid, rid) = trans[p]
        print("    ENGLISH payload repr: %r" % eng)
        print("    came from: %s / %s" % (bid, rid))
        print("    english ends with whitespace: %s" % (eng != eng.rstrip()))
    else:
        print("    (no english for this payload)")
