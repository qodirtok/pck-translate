# -*- coding: utf-8 -*-
import os

terms = [
 # currencies / stats
 "商票","元宝","汉铢","汉珠","声望","名望","武勋","文勋","功勋","威望","统率",
 "历练","阅历","活力值","体力","斗气","暴击","攻击强度","攻强","生命上限","Max HP",
 "Merit","Civil","Military","Renown","Reputation","Stamina","Crit","Attack","Defense",
 "Movement","Cool-down","Cost","Constitution","Aptitude","Specialization",
 # items / systems
 "秘文","符玉","图鉴","礼包","宝囊","新兵宝囊","传送旗","天书","醉仙令","忠臣碧血石",
 "牛皮号角","大檀香","朱砂笔","金钟灯","玉编钟","红罗伞","青纱屏","黄龙幡","留梦碎片",
 "开光石","天子备战诏","洛阳垂钓令","高级宝囊","长安新兵符","宝物礼包","武器礼包",
 "轻甲装备礼包","重甲装备礼包","强化礼包","的卢马","星之微尘","星之宝玉","星之仙华",
 "混沌神石","木牛流马","谋士卡片","心心相印","甘露丹","妙手回春","秘文灵珠","秘文琼珠",
 "一目神符","昊天石","逆旅河山","演义剧本","华容道","合肥之战","濮阳之战","虎牢关之战",
 "隆中奇情","幻想八阵图","休门","白帝城","羌牙长道","楼兰沙海","殇之雪域","留芳幽谷",
 "迷花雨林","西域蜃楼城","未央宫","云台","太学","点卯","包裹","绑定","交易","开启",
 "领取","兑换","奖励","品质","等级需求","使用等级","开启等级","官阶限制","使用限制",
 # places / names
 "长安","洛阳","赤壁","Chibi","Weiyang","Luoyang","Chang'an","Wooden Ox","Red Hare",
 "Dilu","Merchant","Voucher","Token","Codex","Secret Text","Skill Jade","Battle Qi",
 "Gift Pack","Right-click","Hero","Quest","Title","Bound","Untradable","Tradable",
 # official ranks
 "一品","二品","三品","四品","五品","六品","七品","八品","九品","从三品","从四品",
 "中书令","侍中","尚书令","太乐令","太仓令","太医令","太史令","谏议大夫","谒者仆射",
 "散骑常侍","建威中郎将","抚军中郎将","荡寇中郎将","典军中郎将","太子洗马","太子少傅",
 "太子太傅","将作大匠","执金吾","水衡都尉","伏波将军","横野将军","讨虏将军","鹰扬将军",
 "前将军","后将军","左将军","右将军","左中郎将","Rank","Official","General","Minister",
 # NPCs / events
 "将星录","北斗星君","醉颜红","虫儿飞","虎小虎","甜儿","范臣","王寒","车庸","徐昭",
 "沮授","孟清","马腾","黄权","孟获","鲁肃","蒯越","师勖","贾诩","法正","张昭","刘元起",
 "大司祭","糜定","欧冶子","黄承彦","赵景","皇甫嵩","徐庶","华歆","荀攸","薛悯琴","汗极乐",
 "邻家小弟","兀秃骨","虎年","春节","七夕","拜庙","除蜂","美食","押镖","镖头","灯谜",
 "萤火虫","烟花","红包","拜年","庆典","锦囊","完美","工匠","升级材料","良品","珍品","绝品",
]

hits = {}
for root in ("Translate",):
    for dp, _, fns in os.walk(root):
        if "__pycache__" in dp:
            continue
        for fn in fns:
            if not fn.endswith((".lua", ".txt", ".xml", ".cfg")):
                continue
            p = os.path.join(dp, fn)
            try:
                txt = open(p, encoding="utf-8", errors="ignore").read()
            except Exception:
                continue
            for t in terms:
                if t not in txt:
                    continue
                bucket = hits.setdefault(t, [])
                if len(bucket) >= 3:
                    continue
                for line in txt.splitlines():
                    if t in line:
                        bucket.append((p, line.strip()[:230]))
                        if len(bucket) >= 3:
                            break

with open(".work/tr3/term_hits2.txt", "w", encoding="utf-8") as out:
    for t in terms:
        if t in hits:
            out.write("=== %s\n" % t)
            for p, l in hits[t]:
                out.write("  %s :: %s\n" % (p, l))
print("hits for", len(hits), "of", len(terms), "terms")
