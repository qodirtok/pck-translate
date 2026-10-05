# -*- coding: utf-8 -*-
import codecs, re

def load(f):
    txt = open(f, "rb").read()
    # detect utf-16
    if txt[:2] in (b"\xff\xfe", b"\xfe\xff") or txt[1:2] == b"\x00":
        s = txt.decode("utf-16", errors="ignore")
    else:
        s = txt.decode("utf-8", errors="ignore")
    d = {}
    for line in s.splitlines():
        m = re.match(r"\s*(\d+)\s+(.*)$", line)
        if m:
            d[m.group(1)] = m.group(2).strip().strip('"')
    return d

cur = load("current/configs/fixed_msg.txt")
tr = load("Translate/configs/fixed_msg.txt")
keys = ["803","815","816","830","833","842","843","852","853","855","856","857","858",
        "859","860","861","862","863","864","865","866","867","868","869","870","871",
        "872","873","874","875","876","877","878","879","880","881","882","883","884",
        "885","886","887","888","889","890","891","892","893","894","895","896","897",
        "898","899","900","901","902","903","904","905","906","907","908","909","910",
        "911","912","913","914","915","916","917","918","919","920","921","922","923",
        "924","925","926","927","928","929","930","931","932","933","934","935","936",
        "937","938","939","940","941","942","943","944","945","946","947","948","949",
        "950","951","952","953","954","955","956","957","958","959","960"]
out = open(".work/tr3/fixed_pairs.txt", "w", encoding="utf-8")
for k in keys:
    if k in cur or k in tr:
        out.write("%s | %s | %s\n" % (k, cur.get(k,""), tr.get(k,"")))
out.close()
print("pairs written", sum(1 for k in keys if k in cur or k in tr))
