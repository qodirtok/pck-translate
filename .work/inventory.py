import json
import sys
from pathlib import Path

sys.path.insert(0, "tools")
import mlspan
import core

FILES = [
    "item_ext_desc.txt",
    "skillstr.txt",
    "skillgbk.txt",
    "buff_str.txt",
    "instance.txt",
    "toptable.txt",
    "typedef_initial.xml",
    "item_ext_prop.txt",
]


def load(p):
    raw = Path(p).read_bytes()
    bom, codec = core.detect(raw)
    text = raw.decode("utf-16" if codec.startswith("utf-16") else codec,
                      errors="replace")
    return text, codec


out = []


def emit(s=""):
    out.append(s)


# Collect all unique payloads (original form) across files
uniq = set()
per_file = {}
for f in FILES:
    text, codec = load("current/configs/" + f)
    segs = mlspan.extract_segments(text)
    payloads = [text[s:e] for s, e in segs]
    per_file[f] = len(set(payloads))
    uniq.update(payloads)

emit("total unique payloads (all files, cross-deduped): %d" % len(uniq))

# Glossary lookup on ORIGINAL payloads
with core.Glossary() as g:
    found = g.lookup(sorted(uniq))
reused = [p for p in uniq if p in found]
unknown = sorted(p for p in uniq if p not in found)
emit("glossary REUSED : %d" % len(reused))
emit("UNKNOWN (need LLM): %d" % len(unknown))

# char stats for unknown
uchars = sum(core.count_cjk(p) for p in unknown)
emit("unknown CJK chars: %d" % uchars)

# length distribution of unknown
lens = sorted(len(p) for p in unknown)
emit("unknown len: min=%d p25=%d med=%d p75=%d max=%d" % (
    lens[0], lens[len(lens)//4], lens[len(lens)//2],
    lens[3*len(lens)//4], lens[-1]))

# per-file unknown coverage (how many of each file's unique are unknown)
emit("")
emit("per-file unique -> unknown:")
for f in FILES:
    text, codec = load("current/configs/" + f)
    segs = mlspan.extract_segments(text)
    fset = set(text[s:e] for s, e in segs)
    fu = sum(1 for p in fset if p in found)
    emit("  %-24s unique=%-6d glossary=%-6d unknown=%d" % (f, len(fset), fu, len(fset)-fu))

Path(".work/inventory.out").write_text("\n".join(out), encoding="utf-8")
print("WROTE .work/inventory.out")
