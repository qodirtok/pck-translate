"""Show every payload where source and English placeholder tokens differ.

finalize's new per-span check (core.TOK.findall(source) !=
core.TOK.findall(english)) flagged 57 payloads per file. TOK matches printf
placeholders, &%s&, ^rrggbb colour codes and $%*. A payload with no real
placeholder still carries colour codes, so a mismatch usually means one side
has a token the other lacks. Printing both token lists beside both payloads
classifies each case as a real defect (dropped/added %d) or a tokeniser
artefact (colour-code drift, $%* noise) instead of guessing.
"""

import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))
import core
import mlspan

W = ROOT / ".work" / "tr2"
CURRENT = ROOT / "current"

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

trans = {}
for s, eng in trans_sent.items():
    orig = sent_to_orig.get(s)
    if orig is not None:
        trans[orig] = curly(mlspan.denormalize(eng))

# glossary-fill the rest, exactly as finalize does
allp = set()
for fpl in need["file_payloads"].values():
    allp.update(fpl)
fill = sorted(p for p in allp if p not in trans)
with core.Glossary() as g:
    found = g.lookup(fill)
for p in fill:
    if p in found:
        trans[p] = curly(found[p])

fname = sys.argv[1] if len(sys.argv) > 1 else "skillstr.txt"
raw = (CURRENT / "configs" / fname).read_bytes()
bom, codec = core.detect(raw)
text = raw.decode("utf-16" if codec.startswith("utf-16") else codec, errors="replace")
segs = mlspan.extract_segments(text)

bad = []
for s, e in segs:
    p = text[s:e]
    t = trans.get(p)
    if t is None:
        continue
    if core.TOK.findall(p) != core.TOK.findall(t):
        bad.append((p, t))

print("file=%s  spans=%d  token mismatches=%d" % (fname, len(segs), len(bad)))
print()

# classify: which token kinds actually differ?
from collections import Counter
kinds = Counter()
for p, t in bad:
    sp, st = set(core.TOK.findall(p)), set(core.TOK.findall(t))
    only_src = sp - st
    only_dst = st - sp

    def kind(tok):
        if tok.startswith("^"):
            return "colour"
        if tok.startswith("$"):
            return "dollar-pct"
        if tok.startswith("&"):
            return "amp-s"
        return "printf"

    for tok in only_src:
        kinds["src-only:" + kind(tok)] += 1
    for tok in only_dst:
        kinds["dst-only:" + kind(tok)] += 1

print("token-kind differences across all mismatches:")
for k, n in kinds.most_common():
    print("   %-24s %d" % (k, n))
print()

LIMIT = int(sys.argv[2]) if len(sys.argv) > 2 else 8
for i, (p, t) in enumerate(bad[:LIMIT]):
    print("=" * 70)
    print("mismatch %d" % (i + 1))
    print("  SRC tokens: %r" % core.TOK.findall(p))
    print("  DST tokens: %r" % core.TOK.findall(t))
    print("  only in SRC: %r" % (set(core.TOK.findall(p)) - set(core.TOK.findall(t))))
    print("  only in DST: %r" % (set(core.TOK.findall(t)) - set(core.TOK.findall(p))))
    print("  SRC: %r" % p[:150])
    print("  DST: %r" % t[:150])
