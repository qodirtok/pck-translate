import json
from pathlib import Path

need = json.loads(Path(".work/tr/need.json").read_text(encoding="utf-8"))
sent_map = need["payloads"]  # orig -> sentinel
sent_to_orig = {v: k for k, v in sent_map.items()}

# Load worker output: sentinel -> english (pair via in-file id map)
out = Path(".work/tr/out")
inn = Path(".work/tr/in")
trans_sent = {}
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


def cnt(s, tok):
    return s.count(tok)


TOKS = ["<CRLF>", "<LF>", "<CR>"]


bad = []
total_with_sent = 0
for orig, sentinel in sent_map.items():
    n_s = sum(cnt(sentinel, t) for t in TOKS)
    if n_s == 0:
        continue
    total_with_sent += 1
    eng = trans_sent.get(sentinel)
    if eng is None:
        bad.append((orig, sentinel, None, n_s, -1))
        continue
    n_e = sum(cnt(eng, t) for t in TOKS)
    if n_e != n_s:
        bad.append((orig, sentinel, eng, n_s, n_e))

lines = []
lines.append("payloads with sentinels : %d" % total_with_sent)
lines.append("mismatched sentinels    : %d" % len(bad))
lines.append("")
lines.append("==== MISMATCHES (source_sent -> eng_sent) ====")
for orig, sentinel, eng, ns, ne in bad[:40]:
    lines.append("[%d -> %d] src=%r" % (ns, ne, sentinel[:70]))
    if eng is not None:
        lines.append("           eng=%r" % eng[:70])
    else:
        lines.append("           eng=MISSING")

# breakdown by dropped/added
dropped = sum(1 for *_x, ns, ne in bad if ne >= 0 and ne < ns)
added = sum(1 for *_x, ns, ne in bad if ne > ns)
missing = sum(1 for *_x, ns, ne in bad if ne < 0)
lines.append("")
lines.append("dropped-sentinel payloads: %d" % dropped)
lines.append("added-sentinel payloads  : %d" % added)
lines.append("missing-translation       : %d" % missing)

Path(".work/sentinel.out").write_text("\n".join(lines), encoding="utf-8")
print("WROTE .work/sentinel.out")
