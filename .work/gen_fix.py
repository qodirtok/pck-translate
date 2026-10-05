import json
from pathlib import Path

need = json.loads(Path(".work/tr/need.json").read_text(encoding="utf-8"))
sent_map = need["payloads"]

out = Path(".work/tr/out")
inn = Path(".work/tr/in")
trans_sent = {}
meta = {}
for bid in need["batch_order"]:
    inpf = inn / (bid + ".jsonl")
    opf = out / (bid + ".jsonl")
    if not opf.is_file():
        continue
    id2sent = {}
    for ln in inpf.read_text(encoding="utf-8").splitlines():
        if ln.strip():
            r = json.loads(ln)
            id2sent[r["id"]] = r["source"]
    for ln in opf.read_text(encoding="utf-8").splitlines():
        if ln.strip():
            r = json.loads(ln)
            s = id2sent.get(r["id"])
            if s is not None:
                trans_sent[s] = r.get("english", "")
                meta[s] = (bid, r["id"])

TOKS = ["<CRLF>", "<LF>", "<CR>"]
fixes = []
for orig, sentinel in sent_map.items():
    ns = sum(sentinel.count(t) for t in TOKS)
    if ns == 0:
        continue
    eng = trans_sent.get(sentinel)
    if eng is None:
        continue
    ne = sum(eng.count(t) for t in TOKS)
    if ne != ns:
        b, oid = meta[sentinel]
        fixes.append({"id": len(fixes) + 1, "batch": b, "orig_id": oid,
                      "source": sentinel, "current": eng})

fixdir = Path(".work/tr/fix")
(fixdir / "in").mkdir(parents=True, exist_ok=True)
with (fixdir / "in" / "fix_000.jsonl").open("w", encoding="utf-8") as fh:
    for fx in fixes:
        fh.write(json.dumps(fx, ensure_ascii=False) + "\n")
(fixdir / "meta.json").write_text(
    json.dumps(fixes, ensure_ascii=False), encoding="utf-8")
print("fix payloads:", len(fixes))
