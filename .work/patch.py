import json
import sys
from pathlib import Path


def curly(s):
    out = []
    oq = True
    for ch in s:
        if ch == '"':
            out.append("\u201c" if oq else "\u201d")
            oq = not oq
        else:
            out.append(ch)
    return "".join(out)


fixdir = Path(".work/tr/fix")
meta = json.loads((fixdir / "meta.json").read_text(encoding="utf-8"))
fixout = fixdir / "out" / "fix_000.jsonl"
if not fixout.is_file():
    print("MISSING fix out file:", fixout)
    sys.exit(1)

fixeng = {}
for ln in fixout.read_text(encoding="utf-8").splitlines():
    if ln.strip():
        r = json.loads(ln)
        fixeng[r["id"]] = r.get("english", "")

TOKS = ["<CRLF>", "<LF>", "<CR>"]
bybatch = {}
applied = 0
skipped = 0
report = []
for fx in meta:
    fid = fx["id"]
    eng = fixeng.get(fid)
    if eng is None:
        report.append("fix %d: no english" % fid)
        skipped += 1
        continue
    ns = sum(fx["source"].count(t) for t in TOKS)
    ne = sum(eng.count(t) for t in TOKS)
    if ns != ne:
        report.append("fix %d: sentinel %d!=%d SKIP" % (fid, ns, ne))
        skipped += 1
        continue
    # keep sentinels in the out file (finalize denormalises on load)
    bybatch.setdefault(fx["batch"], {})[fx["orig_id"]] = curly(eng)
    applied += 1

out = Path(".work/tr/out")
touched = 0
for bid, updates in bybatch.items():
    pf = out / (bid + ".jsonl")
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
