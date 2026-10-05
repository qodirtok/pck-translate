"""Apply fix-batch translations back into tr2/tr3 out/*.jsonl, validating
sentinel parity per record before patching (AGENTS.md: never silently accept
a structurally broken payload)."""

import json
import sys
from pathlib import Path

TOKS = ["<CRLF>", "<LF>", "<CR>"]
COLOR = None

workdir = Path(sys.argv[1] if len(sys.argv) > 1 else ".work/tr2")
needfile = workdir / ("fixneed.json" if (workdir / "fixneed.json").is_file() else "need.json")
need = json.loads(needfile.read_text(encoding="utf-8"))
outdir = workdir / "out"
indir = workdir / "in"


def curly(s):
    res = []
    oq = True
    for ch in s:
        if ch == '"':
            res.append("\u201c" if oq else "\u201d")
            oq = not oq
        else:
            res.append(ch)
    return "".join(res)


fixdir = workdir / "fix"
applied = 0
skipped = 0
report = []
bybatch = {}

for fmeta in need.get("fix_order", []):
    fin = indir / (fmeta + ".jsonl")
    fout = outdir / (fmeta + ".jsonl")
    if not fout.is_file():
        print("MISSING fix out file:", fout)
        sys.exit(1)
    src_by_id = {}
    for ln in fin.read_text(encoding="utf-8").splitlines():
        if ln.strip():
            r = json.loads(ln)
            src_by_id[r["id"]] = r
    for ln in fout.read_text(encoding="utf-8").splitlines():
        if not ln.strip():
            continue
        r = json.loads(ln)
        src = src_by_id[r["id"]]["source"]
        eng = r.get("english", "")
        ns = sum(src.count(t) for t in TOKS)
        ne = sum(eng.count(t) for t in TOKS)
        if ns != ne:
            report.append("fix %s/%d: sentinel %d!=%d SKIP" % (fmeta, r["id"], ns, ne))
            skipped += 1
            continue
        if not eng.strip():
            report.append("fix %s/%d: empty SKIP" % (fmeta, r["id"]))
            skipped += 1
            continue
        bybatch.setdefault(src_by_id[r["id"]]["src_batch"], {})[src_by_id[r["id"]]["src_id"]] = curly(eng)
        applied += 1

touched = 0
for bid, updates in bybatch.items():
    pf = outdir / (bid + ".jsonl")
    if not pf.is_file():
        print("MISSING target batch:", pf)
        sys.exit(1)
    recs = []
    for ln in pf.read_text(encoding="utf-8").splitlines():
        if not ln.strip():
            continue
        r = json.loads(ln)
        if r["id"] in updates:
            r["english"] = updates[r["id"]]
            touched += 1
        recs.append(r)
    with pf.open("w", encoding="utf-8") as fh:
        for r in recs:
            fh.write(json.dumps(r, ensure_ascii=False) + "\n")

print("applied %d  skipped %d  records_touched %d" % (applied, skipped, touched))
for line in report[:40]:
    print(line)