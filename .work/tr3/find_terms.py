import os

terms = ["声望","名望","功勋","武勋","文勋","秘文","符玉","木牛流马","的卢马",
         "心心相印","未央宫","虎小虎","醉颜红","将星录","北斗星君","三分天下",
         "赤壁","泪石","美玉","火精","商票","军备令","宝囊","新兵宝囊",
         "Renown","Reputation","Merit","Secret Text","Skill Jade","Wooden Ox",
         "Dilu","Hearts","Chibi","Mirage","Loulan","Snowlands","Gift Pack",
         "使用等级","开启等级","官阶限制","等级需求","Cool-down","Right-click"]

hits = {t: [] for t in terms}
for root in ("Translate","current"):
    for dp,_,fns in os.walk(root):
        if "__pycache__" in dp:
            continue
        for fn in fns:
            if not fn.endswith((".lua",".txt",".xml",".md",".cfg")):
                continue
            p = os.path.join(dp,fn)
            try:
                txt = open(p,encoding="utf-8",errors="ignore").read()
            except Exception:
                continue
            for t in terms:
                if t in txt and len(hits[t]) < 3:
                    for line in txt.splitlines():
                        if t in line:
                            hits[t].append((p, line.strip()[:170]))
                            if len(hits[t]) >= 3:
                                break

out = open(".work/tr3/term_hits.txt","w",encoding="utf-8")
for t in terms:
    out.write("=== %s\n" % t)
    for p,l in hits[t]:
        out.write("  %s :: %s\n" % (p,l))
out.close()
print("done")
