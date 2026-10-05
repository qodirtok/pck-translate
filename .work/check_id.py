import sys
from pathlib import Path
sys.path.insert(0, "tools")
import core, re

out = []
for f in ["buff_str.txt", "toptable.txt", "instance.txt"]:
    p = Path("current/configs")/f
    _b, _e, _l, ls, _c = core.read_text(p)
    # find lines that look like real id rows (leading number) and show delimiter
    out.append("=== %s ===" % f)
    shown = 0
    for ln in ls:
        m = re.match(r"^(\d+,?)([\t ])", ln)
        if m and shown < 4:
            out.append("  num=%r delim=%r  line=%r" % (m.group(1), m.group(2), ln[:50]))
            shown += 1
    # count num+TAB vs num+SPACE leading rows
    tab_rows = sum(1 for ln in ls if re.match(r"^\d+,?\t", ln))
    sp_rows = sum(1 for ln in ls if re.match(r"^\d+,? ", ln))
    out.append("  rows starting num+TAB=%d  num+SPACE=%d" % (tab_rows, sp_rows))

Path(".work/check_id.out").write_text("\n".join(out), encoding="utf-8")
print("WROTE .work/check_id.out")
