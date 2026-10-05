"""Settle two questions before tightening finalize's per-span placeholder check.

1. Percent escaping precedent. The Chinese source writes literal percents as
   %% (printf escaping). The tr2 English renders them as a single %. If the
   game engine renders these strings through a printf-family call, a bare %
   followed by a letter is itself a defect (the engine would read it as a
   format specifier and consume a nonexistent argument). The wave-1 files are
   already promoted, so they are the project precedent: this compares how each
   promoted file escapes percents in source vs English.

2. Calibration for the tokeniser fix. TOK's regex treats "% d" / "% f"
   (percent, space, letter) as a placeholder because space is a valid printf
   flag. That never occurs in the source (placeholders are always %d, %s with
   no flag), so excluding that form is safe - but only if the source really
   never uses it. This counts "% <letter>" occurrences in the tr2 source to
   confirm the space-flag-no-width form is unused in this project.
"""

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))
import core
import mlspan

CURRENT = ROOT / "current" / "configs"
PROMOTED = ROOT / "Translate" / "configs"
W = ROOT / ".work" / "tr2"

# single % that is not %% and not %d/%s/%f/%<digit> - i.e. a bare literal percent
BARE_PCT = re.compile(r"%(?![%sdf0-9])")
# "% " followed by a letter - the space-flag false-positive class
SP_FLAG = re.compile(r"%[ sdf]")  # %s %d %f and % s % d % f
SPACE_LETTER = re.compile(r"% [sdf]")

print("=" * 72)
print("PART 1: percent escaping in already-promoted wave-1 files")
print("=" * 72)
for name in ("typedef_initial.xml", "item_ext_prop.txt", "toptable.txt",
             "instance.txt", "buff_str.txt"):
    src_p = CURRENT / name
    dst_p = PROMOTED / name
    if not (src_p.is_file() and dst_p.is_file()):
        print("  %-22s (missing src or dst)" % name)
        continue
    sraw = src_p.read_bytes()
    draw = dst_p.read_bytes()
    sb, sc = core.detect(sraw)
    db, dc = core.detect(draw)
    stext = sraw.decode("utf-16" if sc.startswith("utf-16") else sc, errors="replace")
    dtext = draw.decode("utf-16" if dc.startswith("utf-16") else dc, errors="replace")
    s_dd = len(re.findall(r"%%", stext))
    d_dd = len(re.findall(r"%%", dtext))
    s_bare = len(BARE_PCT.findall(stext))
    d_bare = len(BARE_PCT.findall(dtext))
    print(f"  {name:<22} src: double%={s_dd:<4} bare%={s_bare:<5}"
          f"   dst: double%={d_dd:<4} bare%={d_bare:<5}")

print()
print("=" * 72)
print("PART 2: does the tr2 SOURCE ever use the space-flag form '% <letter>'?")
print("=" * 72)
total_space_letter = 0
samples = []
for bid_file in sorted((W / "in").glob("batch_*.jsonl")):
    for line in bid_file.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        r = json.loads(line)
        src = r["source"]
        for m in SPACE_LETTER.finditer(src):
            total_space_letter += 1
            if len(samples) < 6:
                samples.append((bid_file.name, r["id"], src[:90]))
print(f"  '% <letter>' occurrences in tr2 source payloads: {total_space_letter}")
for f, i, s in samples:
    print("    %s/%s: %r" % (f, i, s))

print()
print("=" * 72)
print("PART 3: percent escaping in the tr2 source vs worker English")
print("=" * 72)
s_dd = d_dd = s_bare = d_bare = 0
examples = []
for inf in sorted((W / "in").glob("batch_*.jsonl")):
    outf = W / "out" / inf.name
    if not outf.is_file():
        continue
    id2src = {}
    for line in inf.read_text(encoding="utf-8").splitlines():
        if line.strip():
            r = json.loads(line)
            id2src[r["id"]] = r["source"]
    for line in outf.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        r = json.loads(line)
        src = id2src.get(r["id"], "")
        eng = r.get("english", "")
        s_dd += len(re.findall(r"%%", src))
        d_dd += len(re.findall(r"%%", eng))
        s_bare += len(BARE_PCT.findall(src))
        n_bare = len(BARE_PCT.findall(eng))
        d_bare += n_bare
        if n_bare and len(examples) < 8:
            examples.append((inf.name, r["id"], src[:80], eng[:80]))
print("  src : %%=%d  bare%%=%d" % (s_dd, s_bare))
print("  dst : %%=%d  bare%%=%d" % (d_dd, d_bare))
print()
print("  samples where English uses a bare % (src uses %%):")
for f, i, s, e in examples:
    print("    %s/%s" % (f, i))
    print("      SRC: %s" % s)
    print("      DST: %s" % e)
