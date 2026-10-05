import re
from pathlib import Path

out = []


def emit(s=""):
    out.append(s)


def dec(raw):
    if raw[:2] == b"\xff\xfe":
        return raw.decode("utf-16")
    if raw[:2] == b"\xfe\xff":
        return raw.decode("utf-16")
    if raw[:3] == b"\xef\xbb\xbf":
        return raw.decode("utf-8-sig")
    try:
        return raw.decode("utf-8")
    except Exception:
        return raw.decode("gbk", "replace")


CJK = re.compile(r"[一-鿿㐀-䶿豈-﫿！-～]")

# ---- toptable.txt: show bare (unquoted) CJK segments per line ----
emit("#################### toptable.txt bare CJK ####################")
t = dec(Path("current/configs/toptable.txt").read_bytes())
for i, ln in enumerate(t.splitlines(), 1):
    # strip quoted spans, see what CJK remains
    stripped = re.sub(r'"[^"]*"', '""', ln)
    if CJK.search(stripped):
        emit("%3d | full: %r" % (i, ln[:150]))
        emit("     bare: %r" % stripped[:150])

# ---- instance.txt: show blocks with CJK ----
emit("")
emit("#################### instance.txt blocks ####################")
t = dec(Path("current/configs/instance.txt").read_bytes())
lines = t.splitlines()
# find lines that are just "Name" followed by {
shown = 0
for i, ln in enumerate(lines):
    s = ln.strip()
    if s.startswith('"') and s.endswith('"') and CJK.search(s):
        # dump this block until closing }
        blk = []
        for j in range(i, min(i + 30, len(lines))):
            blk.append(lines[j])
            if lines[j].strip() == "}":
                break
        emit("--- block at line %d ---" % (i + 1))
        for b in blk[:25]:
            emit("   " + b[:120])
        shown += 1
        if shown >= 3:
            break

# ---- typedef_initial.xml: attribute names + which have CJK ----
emit("")
emit("#################### typedef_initial.xml attrs ####################")
t = dec(Path("current/configs/typedef_initial.xml").read_bytes())
attrs = re.findall(r'(\w+)="([^"]*)"', t)
from collections import defaultdict
byattr = defaultdict(lambda: [0, 0, 0])
for k, v in attrs:
    byattr[k][0] += 1
    if v:
        byattr[k][1] += 1
    if CJK.search(v):
        byattr[k][2] += 1
for k in sorted(byattr):
    tot, nonempty, cjk = byattr[k]
    emit("  attr %-12s total=%-4d nonempty=%-4d withCJK=%d" % (k, tot, nonempty, cjk))
# sample name/group values
emit("--- sample name=/group0= values ---")
seen = set()
for k, v in attrs:
    if k in ("name", "group0", "group1", "note", "desc") and CJK.search(v) and v not in seen:
        seen.add(v)
        emit("   %s=%r" % (k, v))
    if len(seen) >= 15:
        break

# ---- item_ext_prop.txt: structure + CJK locations ----
emit("")
emit("#################### item_ext_prop.txt ####################")
t = dec(Path("current/configs/item_ext_prop.txt").read_bytes())
lines = t.splitlines()
emit("total lines=%d" % len(lines))
# classify lines
cjk_lines = [(i, l) for i, l in enumerate(lines, 1) if CJK.search(l)]
emit("lines with CJK=%d" % len(cjk_lines))
emit("--- first 12 CJK lines ---")
for i, l in cjk_lines[:12]:
    emit("%4d | %r" % (i, l[:130]))
emit("--- sample NON-CJK data lines (to see structure) ---")
nc = [(i, l) for i, l in enumerate(lines, 1) if not CJK.search(l) and l.strip()]
for i, l in nc[:10]:
    emit("%4d | %r" % (i, l[:130]))

Path(".work/exam3.out").write_text("\n".join(out), encoding="utf-8")
print("WROTE .work/exam3.out")
