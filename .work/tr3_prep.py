"""Sentinel audit + terminology extraction for the tr3 dispatch.

tr3 = item_ext_desc.txt, 78 batches / 18,935 payloads. Before dispatching
workers three things must be settled:

1. Sentinel hygiene - do the in/ sources carry <CRLF>/<LF>/<CR> sentinels
   (as the pipeline intends) or raw CR/LF bytes? Workers can only preserve
   what they actually see, and finalize denormalizes sentinels back to real
   line breaks. The inspect output showed "\\r" in in/ sources, which needs a
   definitive answer before dispatch.

2. Terminology - which recurring source terms already have an established
   English rendering in this project? AGENTS.md section 6: translation memory
   has priority over model preference. The promoted Translate/configs files
   are line-aligned with current/configs, so a term found on a source line has
   its established rendering on the aligned destination line.

3. Percent hygiene - how many %% and bare % tokens the sources carry, so the
   verify stage knows what parity to expect.
"""
import json
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))
import core

W = ROOT / ".work" / "tr3"
IN = W / "in"
CUR = ROOT / "current" / "configs"
DST = ROOT / "Translate" / "configs"

out_lines = []


def emit(s=""):
    out_lines.append(s)


# ---- 1. sentinel audit ------------------------------------------------------
emit("=" * 72)
emit("PART 1: sentinel audit over tr3 in/ files")
emit("=" * 72)

# what does the SOURCE FILE look like - what line endings does it use?
src_raw = (CUR / "item_ext_desc.txt").read_bytes()
sb, sc = core.detect(src_raw)
src_text = src_raw.decode("utf-16" if sc.startswith("utf-16") else sc,
                         errors="replace")
emit("source file item_ext_desc.txt: bytes=%d bom=%r codec=%s" % (
    len(src_raw), sb, sc))
emit("  real CRLF pairs in file: %d" % src_text.count("\r\n"))
emit("  lone LF in file       : %d" % src_text.count("\n"))
emit("  lone CR in file       : %d" % (
    src_text.count("\r") - src_text.count("\r\n")))
emit()

# what does need.json say payloads look like?
need = json.loads((W / "need.json").read_text(encoding="utf-8"))
payload_keys = list(need["payloads"].keys())
n_sent_crlf = n_sent_lf = n_sent_cr = n_raw_cr = n_raw_lf = 0
for k in payload_keys:
    n_sent_crlf += k.count("<CRLF>")
    n_sent_lf += k.count("<LF>")
    n_sent_cr += k.count("<CR>")
    n_raw_cr += k.count("\r")
    n_raw_lf += k.count("\n")
emit("need.json payloads: %d keys" % len(payload_keys))
emit("  sentinel <CRLF>=%d <LF>=%d <CR>=%d   raw CR=%d LF=%d" % (
    n_sent_crlf, n_sent_lf, n_sent_cr, n_raw_cr, n_raw_lf))
emit()

# what do the in/ files actually contain?
tot = Counter()
n_recs = 0
for p in sorted(IN.glob("batch_*.jsonl")):
    for line in p.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        r = json.loads(line)
        s = r["source"]
        n_recs += 1
        for t in ("<CRLF>", "<LF>", "<CR>"):
            tot[t] += s.count(t)
        tot["raw_CR"] += s.count("\r")
        tot["raw_LF"] += s.count("\n")
        tot["pct_pct"] += s.count("%%")
        tot["pct_bare"] += len(re.findall(r"%(?![%sdf0-9])", s))
emit("in/ census over %d records:" % n_recs)
for k in ("<CRLF>", "<LF>", "<CR>", "raw_CR", "raw_LF", "pct_pct", "pct_bare"):
    emit("  %-8s %d" % (k, tot[k]))
emit()
if tot["<CRLF>"] or tot["<LF>"] or tot["<CR>"]:
    verdict = "SENTINELED"
else:
    verdict = "RAW"
emit("VERDICT: in/ source form = %s" % verdict)
emit("  (finalize maps in/ source -> need.json payload keys; the two must")
emit("   agree on sentinel form or every lookup misses and the file SKIPs)")
emit()

# ---- 2. terminology from aligned promoted pairs ------------------------------
emit("=" * 72)
emit("PART 2: established renderings from aligned current/Translate pairs")
emit("=" * 72)

ngrams = Counter()
for p in sorted(IN.glob("batch_*.jsonl")):
    for line in p.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        s = json.loads(line)["source"]
        for run in re.findall(r"[\u4e00-\u9fff]{2,}", s):
            for n in (2, 3, 4):
                for i in range(len(run) - n + 1):
                    ngrams[run[i:i + n]] += 1

