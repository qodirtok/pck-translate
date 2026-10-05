# -*- coding: utf-8 -*-
import re

# Chinese notes from current title_def vs English notes from Translate title_def, same keys
cur = {}
tr = {}
for f, d in (("current/script/config/title_def.lua", cur),
             ("Translate/script/config/title_def.lua", tr),
             ("current/configs/title_def.lua", cur),
             ("Translate/configs/title_def.lua", tr)):
    try:
        txt = open(f, encoding="utf-8", errors="ignore").read()
    except FileNotFoundError:
        continue
    for m in re.finditer(r"title_definition\['([^']*)'\]\s*=\s*\{id\s*=\s*(\d+)\s*,\s*note\s*=\s*\"(.*?)\"", txt):
        key, tid, note = m.group(1), m.group(2), m.group(3)
        d.setdefault(key, (tid, note))

out = open(".work/tr3/title_pairs.txt", "w", encoding="utf-8")
for key in sorted(cur):
    tid, cn = cur[key]
    if not re.search(r"[\u4e00-\u9fff]", cn):
        continue
    if "官" not in key and "将军" not in key and "令" not in key and "大夫" not in key:
        continue
    en = tr.get(key, ("", ""))[1]
    out.write("%s | %s | %s\n" % (key, cn, en))
out.close()
print("pairs:", sum(1 for k in cur if re.search(r"[\u4e00-\u9fff]", cur[k][1])))
