import re, sys
from pathlib import Path
sys.path.insert(0, "tools")
import core

ID_TAB = re.compile(r"^(\d+,?\t)")   # a REAL row id: number + TAB
FILES = ["toptable.txt", "instance.txt", "buff_str.txt"]

def lines(p):
    bom, enc, _eol, ls, crlf = core.read_text(p)
    return ls

out = []
for f in FILES:
    src = Path("current/configs")/f
    dst = Path("Translate/.staging/configs")/f
    if not dst.is_file():
        out.append("%s: NO STAGING DST" % f)
        continue
    sl, dl = lines(src), lines(dst)
    # relative quote parity: per-line src quote count == dst quote count
    q_rel = [i for i,(a,b) in enumerate(zip(sl,dl)) if a.count('"') != b.count('"')]
    # absolute (what audit does) on dst
    q_abs = [i for i,b in enumerate(dl) if b.count('"') not in (0,2)]
    # absolute on SRC baseline
    q_abs_src = [i for i,a in enumerate(sl) if a.count('"') not in (0,2)]
    # real-id check (require TAB)
    id_real = []
    for i,(a,b) in enumerate(zip(sl,dl)):
        ma, mb = ID_TAB.match(a), ID_TAB.match(b)
        if (ma is None) != (mb is None) or (ma and ma.group(1) != mb.group(1)):
            id_real.append(i)
    out.append("%-14s lines=%d" % (f, len(sl)))
    out.append("   quote_rel_mismatch(dst!=src) : %d" % len(q_rel))
    out.append("   quote_abs_dst_not_0_or_2     : %d   (audit)" % len(q_abs))
    out.append("   quote_abs_SRC_not_0_or_2     : %d   (source baseline)" % len(q_abs_src))
    out.append("   id_real_mismatch(num+TAB)    : %d   (audit id would be higher)" % len(id_real))
    if q_rel:
        out.append("   e.g. rel-quote @%d" % q_rel[0])
        i = q_rel[0]
        out.append("     src=%r" % sl[i][:80])
        out.append("     dst=%r" % dl[i][:80])
    if id_real:
        out.append("   e.g. id-real @%d" % id_real[0])
        i = id_real[0]
        out.append("     src=%r" % sl[i][:80])
        out.append("     dst=%r" % dl[i][:80])

# also: buff_str lines where dst starts with digit but src does not (audit id false-pos)
f = "buff_str.txt"
sl, dl = lines(Path("current/configs")/f), lines(Path("Translate/.staging/configs")/f)
digit_start = []
for i,(a,b) in enumerate(zip(sl,dl)):
    ma, mb = core.ID.match(a), core.ID.match(b)
    if (ma is None) != (mb is None):
        digit_start.append(i)
out.append("")
out.append("buff_str audit-id-flagged lines: %d  (src/dst disagree on leading-number)" % len(digit_start))
for i in digit_start[:12]:
    out.append("   @%d src=%r" % (i, sl[i][:60]))
    out.append("        dst=%r" % (dl[i][:60]))

Path(".work/diag2.out").write_text("\n".join(out), encoding="utf-8")
print("WROTE .work/diag2.out")
