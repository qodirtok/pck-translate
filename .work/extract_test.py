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

out = []


def emit(s=""):
    out.append(s)


def load(p):
    raw = Path(p).read_bytes()
    bom, codec = core.detect(raw)
    text = raw.decode("utf-16" if codec.startswith("utf-16") else codec,
                      errors="replace")
    return text, bom, codec


summary = []
all_payloads = {}
for f in FILES:
    text, bom, codec = load("current/configs/" + f)
    segs = mlspan.extract_segments(text)
    inside, total = mlspan.coverage(text, segs)
    payloads = [text[s:e] for s, e in segs]
    uniq = set(payloads)
    # real newline stats among unique payloads
    with_nl = sum(1 for p in uniq if "\n" in p or "\r" in p)
    emit("")
    emit("==== %s ====" % f)
    emit("codec=%s  chars=%d  segments=%d  unique=%d" % (codec, len(text), len(segs), len(uniq)))
    emit("CJK coverage: inside=%d total=%d  (%.2f%%)" % (
        inside, total, 100.0 * inside / total if total else 100.0))
    emit("unique payloads with real newline/CR: %d" % with_nl)
    # sample shortest + longest
    su = sorted(uniq, key=len)
    emit("shortest: %r" % (su[0][:60],))
    emit("longest : %r" % (su[-1][:100],))
    summary.append((f, codec, len(segs), len(uniq), inside, total, with_nl))
    all_payloads[f] = payloads

emit("")
emit("==================== SUMMARY ====================")
emit("%-24s %-10s %8s %8s %10s %10s %6s" % ("file", "codec", "segs", "uniq", "cjk_in", "cjk_tot", "w/nl"))
for f, codec, nseg, uniq, inside, total, wnl in summary:
    emit("%-24s %-10s %8d %8d %10d %10d %6d" % (f, codec, nseg, uniq, inside, total, wnl))

# dump all unique payloads across files for glossary/translation
alluniq = set()
for f, payloads in all_payloads.items():
    alluniq.update(payloads)
emit("")
emit("TOTAL unique payloads across all 8 files: %d" % len(alluniq))
emit("TOTAL unique CJK chars (approx): %d" % sum(mlspan.core.count_cjk(p) for p in alluniq))

Path(".work/extract_test.out").write_text("\n".join(out), encoding="utf-8")
print("WROTE .work/extract_test.out")