candidates = {g for g, c in ngrams.items() if c >= 25}
emit("source n-grams with count>=25: %d" % len(candidates))
emit()

pairs = []
for f in sorted(CUR.glob("*")):
    if not f.is_file():
        continue
    d = DST / f.name
    if not d.is_file():
        continue
    try:
        sraw, draw = f.read_bytes(), d.read_bytes()
        _sb, sc2 = core.detect(sraw)
        _db, dc2 = core.detect(draw)
        st = sraw.decode("utf-16" if sc2.startswith("utf-16") else sc2,
                         errors="replace").splitlines()
        dt = draw.decode("utf-16" if dc2.startswith("utf-16") else dc2,
                         errors="replace").splitlines()
    except Exception:
        continue
    if len(st) == len(dt):
        pairs.append((f.name, st, dt))
emit("aligned file pairs: %d" % len(pairs))
emit()

term_hits = defaultdict(Counter)
for fname, st, dt in pairs:
    for a, b in zip(st, dt):
        if not candidates:
            break
        found_here = set()
        for run in re.findall(r"[\u4e00-\u9fff]{2,}", a):
            for n in (2, 3, 4):
                for i in range(len(run) - n + 1):
                    g = run[i:i + n]
                    if g in candidates and g not in found_here:
                        found_here.add(g)
                        b2 = re.sub(r"\^[0-9a-fA-F]{6}", "", b)
                        b2 = re.sub(r"^\d+[, \t]*", "", b2).strip()
                        if b2:
                            term_hits[g][b2] += 1

emit("top terms with established renderings (corpus count >= 25):")
emit()
shown = 0
for g, c in ngrams.most_common():
    if c < 25:
        break
    shapes = term_hits.get(g)
    if not shapes:
        continue
    emit("%s  (src count %d)" % (g, c))
    for s, n in shapes.most_common(3):
        emit("    x%-3d %s" % (n, s[:88]))
    shown += 1
    if shown >= 70:
        break

# ---- 3. hand-picked label terms ----------------------------------------------
emit()
emit("=" * 72)
emit("PART 3: label-style terms (colon lines) - explicit lookup")
emit("=" * 72)
label_terms = ["使用方式", "使用效果", "等级限制", "兑换", "领取", "失效", "绑定",
               "不可交易", "可交易", "物品描述", "物品类型", "需求等级", "冷却",
               "消耗", "产出", "来源", "有效期", "开启时间", "打开时间", "奖励",
               "品质", "类型", "攻击", "防御", "生命", "体力", "斗气", "历练"]
for g in label_terms:
    shapes = term_hits.get(g)
    if shapes:
        emit("%s:" % g)
        for s, n in shapes.most_common(3):
            emit("    x%-3d %s" % (n, s[:88]))
    else:
        emit("%s: (no aligned precedent)" % g)

# ---- 4. punctuation census in sources ----------------------------------------
emit()
emit("=" * 72)
emit("PART 4: punctuation the workers must render in ASCII")
emit("=" * 72)
punct = Counter()
for p in sorted(IN.glob("batch_*.jsonl")):
    for line in p.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        s = json.loads(line)["source"]
        for ch in "，：；！？（）～“”‘’、。％":
            punct[ch] += s.count(ch)
for ch, n in punct.most_common():
    emit("  U+%04X %r  count=%d" % (ord(ch), ch, n))
emit()

# ---- 5. date/time patterns ----------------------------------------------------
emit("=" * 72)
emit("PART 5: date/time patterns in sources")
emit("=" * 72)
date_re = re.compile(r"\d{4}年\d{1,2}月(?:\d{1,2}日)?")
time_re = re.compile(r"\d{1,2}：\d{2}")
n_date = n_time = 0
date_samples = []
for p in sorted(IN.glob("batch_*.jsonl")):
    for line in p.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        s = json.loads(line)["source"]
        ds = date_re.findall(s)
        ts = time_re.findall(s)
        n_date += len(ds)
        n_time += len(ts)
        if ds and len(date_samples) < 5:
            date_samples.append((ds[0], s[:70]))
emit("  date patterns (YYYY年M月D日): %d" % n_date)
emit("  time patterns (H：MM fullwidth colon): %d" % n_time)
for d, s in date_samples:
    emit("    %s  |  %s" % (d, s))

Path(ROOT / ".work" / "tr3_prep.txt").write_text(
    "\n".join(out_lines) + "\n", encoding="utf-8")
print("wrote .work/tr3_prep.txt")
