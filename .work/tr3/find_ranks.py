# -*- coding: utf-8 -*-
import os, re

# find aligned current/Translate title_def entries whose Chinese key contains an official rank name
ranks = ["伏波将军","横野将军","讨虏将军","鹰扬将军","太乐令","太仓令","太医令","太史令",
         "谏议大夫","谒者仆射","散骑常侍","建威中郎将","抚军中郎将","荡寇中郎将","典军中郎将",
         "太子洗马","太子少傅","太子太傅","将作大匠","执金吾","水衡都尉","中书令","侍中",
         "尚书令","前将军","后将军","左将军","右将军","左中郎将","右中郎将","太子太保","少府",
         "光禄勋","卫尉","太仆","太常","廷尉","鸿胪","宗正","大司农","大司寇","御史大夫",
         "少府卿","光禄大夫","骠骑将军","车骑将军","卫将军","大将军","北军","城门校尉"]

for f in ("Translate/configs/title_def.lua", "Translate/script/config/title_def.lua"):
    if not os.path.exists(f):
        continue
    print("#####", f)
    for line in open(f, encoding="utf-8", errors="ignore"):
        m = re.match(r"\s*title_definition\['([^']*)'\]", line)
        if not m:
            continue
        key = m.group(1)
        for r in ranks:
            if r in key:
                note = re.search(r"note\s*=\s*\"(.*?)\"\s*,\s*desc", line)
                print("  %-46s -> %s" % (key, note.group(1) if note else "?"))
                break

# rank labels in item_ext_prop / fixed_msg
for f in ("Translate/configs/item_ext_prop.txt", "Translate/configs/fixed_msg.txt",
          "Translate/configs/item_ext_desc.txt"):
    if not os.path.exists(f):
        continue
    txt = open(f, encoding="utf-8", errors="ignore").read()
    for key in ("Rank", "Renown", "Reputation", "Merit", "Stamina", "Vitality",
                "Merchant Token", "Artisan", "Craftsman", "Recruit", "Treasure Bag",
                "Talisman", "Codex", "Secret Text", "Skill Jade"):
        n = txt.count(key)
        if n:
            print("%s : %s x%d" % (f, key, n))