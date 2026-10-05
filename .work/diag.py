import json
from pathlib import Path

out = Path(".work/tr/out")
lines_out = []
bad_files = []
for p in sorted(out.glob("batch_*.jsonl")):
    raw = p.read_text(encoding="utf-8")
    recs = raw.splitlines()
    n_ok = 0
    bad = []
    for i, ln in enumerate(recs, 1):
        if not ln.strip():
            continue
        try:
            json.loads(ln)
            n_ok += 1
        except Exception as e:
            bad.append((i, str(e)[:80], ln[:120]))
    status = "OK" if not bad else "BAD(%d)" % len(bad)
    lines_out.append("%-16s records=%-5d ok=%-5d %s" % (p.name, len(recs), n_ok, status))
    if bad:
        bad_files.append((p.name, bad))

lines_out.append("")
lines_out.append("==== BAD LINES DETAIL ====")
for name, bad in bad_files:
    lines_out.append("--- %s ---" % name)
    for i, err, preview in bad[:6]:
        lines_out.append("  line %d: %s" % (i, err))
        lines_out.append("    preview: %r" % preview)

Path(".work/diag.out").write_text("\n".join(lines_out), encoding="utf-8")
print("WROTE .work/diag.out")
