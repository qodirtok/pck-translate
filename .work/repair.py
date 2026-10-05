import json
import re
from pathlib import Path


def curly(s):
    out = []
    open_q = True
    for ch in s:
        if ch == '"':
            out.append("\u201c" if open_q else "\u201d")
            open_q = not open_q
        else:
            out.append(ch)
    return "".join(out)


out = Path(".work/tr/out")
report = []
for p in sorted(out.glob("batch_*.jsonl")):
    raw = p.read_text(encoding="utf-8")
    recs = []
    fixed = 0
    curly_fixed = 0
    for ln in raw.splitlines():
        if not ln.strip():
            continue
        try:
            rec = json.loads(ln)
            eid = rec["id"]
            eng = rec["english"]
        except Exception:
            m = re.search(r'"id":\s*(\d+)', ln)
            eid = int(m.group(1))
            key = '"english": "'
            i0 = ln.index(key) + len(key)
            content = ln[i0:]
            if content.endswith('"}'):
                content = content[:-2]
            content = content.replace('\\"', '"')
            eng = content
            fixed += 1
        if '"' in eng:
            curly_fixed += eng.count('"')
        eng = curly(eng)
        recs.append({"id": eid, "english": eng})
    with p.open("w", encoding="utf-8") as fh:
        for r in recs:
            fh.write(json.dumps(r, ensure_ascii=False) + "\n")
    report.append("%-16s records=%-5d json_repaired=%-3d straight_quotes_curlyfied=%d" % (
        p.name, len(recs), fixed, curly_fixed))

Path(".work/repair.out").write_text("\n".join(report), encoding="utf-8")
print("WROTE .work/repair.out")
