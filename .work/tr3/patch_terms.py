#!/usr/bin/env python3
"""Apply evidence-based terminology fixes to build_batch000.py.

Sources of truth (in priority order):
  1. memory/glossary.db via memory/glossary.py (project translation memory)
  2. Promoted current/Translate aligned pairs (skillgbk.txt, title_def.lua,
     qshop.lua, qshopclassify.txt, weapon_transform.txt)
  3. .work/tr3/title_pairs.txt (official-rank office names)

Every replacement asserts a minimum occurrence count so silent misses fail
loudly.
"""
import sys
from pathlib import Path

PATH = Path(__file__).resolve().parent / "build_batch000.py"
text = PATH.read_text(encoding="utf-8")

# (old, new, expected_count)
REPLACES = [
    # --- full-row rewrites: escort-quest boxes 227-233 (exact \r counts) ---
    (r'(227, "^7fffffQuest: Escort · Thanks from the Envoy\\r^fff600Empty; open it to see the words \"Try Another\\rBox\".\\r^7fffffHold this item and complete the\\rNew Year Escort quest in Jiangnan\\rto claim a special reward quest from\\rthe escort leader who handled\\rthe escort quest."),',
     r'(227, "^7fffffQuest: Escort · Thanks from the Envoy\\r^fff600Empty; inside you can read the words \"Try Another\\rBox\".\\r^7fffffHold this item and complete the New Year Escort quest in\\rJiangnan; you may then claim a special reward quest from\\rthe escort leader who handled the escort quest."),', 1),
    (r'(228, "^7fffffQuest: Escort · Thanks from the Regional Pacifier\\r^fff600\"This handkerchief is clean and graceful, with\\rabsolutely no suspicious traces\" - Xue Minqin\\r^7fffffHold this item and complete the\\rNew Year Escort quest in Bashu\\rto claim a special reward quest from\\rthe escort leader who handled\\rthe escort quest."),',
     r'(228, "^7fffffQuest: Escort · Thanks from the Local Pacification Envoy\\r^fff600\"This handkerchief is clean and lovely, with no\\rsuspicious trace at all\" -- Xue Minqin\\r^7fffffHold this item and complete the New Year Escort quest in\\rBashu; you may then claim a special reward quest from\\rthe escort leader who handled the escort quest."),', 1),
    (r'(229, "^7fffffQuest: Escort · Thanks from the Foreign Tribe\\r^fff600An impressionist painting, hard to\\runderstand; its author is Han Jile.\\r^7fffffHold this item and complete the\\rNew Year Escort quest in Guanzhong\\rto claim a special reward quest from\\rthe escort leader who handled\\rthe escort quest."),',
     r'(229, "^7fffffQuest: Escort · Thanks from the Foreign Tribes\\r^fff600An impressionist painting, not easy to\\runderstand; its author is Han Jile.\\r^7fffffHold this item and complete the New Year Escort quest in\\rGuanzhong; you may then claim a special reward quest from\\rthe escort leader who handled the escort quest."),', 1),
    (r'(230, "^7fffffQuest: Escort · Thanks from the Child\\r^fff600A toy that children love;\\rit makes a thump-thump sound when shaken.\\r^7fffffHold this item and complete the\\rNew Year Escort quest in Hebei\\rto claim a special reward quest from\\rthe escort leader who handled\\rthe escort quest."),',
     r'(230, "^7fffffQuest: Escort · Thanks from the Children\\r^fff600A kind of toy children love; shake it and\\rit makes a thump-thump sound.\\r^7fffffHold this item and complete the New Year Escort quest in\\rHebei; you may then claim a special reward quest from\\rthe escort leader who handled the escort quest."),', 1),
    (r'(231, "^7fffffQuest: Escort · Thanks from the Hundred Beasts\\r^fff600Fur of many rare beasts, rumored to\\rcommand the hundred beasts. Of course,\\rit' + "'" + r's only a rumor...\\r^7fffffHold this item and complete the\\rNew Year Escort quest in Nanman\\rto claim a special reward quest from\\rthe escort leader who handled\\rthe escort quest."),',
     r'(231, "^7fffffQuest: Escort · Thanks from the Myriad Beasts\\r^fff600Fur of many rare beasts; rumor says it can\\rcommand all beasts. Of course,\\rit is only a rumor...\\r^7fffffHold this item and complete the New Year Escort quest in\\rNanman; you may then claim a special reward quest from\\rthe escort leader who handled the escort quest."),', 1),
    (r'(232, "^7fffffQuest: Escort · Thanks from the Tribute Envoy\\r^fff600Though rather small, it keeps out the cold very well.\\r^7fffffHold this item and complete the\\rNew Year Escort quest in Xiliang\\rto claim a special reward quest from\\rthe escort leader who handled\\rthe escort quest."),',
     r'(232, "^7fffffQuest: Escort · Thanks from the Tribute Envoy\\r^fff600Rather small, but it keeps out the cold very well.\\r^7fffffHold this item and complete the New Year Escort quest in\\rXiliang; you may then claim a special reward quest from\\rthe escort leader who handled the escort quest."),', 1),
    (r'(233, "^7fffffQuest: Escort · Thanks from the Recluse\\r^fff600As if soaked in black dog blood; it has the\\reffect of warding off evil.\\r^7fffffHold this item and complete the\\rNew Year Escort quest in Jingxiang\\rto claim a special reward quest from\\rthe escort leader who handled\\rthe escort quest."),',
     r'(233, "^7fffffQuest: Escort · Thanks from the Master\\r^fff600It looks as though it has been soaked in black dog blood,\\rwith the power to suppress evil.\\r^7fffffHold this item and complete the New Year Escort quest in\\rJingxiang; you may then claim a special reward quest from\\rthe escort leader who handled the escort quest."),', 1),

    # --- record 182: 绝世级 tier differs from 156's 无双级 ---
    (r'(182, "^7fffffTier 2 Artifact Stone\\rCan be used to upgrade Peerless-tier Battle God weapons\\rObtainable from the Artifact Merchant (Level Requirement: Hero Lv.16)"),',
     r'(182, "^7fffffSecond Rank Divine Artifact Stone\\rCan be used to upgrade Unmatched-tier Battle God weapons\\rObtainable from the Divine Artifact Merchant (Level Requirement: Hero Lv.16)"),', 1),

    # --- single-record corrections ---
    ("Reputation for all regions", "Reputation in all regions", 1),                       # 8: 各地区声望
    ("New Three Kingdoms Recruitment Emissary", "New Three Kingdoms · Recruitment Emissary", 1),  # 12: 新三国·招贤使节
    ("complete Reputation quests", "complete Renown quests", 1),                          # 20: 名望任务
    ("Chibi - New Vision", "Chibi · New Vision", 1),                                 # 48: 赤壁·新视觉
    ("Increases Attack by 13", "Increases Attack Power by 13", 1),                         # 113: 攻击力
    ("Chibi - Three Kingdoms", "Chibi · Three Kingdoms", 2),                         # 133/134: 《赤壁·三分天下》
    ("Cloud-Ring Ring", "Cloud-Spanning Ring", 1),                                        # 256: 横云戒
    ("the wonders of the Five Elements", "the wonders of the Mystic Gates Five Elements", 1),  # 254: 奇门五行
    ("10 Han Zhu Coins", "10 Gold Han Beads", 1),                                         # 273: 金汉珠 (not 汉铢)
    ("Command Value Gift Pack", "Command Gift Pack", 1),                                  # 276: 统率值礼包
    ("1 Han Zhu Coin", "1 Jade Han Zhu", 1),                                              # 276: 玉汉铢
    ("Attack increases by 41", "Attack Power increases by 41", 1),                         # 297: 攻击力

    # --- DB core terms (fixed_msg.txt block of memory/GLOSSARY.md) ---
    ("Perfect Gift Emissary", "Perfect Gift Messenger", 5),       # 完美礼品使者
    ("Tiger Year Points", "Year of the Tiger Points", 9),        # 虎年积分
    ("Commerce Guild Renown", "Merchant Guild Reputation", 2),    # 商会声望
    ("Central Plains Clan Renown", "Central Plains Clan Reputation", 1),  # 中原族系声望
    ("Wunan Clan Renown", "Wunan Clan Reputation", 1),            # 巫南族系声望
    ("180 Renown for your own clan or 120 Renown for another clan",
     "180 Reputation for your own clan or 120 Reputation for another clan", 1),
    ("Chuannan Renown", "Southern Sichuan Reputation", 2),        # 川南声望
    (" Renown reward", " Reputation reward", 14),                 # region 声望 rewards (90/91)
    ("in Chuannan", "in Southern Sichuan", 3),                    # 202: 川南
    ("Commerce Guild", "Merchant Guild", 9),                      # 商会
    ("Mi Ding, head of the Merchant Guild in Luoyang City",
     "Mi Ding, Merchant Guild Chief in Luoyang City", 2),        # 商会大当家
    ("gold Merchant Vouchers", "gold worth of Merchant Tokens", 22),  # 商票 N 金
    ("Merchant Vouchers", "Merchant Tokens", 2),                  # 商票
    ("Vitality", "Energy", 3),                                    # 活力值
    ("Prerequisite title:", "Title Prerequisite:", 14),           # 称号前提
    ("Secret Text·Ming", "Secret Text·Darkness", 4),    # 秘文·冥
    ("Secret Text·Bing", "Secret Text·Weapon", 4),      # 秘文·兵 (qshop: Secret Text Weapon)
    ("Codex · Cao Zhi", "Codex·Cao Zhi", 1),            # 244: 图鉴·曹植

    # --- 阶 -> Rank ordinals (DB Item Descriptions: 一阶=First Rank, 十一阶=Eleventh Rank) ---
    ("of tier 5 or above", "of Fifth Rank or above", 2),          # records 1/2
    ("Tier 1 Artifact Stone", "First Rank Divine Artifact Stone", 2),
    ("Tier 2 Artifact Stone", "Second Rank Divine Artifact Stone", 1),
    ("Tier 3 Artifact Stone", "Third Rank Divine Artifact Stone", 2),
    ("Artifact-level Hero equipment", "Divine Artifact-level Hero equipment", 3),  # 神器级
    ("the Artifact Merchant", "the Divine Artifact Merchant", 2),        # 神器商人 (182 done above)
    ("Tier 1 ", "First Rank ", 1),
    ("Tier 2 ", "Second Rank ", 3),
    ("Tier 3 ", "Third Rank ", 3),
    ("Tier 4 ", "Fourth Rank ", 1),
    ("Tier 6 ", "Sixth Rank ", 2),
    ("Tier 7 ", "Seventh Rank ", 2),
    ("Tier 9 ", "Ninth Rank ", 3),
    ("Tier 10 ", "Tenth Rank ", 3),
    ("Tier 11 ", "Eleventh Rank ", 3),
    ("Pursuit-of-Life-tier", "Soul-Seeker-tier", 1),              # 追命级 (skillgbk 40410: Soul-Seeker)
    ("Teleport Banners", "Teleport Flags", 11),                   # DB: 传送旗=Teleport Flag

    # --- official ranks: Grade N / Sub-Grade N + established office names (title_pairs.txt) ---
    ("First Rank civil official", "Grade 1 civil official", 1),
    ("First Rank military official", "Grade 1 military official", 1),
    ("Second Rank civil official", "Grade 2 civil official", 1),
    ("Second Rank military official", "Grade 2 military official", 1),
    ("Seventh Rank civil official", "Grade 7 civil official", 1),
    ("Seventh Rank military official", "Grade 7 military official", 1),
    ("Ninth Rank civil official", "Grade 9 civil official", 1),
    ("Ninth Rank military official", "Grade 9 military official", 1),
    ("Fifth Rank civil official", "Grade 5 civil official", 1),
    ("Fifth Rank military official", "Grade 5 military official", 1),
    ("Third Rank Grand Tutor to the Crown Prince", "Grade 3 Crown Grand Tutor", 1),
    ("Third Rank Master Artisan", "Grade 3 Master Builder", 1),
    ("Third Rank Commander of the Golden Turbans", "Grade 3 Guardian of the Capital", 1),
    ("Third Rank Commandant of Waterworks", "Grade 3 Waterworks Commandant", 1),
    ("Fifth Rank Taming-the-Waves General", "Grade 5 Wave-Calming General", 1),
    ("Fifth Rank Grand Music Director", "Grade 5 Grand Music Director", 1),
    ("Fifth Rank Grand Granary Director", "Grade 5 Grand Granary Director", 1),
    ("Fifth Rank Grand Medical Director", "Grade 5 Grand Medical Director", 1),
    ("Fifth Rank Grand Historiographer", "Grade 5 Grand Historian", 1),
    ("Fifth Rank Cross-the-Wilds General", "Grade 5 Wilderness-Spanning General", 1),
    ("Fifth Rank Subduing-the-Barbarians General", "Grade 5 Bandit-Punishing General", 1),
    ("Fifth Rank Falcon-Rising General", "Grade 5 Falcon-Soaring General", 1),
    ("Vice Third Rank Palace Secretary", "Sub-Grade 3 Director of the Secretariat", 1),
    ("Vice Third Rank Palace Attendant", "Sub-Grade 3 Palace Attendant", 1),
    ("Vice Third Rank Front General", "Sub-Grade 3 Front General", 1),
    ("Vice Third Rank Right General", "Sub-Grade 3 Right General", 1),
    ("Vice Third Rank Rear General", "Sub-Grade 3 Rear General", 1),
    ("Vice Third Rank Junior Tutor to the Crown Prince", "Sub-Grade 3 Crown Young Tutor", 1),
    ("Vice Third Rank Department of State Affairs Director", "Sub-Grade 3 Director of State Affairs", 1),
    ("Vice Third Rank Left General", "Sub-Grade 3 Left General", 1),
    ("Vice Third Rank civil official", "Sub-Grade 3 civil official", 1),
    ("Vice Third Rank military official", "Sub-Grade 3 military official", 1),
    ("Vice Fourth Rank Colonel of the Army", "Sub-Grade 4 Army Commandant", 1),
    ("Vice Fourth Rank Crown Prince's Groom", "Sub-Grade 4 Crown Groom", 1),
    ("Vice Fourth Rank Establishing-Might Central Lieutenant General", "Sub-Grade 4 Might-Building Commandant", 1),
    ("Vice Fourth Rank Supporting-the-Army Central Lieutenant General", "Sub-Grade 4 Army-Supporting Commandant", 1),
    ("Vice Fourth Rank Palace Attendant-in-Ordinary", "Sub-Grade 4 Attached Cavalry Attendant", 1),
    ("Vice Fourth Rank civil official", "Sub-Grade 4 civil official", 1),
    ("Vice Fourth Rank military official", "Sub-Grade 4 military official", 1),
    ("Vice Fourth Rank Bandit-Suppressing Central Lieutenant General", "Sub-Grade 4 Bandit-Sweeping Commandant", 1),
    ("Vice Fourth Rank Remonstrance Grandee", "Sub-Grade 4 Remonstrance Master", 1),
    ("Vice Fourth Rank Palace Messenger-in-Chief", "Sub-Grade 4 Usher Assistant", 1),
    ("Fifth Rank Official", "Grade 5 Official", 4),               # 279/280/282/284 官阶限制
    ("Vice Third Rank Official", "Sub-Grade 3 Official", 2),     # 281/283 官阶限制
    ("Torch Dragon's Gall", "Zhulong's Gall", 1),                 # 烛龙胆 (DB 烛龙派=Zhulong Sect)

    # --- leaked Chinese / token hygiene ---
    ("Effect:扇-shaped", "Effect: fan-shaped", 2),            # 扇形
]

failures = []
for old, new, expected in REPLACES:
    n = text.count(old)
    if n != expected:
        failures.append((old[:70], expected, n))
        continue
    text = text.replace(old, new)

if failures:
    print("REPLACEMENT MISMATCHES (old, expected, found):")
    for old, exp, got in failures:
        print(f"  {exp:3d} vs {got:3d} : {old}")
    sys.exit(1)

PATH.write_text(text, encoding="utf-8")
print(f"OK: applied {len(REPLACES)} replacement rules to {PATH.name}")
