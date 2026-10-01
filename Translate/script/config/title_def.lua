 --﻿称号显示脚本本
--title_definition部分为称号描述，包括'asdf'（字符串描述）、id、note（名称）、desc（描述1）、desc_1（描述2）、desc_2（描述3） --title_definition中的desc的第一个字符表示称号归属的国家：0表示称号永远显示；1表示只有魏国玩家才能显示；2表示蜀国玩家才能显示；3表示吴国玩家才能显示
--$S 表示夫妻
--$T 表示师徒
title_definition = {}
title_definition['测试称号1'] = {id = 1 , note = "^ffbc3c[$S's Husband]" , desc = "0From now on, nurture each other through hardships, never leaving or abandoning each other." , desc_1 = "" , desc_2 = ""}
title_definition['测试称号2'] = {id = 2 , note = "^ffbc3c[$S's Wife]" , desc = "0From now on, nurture each other through hardships, never leaving or abandoning each other." , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国友善'] = {id = 1101 , note = "^72fe00Righteous Warrior of Kingdom of Wei" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国尊敬'] = {id = 1102 , note = "^0184ffKnight of Kingdom of Wei" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国崇敬'] = {id = 1103 , note = "^a800ffHero of Kingdom of Wei" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国崇拜'] = {id = 1104 , note = "^a800ffChampion of Kingdom of Wei" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国排行榜1'] = {id = 1105 , note = "^ff7d2fLittle Overlord of Kingdom of Wei" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国排行榜2'] = {id = 1106 , note = "^a800ffFive Tiger General of Kingdom of Wei" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国排行榜3'] = {id = 1107 , note = "^a800ffHousehold General of Kingdom of Wei" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国排行榜4'] = {id = 1108 , note = "^a800ffHigh Minister of Kingdom of Wei" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国排行榜5'] = {id = 1109 , note = "^0184ffFierce General of Kingdom of Wei" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国排行榜6'] = {id = 1110 , note = "^0184ffLoyal Minister of Kingdom of Wei" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国排行榜7'] = {id = 1111 , note = "^0184ffCelebrity of Kingdom of Wei" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营魏国入门'] = {id = 1112 , note = "^72fe00Official of Kingdom of Wei" , desc = "0You are now a member of Kingdom of Wei!" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国友善'] = {id = 1201 , note = "^72fe00Righteous Warrior of Kingdom of Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国尊敬'] = {id = 1202 , note = "^0184ffKnight of Kingdom of Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国崇敬'] = {id = 1203 , note = "^a800ffHero of Kingdom of Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国崇拜'] = {id = 1204 , note = "^a800ffChampion of Kingdom of Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国排行榜1'] = {id = 1205 , note = "^ff7d2fLittle Overlord of Kingdom of Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国排行榜2'] = {id = 1206 , note = "^a800ffFive Tiger General of Kingdom of Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国排行榜3'] = {id = 1207 , note = "^a800ffHousehold General of Kingdom of Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国排行榜4'] = {id = 1208 , note = "^a800ffHigh Minister of Kingdom of Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国排行榜5'] = {id = 1209 , note = "^0184ffFierce General of Kingdom of Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国排行榜6'] = {id = 1210 , note = "^0184ffLoyal Minister of Kingdom of Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国排行榜7'] = {id = 1211 , note = "^0184ffCelebrity of Kingdom of Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营蜀国入门'] = {id = 1212 , note = "^72fe00Official of Kingdom of Shu" , desc = "0You are now a member of Kingdom of Shu!" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国友善'] = {id = 1301 , note = "^72fe00Righteous Warrior of Kingdom of Wu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国尊敬'] = {id = 1302 , note = "^0184ffKnight of Kingdom of Wu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国崇敬'] = {id = 1303 , note = "^a800ffHero of Kingdom of Wu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国崇拜'] = {id = 1304 , note = "^a800ffChampion of Kingdom of Wu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国排行榜1'] = {id = 1305 , note = "^ff7d2fLittle Overlord of Kingdom of Wu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国排行榜2'] = {id = 1306 , note = "^a800ffFive Tiger General of Kingdom of Wu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国排行榜3'] = {id = 1307 , note = "^a800ffHousehold General of Kingdom of Wu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国排行榜4'] = {id = 1308 , note = "^a800ffHigh Minister of Kingdom of Wu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国排行榜5'] = {id = 1309 , note = "^0184ffFierce General of Kingdom of Wu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国排行榜6'] = {id = 1310 , note = "^0184ffLoyal Minister of Kingdom of Wu" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国排行榜7'] = {id = 1311 , note = "^0184ffCelebrity of Kingdom of Wu" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营吴国入门'] = {id = 1312 , note = "^72fe00Official of Kingdom of Wu" , desc = "0You are now a member of Kingdom of Wu!" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情河北3'] = {id = 2101 , note = "^72fe00【Face of a Cunning Hero】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +1\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情河北4'] = {id = 2102 , note = "^72fe00【Face of a Capable Minister】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +1\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情河北5'] = {id = 2103 , note = "^72fe00【Long and Far Is the Road】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +30\rAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉6'] = {id = 2201 , note = "^72fe00【Gold Medal Gardener】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +15\rAttack +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉7'] = {id = 2202 , note = "^72fe00【Red Ink Mohist】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10\rAttack +1\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉8'] = {id = 2203 , note = "^72fe00【White Ink Mohist】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10\rAttack +1\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉9'] = {id = 2204 , note = "^72fe00【Prodigious Child】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10\rEXP +1%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉10'] = {id = 2205 , note = "^72fe00【The One Who Built a City in One Night】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +15\rAttack +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉11'] = {id = 2206 , note = "^72fe00【People's Artist】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉12'] = {id = 2207 , note = "^72fe00【Tuesday Visitor】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +20\rAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀7'] = {id = 2301 , note = "^72fe00【Guest of the Five-Ding Tribe】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀8'] = {id = 2302 , note = "^72fe00【Friend of the Five-Ding Tribe】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +20\rAttack +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀9'] = {id = 2303 , note = "^72fe00【Savior of the Five-Ding Tribe】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +35\rAttack +1\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀10'] = {id = 2304 , note = "^72fe00【Hero of the Five-Ding Tribe】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +60\rAttack +2\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀11'] = {id = 2305 , note = "^72fe00【Lone Traveler of a Thousand Miles】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +30\rAttack +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀12'] = {id = 2306 , note = "^72fe00【Once Massaged a God's Legs】" , desc = "0^72fe00Permanent Effect:\r^ffffffDefense +1\rEXP +1%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀13'] = {id = 2307 , note = "^72fe00【Master of the Brush】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +35\rAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀14'] = {id = 2308 , note = "^72fe00【Tomb-Robbing Colonel】" , desc = "0^72fe00Permanent Effect:\r^ffffffHP Regen Speed +1\rEXP +1%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀15'] = {id = 2309 , note = "^72fe00【Terminator】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +20\rAttack +2\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望01'] = {id = 3001 , note = "^72fe00Rookie of Central Plains" , desc = "0^72fe00Permanent Effect:\r^ffffffStamina +10\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望02'] = {id = 3002 , note = "^0184ff※Hero of Central Plains※" , desc = "0^0184ffPermanent Effect:\r^ffffffStamina +20\rDefense +2\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望03'] = {id = 3003 , note = "^a800ffRenowned Hero of Central Plains" , desc = "0^a800ffPermanent Effect:\r^ffffffStamina +20\rDefense +4\rCrit Bonus Damage +10\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望04'] = {id = 3004 , note = "^ff7d2fElite of Central Plains" , desc = "0^ff7d2fPermanent Effect:\r^ffffffStamina +20\rDefense +6\rCrit Bonus Damage +10\rAccuracy +1\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望05'] = {id = 3005 , note = "^fff962Pillar of Central Plains" , desc = "0^fff962Permanent Effect:\r^ffffffStamina +40\rDefense +8\rCrit Bonus Damage +10\rAccuracy +1\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望06'] = {id = 3006 , note = "^ffc556National Hero of Central Plains" , desc = "0^ffc556Permanent Effect:\r^ffffffStamina +40\rDefense +10\rCrit Bonus Damage +10\rAccuracy +1\rDodge +1\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望07'] = {id = 3007 , note = "^ffc556Cornerstone of Central Plains" , desc = "0^ffc556Permanent Effect:\r^ffffffStamina +60\rDefense +20\rCrit Bonus Damage +10\rAccuracy +1\rDodge +1\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望08'] = {id = 3008 , note = "^ffc556※Young Phoenix of Central Plains※" , desc = "0^ffc556Permanent Effect:\r^ffffffMax HP +200\rStamina +60\rDefense +28\rCrit Bonus Damage +10\rAccuracy +1\rDodge +1\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望09'] = {id = 3009 , note = "^ffc556※Hidden Dragon of Central Plains※" , desc = "0^ffc556Permanent Effect:\r^ffffffMax HP +500\rStamina +60\rDefense +40\rCrit Bonus Damage +10\rAccuracy +1\rDodge +1\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望01'] = {id = 3011 , note = "^72fe00Rookie of Wunan" , desc = "0^72fe00Permanent Effect:\r^ffffffStamina +10\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望02'] = {id = 3012 , note = "^0184ff※Hero of Wunan※" , desc = "0^0184ffPermanent Effect:\r^ffffffStamina +20\rAttack +4\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望03'] = {id = 3013 , note = "^a800ffRenowned Hero of Wunan" , desc = "0^a800ffPermanent Effect:\r^ffffffStamina +20\rAttack +8\rCrit Bonus Damage +10\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望04'] = {id = 3014 , note = "^ff7d2fElite of Wunan" , desc = "0^ff7d2fPermanent Effect:\r^ffffffStamina +20\rAttack +12\rCrit Bonus Damage +10\rCrit Resist +1\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望05'] = {id = 3015 , note = "^fff962Pillar of Wunan" , desc = "0^fff962Permanent Effect:\r^ffffffStamina +40\rAttack +16\rCrit Bonus Damage +10\rCrit Resist +1\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望06'] = {id = 3016 , note = "^ffc556National Hero of Wunan" , desc = "0^ffc556Permanent Effect:\r^ffffffStamina +40\rAttack +20\rCrit Bonus Damage +10\rCrit +1\rCrit Resist +1\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望07'] = {id = 3017 , note = "^ffc556Cornerstone of Wunan" , desc = "0^ffc556Permanent Effect:\r^ffffffStamina +60\rAttack +20\rCrit Bonus Damage +20\rCrit +1\rCrit Resist +1\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望08'] = {id = 3018 , note = "^ffc556※Young Phoenix of Wunan※" , desc = "0^ffc556Permanent Effect:\r^ffffffMax HP +200\rStamina +60\rDefense +8\rAttack +20\rCrit Bonus Damage +20\rCrit +1\rCrit Resist +1\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望09'] = {id = 3019 , note = "^ffc556※Hidden Dragon of Wunan※" , desc = "0^ffc556Permanent Effect:\r^ffffffMax HP +500\rStamina +60\rDefense +20\rAttack +20\rCrit Bonus Damage +20\rCrit +1\rCrit Resist +1\r^ffc556ClanRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北友善'] = {id = 3101 , note = "^72fe00Righteous Warrior of Hebei" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +20\rAttack +1\rDefense +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北尊敬'] = {id = 3102 , note = "^0184ffKnight of Hebei" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +20\rAttack +1\rDefense +1\rCrit +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北崇敬'] = {id = 3103 , note = "^a800ffHero of Hebei" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +60\rAttack +3\rDefense +1\rCrit +1\rCrit Damage +3%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北崇拜'] = {id = 3104 , note = "^a800ffChampion of Hebei" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +120\rAttack +3\rDefense +1\rCrit +1\rCrit Damage +5%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北15000'] = {id = 3111 , note = "^0184ffFamous Scholar of Hebei" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +50\rAttack +2\rDefense +1\rCrit +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北十万'] = {id = 3112 , note = "^a800ffHero of Hebei" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +70\rAttack +3\rDefense +1\rCrit +1\rCrit Damage +5%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北20万'] = {id = 3113 , note = "^a800ffVenerable of Hebei" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +220\rAttack +3\rDefense +1\rCrit +1\rCrit Damage +5%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北50万'] = {id = 3114 , note = "^a800ff【King of Hebei】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +420\rAttack +3\rDefense +9\rCrit +1\rCrit Damage +5%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北100万'] = {id = 3115 , note = "^a800ff【Sage Hero of Hebei】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +720\rAttack +3\rDefense +21\rCrit +1\rCrit Damage +5%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜1'] = {id = 3105 , note = "^ff7d2fLittle Overlord of Hebei" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜2'] = {id = 3106 , note = "^a800ffSeven Stars of Hebei" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜3'] = {id = 3107 , note = "^a800ffEighteen Cavalry of Hebei" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜4'] = {id = 3108 , note = "^a800ffThirty-Six Champions of Hebei" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜5'] = {id = 3109 , note = "^0184ffSeventy-Two Heroes of Hebei" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜6'] = {id = 3110 , note = "^0184ffCelebrity of Hebei" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉友善'] = {id = 3201 , note = "^72fe00Righteous Warrior of Xi Liang" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +30\rAttack +2\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉尊敬'] = {id = 3202 , note = "^0184ffKnight of Xi Liang" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +30\rAttack +2\rCrit +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉崇敬'] = {id = 3203 , note = "^a800ffHero of Xi Liang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +60\rAttack +8\rCrit +1\rCrit Resist +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉崇拜'] = {id = 3204 , note = "^a800ffChampion of Xi Liang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +120\rAttack +8\rCrit +1\rCrit Resist +2\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉15000'] = {id = 3211 , note = "^0184ffFamous Scholar of Xi Liang" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +60\rAttack +4\rCrit +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉十万'] = {id = 3212 , note = "^a800ffHero of Xi Liang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +70\rAttack +8\rCrit +1\rCrit Resist +2\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉20万'] = {id = 3213 , note = "^a800ffVenerable of Xi Liang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +220\rAttack +8\rCrit +1\rCrit Resist +2\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉50万'] = {id = 3214 , note = "^a800ff【King of Xiliang】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +420\rAttack +8\rDefense +8\rCrit +1\rCrit Resist +2\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉100万'] = {id = 3215 , note = "^a800ff【Sage Hero of Xiliang】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +720\rAttack +8\rDefense +20\rCrit +1\rCrit Resist +2\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜1'] = {id = 3205 , note = "^ff7d2fLittle Overlord of Xi Liang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜2'] = {id = 3206 , note = "^a800ffSeven Heroes of Xi Liang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜3'] = {id = 3207 , note = "^a800ffEighteen Cavalry of Xi Liang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜4'] = {id = 3208 , note = "^a800ffThirty-Six Champions of Xi Liang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜5'] = {id = 3209 , note = "^0184ffSeventy-Two Heroes of Xi Liang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜6'] = {id = 3210 , note = "^0184ffCelebrity of Xi Liang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀友善'] = {id = 3301 , note = "^72fe00Righteous Warrior of Ba-Shu" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +40\rHP Regen Speed +5\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀尊敬'] = {id = 3302 , note = "^0184ffKnight of Ba-Shu" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +40\rHP Regen Speed +5\rCrit +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀崇敬'] = {id = 3303 , note = "^a800ffHero of Ba-Shu" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +80\rAttack +3\rDefense +1\rHP Regen Speed +5\rCrit +1\rDodge +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀崇拜'] = {id = 3304 , note = "^a800ffChampion of Ba-Shu" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +140\rAttack +3\rDefense +4\rHP Regen Speed +5\rCrit +1\rDodge +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀15000'] = {id = 3311 , note = "^0184ffFamous Scholar of Ba-Shu" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +70\rAttack +1\rDefense +1\rHP Regen Speed +5\rCrit +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀十万'] = {id = 3312 , note = "^a800ffHero of Ba-Shu" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +90\rAttack +3\rDefense +4\rHP Regen Speed +5\rCrit +1\rDodge +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀20万'] = {id = 3313 , note = "^a800ffVenerable of Ba-Shu" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +240\rAttack +3\rDefense +4\rHP Regen Speed +5\rCrit +1\rDodge +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀50万'] = {id = 3314 , note = "^a800ff【King of Ba-Shu】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +440\rAttack +3\rDefense +12\rHP Regen Speed +5\rCrit +1\rDodge +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀100万'] = {id = 3315 , note = "^a800ff【Sage Hero of Ba-Shu】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +740\rAttack +3\rDefense +24\rHP Regen Speed +5\rCrit +1\rDodge +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀排行榜2'] = {id = 3306 , note = "^a800ffSeven Champions of Ba-Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀排行榜3'] = {id = 3307 , note = "^a800ffEighteen Cavalry of Ba-Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀排行榜4'] = {id = 3308 , note = "^a800ffThirty-Six Champions of Ba-Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀排行榜5'] = {id = 3309 , note = "^0184ffSeventy-Two Heroes of Ba-Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀排行榜6'] = {id = 3310 , note = "^0184ffCelebrity of Ba-Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮友善'] = {id = 3401 , note = "^72fe00Righteous Warrior of Southern Barbarians" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +60\rAttack +2\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮尊敬'] = {id = 3402 , note = "^0184ffKnight of Southern Barbarians" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +60\rAttack +2\rCrit +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮崇敬'] = {id = 3403 , note = "^a800ffHero of Southern Barbarians" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +60\rAttack +2\rDefense +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rIndirect Resist +3\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮崇拜'] = {id = 3404 , note = "^a800ffChampion of Southern Barbarians" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +140\rAttack +2\rDefense +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rIndirect Resist +3\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮15000'] = {id = 3411 , note = "^0184ffFamous Scholar of Southern Barbarians" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +60\rAttack +2\rDefense +2\rCrit +1\rMax HP +1%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮十万'] = {id = 3412 , note = "^a800ffHero of Southern Barbarians" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +90\rAttack +2\rDefense +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rIndirect Resist +3\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮20万'] = {id = 3413 , note = "^a800ffVenerable of Southern Barbarians" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +240\rAttack +2\rDefense +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rIndirect Resist +3\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮50万'] = {id = 3414 , note = "^a800ff【King of the Southern Barbarians】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +440\rAttack +2\rDefense +10\rCrit +1\rMax HP +1%\rAttack Power +1%\rIndirect Resist +3\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮100万'] = {id = 3415 , note = "^a800ff【Sage Hero of the Southern Barbarians】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +740\rAttack +2\rDefense +22\rCrit +1\rMax HP +1%\rAttack Power +1%\rIndirect Resist +3\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜1'] = {id = 3405 , note = "^ff7d2fLittle Overlord of Southern Barbarians" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜2'] = {id = 3406 , note = "^a800ffSeven Warriors of Southern Barbarians" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜3'] = {id = 3407 , note = "^a800ffEighteen Cavalry of Southern Barbarians" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜4'] = {id = 3408 , note = "^a800ffThirty-Six Champions of Southern Barbarians" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜5'] = {id = 3409 , note = "^0184ffSeventy-Two Heroes of Southern Barbarians" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜6'] = {id = 3410 , note = "^0184ffCelebrity of Southern Barbarians" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南友善'] = {id = 3501 , note = "^72fe00Righteous Warrior of Jiangnan" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +50\rAttack +2\rDefense +2\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南尊敬'] = {id = 3502 , note = "^0184ffKnight of Jiangnan" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +50\rAttack +2\rDefense +2\rCrit +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南崇敬'] = {id = 3503 , note = "^a800ffHero of Jiangnan" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +50\rAttack +3\rDefense +3\rCrit +1\rMax HP +1%\rAttack Power +1%\rDodge +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南崇拜'] = {id = 3504 , note = "^a800ffChampion of Jiangnan" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +110\rAttack +3\rDefense +3\rCrit +1\rMax HP +1%\rAttack Power +2%\rDodge +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南15000'] = {id = 3511 , note = "^0184ffFamous Scholar of Jiangnan" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +50\rAttack +3\rDefense +3\rCrit +1\rMax HP +1%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南十万'] = {id = 3512 , note = "^a800ffHero of Jiangnan" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +60\rAttack +3\rDefense +3\rCrit +1\rMax HP +1%\rAttack Power +2%\rDodge +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南20万'] = {id = 3513 , note = "^a800ffVenerable of Jiangnan" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +210\rAttack +3\rDefense +3\rCrit +1\rMax HP +1%\rAttack Power +2%\rDodge +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南50万'] = {id = 3514 , note = "^a800ff【King of Jiangnan】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +410\rAttack +3\rDefense +11\rCrit +1\rMax HP +1%\rAttack Power +2%\rDodge +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南100万'] = {id = 3515 , note = "^a800ff【Sage Hero of Jiangnan】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +710\rAttack +3\rDefense +23\rCrit +1\rMax HP +1%\rAttack Power +2%\rDodge +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜1'] = {id = 3505 , note = "^ff7d2fLittle Overlord of Jiangnan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜2'] = {id = 3506 , note = "^a800ffSeven Eccentrics of Jiangnan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜3'] = {id = 3507 , note = "^a800ffEighteen Cavalry of Jiangnan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜4'] = {id = 3508 , note = "^a800ffThirty-Six Champions of Jiangnan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜5'] = {id = 3509 , note = "^0184ffSeventy-Two Heroes of Jiangnan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜6'] = {id = 3510 , note = "^0184ffCelebrity of Jiangnan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄友善'] = {id = 3601 , note = "^72fe00Righteous Warrior of Jing-Xiang" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +60\rDefense +2\rHP Regen Speed +2\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄尊敬'] = {id = 3602 , note = "^0184ffKnight of Jing-Xiang" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +60\rDefense +2\rHP Regen Speed +2\rCrit +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄崇敬'] = {id = 3603 , note = "^a800ffHero of Jing-Xiang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +60\rAttack +5\rDefense +2\rHP Regen Speed +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rAccuracy +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄崇拜'] = {id = 3604 , note = "^a800ffChampion of Jing-Xiang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +120\rAttack +5\rDefense +2\rHP Regen Speed +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rAccuracy +2\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄15000'] = {id = 3611 , note = "^0184ffFamous Scholar of Jing-Xiang" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +60\rAttack +2\rDefense +2\rHP Regen Speed +2\rCrit +1\rMax HP +1%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄十万'] = {id = 3612 , note = "^a800ffHero of Jing-Xiang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +70\rAttack +5\rDefense +2\rHP Regen Speed +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rAccuracy +2\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄20万'] = {id = 3613 , note = "^a800ffVenerable of Jing-Xiang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +220\rAttack +5\rDefense +2\rHP Regen Speed +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rAccuracy +2\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄50万'] = {id = 3614 , note = "^a800ff【King of Jingxiang】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +420\rAttack +5\rDefense +10\rHP Regen Speed +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rAccuracy +2\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄100万'] = {id = 3615 , note = "^a800ff【Sage Hero of Jingxiang】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +720\rAttack +5\rDefense +22\rHP Regen Speed +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rAccuracy +2\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜1'] = {id = 3605 , note = "^ff7d2fLittle Overlord of Jing-Xiang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜2'] = {id = 3606 , note = "^a800ffSeven Talents of Jing-Xiang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜3'] = {id = 3607 , note = "^a800ffEighteen Cavalry of Jing-Xiang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜4'] = {id = 3608 , note = "^a800ffThirty-Six Champions of Jing-Xiang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜5'] = {id = 3609 , note = "^0184ffSeventy-Two Heroes of Jing-Xiang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜6'] = {id = 3610 , note = "^0184ffCelebrity of Jing-Xiang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中友善'] = {id = 3701 , note = "^72fe00Righteous Warrior of Guanzhong" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +2\rDefense +2\rHP Regen Speed +2\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中尊敬'] = {id = 3702 , note = "^0184ffKnight of Guanzhong" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack +2\rDefense +2\rHP Regen Speed +2\rCrit +1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中崇敬'] = {id = 3703 , note = "^a800ffHero of Guanzhong" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack +2\rDefense +2\rHP Regen Speed +2\rCrit +1\rCrit Damage +7%\rMax HP +1%\rAttack Power +1%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中崇拜'] = {id = 3704 , note = "^a800ffChampion of Guanzhong" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +80\rAttack +2\rDefense +2\rHP Regen Speed +2\rCrit +1\rCrit Damage +7%\rMax HP +1%\rAttack Power +1%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中15000'] = {id = 3711 , note = "^0184ffFamous Scholar of Guanzhong" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack +2\rDefense +2\rHP Regen Speed +2\rCrit +1\rCrit Damage +2%\rMax HP +1%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中十万'] = {id = 3712 , note = "^a800ffHero of Guanzhong" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +30\rAttack +2\rDefense +2\rHP Regen Speed +2\rCrit +1\rCrit Damage +7%\rMax HP +1%\rAttack Power +1%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中20万'] = {id = 3713 , note = "^a800ffVenerable of Guanzhong" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +180\rAttack +2\rDefense +2\rHP Regen Speed +2\rCrit +1\rCrit Damage +7%\rMax HP +1%\rAttack Power +1%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中50万'] = {id = 3714 , note = "^a800ff【King of Guanzhong】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +380\rAttack +2\rDefense +10\rHP Regen Speed +2\rCrit +1\rCrit Damage +7%\rMax HP +1%\rAttack Power +1%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中100万'] = {id = 3715 , note = "^a800ff【Sage Hero of Guanzhong】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +680\rAttack +2\rDefense +22\rHP Regen Speed +2\rCrit +1\rCrit Damage +7%\rMax HP +1%\rAttack Power +1%\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜1'] = {id = 3705 , note = "^ff7d2fLittle Overlord of Guanzhong" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜2'] = {id = 3706 , note = "^a800ffSeven Knights of Guanzhong" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜3'] = {id = 3707 , note = "^a800ffEighteen Cavalry of Guanzhong" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜4'] = {id = 3708 , note = "^a800ffThirty-Six Champions of Guanzhong" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜5'] = {id = 3709 , note = "^0184ffSeventy-Two Heroes of Guanzhong" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜6'] = {id = 3710 , note = "^0184ffCelebrity of Guanzhong" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南友善'] = {id = 3801 , note = "^72fe00Righteous Warrior of South Sichuan" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+5\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南尊敬'] = {id = 3802 , note = "^0184ffKnight of South Sichuan" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack+2\rStamina+5\rCrit Resist+1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南崇敬'] = {id = 3803 , note = "^a800ffHero of South Sichuan" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+4\rStamina+5\rCrit Resist+1\rHP Regen Speed+2\rCrit Bonus Damage+10\rCrit+1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南崇拜'] = {id = 3804 , note = "^a800ffChampion of South Sichuan" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+8\rStamina+10\rCrit Resist+1\rHP Regen Speed+5\rCrit Bonus Damage+30\rCrit+1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南15000'] = {id = 3811 , note = "^0184ffFamous Scholar of South Sichuan" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack+2\rStamina+5\rCrit Resist+1\rHP Regen Speed+2\rCrit Bonus Damage+10\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南十万'] = {id = 3812 , note = "^a800ffHero of South Sichuan" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+6\rStamina+5\rCrit Resist+1\rHP Regen Speed+5\rCrit Bonus Damage+20\rCrit+1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南20万'] = {id = 3813 , note = "^a800ffVenerable of South Sichuan" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+10\rStamina+10\rCrit Resist+1\rHP Regen Speed+5\rCrit Bonus Damage+40\rCrit+1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南50万'] = {id = 3814 , note = "^a800ff【King of South Sichuan】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +200\rDefense +8\rAttack+10\rStamina+10\rCrit Resist+1\rHP Regen Speed+5\rCrit Bonus Damage+40\rCrit+1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南100万'] = {id = 3815 , note = "^a800ff【Sage Hero of South Sichuan】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +500\rDefense +20\rAttack+10\rStamina+10\rCrit Resist+1\rHP Regen Speed+5\rCrit Bonus Damage+40\rCrit+1\r^ffc556RegionRenownTitle only shows the highest level owned" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南排行榜1'] = {id = 3805 , note = "^ff7d2fLittle Overlord of South Sichuan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南排行榜2'] = {id = 3806 , note = "^a800ffSeven Knights of South Sichuan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南排行榜3'] = {id = 3807 , note = "^a800ffEighteen Cavalry of South Sichuan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南排行榜4'] = {id = 3808 , note = "^a800ffThirty-Six Champions of South Sichuan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南排行榜5'] = {id = 3809 , note = "^0184ffSeventy-Two Heroes of South Sichuan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南排行榜6'] = {id = 3810 , note = "^0184ffCelebrity of South Sichuan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_军队1'] = {id = 4101 , note = "^72fe00【Recruit】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_军队2'] = {id = 4102 , note = "^72fe00【Soldier】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +30\rAttack +1\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_军队3'] = {id = 4103 , note = "^72fe00【Corporal】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +50\rAttack +2\rDefense +2" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官9品'] = {id = 5101 , note = "^ffbc3c〓Grade 9 Marquis〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官8品'] = {id = 5102 , note = "^ffbc3c〓Grade 8 Colonel〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官7品'] = {id = 5103 , note = "^ffbc3c〓Grade 7 Commandant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官6品1'] = {id = 5104 , note = "^ffbc3c〓Grade 6 Deputy General〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官6品2'] = {id = 5105 , note = "^ffbc3c〓Grade 6 Side General〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官5品1'] = {id = 5106 , note = "^ffbc3c〓Grade 5 Falcon-Soaring General〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官5品2'] = {id = 5107 , note = "^ffbc3c〓Grade 5 Wave-Calming General〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官5品3'] = {id = 5108 , note = "^ffbc3c〓Grade 5 Bandit-Punishing General〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官5品4'] = {id = 5109 , note = "^ffbc3c〓Grade 5 Wilderness-Spanning General〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品1'] = {id = 5110 , note = "^ffbc3c〓Grade 4 Feather Forest Commandant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品2'] = {id = 5111 , note = "^ffbc3c〓Grade 4 Tiger Guard Commandant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品3'] = {id = 5112 , note = "^ffbc3c〓Grade 4 Five Offices Commandant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品4'] = {id = 5113 , note = "^ffbc3c〓Sub-Grade 4 Army Commandant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品5'] = {id = 5114 , note = "^ffbc3c〓Sub-Grade 4 Army-Supporting Commandant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品6'] = {id = 5115 , note = "^ffbc3c〓Sub-Grade 4 Bandit-Sweeping Commandant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品1'] = {id = 5116 , note = "^ffbc3c〓Sub-Grade 3 Front General〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品2'] = {id = 5117 , note = "^ffbc3c〓Sub-Grade 3 Rear General〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品3'] = {id = 5118 , note = "^ffbc3c〓Sub-Grade 3 Left General〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品4'] = {id = 5119 , note = "^ffbc3c〓Sub-Grade 3 Right General〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品5'] = {id = 5120 , note = "^ffbc3c〓Grade 3 General Who Pacifies the East〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品6'] = {id = 5121 , note = "^ffbc3c〓Grade 3 General Who Pacifies the South〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品7'] = {id = 5122 , note = "^ffbc3c〓Grade 3 General Who Pacifies the West〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品8'] = {id = 5123 , note = "^ffbc3c〓Grade 3 General Who Pacifies the North〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀1'] = {id = 5124 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀2'] = {id = 5125 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀3'] = {id = 5126 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀4'] = {id = 5127 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀5'] = {id = 5128 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀6'] = {id = 5129 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀7'] = {id = 5130 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀8'] = {id = 5131 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀9'] = {id = 5132 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴1'] = {id = 5133 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴2'] = {id = 5134 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴3'] = {id = 5135 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴4'] = {id = 5136 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴5'] = {id = 5137 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴6'] = {id = 5138 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴7'] = {id = 5139 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴8'] = {id = 5140 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴9'] = {id = 5141 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏1'] = {id = 5142 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏2'] = {id = 5143 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏3'] = {id = 5144 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏4'] = {id = 5145 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏5'] = {id = 5146 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏6'] = {id = 5147 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏7'] = {id = 5148 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏8'] = {id = 5149 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏9'] = {id = 5150 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品蜀1'] = {id = 5151 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品蜀2'] = {id = 5152 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品蜀3'] = {id = 5153 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品吴1'] = {id = 5154 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品吴2'] = {id = 5155 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品吴3'] = {id = 5156 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品魏1'] = {id = 5157 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品魏2'] = {id = 5158 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品魏3'] = {id = 5159 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官特品蜀'] = {id = 5160 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官特品吴'] = {id = 5161 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官特品魏'] = {id = 5162 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官9品'] = {id = 5201 , note = "^ffbc3c〓Grade 9 Secretary〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官8品'] = {id = 5202 , note = "^ffbc3c〓Grade 8 Merit Officer〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官7品'] = {id = 5203 , note = "^ffbc3c〓Grade 7 Record Secretary〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官6品1'] = {id = 5204 , note = "^ffbc3c〓Grade 6 Regional Aide〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官6品2'] = {id = 5205 , note = "^ffbc3c〓Grade 6 Chief Clerk〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官5品1'] = {id = 5206 , note = "^ffbc3c〓Grade 5 Grand Music Director〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官5品2'] = {id = 5207 , note = "^ffbc3c〓Grade 5 Grand Historian〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官5品3'] = {id = 5208 , note = "^ffbc3c〓Grade 5 Grand Medical Director〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官5品4'] = {id = 5209 , note = "^ffbc3c〓Grade 5 Grand Granary Director〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品1'] = {id = 5210 , note = "^ffbc3c〓Grade 4 Grand Master of Standards〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品2'] = {id = 5211 , note = "^ffbc3c〓Grade 4 Director Assistant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品3'] = {id = 5212 , note = "^ffbc3c〓Grade 4 Consultant Attendant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品4'] = {id = 5213 , note = "^ffbc3c〓Sub-Grade 4 Remonstrance Master〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品5'] = {id = 5214 , note = "^ffbc3c〓Sub-Grade 4 Crown Groom〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品6'] = {id = 5215 , note = "^ffbc3c〓Sub-Grade 4 Attached Cavalry Attendant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品1'] = {id = 5216 , note = "^ffbc3c〓Sub-Grade 3 Director of State Affairs〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品2'] = {id = 5217 , note = "^ffbc3c〓Sub-Grade 3 Director of the Secretariat〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品3'] = {id = 5218 , note = "^ffbc3c〓Grade 3 Crown Grand Tutor〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品4'] = {id = 5219 , note = "^ffbc3c〓Sub-Grade 3 Crown Young Tutor〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品5'] = {id = 5220 , note = "^ffbc3c〓Sub-Grade 3 Palace Attendant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品6'] = {id = 5221 , note = "^ffbc3c〓Grade 3 Guardian of the Capital〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品7'] = {id = 5222 , note = "^ffbc3c〓Grade 3 Master Builder〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品8'] = {id = 5223 , note = "^ffbc3c〓Grade 3 Waterworks Commandant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀1'] = {id = 5224 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀2'] = {id = 5225 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀3'] = {id = 5226 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀4'] = {id = 5227 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀5'] = {id = 5228 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀6'] = {id = 5229 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀7'] = {id = 5230 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀8'] = {id = 5231 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀9'] = {id = 5232 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴1'] = {id = 5233 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴2'] = {id = 5234 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴3'] = {id = 5235 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴4'] = {id = 5236 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴5'] = {id = 5237 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴6'] = {id = 5238 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴7'] = {id = 5239 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴8'] = {id = 5240 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴9'] = {id = 5241 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏1'] = {id = 5242 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏2'] = {id = 5243 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏3'] = {id = 5244 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏4'] = {id = 5245 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏5'] = {id = 5246 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏6'] = {id = 5247 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏7'] = {id = 5248 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏8'] = {id = 5249 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏9'] = {id = 5250 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品蜀1'] = {id = 5251 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品蜀2'] = {id = 5252 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品蜀3'] = {id = 5253 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品吴1'] = {id = 5254 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品吴2'] = {id = 5255 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品吴3'] = {id = 5256 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品魏1'] = {id = 5257 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品魏2'] = {id = 5258 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品魏3'] = {id = 5259 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官特品蜀'] = {id = 5260 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官特品吴'] = {id = 5261 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官特品魏'] = {id = 5262 , note = "^ffbc3cDeprecated" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆河北'] = {id = 6101 , note = "^72fe00【Anti-Vice Vanguard】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +30\rEXP +1%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆西凉'] = {id = 6102 , note = "^72fe00【Wilderness Escort】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +40\rEXP +1%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆巴蜀'] = {id = 6103 , note = "^72fe00【Six Doors Divine Catcher】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +50\rEXP +1%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆南蛮'] = {id = 6104 , note = "^72fe00【Great Vajra】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +50\rEXP +2%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆江南1'] = {id = 6105 , note = "^72fe00【Romantic Scholar】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +60\rEXP +2%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆江南2'] = {id = 6106 , note = "^72fe00【Passionate Beauty】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +60\rEXP +2%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆荆襄'] = {id = 6107 , note = "^72fe00【Ghost-Catching Master】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +70\rEXP +2%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆关中1'] = {id = 6108 , note = "^72fe00【Inner-Secret Agent】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +70\rEXP +3%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆关中2'] = {id = 6109 , note = "^72fe00【To Be Determined】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +100" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆高级2'] = {id = 6201 , note = "^72fe00【To Be Determined】" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆高级3'] = {id = 6202 , note = "^72fe00【To Be Determined】" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆高级4'] = {id = 6203 , note = "^72fe00【To Be Determined】" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆高级5'] = {id = 6204 , note = "^72fe00【To Be Determined】" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆高级6'] = {id = 6205 , note = "^72fe00【To Be Determined】" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆高级7'] = {id = 6206 , note = "^72fe00【To Be Determined】" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动1'] = {id = 7101 , note = "^ff9c00【Fiery Eyes, Golden Gaze】" , desc = "0^72fe00Awarded to those who made special contributions to the game" , desc_1 = "" , desc_2 = ""}
title_definition['剧情南蛮称号1'] = {id = 2401 , note = "^72fe00【Gu Refiner】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情南蛮称号2'] = {id = 2402 , note = "^72fe00【Elephant Tamer】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +50\rAttack +1" , desc_1 = "" , desc_2 = ""}
title_definition['剧情南蛮称号3'] = {id = 2403 , note = "^72fe00【Impressionist Painter】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +1\rDefense +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情南蛮称号4'] = {id = 2404 , note = "^72fe00【Southern Zhong Conquered】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +30\rAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情南蛮称号5'] = {id = 2405 , note = "^72fe00【Curse-Spring Village Traveler】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +60\rAttack +2\rDefense +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情江南称号1'] = {id = 2501 , note = "^72fe00【Who Am I】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情江南称号2'] = {id = 2502 , note = "^72fe00【Fengchu's Disciple】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +3\rEXP +1%" , desc_1 = "" , desc_2 = ""}
title_definition['剧情江南称号3'] = {id = 2503 , note = "^72fe00【Yu Rice】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +20\rAttack +1\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['剧情江南称号4'] = {id = 2504 , note = "^72fe00【Debate Master】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +1" , desc_1 = "" , desc_2 = ""}
title_definition['剧情江南称号5'] = {id = 2505 , note = "^72fe00【Brocade Sail Bandit】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +60\rAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情江南称号6'] = {id = 2506 , note = "^72fe00【Atheist】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +60\rAttack +2\rDefense +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情荆襄称号1'] = {id = 2601 , note = "^72fe00【Light-Fingered Thief】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +30\rAttack +1" , desc_1 = "" , desc_2 = ""}
title_definition['剧情荆襄称号2'] = {id = 2602 , note = "^72fe00【Bright Powder】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +2\rEXP +1%" , desc_1 = "" , desc_2 = ""}
title_definition['剧情荆襄称号3'] = {id = 2603 , note = "^72fe00【Poetry Within, Radiance Without】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +4\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['剧情荆襄称号4'] = {id = 2604 , note = "^72fe00【Divine Calculation, Ghostly Stratagem】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +30\rAttack +3" , desc_1 = "" , desc_2 = ""}
title_definition['剧情荆襄称号5'] = {id = 2605 , note = "^72fe00【White Ink Squad Leader】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +80\rDefense +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情荆襄称号6'] = {id = 2606 , note = "^72fe00【Red Ink Squad Leader】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +80\rDefense +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情关中称号1'] = {id = 2607 , note = "^72fe00【Red Hare Among Horses, Lu Bu Among Men】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +1\rDefense +3" , desc_1 = "" , desc_2 = ""}
title_definition['剧情关中称号2'] = {id = 2608 , note = "^72fe00【I Shall Search High and Low】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +80\rAttack +2\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['剧情关中称号3'] = {id = 2609 , note = "^a800ff【Singer of the Chaotic Age】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +5\rCrit Resist +2\rAccuracy +2" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号1'] = {id = 8001 , note = "^a800ff【Fishing God】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +100\rAccuracy +5\rLearn Skill“Unblinking Eye”" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号2'] = {id = 8002 , note = "^0184ff【Fishing Master】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +50\rAccuracy +3\rLearn Skill“Endurance Fishing”" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号3'] = {id = 8003 , note = "^0184ff【Fishing Celebrity】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +30\rAccuracy +2\rLearn Skill“Endurance Fishing”" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号4'] = {id = 8004 , note = "^72fe00【Fishing Expert】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10\rAccuracy +2" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号5'] = {id = 8005 , note = "^72fe00【Fishing Novice】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10\rAccuracy +1" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号6'] = {id = 8006 , note = "^72fe00【Fishing Swift Hand】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号7'] = {id = 8007 , note = "^72fe00【Riding the Fragrant Carriage】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10\rAttack +1" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号8'] = {id = 8008 , note = "^0184ff【With Beauty and Fine Furs】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +20\rAttack +2\rDodge +1" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号9'] = {id = 8009 , note = "^a800ff【Laughing, Embracing the Nine Provinces】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +30\rAttack +2\rDodge +2\rCrit +1" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号10'] = {id = 8010 , note = "^ff4ca4【Shangxiang's Honor Guard】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +20\rHP Regen Speed +1" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号11'] = {id = 8011 , note = "^72fe00【Apprentice Poetry Collector】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号12'] = {id = 8012 , note = "^0184ff【Professional Poetry Collector】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +3\rCrit Resist +1" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号1'] = {id = 9001 , note = "^72fe00【Hearts Linked as One】" , desc = "0^72fe00Title Level: 1\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号2'] = {id = 9002 , note = "^72fe00【Eyes Full of Tenderness】" , desc = "0^72fe00Title Level: 2\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +20" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号3'] = {id = 9003 , note = "^72fe00【A Match Made in Heaven】" , desc = "0^72fe00Title Level: 3\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +30\rAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号4'] = {id = 9004 , note = "^0184ff【How Deep Is Love】" , desc = "0^72fe00Title Level: 4\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +40\rAttack +5" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号5'] = {id = 9005 , note = "^0184ff【If Life Were Only Like First Meetings】" , desc = "0^72fe00Title Level: 5\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +50\rAttack +8" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号6'] = {id = 9006 , note = "^a800ff【Devoted Love Without Doubt】" , desc = "0^72fe00Title Level: 6\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +60\rAttack +10" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号7'] = {id = 9007 , note = "^a800ff【Growing Old Together】" , desc = "0^72fe00Title Level: 7\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +3%\rAttack +10\rAttack Power +1%\rMax HP +60" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号8'] = {id = 9008 , note = "^ff7d2f【In Life and Death, Bound Together】" , desc = "0^72fe00Title Level: 8\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +4%\rAttack +10\rAttack Power +2%\rMax HP +60" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号9'] = {id = 9009 , note = "^ff4ca4【Until the End of Time】" , desc = "0^72fe00Title Level: 9\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +5%\rAttack +10\rAttack Power +3%\rMax HP +60" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号10'] = {id = 9010 , note = "^72fe00【Rose King of Divine Virtue】" , desc = "0^72fe00The one who owns 9999 roses!" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号11'] = {id = 9011 , note = "^72fe00【Spouse Title 11】" , desc = "0^72fe00Quality: Common" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动2'] = {id = 7102 , note = "^72fe00【Splash Dark Ink, Paint Three Kingdoms Sorrow】" , desc = "0^72fe00First time won the Chibi Side Story Battlefield Planner Grand Prize reward title" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动3'] = {id = 7103 , note = "^0184ff【With Heavy Brush, Speak of the Great River】" , desc = "0^72fe00Second time won the Chibi Side Story Battlefield Planner Grand Prize reward title" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动4'] = {id = 7104 , note = "^a800ff【Painting with Vivid Colors the Glorious Blood and Fire】" , desc = "0^72fe00Third time won the Chibi Side Story Battlefield Planner Grand Prize reward title" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动5'] = {id = 7105 , note = "^ff7d2f【A Wonderful Brush Writes Chibi's Annals】" , desc = "0^72fe00Fourth time won the Chibi Side Story Battlefield Planner Grand Prize reward title" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动6'] = {id = 7106 , note = "^ff9c00【Sacred Fire Guard】" , desc = "0^72fe00Rewards warriors who made outstanding contributions during the passing of the Sacred Flame of Xuanyuan" , desc_1 = "" , desc_2 = ""}
title_definition['称号_传奇1'] = {id = 6110 , note = "^72fe00【White Gate Tower Righteous Man】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10\rAttack +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_传奇2'] = {id = 6111 , note = "^0184ff【Marquis Wen's Guard Cavalry】" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +30\rAttack +2\rAccuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_传奇3'] = {id = 6112 , note = "^a800ff【Divine Aid of the Flying General】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +60\rAttack +2\rAccuracy+2\rCrit Damage +3%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_虎牢关01'] = {id = 6113 , note = "^72fe00【Loyal Minister Who Punishes Rebels】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +20" , desc_1 = "" , desc_2 = ""}
title_definition['称号_虎牢关02'] = {id = 6114 , note = "^72fe00【Five Tiger Generals of Hulao Pass】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行1'] = {id = 7107 , note = "^ff7d2f【The World's Number One Benevolent Lord】" , desc = "0^ff7d2fRighteousness Points Leaderboard 1st Place Reward Title\rActive When Worn as Overhead Title:\r^ffffffAttack +10\rEXP +20%\rHP +200" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行2-4'] = {id = 7108 , note = "^ff7d2f【Three Lords, Worthy Teachers】" , desc = "0^ff7d2fRighteousness Points Leaderboard Rank 2 to 4 Reward Title\rActive When Worn as Overhead Title:\r^ffffffAttack +8\rEXP +10%\rHP +100" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行5-12'] = {id = 7109 , note = "^a800ffFamous Scholar of Ba Jun" , desc = "0^a800ffRighteousness Points Leaderboard Rank 5 to 12 Reward Title\rActive When Worn as Overhead Title:\r^ffffffAttack +5\rEXP +10%\rHP +100" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行13-20'] = {id = 7110 , note = "^a800ffFamous Scholar of Ba Gu" , desc = "0^a800ffRighteousness Points Leaderboard Rank 13 to 20 Reward Title\rActive When Worn as Overhead Title:\r^ffffffAttack +3\rEXP +5%\rHP +100" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行21-28'] = {id = 7111 , note = "^a800ff【Gentleman of the Eight Reaches】" , desc = "0^a800ffRighteousness Points Leaderboard Rank 21 to 28 Reward Title\rActive When Worn as Overhead Title:\r^ffffffAttack +1\rEXP +5%\rHP +100" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行29-36'] = {id = 7112 , note = "^a800ff【Gentleman of the Eight Kitchens】" , desc = "0^a800ffRighteousness Points Leaderboard Rank 29 to 36 Reward Title\rActive When Worn as Overhead Title:\r^ffffffEXP +5%\rHP +80" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品7'] = {id = 5263 , note = "^ffbc3c〓Sub-Grade 4 Might-Building Commandant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品8'] = {id = 5264 , note = "^ffbc3c〓Grade 4 Martial Guard Commandant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品7'] = {id = 5265 , note = "^ffbc3c〓Sub-Grade 4 Usher Assistant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品8'] = {id = 5266 , note = "^ffbc3c〓Grade 4 Vice Censor-in-Chief〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_典韦传'] = {id = 7113 , note = "^72fe00【Iron Wall E Lai】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +20" , desc_1 = "" , desc_2 = ""}
title_definition['军团等级排行1']= {id = 7114 , note = "^72fe00Legion Boss 1",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行2']= {id = 7115 , note = "^72fe00Legion Boss 2",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行3']= {id = 7116 , note = "^72fe00Legion Boss 3",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行4']= {id = 7117 , note = "^72fe00Legion Boss 4",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行5']= {id = 7118 , note = "^72fe00Legion Boss 5",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行6']= {id = 7119 , note = "^72fe00Legion Boss 6",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行7']= {id = 7120 , note = "^72fe00Legion Boss 7",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行8']= {id = 7121 , note = "^72fe00Legion Boss 8",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行9']= {id = 7122 , note = "^72fe00Legion Boss 9",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行10']= {id = 7123 , note = "^72fe00Legion Boss 10",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行11']= {id = 7124 , note = "^72fe00Legion Boss 11",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行12']= {id = 7125 , note = "^72fe00Legion Boss 12",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行13']= {id = 7126 , note = "^72fe00Legion Boss 13",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行14']= {id = 7127 , note = "^72fe00Legion Boss 14",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行15']= {id = 7128 , note = "^72fe00Legion Boss 15",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行16']= {id = 7129 , note = "^72fe00Legion Boss 16",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['名将传承01尚香传'] = {id = 7130 , note = "^72fe00【Heroine · Fragrant Wind】" , desc = "0^72fe00Equipment Effect\r^fff600Inheritance of the Famous General Shangxiang.\rA thread of black silk, a valiant beauty, whose fragrant grace carries ten thousand miles, with a heart of steel。\r^ffffffHP Regen+10" , desc_2 = ""}
title_definition['名将传承02吕布传'] = {id = 7131 , note = "^72fe00【God of Slaughter · Four Directions】" , desc = "0^72fe00Equipment Effect\r^fff600Inheritance of the Famous General Lu Bu.\rHero Name，passed down through the ages，Mandate of Heaven, gained to secure the four corners，By human might seized, to cleave the eight wildernesses。\r^ffffffDamage Resist+10" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承03刘备传'] = {id = 7132 , note = "^72fe00【Overlord · People's Harmony】" , desc = "0^72fe00Equipment Effect\r^fff600Inheritance of the Hero Liu Bei.\rWhat makes a hegemon? Good governance and harmony。Those who gain the Way receive much help; those who lose it receive little. When help is at its height, the world follows。\r^ffffffRestrict Resist+10" ,  desc_1 = "" , desc_2 = ""}
title_definition['名将传承04曹操传'] = {id = 7133 , note = "^72fe00【Overlord · Mandate of Heaven】" , desc = "0^72fe00Equipment Effect\r^fff600Inheritance of the Hero Cao Cao.\rWhat makes a hegemon? Where the Mandate of Heaven converges。Strategists plan within the hall, valiant generals wage war at the frontier。Those who gain the Mandate of Heaven secure the four corners。\r^ffffffWeakness Resist+10" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承05典韦传'] = {id = 7134 , note = "^72fe00【Fierce General · E Lai】" , desc = "0^72fe00Equipment Effect\r^fff600Inheritance of the Famous General Dian Wei.\rThe Evil Lai of old, the valiant general of today, wielding twin halberds of eighty jin, a match for ten thousand men。\r^ffffffSeal Resist+10" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承06孙权传'] = {id = 7135 , note = "^72fe00【Overlord · Geographic Advantage】" , desc = "0^72fe00Equipment Effect\r^fff600Inheritance of the Hero Sun Quan.\rWhat makes a hegemon? Advantage of terrain。A land of fish and rice, a natural moat, prosperous people, joy in all directions。Those who gain the advantage of terrain enjoy lasting peace。\r^ffffffBleed Resist+10" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承07赵云传'] = {id = 7136 , note = "^72fe00【Loyalty · Lone Courage】" , desc = "0^72fe00Equipment Effect\r^fff600Inheritance of the Famous General Zhao Yun.\rLoyalty and righteousness span a thousand autumns; a lone courage makes a true hero。Who has courage in every fiber? Who dares charge in and out seven times?Words cannot exhaust the general's bearing, passed on to today's heroes。\r^ffffffHeal Effect+10%" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承08蒋干传'] = {id = 7137 , note = "^72fe00【Persuasion · Sharp Tongue】" , desc = "0^72fe07None" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承09组合称号'] = {id = 7138 , note = "^a800ff【Overlord of the Three Kingdoms】" , desc = "0^72fe08None" , desc_1 = "" , desc_2 = ""}
title_definition['魏国声望排行前100'] = {id = 7139 , note = "^a800ff【Wei General】" , desc = "1^a800ffKingdom of Wei Renown Ranking top 100 reward title\rDuring national wars, holds partial authority over national affairs" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国声望排行前100'] = {id = 7140 , note = "^a800ff【Shu General】" , desc = "2^a800ffKingdom of Shu Renown Ranking top 100 reward title\rDuring national wars, holds partial authority over national affairs" , desc_1 = "" , desc_2 = ""}
title_definition['吴国声望排行前100'] = {id = 7141 , note = "^a800ff【Wu General】" , desc = "3^a800ffKingdom of Wu Renown Ranking top 100 reward title\rDuring national wars, holds partial authority over national affairs" , desc_1 = "" , desc_2 = ""}
title_definition['称号蒋干传01'] = {id = 7142 , note = "^72fe00【Ghostly Stratagem's Divine Aid】" , desc = "0^72fe00Permanent Effect\r^ffffffStamina +5\rCast Speed +3%" , desc_1 = "" , desc_2 = ""}
title_definition['称号蒋干传02'] = {id = 7143 , note = "^72fe00【Elegant Book Thief】" , desc = "0^72fe00Permanent Effect\r^ffffffStamina +5" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动7'] = {id = 7144 , note = "^72fe00【Frontier Guarding Envoy】" , desc = "0^72fe00Permanent Effect\r^ffffffStamina +5" , desc_1 = "" , desc_2 = ""}
title_definition['魏国武勋排行1'] = {id = 7145 , note = "^ff7d2f【Great Wei Commander-in-Chief】" , desc = "1^ff7d2fTitle earned by the meritorious general of Kingdom of Wei\rQualification: Wei Military Merit Ranking 1place" , desc_1 = "" , desc_2 = ""}
title_definition['魏国武勋排行2-5'] = {id = 7146 , note = "^a800ff【Great Wei Supreme General】" , desc = "1^a800ffTitle earned by the meritorious general of Kingdom of Wei\rQualification: Wei Military Merit Ranking 2-5place" , desc_1 = "" , desc_2 = ""}
title_definition['魏国武勋排行6-20'] = {id = 7147 , note = "^0184ff【Great Wei Renowned General】" , desc = "1^0184ffTitle earned by the meritorious general of Kingdom of Wei\rQualification: Wei Military Merit Ranking 6-20place" , desc_1 = "" , desc_2 = ""}
title_definition['魏国武勋排行21-100'] = {id = 7148 , note = "^72fe00【Great Wei Good General】" , desc = "1^72fe00Title earned by the meritorious general of Kingdom of Wei\rQualification: Wei Military Merit Ranking 21-100place" , desc_1 = "" , desc_2 = ""}
title_definition['魏国武勋排行101-500'] = {id = 7149 , note = "^72fe00【Great Wei Officer】" , desc = "1^72fe00Title earned by the meritorious general of Kingdom of Wei\rQualification: Wei Military Merit Ranking 101-500place" , desc_1 = "" , desc_2 = ""}
title_definition['魏国文勋排行1'] = {id = 7150 , note = "^ff7d2f【Great Wei Chief Minister】" , desc = "1^ff7d2fTitle earned by the outstanding civil minister of Kingdom of Wei\rQualification: Wei Civil Merit Ranking 1place" , desc_1 = "" , desc_2 = ""}
title_definition['魏国文勋排行2-5'] = {id = 7151 , note = "^a800ff【Great Wei Capable Minister】" , desc = "1^a800ffTitle earned by the outstanding civil minister of Kingdom of Wei\rQualification: Wei Civil Merit Ranking 2-5place" , desc_1 = "" , desc_2 = ""}
title_definition['魏国文勋排行6-20'] = {id = 7152 , note = "^0184ff【Great Wei Renowned Minister】" , desc = "1^0184ffTitle earned by the outstanding civil minister of Kingdom of Wei\rQualification: Wei Civil Merit Ranking 6-20place" , desc_1 = "" , desc_2 = ""}
title_definition['魏国文勋排行21-100'] = {id = 7153 , note = "^72fe00【Great Wei Good Minister】" , desc = "1^72fe00Title earned by the outstanding civil minister of Kingdom of Wei\rQualification: Wei Civil Merit Ranking 21-100place" , desc_1 = "" , desc_2 = ""}
title_definition['魏国文勋排行101-500'] = {id = 7154 , note = "^72fe00【Great Wei Minister Aide】" , desc = "1^72fe00Title earned by the outstanding civil minister of Kingdom of Wei\rQualification: Wei Civil Merit Ranking 101-500place" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国武勋排行1'] = {id = 7155 , note = "^ff7d2f【Great Shu Commander-in-Chief】" , desc = "2^ff7d2fTitle earned by the meritorious general of Kingdom of Shu\rQualification: Shu Military Merit Ranking 1place" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国武勋排行2-5'] = {id = 7156 , note = "^a800ff【Great Shu Supreme General】" , desc = "2^a800ffTitle earned by the meritorious general of Kingdom of Shu\rQualification: Shu Military Merit Ranking 2-5place" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国武勋排行6-20'] = {id = 7157 , note = "^0184ff【Great Shu Renowned General】" , desc = "2^0184ffTitle earned by the meritorious general of Kingdom of Shu\rQualification: Shu Military Merit Ranking 6-20place" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国武勋排行21-100'] = {id = 7158 , note = "^72fe00【Great Shu Good General】" , desc = "2^72fe00Title earned by the meritorious general of Kingdom of Shu\rQualification: Shu Military Merit Ranking 21-100place" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国武勋排行101-500'] = {id = 7159 , note = "^72fe00【Great Shu Officer】" , desc = "2^72fe00Title earned by the meritorious general of Kingdom of Shu\rQualification: Shu Military Merit Ranking 101-500place" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国文勋排行1'] = {id = 7160 , note = "^ff7d2f【Great Shu Chief Minister】" , desc = "2^ff7d2fTitle earned by the outstanding civil minister of Kingdom of Shu\rQualification: Shu Civil Merit Ranking 1place" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国文勋排行2-5'] = {id = 7161 , note = "^a800ff【Great Shu Capable Minister】" , desc = "2^a800ffTitle earned by the outstanding civil minister of Kingdom of Shu\rQualification: Shu Civil Merit Ranking 2-5place" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国文勋排行6-20'] = {id = 7162 , note = "^0184ff【Great Shu Renowned Minister】" , desc = "2^0184ffTitle earned by the outstanding civil minister of Kingdom of Shu\rQualification: Shu Civil Merit Ranking 6-20place" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国文勋排行21-100'] = {id = 7163 , note = "^72fe00【Great Shu Good Minister】" , desc = "2^72fe00Title earned by the outstanding civil minister of Kingdom of Shu\rQualification: Shu Civil Merit Ranking 21-100place" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国文勋排行101-500'] = {id = 7164 , note = "^72fe00【Great Shu Minister Aide】" , desc = "2^72fe00Title earned by the outstanding civil minister of Kingdom of Shu\rQualification: Shu Civil Merit Ranking 101-500place" , desc_1 = "" , desc_2 = ""}
title_definition['吴国武勋排行1'] = {id = 7165 , note = "^ff7d2f【Great Wu Commander-in-Chief】" , desc = "3^ff7d2fTitle earned by the meritorious general of Kingdom of Wu\rQualification: Wu Military Merit Ranking 1place" , desc_1 = "" , desc_2 = ""}
title_definition['吴国武勋排行2-5'] = {id = 7166 , note = "^a800ff【Great Wu Supreme General】" , desc = "3^a800ffTitle earned by the meritorious general of Kingdom of Wu\rQualification: Wu Military Merit Ranking 2-5place" , desc_1 = "" , desc_2 = ""}
title_definition['吴国武勋排行6-20'] = {id = 7167 , note = "^0184ff【Great Wu Renowned General】" , desc = "3^0184ffTitle earned by the meritorious general of Kingdom of Wu\rQualification: Wu Military Merit Ranking 6-20place" , desc_1 = "" , desc_2 = ""}
title_definition['吴国武勋排行21-100'] = {id = 7168 , note = "^72fe00【Great Wu Good General】" , desc = "3^72fe00Title earned by the meritorious general of Kingdom of Wu\rQualification: Wu Military Merit Ranking 21-100place" , desc_1 = "" , desc_2 = ""}
title_definition['吴国武勋排行101-500'] = {id = 7169 , note = "^72fe00【Great Wu Officer】" , desc = "3^72fe00Title earned by the meritorious general of Kingdom of Wu\rQualification: Wu Military Merit Ranking 101-500place" , desc_1 = "" , desc_2 = ""}
title_definition['吴国文勋排行1'] = {id = 7170 , note = "^ff7d2f【Great Wu Chief Minister】" , desc = "3^ff7d2fTitle earned by the outstanding civil minister of Kingdom of Wu\rQualification: Wu Civil Merit Ranking 1place" , desc_1 = "" , desc_2 = ""}
title_definition['吴国文勋排行2-5'] = {id = 7171 , note = "^a800ff【Great Wu Capable Minister】" , desc = "3^a800ffTitle earned by the outstanding civil minister of Kingdom of Wu\rQualification: Wu Civil Merit Ranking 2-5place" , desc_1 = "" , desc_2 = ""}
title_definition['吴国文勋排行6-20'] = {id = 7172 , note = "^0184ff【Great Wu Renowned Minister】" , desc = "3^0184ffTitle earned by the outstanding civil minister of Kingdom of Wu\rQualification: Wu Civil Merit Ranking 6-20place" , desc_1 = "" , desc_2 = ""}
title_definition['吴国文勋排行21-100'] = {id = 7173 , note = "^72fe00【Great Wu Good Minister】" , desc = "3^72fe00Title earned by the outstanding civil minister of Kingdom of Wu\rQualification: Wu Civil Merit Ranking 21-100place" , desc_1 = "" , desc_2 = ""}
title_definition['吴国文勋排行101-500'] = {id = 7174 , note = "^72fe00【Great Wu Minister Aide】" , desc = "3^72fe00Title earned by the outstanding civil minister of Kingdom of Wu\rQualification: Wu Civil Merit Ranking 101-500place" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_新手称号'] = {id = 7175 , note = "^e12500【Warrior Elite】" , desc = "0^72fe00Title earned by warriors holding the Elite Soldier Summoning Order" , desc_1 = "" , desc_2 = ""}
title_definition['全国竞技赛八强'] = {id = 7176 , note = "^0184ff【Eight Champions of the Realm Legion】" , desc = "0^72fe00Title earned by a National Arena Top 8 competitor" , desc_1 = "" , desc_2 = ""}
title_definition['全国竞技赛四强'] = {id = 7177 , note = "^a800ff【Legion Members of the Four Heroes of the World】" , desc = "0^72fe00Title earned by a National Arena Top 4 competitor" , desc_1 = "" , desc_2 = ""}
title_definition['全国竞技赛亚军'] = {id = 7178 , note = "^fff962【Legion Members of the Two Heroes of the World】" , desc = "0^72fe00Title earned by the National Arena runner-up" , desc_1 = "" , desc_2 = ""}
title_definition['全国竞技赛冠军'] = {id = 7179 , note = "^ff0000【Legion Members of the Peerless of the World】" , desc = "0^72fe00Title earned by the National Arena champion" , desc_1 = "" , desc_2 = ""}
title_definition['老玩家回流称号1'] = {id = 7180 , note = "^d181ff【Return Home in Fine Robes】" , desc = "0^72fe00The great wind rises, clouds fly high; power reaches all within the seas, returning to my homeland!" , desc_1 = "" , desc_2 = ""}
title_definition['老玩家回流称号2'] = {id = 7181 , note = "^d181ff【Return Home in Glory】" , desc = "0^72fe00The great wind rises, clouds fly high; power reaches all within the seas, returning to my homeland!" , desc_1 = "" , desc_2 = ""}
title_definition['老玩家回流称号3'] = {id = 7182 , note = "^d181ff【Achievement and Fame Accomplished】" , desc = "0^72fe00The great wind rises, clouds fly high; power reaches all within the seas, returning to my homeland!" , desc_1 = "" , desc_2 = ""}
title_definition['资质初始称号'] = {id = 7183 , note = "^a800ff【Roaming the World Free】" , desc = "0^a800ffPermanent Effect\r^ffffffAll Aptitudes +1" , desc_1 = "" , desc_2 = ""}
title_definition['魏国玩家61级称号'] = {id = 1113 , note = "^72fe00【Wei Elite Soldier】" , desc = "0You are now one of Kingdom of Wei's elite soldiers!" , desc_1 = "" , desc_2 = ""}
title_definition['吴国玩家61级称号'] = {id = 1313 , note = "^72fe00【Wu Elite Soldier】" , desc = "0You are now one of Kingdom of Wu's elite soldiers!" , desc_1 = "" , desc_2 = ""}
title_definition['无阵营玩家60级称号'] = {id = 4104 , note = "^72fe00【Great Han Elite Soldier】" , desc = "0You are now an elite soldier of Great Han!" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国玩家61级称号'] = {id = 1213 , note = "^72fe00【Shu Elite Soldier】" , desc = "0You are now one of Kingdom of Shu's elite soldiers!" , desc_1 = "" , desc_2 = ""}
title_definition['活动神兵玄奇称号1'] = {id = 8111 , note = "^72fe00【Skilled Artisan】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +2\rMax HP  +10" , desc_1 = "" , desc_2 = ""}
title_definition['活动神兵玄奇称号2'] = {id = 8112 , note = "^0184ff【Teacher of a Generation】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +5\rMax HP  +30" , desc_1 = "" , desc_2 = ""}
title_definition['活动神兵玄奇称号3'] = {id = 8113 , note = "^a800ff【Divine Craftsmanship】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +10\rMax HP  +60" , desc_1 = "" , desc_2 = ""}
title_definition['魏国玩家61级称号新'] = {id = 1114 , note = "^72fe00【Wei Elite Soldier】" , desc = "0You are now one of Kingdom of Wei's elite soldiers!" , desc_1 = "" , desc_2 = ""}
title_definition['吴国玩家61级称号新'] = {id = 1314 , note = "^72fe00【Wu Elite Soldier】" , desc = "0You are now one of Kingdom of Wu's elite soldiers!" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国玩家61级称号新'] = {id = 1214 , note = "^72fe00【Shu Elite Soldier】" , desc = "0You are now one of Kingdom of Shu's elite soldiers!" , desc_1 = "" , desc_2 = ""}
title_definition['江山如画系列任务称号'] = {id = 7190 , note = "^a800ff【How Lovely Is This Land】" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+ 5\rStamina +10\rBonus Damage+ 5" , desc_1 = "" , desc_2 = ""}
title_definition['曹植外传称号'] = {id = 7191 , note = "^0184ff【In Dreams, Unaware I Am a Guest】" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack +3" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号1'] = {id = 7192 , note = "^e12500【Blade Fiercer Than Yunchang】" , desc = "0^72fe00Title earned by a Blade Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号2'] = {id = 7193 , note = "^e12500【Axe Might Rivals Xu Huang】" , desc = "0^72fe00Title earned by a Axe Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号3'] = {id = 7194 , note = "^e12500【Staff Wind Like Cheng Pu】" , desc = "0^72fe00Title earned by a Cudgel Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号4'] = {id = 7195 , note = "^e12500【Spear as Swift as Zilong】" , desc = "0^72fe00Title earned by a Spear Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号5'] = {id = 7196 , note = "^e12500【Bow as Accurate as Huang Zhong】" , desc = "0^72fe00Title earned by a Bow Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号6'] = {id = 7197 , note = "^e12500【Sword Dance as Beautiful as Zhoulang】" , desc = "0^72fe00Title earned by a Sword Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号7'] = {id = 7198 , note = "^e12500【Staff Immortal Master Zuoci】" , desc = "0^72fe00Title earned by a Staff Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号8'] = {id = 7199 , note = "^e12500【Fan Strategy Rivals Zhuge】" , desc = "0^72fe00Title earned by a Fan Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号9'] = {id = 7200 , note = "^e12500【Ring Skill Like Sun Shangxiang】" , desc = "0^72fe00Title earned by a Ring Blade Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号10'] = {id = 7201 , note = "^e12500【Claw Strike Like Gan Xingba】" , desc = "0^72fe00Title earned by a Claw Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号11'] = {id = 7202 , note = "^e12500【Bloodthirsty Arena King】" , desc = "0^72fe00Title earned by the Bloodthirsty Arena victor" , desc_1 = "" , desc_2 = ""}
title_definition['护送称号1'] = {id = 7203 , note = "^72fe00【Escort Walker】" , desc = "0^72fe00Your first escort participation each day grants a small amount of bonus EXP." , desc_1 = "" , desc_2 = ""}
title_definition['护送称号2'] = {id = 7204 , note = "^0184ff【Escort Chief】" , desc = "0^0184ffYour first escort participation each day grants a certain amount of bonus EXP." , desc_1 = "" , desc_2 = ""}
title_definition['护送称号3'] = {id = 7205 , note = "^a800ff【Chief Escort】" , desc = "0^a800ffThe first escort participation each day grants extra EXP." , desc_1 = "" , desc_2 = ""}
title_definition['演义唇楼称号1'] = {id = 7206 , note = "^72fe00【Celebrity of the Mirage】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +2\rBonus Damage +5" , desc_1 = "" , desc_2 = ""}
title_definition['演义唇楼称号2'] = {id = 7207 , note = "^0184ff【Mirage City Advisor】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +4\rMax HP +10\rBonus Damage +5" , desc_1 = "" , desc_2 = ""}
title_definition['演义唇楼称号3'] = {id = 7208 , note = "^a800ff【Queen's Best Friend】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +6\rStamina +5\Max HP +20\rBonus Damage +5" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号隐藏1'] = {id = 7209 , note = "" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号隐藏2'] = {id = 7210 , note = "" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号隐藏3'] = {id = 7211 , note = "" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号1'] = {id = 7212 , note = "^a800ff【Snow-riding Heaven King】" , desc = "0The Awesome Person Who Ranked 1st in the New Year Points During the Christmas Event." , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号2'] = {id = 7213 , note = "^0184ff【Deer-Taming Sage】" , desc = "0The Awesome Person Who Ranked 2nd-10th in the New Year Points During the Christmas Event." , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号3'] = {id = 7214 , note = "^72fe00【Christmas Blessing Recluse】" , desc = "0The Awesome Person Who Ranked 11th-100th in the New Year Points During the Christmas Event." , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望兑换称号1'] = {id = 7215 , note = "^72fe00【Christmas Snow Baby】" , desc = "During the 12.25-1.8 Christmas Event, claim 20 normal snowballs daily from the Perfect Gift Envoy." , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望兑换称号2'] = {id = 7216 , note = "^72fe00【Christmas Snow Sprite】" , desc = "During the 12.25-1.8 Christmas Event, claim 40 normal snowballs daily from the Perfect Gift Envoy." , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望兑换称号3'] = {id = 7217 , note = "^72fe00【Snow-Treading Plum Seeker】" , desc = "During the 12.25-1.8 Christmas Event, claim 60 normal snowballs daily from the Perfect Gift Envoy." , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望兑换称号4'] = {id = 7218 , note = "^72fe00【Plum-Snow Tea Brewer】" , desc = "During the 12.25-1.8 Christmas Event, claim 80 normal snowballs daily from the Perfect Gift Envoy." , desc_1 = "" , desc_2 = ""}
title_definition['赛马活动称号1'] = {id = 7219 , note = "^72fe00【Drive Ten Thousand Miles】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +5" , desc_1 = "" , desc_2 = ""}
title_definition['赛马活动称号2'] = {id = 7220 , note = "^0184ff【One Horse Treads a Thousand Hills】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +10\rMax HP +2%" , desc_1 = "" , desc_2 = ""}
title_definition['赛马活动称号3'] = {id = 7221 , note = "^a800ff【Dragon and Horse Shake the Nine Provinces】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +20\rMax HP +2%\rAttack Power +3%" , desc_1 = "" , desc_2 = ""}
title_definition['香港_自拍活动称号男'] = {id = 7222 , note = "^ff4ca4【Chibi Handsome Guy】" , desc = "0^72fe00Officially Recognized Handsome Guy by Gamania, Absolutely Genuine!" , desc_1 = "" , desc_2 = ""}
title_definition['香港_自拍活动称号女'] = {id = 7223 , note = "^ff4ca4【Chibi Glamour Girl】" , desc = "0^72fe00Officially Recognized Beauty by Gamania, Absolutely Genuine!" , desc_1 = "" , desc_2 = ""}
title_definition['征战03濮阳霸主'] = {id = 7224 , note = "^ff7d2f【Overlord of Puyang】" , desc = "0^72fe00After obtaining all illustrations from Battle of Puyang II，Title Earned。\r^72fe00Permanent Effect\r^ffffffAttack +20\rBonus DMG +15\rCrit Resist +3\rRestrict Resist +3" , desc_1 = "" , desc_2 = ""}
title_definition['春节活动称号'] = {id = 7225 , note = "^ff4ca4【Awe-inspiring Spirit Soaring to the Sky】" , desc = "0^72fe00Effective during Spring Festival Event Jan 23 - Feb 26, 2009\r^ffffffAttack +5\rDefense +5\rMax HP +5%" , desc_1 = "" , desc_2 = ""}
title_definition['情人节活动称号男'] = {id = 7226 , note = "^ff4ca4【Regretting Meeting Too Late; Two Hearts Understand】" , desc = "0^72fe00Valentine's Day couple-exclusive title." , desc_1 = "" , desc_2 = ""}
title_definition['情人节活动称号女'] = {id = 7227 , note = "^ff4ca4【Only Wishing Your Heart Like Mine】" , desc = "0^72fe00Valentine's Day couple-exclusive title." , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动01'] = {id = 7228 , note = "^e12500【A Blade Across the Universe】" , desc = "0^72fe00Blade Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动02'] = {id = 7229 , note = "^e12500【Piercing a Willow Leaf at a Hundred Paces】" , desc = "0^72fe00Bow Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动03'] = {id = 7230 , note = "^e12500【Phantom Assassin】" , desc = "0^72fe00Claw Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动04'] = {id = 7231 , note = "^e12500【EightVajra Staff】" , desc = "0^72fe00Staff Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动05'] = {id = 7232 , note = "^e12500【Axe After Axe Exudes Might】" , desc = "0^72fe00Axe Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动06'] = {id = 7233 , note = "^e12500【Divine Fan, Ghostly Stratagem】" , desc = "0^72fe00Fan Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动07'] = {id = 7234 , note = "^e12500【World-saving Divine Staff】" , desc = "0^72fe00Cudgel Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动08'] = {id = 7235 , note = "^e12500【Divine Dragon Spear Sage】" , desc = "0^72fe00Spear Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动09'] = {id = 7236 , note = "^e12500【Sword of Chivalry】" , desc = "0^72fe00Sword Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动10'] = {id = 7237 , note = "^e12500【Mr. Universe】" , desc = "0^72fe00Ring Blade Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动11'] = {id = 7238 , note = "^e12500【Miss Universe】" , desc = "0^72fe00Ring Blade Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动12'] = {id = 7239 , note = "^e12500【Martial Arts World Supreme】" , desc = "0^72fe00Dance Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动13'] = {id = 7240 , note = "^e12500【Halberd Peerless in the World】" , desc = "0^72fe00Halberd Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动14'] = {id = 7241 , note = "^e12500『Perfect Warrior』" , desc = "0^72fe00Officially Certified Supreme Warrior by Gamania" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_老玩家回流'] = {id = 7242 , note = "^a800ff【Eternally Loyal】" , desc = "0^72fe00Forever loyal warrior!" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第1称号'] = {id = 7243 , note = "^ff7d2f【Invincible in the World】" , desc = "0^ff7d2fArena Points Ranking 1st place martial arts title.\rPermanent Effect\r^ffffffMax HP +10%\rMax Attack +20" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第2-4称号'] = {id = 7244 , note = "^ff7d2f【Invincible in the Three Kingdoms】" , desc = "0^ff7d2fArena Points Ranking 2nd to 4th place martial arts title.\rPermanent Effect\r^ffffffMax HP +200\rMax Attack +15" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第1-30称号'] = {id = 7245 , note = "^a800ff【One Rider Against a Thousand】" , desc = "0^a800ffArena Points Ranking 1st to 30th place martial arts title.\r^ffffffMax HP +3%\rMax Attack +10" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第31-100称号'] = {id = 7246 , note = "^0184ff【Martial Arts Master】" , desc = "0^0184ffArena Points Ranking 31st to 100th place martial arts title.\r^ffffffMax HP +3%\rMax Attack +5" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第101-200称号'] = {id = 7247 , note = "^72fe00【Martial Arts Expert】" , desc = "0^72fe00Arena Points Ranking 101st to 200th place martial arts title.\r^ffffffMax HP +3%" , desc_1 = "" , desc_2 = ""}
title_definition['无双07称号紫'] = {id = 7248 , note = "^a800ff【Longing Cannot Reach East of the Chu River】" , desc = "0^72fe00Permanent Effect\r^ffffffMax Attack +12\rBonus Damage +5\rMax HP +1%" , desc_1 = "" , desc_2 = ""}
title_definition['无双07称号蓝'] = {id = 7249 , note = "^0184ff【Nine Songs: Lord in the Clouds】" , desc = "0^72fe00Permanent Effect\r^ffffffMax Attack +7\rBonus Damage +3" , desc_1 = "" , desc_2 = ""}
title_definition['无双07称号绿'] = {id = 7250 , note = "^72fe00【I Am a Chu Madman】" , desc = "0^72fe00Permanent Effect\r^ffffffMax Attack +5" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第201-500称号'] = {id = 7251 , note = "^72fe00【Martial Practitioner】" , desc = "0^72fe00Arena Points Ranking 201st to 500th place martial arts title.\r^ffffffMax HP +2%" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会十人敌'] = {id = 7252 , note = "^72fe00【Takes On Ten】" , desc = "0^72fe00Title earned when Arena Points reach 10." , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会百人敌'] = {id = 7253 , note = "^0184ff【Takes On Hundred】" , desc = "0^0184ffTitle earned when Arena Points reach 100." , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会千人敌'] = {id = 7254 , note = "^a800ff【Takes On Thousand】" , desc = "0^a800ffTitle Obtained When Arena Tournament Points Reach 1,000." , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会万人敌'] = {id = 7255 , note = "^ff7d2f【Takes On Ten Thousand】" , desc = "0^ff7d2fTitle Obtained When Arena Tournament Points Reach 10,000." , desc_1 = "" , desc_2 = ""}
title_definition['活动01初级称号'] = {id = 7256 , note = "^72fe00【Shepherd Shrimp】" , desc = "0^ff7d2fShepherd's Junior Identity Proof." , desc_1 = "" , desc_2 = ""}
title_definition['活动01中级称号'] = {id = 7257 , note = "^0184ff【Shepherd Calf】" , desc = "0^ff7d2fShepherd's Intermediate Identity Proof." , desc_1 = "" , desc_2 = ""}
title_definition['活动01高级称号'] = {id = 7258 , note = "^a800ff【Shepherd Blade Wolf】" , desc = "0^ff7d2fShepherd's Senior Identity Proof." , desc_1 = "" , desc_2 = ""}
title_definition['活动01顶级称号'] = {id = 7259 , note = "^ff7d2f【Shepherd Divine Beast】" , desc = "0^ff7d2fShepherd's Top Identity Proof." , desc_1 = "" , desc_2 = ""}
--title_definition['竞技场胜利称号'] = {id = 7260 , note = "" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['竞技场失败称号'] = {id = 7261 , note = "" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['阵营频道魏发言称号'] = {id = 7262 , note = "^ff7d2f【Wei Spokesperson】" , desc = "0^ff7d2fWith This Title,\rConsume a Wei Edict to Speak in Faction Channel." , desc_1 = "" , desc_2 = ""}
title_definition['阵营频道蜀发言称号'] = {id = 7263 , note = "^ff7d2f【Shu Spokesperson】" , desc = "0^ff7d2fWith This Title,\rConsume a Shu Edict to Speak in Faction Channel." , desc_1 = "" , desc_2 = ""}
title_definition['阵营频道吴发言称号'] = {id = 7264 , note = "^ff7d2f【Wu Spokesperson】" , desc = "0^ff7d2fWith This Title,\rConsume a Wu Edict to Speak in Faction Channel." , desc_1 = "" , desc_2 = ""}
title_definition['活动端午节称号'] = {id = 7265 , note = "^a800ff【Guard of Qu Yuan】" , desc = "0^ff7d2fProof of Valor in Guarding the Three Lords During the Dragon Boat Festival." , desc_1 = "" , desc_2 = ""}
title_definition['阵营魏国霸主'] = {id = 7266 , note = "^ff7d2f※〓Great Wei Overlord〓※" , desc = "0^ff7d2fThe Legion Commander with Wei's Mightiest Force;\rProclaimed Overlord by Heroes Nationwide.\rMay Issue Surprise Attack Orders Against Enemy Nations.\rThis Week Legion Orders Increase by 100.\rMembers May Visit Huangfu Yan to Claim Strategic Orders." , desc_1 = "" , desc_2 = ""}
title_definition['阵营蜀国霸主'] = {id = 7267 , note = "^ff7d2f※〓Great Shu Overlord〓※" , desc = "0^ff7d2fThe Legion Commander with Shu's Mightiest Force;\rProclaimed Overlord by Heroes Nationwide.\rMay Issue Surprise Attack Orders Against Enemy Nations.\rThis Week Legion Orders Increase by 100.\rMembers May Visit Huangfu Yan to Claim Strategic Orders." , desc_1 = "" , desc_2 = ""}
title_definition['阵营吴国霸主'] = {id = 7268 , note = "^ff7d2f※〓Great Wu Overlord〓※" , desc = "0^ff7d2fThe Legion Commander with Wu's Mightiest Force;\rProclaimed Overlord by Heroes Nationwide.\rMay Issue Surprise Attack Orders Against Enemy Nations.\rThis Week Legion Orders Increase by 100.\rMembers May Visit Huangfu Yan to Claim Strategic Orders." , desc_1 = "" , desc_2 = ""}
title_definition['活动端午节称号2'] = {id = 7269 , note = "^a800ff【Clear Waves Wash My Hat Tassels】" , desc = "0^ff7d2fObtained from the Dragon Boat Event; A Reminder to Keep Oneself Pure and Cherish the Spirits Forever." , desc_1 = "" , desc_2 = ""}
title_definition['外传马超传称号1'] = {id = 7270 , note = "^72fe00【Really Don't Touch Me】" , desc = "0^ffbc3cPermanent Effect:\r^72fe00Earned in Battle of Journey Through Rivers and Mountains\r^ffffffAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['外传马超传称号2'] = {id = 7271 , note = "^0184ff【Commander Ma】" , desc = "0^ffbc3cPermanent Effect:\r^0184ffEarned in Battle of Journey Through Rivers and Mountains\r^ffffffAttack +3，Bonus Damage+5" , desc_1 = "" , desc_2 = ""}
title_definition['外传马超传称号3'] = {id = 7272 , note = "^0184ff【Big Sister Ma】" , desc = "0^ffbc3cPermanent Effect:\r^0184ffEarned in Battle of Journey Through Rivers and Mountains\r^ffffffAttack +3，Bonus Damage+5" , desc_1 = "" , desc_2 = ""}
title_definition['外传马超传称号4'] = {id = 7273 , note = "^a800ff【Blade Moves Without Haste, For There Is Surplus】" , desc = "0^ffbc3cPermanent Effect:\r^a800ffEarned in Battle of Journey Through Rivers and Mountains\r^ffffffAttack +5，Bonus Damage+5" , desc_1 = "" , desc_2 = ""}
title_definition['演义12低级称号'] = {id = 7274 , note = "^72fe00【The Unyielding】" , desc = "0^a800ffFrom the Romance Script: Battle of Maicheng\r^72fe00Permanent Effect\r^ffffffAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['演义12中级称号'] = {id = 7275 , note = "^0184ff【Three Hundred Warriors of Mai City】" , desc = "0^a800ffFrom the Romance Script: Battle of Maicheng\r^72fe00Permanent Effect\r^ffffffAttack +3，Crit DMG +1%" , desc_1 = "" , desc_2 = ""}
title_definition['演义12高级称号'] = {id = 7276 , note = "^a800ff【Hand of the Martial Sage】" , desc = "0^a800ffFrom the Romance Script: Battle of Maicheng\r^72fe00Permanent Effect\r^ffffffAttack +5，Crit DMG +2%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国1'] = {id = 5267 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the North〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 10place\rSeal: Seal of the General Who Guards the North" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国2'] = {id = 5268 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the West〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 11place\rSeal: Seal of the General Who Guards the West" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国3'] = {id = 5269 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the South〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 12place\rSeal: Seal of the General Who Guards the South" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国4'] = {id = 5270 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the East〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 13place\rSeal: Seal of the General Who Guards the East" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国5'] = {id = 5271 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the North〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 14place\rSeal: Seal of the General Who Conquers the North" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国6'] = {id = 5272 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the West〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 15place\rSeal: Seal of the General Who Conquers the West" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国7'] = {id = 5273 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the South〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 16place\rSeal: Seal of the General Who Conquers the South" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国8'] = {id = 5274 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the East〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 17place\rSeal: Seal of the General Who Conquers the East" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国9'] = {id = 5275 , note = "^ffbc3c〓Grade 2 Army-Supporting Grand General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 5place\rSeal: Seal of the Army-Supporting Grand General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国10'] = {id = 5276 , note = "^ffbc3c〓Grade 2 Army-Guarding Grand General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 6place\rSeal: Seal of the Army-Guarding Grand General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国11'] = {id = 5277 , note = "^ffbc3c〓Grade 2 Right Chariot & Cavalry General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 7place\rSeal: Seal of the Right Chariot & Cavalry General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国12'] = {id = 5278 , note = "^ffbc3c〓Grade 2 Right Cavalry General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 8place\rSeal: Seal of the Right Cavalry General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国13'] = {id = 5279 , note = "^ffbc3c〓Grade 2 Right Grand General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 9place\rSeal: Seal of the Right Grand General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国1'] = {id = 5280 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the North〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 10place\rSeal: Seal of the General Who Guards the North" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国2'] = {id = 5281 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the West〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 11place\rSeal: Seal of the General Who Guards the West" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国3'] = {id = 5282 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the South〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 12place\rSeal: Seal of the General Who Guards the South" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国4'] = {id = 5283 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the East〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 13place\rSeal: Seal of the General Who Guards the East" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国5'] = {id = 5284 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the North〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 14place\rSeal: Seal of the General Who Conquers the North" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国6'] = {id = 5285 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the West〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 15place\rSeal: Seal of the General Who Conquers the West" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国7'] = {id = 5286 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the South〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 16place\rSeal: Seal of the General Who Conquers the South" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国8'] = {id = 5287 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the East〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 17place\rSeal: Seal of the General Who Conquers the East" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国9'] = {id = 5288 , note = "^ffbc3c〓Grade 2 Army-Supporting Grand General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 5place\rSeal: Seal of the Army-Supporting Grand General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国10'] = {id = 5289 , note = "^ffbc3c〓Grade 2 Army-Guarding Grand General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 6place\rSeal: Seal of the Army-Guarding Grand General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国11'] = {id = 5290 , note = "^ffbc3c〓Grade 2 State-Assisting Grand General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 7place\rSeal: Seal of the State-Assisting Grand General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国12'] = {id = 5291 , note = "^ffbc3c〓Grade 2 Right Protector General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 8place\rSeal: Seal of the Right Protector General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国13'] = {id = 5292 , note = "^ffbc3c〓Grade 2 Left Protector General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 9place\rSeal: Seal of the Left Protector General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国1'] = {id = 5293 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the North〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 10place\rSeal: Seal of the General Who Guards the North" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国2'] = {id = 5294 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the West〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 11place\rSeal: Seal of the General Who Guards the West" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国3'] = {id = 5295 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the South〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 12place\rSeal: Seal of the General Who Guards the South" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国4'] = {id = 5296 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the East〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 13place\rSeal: Seal of the General Who Guards the East" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国5'] = {id = 5297 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the North〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 14place\rSeal: Seal of the General Who Conquers the North" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国6'] = {id = 5298 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the West〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 15place\rSeal: Seal of the General Who Conquers the West" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国7'] = {id = 5299 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the South〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 16place\rSeal: Seal of the General Who Conquers the South" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国8'] = {id = 5300 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the East〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 17place\rSeal: Seal of the General Who Conquers the East" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国9'] = {id = 5301 , note = "^ffbc3c〓Grade 2 Army-Supporting Grand General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 5place\rSeal: Seal of the Army-Supporting Grand General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国10'] = {id = 5302 , note = "^ffbc3c〓Grade 2 Army-Guarding Grand General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 6place\rSeal: Seal of the Army-Guarding Grand General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国11'] = {id = 5303 , note = "^ffbc3c〓Grade 2 State-Assisting Grand General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 7place\rSeal: Seal of the State-Assisting Grand General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国12'] = {id = 5304 , note = "^ffbc3c〓Grade 2 Central Army Grand General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 8place\rSeal: Seal of the Central Army Grand General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国13'] = {id = 5305 , note = "^ffbc3c〓Grade 2 Upper Army Grand General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 9place\rSeal: Seal of the Upper Army Grand General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品蜀国1'] = {id = 5306 , note = "^ffbc3c〓Sub-Grade 1 Guard General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 2place\rSeal: Seal of the Guard General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品蜀国2'] = {id = 5307 , note = "^ffbc3c〓Sub-Grade 1 Chariot & Cavalry General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 3place\rSeal: Seal of the Chariot & Cavalry General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品蜀国3'] = {id = 5308 , note = "^ffbc3c〓Sub-Grade 1 Cavalry General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 4place\rSeal: Seal of the Cavalry General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品吴国1'] = {id = 5309 , note = "^ffbc3c〓Sub-Grade 1 Guard General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 2place\rSeal: Seal of the Guard General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品吴国2'] = {id = 5310 , note = "^ffbc3c〓Sub-Grade 1 Chariot & Cavalry General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 3place\rSeal: Seal of the Chariot & Cavalry General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品吴国3'] = {id = 5311 , note = "^ffbc3c〓Sub-Grade 1 Cavalry General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 4place\rSeal: Seal of the Cavalry General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品魏国1'] = {id = 5312 , note = "^ffbc3c〓Sub-Grade 1 Guard General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 2place\rSeal: Seal of the Guard General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品魏国2'] = {id = 5313 , note = "^ffbc3c〓Sub-Grade 1 Chariot & Cavalry General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 3place\rSeal: Seal of the Chariot & Cavalry General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品魏国3'] = {id = 5314 , note = "^ffbc3c〓Sub-Grade 1 Cavalry General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 4place\rSeal: Seal of the Cavalry General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官正一品蜀国'] = {id = 5315 , note = "^ffbc3c〓Grade 1 Grand General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 1place\rSeal: Seal of the Grand General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官正一品吴国'] = {id = 5316 , note = "^ffbc3c〓Grade 1 Grand Commander〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 1place\rSeal: Seal of the Grand Commander" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官正一品魏国'] = {id = 5317 , note = "^ffbc3c〓Grade 1 Grand General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 1place\rSeal: Seal of the Grand General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国1'] = {id = 5318 , note = "^ffbc3c〓Sub-Grade 2 Left Fengyi Governor〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 10place\rSeal: Seal of the Left Fengyi Governor" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国2'] = {id = 5319 , note = "^ffbc3c〓Sub-Grade 2 Right Fuyi Governor〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 11place\rSeal: Seal of the Right Fuyi Governor" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国3'] = {id = 5320 , note = "^ffbc3c〓Sub-Grade 2 Capital Governor〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 12place\rSeal: Seal of the Capital Governor" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国4'] = {id = 5321 , note = "^ffbc3c〓Sub-Grade 2 Grand Chamberlain〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 13place\rSeal: Seal of the Grand Chamberlain" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国5'] = {id = 5322 , note = "^ffbc3c〓Sub-Grade 2 Minister of Imperial Clan〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 14place\rSeal: Seal of the Imperial Clan Director" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国6'] = {id = 5323 , note = "^ffbc3c〓Sub-Grade 2 Minister of Justice〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 15place\rSeal: Seal of the Chief Justice" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国7'] = {id = 5324 , note = "^ffbc3c〓Sub-Grade 2 Master of Ceremonies〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 16place\rSeal: Seal of the Master of Ceremonies" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国8'] = {id = 5325 , note = "^ffbc3c〓Sub-Grade 2 Privy Treasurer〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 17place\rSeal: Seal of the Director of the Imperial Household" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国9'] = {id = 5326 , note = "^ffbc3c〓Grade 2 Grand Coachman〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 5place\rSeal: Seal of the Grand Coachman" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国10'] = {id = 5327 , note = "^ffbc3c〓Grade 2 Grand Ceremonial〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 6place\rSeal: Seal of the Grand Ceremonial" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国11'] = {id = 5328 , note = "^ffbc3c〓Grade 2 Guard Commander〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 7place\rSeal: Seal of the Guard Commander" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国12'] = {id = 5329 , note = "^ffbc3c〓Grade 2 Grand Ceremonial Master〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 8place\rSeal: Seal of the Grand Ceremonial Master" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国13'] = {id = 5330 , note = "^ffbc3c〓Grade 2 Grand Minister of Agriculture〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 9place\rSeal: Seal of the Grand Minister of Agriculture" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国1'] = {id = 5331 , note = "^ffbc3c〓Sub-Grade 2 Left Fengyi Governor〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 10place\rSeal: Seal of the Left Fengyi Governor" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国2'] = {id = 5332 , note = "^ffbc3c〓Sub-Grade 2 Right Fuyi Governor〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 11place\rSeal: Seal of the Right Fuyi Governor" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国3'] = {id = 5333 , note = "^ffbc3c〓Sub-Grade 2 Capital Governor〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 12place\rSeal: Seal of the Capital Governor" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国4'] = {id = 5334 , note = "^ffbc3c〓Sub-Grade 2 Grand Chamberlain〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 13place\rSeal: Seal of the Grand Chamberlain" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国5'] = {id = 5335 , note = "^ffbc3c〓Sub-Grade 2 Minister of Imperial Clan〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 14place\rSeal: Seal of the Imperial Clan Director" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国6'] = {id = 5336 , note = "^ffbc3c〓Sub-Grade 2 Minister of Justice〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 15place\rSeal: Seal of the Chief Justice" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国7'] = {id = 5337 , note = "^ffbc3c〓Sub-Grade 2 Master of Ceremonies〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 16place\rSeal: Seal of the Master of Ceremonies" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国8'] = {id = 5338 , note = "^ffbc3c〓Sub-Grade 2 Privy Treasurer〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 17place\rSeal: Seal of the Director of the Imperial Household" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国9'] = {id = 5339 , note = "^ffbc3c〓Grade 2 Grand Coachman〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 5place\rSeal: Seal of the Grand Coachman" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国10'] = {id = 5340 , note = "^ffbc3c〓Grade 2 Grand Ceremonial〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 6place\rSeal: Seal of the Grand Ceremonial" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国11'] = {id = 5341 , note = "^ffbc3c〓Grade 2 Guard Commander〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 7place\rSeal: Seal of the Guard Commander" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国12'] = {id = 5342 , note = "^ffbc3c〓Grade 2 Grand Ceremonial Master〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 8place\rSeal: Seal of the Grand Ceremonial Master" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国13'] = {id = 5343 , note = "^ffbc3c〓Grade 2 Grand Minister of Agriculture〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 9place\rSeal: Seal of the Grand Minister of Agriculture" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国1'] = {id = 5344 , note = "^ffbc3c〓Sub-Grade 2 Left Fengyi Governor〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 10place\rSeal: Seal of the Left Fengyi Governor" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国2'] = {id = 5345 , note = "^ffbc3c〓Sub-Grade 2 Right Fuyi Governor〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 11place\rSeal: Seal of the Right Fuyi Governor" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国3'] = {id = 5346 , note = "^ffbc3c〓Sub-Grade 2 Capital Governor〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 12place\rSeal: Seal of the Capital Governor" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国4'] = {id = 5347 , note = "^ffbc3c〓Sub-Grade 2 Grand Chamberlain〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 13place\rSeal: Seal of the Grand Chamberlain" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国5'] = {id = 5348 , note = "^ffbc3c〓Sub-Grade 2 Minister of Imperial Clan〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 14place\rSeal: Seal of the Imperial Clan Director" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国6'] = {id = 5349 , note = "^ffbc3c〓Sub-Grade 2 Minister of Justice〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 15place\rSeal: Seal of the Chief Justice" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国7'] = {id = 5350 , note = "^ffbc3c〓Sub-Grade 2 Master of Ceremonies〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 16place\rSeal: Seal of the Master of Ceremonies" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国8'] = {id = 5351 , note = "^ffbc3c〓Sub-Grade 2 Privy Treasurer〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 17place\rSeal: Seal of the Director of the Imperial Household" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国9'] = {id = 5352 , note = "^ffbc3c〓Grade 2 Grand Coachman〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 5place\rSeal: Seal of the Grand Coachman" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国10'] = {id = 5353 , note = "^ffbc3c〓Grade 2 Grand Ceremonial〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 6place\rSeal: Seal of the Grand Ceremonial" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国11'] = {id = 5354 , note = "^ffbc3c〓Grade 2 Guard Commander〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 7place\rSeal: Seal of the Guard Commander" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国12'] = {id = 5355 , note = "^ffbc3c〓Grade 2 Grand Ceremonial Master〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 8place\rSeal: Seal of the Grand Ceremonial Master" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国13'] = {id = 5356 , note = "^ffbc3c〓Grade 2 Grand Minister of Agriculture〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 9place\rSeal: Seal of the Grand Minister of Agriculture" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品蜀国1'] = {id = 5357 , note = "^ffbc3c〓Sub-Grade 1 Minister of Education〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 2place\rSeal: Seal of the Minister of Education" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品蜀国2'] = {id = 5358 , note = "^ffbc3c〓Sub-Grade 1 Minister of Works〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 3place\rSeal: Seal of the Minister of Works" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品蜀国3'] = {id = 5359 , note = "^ffbc3c〓Sub-Grade 1 Grand Commandant〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 4place\rSeal: Seal of the Grand Commandant" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品吴国1'] = {id = 5360 , note = "^ffbc3c〓Sub-Grade 1 Minister of Education〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 2place\rSeal: Seal of the Minister of Education" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品吴国2'] = {id = 5361 , note = "^ffbc3c〓Sub-Grade 1 Minister of Works〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 3place\rSeal: Seal of the Minister of Works" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品吴国3'] = {id = 5362 , note = "^ffbc3c〓Sub-Grade 1 Grand Commandant〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 4place\rSeal: Seal of the Grand Commandant" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品魏国1'] = {id = 5363 , note = "^ffbc3c〓Sub-Grade 1 Minister of Education〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 2place\rSeal: Seal of the Minister of Education" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品魏国2'] = {id = 5364 , note = "^ffbc3c〓Sub-Grade 1 Minister of Works〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 3place\rSeal: Seal of the Minister of Works" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品魏国3'] = {id = 5365 , note = "^ffbc3c〓Sub-Grade 1 Grand Commandant〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 4place\rSeal: Seal of the Grand Commandant" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官正一品蜀国'] = {id = 5366 , note = "^ffbc3c〓Grade 1 Grand Chancellor〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 1place\rSeal: Seal of the Grand Chancellor" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官正一品吴国'] = {id = 5367 , note = "^ffbc3c〓Grade 1 Grand Chancellor〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 1place\rSeal: Seal of the Grand Chancellor" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官正一品魏国'] = {id = 5368 , note = "^ffbc3c〓Grade 1 Grand Chancellor〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 1place\rSeal: Seal of the Grand Chancellor" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品1魏国'] = {id = 5369 , note = "^ffbc3c〓Sub-Grade 2 Front Inspector〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 18－30place\rSeal: Seal of the Front Inspector" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品2魏国'] = {id = 5370 , note = "^ffbc3c〓Sub-Grade 2 Rear Inspector〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 31－50place\rSeal: Seal of the Rear Inspector" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品3魏国'] = {id = 5371 , note = "^ffbc3c〓Sub-Grade 2 Left Inspector〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 51－100place\rSeal: Seal of the Left Inspector" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品4魏国'] = {id = 5372 , note = "^ffbc3c〓Sub-Grade 2 Right Inspector〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Civil Officer earned last monthRenownLeaderboard Rank 101－1000place\rSeal: Seal of the Right Inspector" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品1蜀国'] = {id = 5373 , note = "^ffbc3c〓Sub-Grade 2 Front Inspector〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 18－30place\rSeal: Seal of the Front Inspector" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品2蜀国'] = {id = 5374 , note = "^ffbc3c〓Sub-Grade 2 Rear Inspector〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 31－50place\rSeal: Seal of the Rear Inspector" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品3蜀国'] = {id = 5375 , note = "^ffbc3c〓Sub-Grade 2 Left Inspector〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 51－100place\rSeal: Seal of the Left Inspector" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品4蜀国'] = {id = 5376 , note = "^ffbc3c〓Sub-Grade 2 Right Inspector〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Civil Officer earned last monthRenownLeaderboard Rank 101－1000place\rSeal: Seal of the Right Inspector" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品1吴国'] = {id = 5377 , note = "^ffbc3c〓Sub-Grade 2 Front Inspector〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 18－30place\rSeal: Seal of the Front Inspector" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品2吴国'] = {id = 5378 , note = "^ffbc3c〓Sub-Grade 2 Rear Inspector〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 31－50place\rSeal: Seal of the Rear Inspector" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品3吴国'] = {id = 5379 , note = "^ffbc3c〓Sub-Grade 2 Left Inspector〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 51－100place\rSeal: Seal of the Left Inspector" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品4吴国'] = {id = 5380 , note = "^ffbc3c〓Sub-Grade 2 Right Inspector〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Civil Officer earned last monthRenownLeaderboard Rank 101－1000place\rSeal: Seal of the Right Inspector" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品1魏国'] = {id = 5381 , note = "^ffbc3c〓Sub-Grade 2 Front Vanguard General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 18－30place\rSeal: Seal of the Front Vanguard General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品2魏国'] = {id = 5382 , note = "^ffbc3c〓Sub-Grade 2 Rear Vanguard General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 31－50place\rSeal: Seal of the Rear Vanguard General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品3魏国'] = {id = 5383 , note = "^ffbc3c〓Sub-Grade 2 Left Vanguard General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 51－100place\rSeal: Seal of the Left Vanguard General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品4魏国'] = {id = 5384 , note = "^ffbc3c〓Sub-Grade 2 Right Vanguard General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wei\rSource: Wei Military Officer earned last monthRenownLeaderboard Rank 101－1000place\rSeal: Seal of the Right Vanguard General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品1蜀国'] = {id = 5385 , note = "^ffbc3c〓Sub-Grade 2 Front Vanguard General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 18－30place\rSeal: Seal of the Front Vanguard General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品2蜀国'] = {id = 5386 , note = "^ffbc3c〓Sub-Grade 2 Rear Vanguard General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 31－50place\rSeal: Seal of the Rear Vanguard General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品3蜀国'] = {id = 5387 , note = "^ffbc3c〓Sub-Grade 2 Left Vanguard General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 51－100place\rSeal: Seal of the Left Vanguard General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品4蜀国'] = {id = 5388 , note = "^ffbc3c〓Sub-Grade 2 Right Vanguard General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Shu\rSource: Shu Military Officer earned last monthRenownLeaderboard Rank 101－1000place\rSeal: Seal of the Right Vanguard General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品1吴国'] = {id = 5389 , note = "^ffbc3c〓Sub-Grade 2 Front Vanguard General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 18－30place\rSeal: Seal of the Front Vanguard General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品2吴国'] = {id = 5390 , note = "^ffbc3c〓Sub-Grade 2 Rear Vanguard General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 31－50place\rSeal: Seal of the Rear Vanguard General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品3吴国'] = {id = 5391 , note = "^ffbc3c〓Sub-Grade 2 Left Vanguard General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 51－100place\rSeal: Seal of the Left Vanguard General" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品4吴国'] = {id = 5392 , note = "^ffbc3c〓Sub-Grade 2 Right Vanguard General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\rFaction: Wu\rSource: Wu Military Officer earned last monthRenownLeaderboard Rank 101－1000place\rSeal: Seal of the Right Vanguard General" , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号01关内侯'] = {id = 7277 , note = "^72fe00【Marquis Within the Pass】" , desc = "0^72fe00Peerage earned at Renown 2000-4999." , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号02乡侯'] = {id = 7278 , note = "^0184ff【Village Marquis】" , desc = "0^0184ffPeerage earned at Renown 5000-9999." , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号03县侯'] = {id = 7279 , note = "^0184ff【County Marquis】" , desc = "0^0184ffPeerage earned at Renown 10000-19999." , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号04男爵'] = {id = 7280 , note = "^a800ff【Baron】" , desc = "0^a800ffPeerage earned at Renown 20000-79999." , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号05子爵'] = {id = 7281 , note = "^a800ff【Viscount】" , desc = "0^a800ffPeerage earned at Renown 80000-179999." , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号06伯爵'] = {id = 7282 , note = "^a800ff【Earl】" , desc = "0^a800ffPeerage earned at Renown 180000-349999." , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号07侯爵'] = {id = 7283 , note = "^ff7d2f【Marquis】" , desc = "0^ff7d2fPeerage Obtained with Renown 350,000-599,999." , desc_1 = "" , desc_2 = ""}
title_definition['活动团团称号'] = {id = 7284 , note = "^ff4ca4【My Commander, My Legion】" , desc = "0^ff7d2fObtained After the Legion's Fall; In Memory of Legion Comrades: Heaven and Earth, The Vast World, Life and Death Together, Bonds That Endure." , desc_1 = "" , desc_2 = ""}
title_definition['称号_魏国军团长称号'] = {id = 7285 , note = "^72fe00【Wei Chieftain】" , desc = "0You are now a member of Kingdom of Wei!\rStatus: Legion Leader" , desc_1 = "" , desc_2 = ""}
title_definition['称号_蜀国军团长称号'] = {id = 7286 , note = "^72fe00【Shu Chieftain】" , desc = "0You are now a member of Kingdom of Wei!\rStatus: Legion Leader" , desc_1 = "" , desc_2 = ""}
title_definition['称号_吴国军团长称号'] = {id = 7287 , note = "^72fe00【Wu Chieftain】" , desc = "0You are now a member of Kingdom of Wei!\rStatus: Legion Leader" , desc_1 = "" , desc_2 = ""}
title_definition['称号_大汉军团长称号'] = {id = 7288 , note = "^72fe00【Great Han Chieftain】" , desc = "0You are now a member of Kingdom of Wei!\rStatus: Legion Leader" , desc_1 = "" , desc_2 = ""}
title_definition['外传貂婵传1'] = {id = 7289 , note = "^72fe00【Hand in Hand with Loli in the Night Cool】" , desc = "0^72fe00Permanent Effect:\r^ffffff\rAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['外传貂婵传2'] = {id = 7290 , note = "^72fe00【Love the Realm, Love Beauty More】" , desc = "0^72fe00Permanent Effect:\r^ffffff\rDefense +2" , desc_1 = "" , desc_2 = ""}
title_definition['外传貂婵传3'] = {id = 7291 , note = "^a800ff【Fearing Love Too Heavy Burdens the Beauty】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +20\rAttack +5\rCrit Damage +2%" , desc_1 = "" , desc_2 = ""}
title_definition['外传貂婵传4'] = {id = 7292 , note = "^a800ff【Two Lives in Bloom, Years Unremembered】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +20\rAttack +5\rCrit Damage +2%" , desc_1 = "" , desc_2 = ""}
title_definition['阵营战地图称号1'] = {id = 7293 , note = "^a800ff【Renowned General of Ziwu Valley】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +60\rAttack +2\rAccuracy+2\rCrit Damage +3%" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励01魏名次1] = {id = 7294 , note = "^ff7d2fFamous Scholar of Kingdom of Wei" , desc = "0^72fe00Kingdom of Wei last week's Renown Ranking: 1 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励02魏名次2-10] = {id = 7295 , note = "^a800ffFamous Scholar of Kingdom of Wei" , desc = "0^72fe00Kingdom of Wei last week's Renown Ranking: 2-10 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励03魏名次11-50] = {id = 7296 , note = "^a800ffFamous Scholar of Kingdom of Wei" , desc = "0^72fe00Kingdom of Wei last week's Renown Ranking: 11-50 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励04魏名次51-100] = {id = 7297 , note = "^0184ffFamous Scholar of Kingdom of Wei" , desc = "0^72fe00Kingdom of Wei last week's Renown Ranking: 51-100 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励05魏名次101-500] = {id = 7298 , note = "^0184ffFamous Scholar of Kingdom of Wei" , desc = "0^72fe00Kingdom of Wei last week's Renown Ranking: 101-500 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励06魏名次501-1000] = {id = 7299 , note = "^72fe00Famous Scholar of Kingdom of Wei" , desc = "0^72fe00Kingdom of Wei last week's Renown Ranking: 501-1000 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励07魏名次1001以上] = {id = 7300 , note = "^72fe00Famous Scholar of Kingdom of Wei" , desc = "0^72fe00Kingdom of Wei last week's Renown Ranking: 1001＋ place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励01蜀名次1] = {id = 7301 , note = "^ff7d2fFamous Scholar of Kingdom of Shu" , desc = "0^72fe00Kingdom of Shu last week's Renown Ranking: 1 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励02蜀名次2-10] = {id = 7302 , note = "^a800ffFamous Scholar of Kingdom of Shu" , desc = "0^72fe00Kingdom of Shu last week's Renown Ranking: 2-10 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励03蜀名次11-50] = {id = 7303 , note = "^a800ffFamous Scholar of Kingdom of Shu" , desc = "0^72fe00Kingdom of Shu last week's Renown Ranking: 11-50 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励04蜀名次51-100] = {id = 7304 , note = "^0184ffFamous Scholar of Kingdom of Shu" , desc = "0^72fe00Kingdom of Shu last week's Renown Ranking: 51-100 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励05蜀名次101-500] = {id = 7305 , note = "^0184ffFamous Scholar of Kingdom of Shu" , desc = "0^72fe00Kingdom of Shu last week's Renown Ranking: 101-500 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励06蜀名次501-1000] = {id = 7306 , note = "^72fe00Famous Scholar of Kingdom of Shu" , desc = "0^72fe00Kingdom of Shu last week's Renown Ranking: 501-1000 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励07蜀名次1001以上] = {id = 7307 , note = "^72fe00Famous Scholar of Kingdom of Shu" , desc = "0^72fe00Kingdom of Shu last week's Renown Ranking: 1001＋ place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励01吴名次1] = {id = 7308 , note = "^ff7d2fFamous Scholar of Kingdom of Wu" , desc = "0^72fe00Kingdom of Wu last week's Renown Ranking: 1 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励02吴名次2-10] = {id = 7309 , note = "^a800ffFamous Scholar of Kingdom of Wu" , desc = "0^72fe00Kingdom of Wu last week's Renown Ranking: 2-10 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励03吴名次11-50] = {id = 7310 , note = "^a800ffFamous Scholar of Kingdom of Wu" , desc = "0^72fe00Kingdom of Wu last week's Renown Ranking: 11-50 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励04吴名次51-100] = {id = 7311 , note = "^0184ffFamous Scholar of Kingdom of Wu" , desc = "0^72fe00Kingdom of Wu last week's Renown Ranking: 51-100 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励05吴名次101-500] = {id = 7312 , note = "^0184ffFamous Scholar of Kingdom of Wu" , desc = "0^72fe00Kingdom of Wu last week's Renown Ranking: 101-500 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励06吴名次501-1000] = {id = 7313 , note = "^72fe00Famous Scholar of Kingdom of Wu" , desc = "0^72fe00Kingdom of Wu last week's Renown Ranking: 501-1000 place title." , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励07吴名次1001以上] = {id = 7314 , note = "^72fe00Famous Scholar of Kingdom of Wu" , desc = "0^72fe00Kingdom of Wu last week's Renown Ranking: 1001＋ place title." , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行魏国第2'] = {id = 7315 , note = "^a800ff【Great Wei Heroic Lord】" , desc = "0^a800ffWei 2nd Ranked Legion Commander\rThis week Legion orders increase by 80.\rMembers may visit Huangfu Yan to claim strategic orders." , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行魏国第3'] = {id = 7316 , note = "^a800ff【Great Wei Wise Lord】" , desc = "0^a800ffWei 3rd Ranked Legion Commander\rThis week Legion orders increase by 70.\rMembers may visit Huangfu Yan to claim strategic orders." , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行魏国第4'] = {id = 7317 , note = "^a800ff【Great Wei Mighty Lord】" , desc = "0^a800ffWei 4th Ranked Legion Commander\rThis week Legion orders increase by 60.\rMembers may visit Huangfu Yan to claim strategic orders." , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行魏国第5'] = {id = 7318 , note = "^a800ff【Great Wei Strong Lord】" , desc = "0^a800ffWei 5th Ranked Legion Commander\rThis week Legion orders increase by 50.\rMembers may visit Huangfu Yan to claim strategic orders." , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行蜀国第2'] = {id = 7319 , note = "^a800ff【Great Shu Heroic Lord】" , desc = "0^a800ffShu 2nd Ranked Legion Commander\rThis week Legion orders increase by 80.\rMembers may visit Huangfu Yan to claim strategic orders." , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行蜀国第3'] = {id = 7320 , note = "^a800ff【Great Shu Wise Lord】" , desc = "0^a800ffShu 3rd Ranked Legion Commander\rThis week Legion orders increase by 70.\rMembers may visit Huangfu Yan to claim strategic orders." , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行蜀国第4'] = {id = 7321 , note = "^a800ff【Great Shu Mighty Lord】" , desc = "0^a800ffShu 4th Ranked Legion Commander\rThis week Legion orders increase by 60.\rMembers may visit Huangfu Yan to claim strategic orders." , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行蜀国第5'] = {id = 7322 , note = "^a800ff【Great Shu Strong Lord】" , desc = "0^a800ffShu 5th Ranked Legion Commander\rThis week Legion orders increase by 50.\rMembers may visit Huangfu Yan to claim strategic orders." , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行吴国第2'] = {id = 7323 , note = "^a800ff【Great Wu Heroic Lord】" , desc = "0^a800ffWu 2nd Ranked Legion Commander\rThis week Legion orders increase by 80.\rMembers may visit Huangfu Yan to claim strategic orders." , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行吴国第3'] = {id = 7324 , note = "^a800ff【Great Wu Wise Lord】" , desc = "0^a800ffWu 3rd Ranked Legion Commander\rThis week Legion orders increase by 70.\rMembers may visit Huangfu Yan to claim strategic orders." , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行吴国第4'] = {id = 7325 , note = "^a800ff【Great Wu Mighty Lord】" , desc = "0^a800ffWu 4th Ranked Legion Commander\rThis week Legion orders increase by 60.\rMembers may visit Huangfu Yan to claim strategic orders." , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行吴国第5'] = {id = 7326 , note = "^a800ff【Great Wu Strong Lord】" , desc = "0^a800ffWu 5th Ranked Legion Commander\rThis week Legion orders increase by 50.\rMembers may visit Huangfu Yan to claim strategic orders." , desc_1 = "" , desc_2 = ""}
title_definition['无双隆中奇情称号01'] = {id = 7327 , note = "^72fe00【How Many Times in Dreams With You】" , desc = "0Title earned in Peerless Battlefield "Romance at Longzhong"\rAttack +3" , desc_1 = "" , desc_2 = ""}
title_definition['无双隆中奇情称号02'] = {id = 7328 , note = "^0184ff【Fearing This Meeting Is a Dream】" , desc = "0Title earned in Peerless Battlefield "Romance at Longzhong"\rAttack +5, Max HP +20" , desc_1 = "" , desc_2 = ""}
title_definition['无双隆中奇情称号03'] = {id = 7329 , note = "^a800ff【Strong Love in Wind and Moon; A Passionate Soul】" , desc = "0Title earned in Peerless Battlefield "Romance at Longzhong"\rAttack +10, Max HP +50" , desc_1 = "" , desc_2 = ""}
title_definition['百团盛典活动称号-老玩家'] = {id = 7330 , note = "^d181ff【Who in the World Does Not Know You】" , desc = "0Veteran Exclusive Honor Title" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营魏国入门2'] = {id = 7331 , note = "^72fe00【Citizen of Wei】" , desc = "0You have now become a citizen of Kingdom of Wei!" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营蜀国入门2'] = {id = 7332 , note = "^72fe00【Citizen of Shu】" , desc = "0You have now become a citizen of Kingdom of Shu!" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营吴国入门2'] = {id = 7333 , note = "^72fe00【Citizen of Wu】" , desc = "0You have now become a citizen of Kingdom of Wu!" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营无国家称号1'] = {id = 7334 , note = "^72fe00【Living Idle in a Thatched Hut】" , desc = "0You have not joined any nation yet!" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营无国家称号2'] = {id = 7335 , note = "^72fe00【Wandering Free Agent】" , desc = "0You are now a wandering free agent!" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营无国家称号3'] = {id = 7336 , note = "^72fe00【Idle Cloud, Wild Crane】" , desc = "0You are now a free wanderer!" , desc_1 = "" , desc_2 = ""}
title_definition['百团盛典活动称号-声望兑换'] = {id = 7337 , note = "^deff00【Ten Thousand Waters and a Thousand Mountains All Bear Feeling】" , desc = "0Earned in Hundred Legions Celebration Event, recording footsteps across the homeland; homesickness lives forever in the wanderer's heart." , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号08公爵'] = {id = 7338 , note = "^ff7d2f【Duke】" , desc = "0^ff7d2fPeerage Obtained with Renown 600,000-999,999." , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号09王爵'] = {id = 7339 , note = "^ff7d2f【King】" , desc = "0^ff7d2fHighest Peerage Obtained When Renown Reaches 1,000,000 or Above." , desc_1 = "" , desc_2 = ""}
title_definition['故土声望排行隐藏称号1'] = {id = 7340 , note = "" , desc = "Ranks 01-3" , desc_1 = "" , desc_2 = ""}
title_definition['故土声望排行隐藏称号2'] = {id = 7341 , note = "" , desc = "Ranks 04-10" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号01'] = {id = 7342 , note = "^72fe00【$T's Apprentice】" , desc = "0^72fe00Mentor & Apprentice title reward" , desc_1 = "" , desc_2 = ""}
title_definition['七星湖南中蛮王'] = {id = 7343 , note = "^d181ff【Barbarian King of Southern Zhong】" , desc = "0^d181ffPrecious Title earned by completing the illustration collection for all Meng Huo Army characters." , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号02'] = {id = 7344 , note = "^ffffff【Novice Master】" , desc = "0^ffffffMentor & Apprentice Reward Title" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号03'] = {id = 7345 , note = "^72fe00【Intermediate Master】" , desc = "0^72fe00Mentor & Apprentice reward title" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号04'] = {id = 7346 , note = "^0184ff【Senior Master】" , desc = "0^0184ffMentor & Apprentice reward title" , desc_1 = "" , desc_2 = ""}
title_definition['义结天下奖励称号'] = {id = 7347 , note = "^72fe00【Assembly Call】" , desc = "0Reward title from Brotherhood of the World Event!" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号05'] = {id = 7348 , note = "^a800ff【Novice Teacher】" , desc = "0^a800ffMentor & Apprentice Reward Title" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号06'] = {id = 7349 , note = "^ff7d2f【Intermediate Teacher】" , desc = "0^ff7d2fMentor & Apprentice Reward Title" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号07'] = {id = 7350 , note = "^fff962【Senior Teacher】" , desc = "0^fff962Mentor & Apprentice Reward Title" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号08'] = {id = 7351 , note = "^ff7d2f【Worthy Teacher of the Heavenly Dynasty】" , desc = "0^ff7d2fMentorship Virtue Leaderboard Reward Title\r^ffffffHP +200 Defense +5" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号01'] = {id = 7352 , note = "^ff4ca4【Provider of Brilliant Questions】" , desc = "0Provider of Brilliant Questions" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号02'] = {id = 7353 , note = "^3bbcec【Question Giver】" , desc = "0Question Giver" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号03'] = {id = 7354 , note = "^72fe00【Consolation Prize】" , desc = "0Consolation Prize" , desc_1 = "" , desc_2 = ""}
title_definition['跨服竞技全国冠军'] = {id = 7355 , note = "^ff7d2f【Chibi Overlord】" , desc = "0^ff7d2fMember of the World's Invincible Legion That Won the Cross-server Legion Tournament Championship!" , desc_1 = "" , desc_2 = ""}
title_definition['跨服竞技全国亚军'] = {id = 7356 , note = "^ff7d2f【Chibi Tiger General】" , desc = "0^ff7d2fMember of the World-renowned Powerful Legion That Won the Cross-server Legion Tournament Runner-up!" , desc_1 = "" , desc_2 = ""}
title_definition['跨服竞技全国季军'] = {id = 7357 , note = "^ff7d2fHigh Minister of Chibi" , desc = "0^ff7d2fMember of the Renowned Powerful Legion That Won the Cross-server Legion Tournament Third Place!" , desc_1 = "" , desc_2 = ""}
title_definition['跨服竞技全国4－6名'] = {id = 7358 , note = "^ff7d2fCelebrity of Chibi" , desc = "0^ff7d2fMember of the World-renowned Powerful Legion That Ranked Top Six in the Cross-server Legion Tournament!" , desc_1 = "" , desc_2 = ""}
title_definition['演义逆旅河山01'] = {id = 7359 , note = "^72fe00【Wanderer of the Reversing Journey】" , desc = "0^72fe00Romance Battlefield“Journey Through Rivers and Mountains”Title Earned in\rAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['演义逆旅河山02'] = {id = 7360 , note = "^0184ff【A Thousand Years a Wanderer, Idly Asking Flowers】" , desc = "0^0184ffTitle earned in Chronicle Battlefield "Reversing Rivers and Mountains"\rAttack +3, Defense +1" , desc_1 = "" , desc_2 = ""}
title_definition['演义逆旅河山03'] = {id = 7361 , note = "^a800ff【Thirty Thousand Worlds, All Practices Complete, Awakened Wondrous Tathagata, Dharma King of Timeless Freedom】" , desc = "0^a800ffRomance Battlefield“Journey Through Rivers and Mountains”Title Earned in\rAttack+5,Defense+2，Stamina+5" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_七夕称号01'] = {id = 7362 , note = "^a800ff【In Heaven, We Shall Be Birds Flying Wing to Wing】" , desc = "0Title earned in Qixi Event!" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_七夕称号02'] = {id = 7363 , note = "^a800ff【On Earth, We Shall Be Intertwined Branches】" , desc = "0Title earned in Qixi Event!" , desc_1 = "" , desc_2 = ""}
title_definition['09七夕称号01'] = {id = 7364 , note = "^a800ff【A Thousand Charms Return via the Magpie Bridge】" , desc = "0^fff600Obtained from the Qixi Event. Possessing 999 Blue Demon Roses; The Peerless Beauty Loved by All!" , desc_1 = "" , desc_2 = ""}
title_definition['09七夕称号02'] = {id = 7365 , note = "^a800ff【By the Waterside, a Handsome Face Intoxicated】" , desc = "0^fff600Obtained from the Qixi Event. Possessing 999 Blue Demon Roses; The Peerless Gentleman Loved by All!" , desc_1 = "" , desc_2 = ""}
title_definition['商城积分月榜第1隐藏称号'] = {id = 7366 , note = "^fffd44【Heavenly Fortune Little God of Blessing】" , desc = "0^fffd44Monthly Consumption Points Leaderboard 1st Place Title\rHP +1000 Crit +5 Accuracy +10 Heal Potency +150\r^fffd44Valid Until Month End" , desc_1 = "" , desc_2 = ""}
title_definition['商城积分月榜第2-10隐藏称号'] = {id = 7367 , note = "^ff9c00【Heavenly Fortune Little Lucky Star】" , desc = "0^ff9c00Monthly Consumption Points Leaderboard 2nd to 10th Place Title\rHP +500 Crit +2 Accuracy +5 Heal Potency +80\r^ff9c00Valid Until Month End" , desc_1 = "" , desc_2 = ""}
title_definition['09中秋称号01'] = {id = 7368 , note = "^ff7d2f【If Heaven Had Feelings, Heaven Would Also Age】" , desc = "0^ff7d2fMid-Autumn Event Reward Title!" , desc_1 = "" , desc_2 = ""}
title_definition['09中秋称号02'] = {id = 7369 , note = "^ff7d2f【If the Moon Had No Regret, the Moon Would Always Be Full】" , desc = "0^ff7d2fMid-Autumn Event Reward Title!" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城文官称号'] = {id = 7370 , note = "^d181ff【Strategic Wisdom Pervading】" , desc = "0^d181ffHonored for Collecting All Eight Civil Official Biographical Codex Entries;\rClaim 10,000 Civil Merit and 10,000 Merit in One Go from Codex Emissary Zhang Hua in Chang'an." , desc_1 = "" , desc_2 = ""}
title_definition['白帝城武官称号'] = {id = 7371 , note = "^d181ff【Thorough in the Art of War】" , desc = "0^d181ffHonored for Collecting All Eight Military Official Biographical Codex Entries;\rClaim 10,000 Military Merit and 10,000 Merit in One Go from Codex Emissary Zhang Hua in Chang'an." , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商1'] = {id = 7372 , note = "^72fe00【Wandering Mountain Peddler】" , desc = "0^72fe00Title earned in Baidi City Trade Caravan\rAttack +2，Defense+1" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商2'] = {id = 7373 , note = "^0184ff【Meticulous Little Merchant】" , desc = "0^0184ffTitle earned in Baidi City Trade Run\rMax HP +10, Attack +5, Defense +3" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商3'] = {id = 7374 , note = "^a800ff【Baidi City Honored Merchant】" , desc = "0^a800ffTitle earned in Baidi City Trade Caravan\rHP+60，Attack +10，Defense+5" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商4'] = {id = 7375 , note = "^ff4ca4【Kind-hearted Little Merchant】" , desc = "0^ff4ca4Title earned in Baidi City Trade Caravan\rHeal Stat+1%" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商5'] = {id = 7376 , note = "^ff4ca4【Lotus-Blooming-Mouth Little Merchant】" , desc = "0^ff4ca4Title earned in Baidi City Trade Caravan\rBonus DMG+2" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商6'] = {id = 7377 , note = "^ff4ca4【The Fooled Kind Merchant】" , desc = "0^ff4ca4Title earned in Baidi City Trade Caravan\rStamina+5" , desc_1 = "" , desc_2 = ""}
title_definition['PK之王个人赛冠军'] = {id = 7378 , note = "^ff4ca4【Personal Tournament Champion】" , desc = "0^ff4ca4PK King Individual Tournament Champion!" , desc_1 = "" , desc_2 = ""}
title_definition['PK之王个人赛亚军'] = {id = 7379 , note = "^ff7d2f【Personal Tournament Runner-up】" , desc = "0^ff7d2fPK King Individual Tournament Runner-up!" , desc_1 = "" , desc_2 = ""}
title_definition['PK之王个人赛季军'] = {id = 7380 , note = "^a800ff【Personal Tournament 3rd Place】" , desc = "0^a800ffPK King Individual Tournament Third Place!" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片灵气称号01'] = {id = 7381 , note = "^ff7d2f【Spirit Title 1】" , desc = "0^ff7d2fMid-Autumn Event Reward Title!" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片灵气称号02'] = {id = 7382 , note = "^ff7d2f【Spirit Title 2】" , desc = "0^ff7d2fMid-Autumn Event Reward Title!" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片灵气称号03'] = {id = 7383 , note = "^ff7d2f【Spirit Title 3】" , desc = "0^ff7d2fMid-Autumn Event Reward Title!" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片老玩家回归称号01'] = {id = 7384 , note = "^ff7d2f【Seen Often in the Mortal World, You Should Know Me】" , desc = "0^ff7d2fHot-Blooded War Soul Veteran Return Exclusive Title!" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片老玩家回归称号02'] = {id = 7385 , note = "^ff7d2f【Green Mountains Enter the Painting; Meeting You Again】" , desc = "0^ff7d2fHot-Blooded War Soul Veteran Return Exclusive Title!" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片老玩家回归称号03'] = {id = 7386 , note = "^ff7d2f【White Clouds Are Good to Lie On; Return Soon】" , desc = "0^ff7d2fHot-Blooded War Soul Veteran Return Exclusive Title!" , desc_1 = "" , desc_2 = ""}
title_definition['战魂前提称号'] = {id = 7387 , note = "^ff7200【War Soul Envoy】" , desc = "0^ff7200Gained the ability to resonate with the War Soul\rHP+50，Attack+5" , desc_1 = "" , desc_2 = ""}
title_definition['战魂活动称号'] = {id = 7388 , note = "^ff7d2f【Soul Prayer Master】" , desc = "0^ff7d2fTitle earned at the Soul Prayer Ceremony" , desc_1 = "" , desc_2 = ""}
title_definition['09圣诞活动称号01'] = {id = 7389 , note = "^ffc556【Shining Christmas Archangel】" , desc = "0^ff6fb3Struck by Snowballs from All Directions; The Most Popular Archangel of Christmas 2009!" , desc_1 = "" , desc_2 = ""}
title_definition['09圣诞活动称号02'] = {id = 7390 , note = "^ffc556【Flying Snow Christmas Little Devil】" , desc = "0^ff6fb3Secretly Throwing Blessing Snowballs at Others; The Cutest Little Devil of Christmas 2009!" , desc_1 = "" , desc_2 = ""}
title_definition['09圣诞活动称号03'] = {id = 7391 , note = "^ff7d2f【Sitting Watching Clouds Rise; A Ten-Thousand-Li Roc's Journey】" , desc = "0^ff6fb3Harvest from New Year's Day 2010 Mountain Climbing. Set High Aspirations at the New Year; Your Future Will Be Incomparably Beautiful!" , desc_1 = "" , desc_2 = ""}
title_definition['二周年庆典称号01'] = {id = 7392 , note = "^a800ff【Pilgrim of the Three Kingdoms】" , desc = "0^ff7d2fChibi 2nd Anniversary Exclusive Title! With this title, claim high Training rewards once daily after completing the Draw Sword or Quell Rebellion quests." , desc_1 = "" , desc_2 = ""}
title_definition['二周年庆典称号02'] = {id = 7393 , note = "^ff7d2f【Witness of History】" , desc = "0^a800ffThe Vicissitudes and Glory of History; Chibi's Storms and Growth; All Visible to the Mindful Eye." , desc_1 = "" , desc_2 = ""}
title_definition['虎年高级VIP称号'] = {id = 7394 , note = "^ff7d2f【Five Lakes and Four Seas All in Spring Colors; Ten Thousand Waters and a Thousand Mountains Bathed in Brilliance】" , desc = "0^a800ffSymbol of High-level VIP" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号04'] = {id = 7395 , note = "^ff4ca4【Provider of Brilliant Questions】" , desc = "0Provider of Brilliant Questions" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号05'] = {id = 7396 , note = "^3bbcec【Question Giver】" , desc = "0Question Giver" , desc_1 = "" , desc_2 = ""}
title_definition['二周年庆典称号03'] = {id = 7397 , note = "^ff7d2f【Climbing the Cliff, One Howl Makes a Thousand Peaks Ring】" , desc = "0^a800ffCarry Forward the Past, Break the Old, Establish the New, Create a New Era." , desc_1 = "" , desc_2 = ""}
title_definition['台湾_活动称号1'] = {id = 7398 , note = "^72fe00【Hot-Blooded Youth】" , desc = "Revolution Centennial Event Title" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_活动称号2'] = {id = 7399 , note = "^ff7d2f【Shed Heads and Spill Hot Blood】" , desc = "Revolution Centennial Event Title" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号06'] = {id = 7400 , note = "^72fe00【Consolation Prize】" , desc = "0Consolation Prize" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉13'] = {id = 7401 , note = "^72fe00【Kill Buddhas If They Stand in the Way】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度魏1'] = {id = 7402 , note = "^ff7d2f【Great Wei Peerless Commander】" , desc = "0^72fe00Kingdom of Wei Legion last week's Activity Rank 1st reward title!\rClaimable Sunday evening18:00 to 22:00at the Legion Base\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度魏2-5'] = {id = 7403 , note = "^a800ff【Great Wei Elite Commander】" , desc = "0^72fe00Kingdom of Wei Legion last week's Activity Rank 2nd to 5th reward title!\rClaimable Sunday evening18:00 to 22:00at the Legion Base\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度魏6-15'] = {id = 7404 , note = "^0184ff【Great Wei Outstanding Commander】" , desc = "0^72fe00Kingdom of Wei Legion last week's Activity Rank 6th to 15th reward title!\rClaimable Sunday evening18:00 to 22:00at the Legion Base\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度蜀1'] = {id = 7405 , note = "^ff7d2f【Great Shu Peerless Commander】" , desc = "0^72fe00Kingdom of Shu Legion last week's Activity Rank 1st reward title!\rClaimable Sunday evening18:00 to 22:00at the Legion Base\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度蜀2-5'] = {id = 7406 , note = "^a800ff【Great Shu Elite Commander】" , desc = "0^72fe00Kingdom of Shu Legion last week's Activity Rank 2nd to 5th reward title!\rClaimable Sunday evening18:00 to 22:00at the Legion Base\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度蜀6-15'] = {id = 7407 , note = "^0184ff【Great Shu Outstanding Commander】" , desc = "0^72fe00Kingdom of Shu Legion last week's Activity Rank 6th to 15th reward title!\rClaimable Sunday evening18:00 to 22:00at the Legion Base\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度吴1'] = {id = 7408 , note = "^ff7d2f【Great Wu Peerless Commander】" , desc = "0^72fe00Kingdom of Wu Legion last week's Activity Rank 1st reward title!\rClaimable Sunday evening18:00 to 22:00at the Legion Base\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度吴2-5'] = {id = 7409 , note = "^a800ff【Great Wu Elite Commander】" , desc = "0^72fe00Kingdom of Wu Legion last week's Activity Rank 2nd to 5th reward title!\rClaimable Sunday evening18:00 to 22:00at the Legion Base\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度吴6-15'] = {id = 7410 , note = "^0184ff【Great Wu Outstanding Commander】" , desc = "0^72fe00Kingdom of Wu Legion last week's Activity Rank 6th to 15th reward title!\rClaimable Sunday evening18:00 to 22:00at the Legion Base\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['4月资料片老玩家回归称号'] = {id = 7411 , note = "^ff7d2f【The Great General Returns to Battle the Battlefield】" , desc = "0^ff7d2fVeteran Return Exclusive Title!\rLog in after April 19 to receive high EXP rewards\rBetween 4.19 and 5.9, form a team as leader daily and start the "General's Mark" quest at the Tiger General to claim high rewards!" , desc_1 = "" , desc_2 = ""}
title_definition['虎年四月资料片送水称号'] = {id = 7412, note = "^ff7d2f【I Have More Love Than a Star】" , desc = "0^ff7d2fExclusive Title Obtained by Submitting a Total of 20 Love Dewdrops!" , desc_1 = "" , desc_2 = ""}
title_definition['5月主题活动祈福称号'] = {id = 7413, note = "^ff7200【Heaven Blesses China; United in Prayer】" , desc = "0^ff7200Heaven Blesses China Prayer Event Exclusive Title!" , desc_1 = "" , desc_2 = ""}
title_definition['5月主题活动欢乐积分排行榜第1名称号'] = {id = 7414, note = "^ff7200【Little God of Wealth Who Attracts Treasure】" , desc = "0^ff7200Joy Points Leaderboard Rank 1 Exclusive Title!\rWith This Title, Visit the Perfect Gift Emissary to Claim Rewards." , desc_1 = "" , desc_2 = ""}
title_definition['5月主题活动欢乐积分排行榜第2-10名称号'] = {id = 7415, note = "^ff7200【Little God of Fortune】" , desc = "0^ff7200Joy Points Leaderboard Rank 2-10 Exclusive Title!\rWith This Title, Visit the Perfect Gift Emissary to Claim Rewards." , desc_1 = "" , desc_2 = ""}
title_definition['5月主题活动欢乐积分排行榜第111-100名称号'] = {id = 7416, note = "^ff7200【Little Immortal Who Brings Treasure】" , desc = "0^ff7200Joy Points Leaderboard Rank 11-100 Exclusive Title!\rWith This Title, Visit the Perfect Gift Emissary to Claim Rewards." , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片洛阳剧情称号1'] = {id = 7417 , note = "^ff7d2f【Hero's Fate】" , desc = "0^ff7d2fFate earned when any martial art reaches Venerable Rank 9，\rYou may seek Old Hu in Chang'an City to embark on a new hero's path。\rPermanent Effect: \r^ffffffAttack+10\Defense+5\Stamina+10\Accuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片洛阳剧情称号2'] = {id = 7418 , note = "^72fe00【Great Detective】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rDodge+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片洛阳剧情称号3'] = {id = 7419 , note = "^72fe00【Red Ink Elder】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+30\rHealing+10\rAccuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片洛阳剧情称号4'] = {id = 7420 , note = "^72fe00【White Ink Elder】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+30\rHealing+10\rAccuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片洛阳剧情称号5'] = {id = 7421 , note = "^72fe00【Gardening Sage】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rHealing+10\rAccuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片洛阳剧情称号6'] = {id = 7422 , note = "^72fe00【Golden Jade Match】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rDodge+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片洛阳剧情称号7'] = {id = 7423 , note = "^72fe00【Ghost Blows Out the Light】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rAccuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片草原剧情称号1'] = {id = 7424 , note = "^72fe00【Warm Crimson Hands】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rHealing+10" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片草原剧情称号2'] = {id = 7425 , note = "^72fe00【Dare Ask of Injustice】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rDefense+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片草原剧情称号3'] = {id = 7426 , note = "^72fe00【I'll Give You Three Moves】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rDefense+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片草原剧情称号4'] = {id = 7427 , note = "^72fe00【Meeting Without a Date】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rAccuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片草原剧情称号5'] = {id = 7428 , note = "^72fe00【The Lonely One Has Joy】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rDefense+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片草原剧情称号6'] = {id = 7429 , note = "^72fe00【Endless Eternal Joy】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rAccuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片东海剧情称号1'] = {id = 7430 , note = "^72fe00【Gate-Watching Knight】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rDodge+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片东海剧情称号2'] = {id = 7431 , note = "^72fe00【Happy Youth on the Human Path】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rHealing+10" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片东海剧情称号3'] = {id = 7432 , note = "^72fe00【Chess Obsessive】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rDodge+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片东海剧情称号4'] = {id = 7433 , note = "^72fe00【Assistant of the Ten-Thousand-Mile Moonlight】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rAccuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片东海剧情称号5'] = {id = 7434 , note = "^72fe00【Exorcise Demons, Guard the Way】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rDefense+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片东海剧情称号6'] = {id = 7435 , note = "^72fe00【Bagua Eccentric】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+10\rDefense+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号1'] = {id = 7436 , note = "^72fe00【Luo Fishing Joy: Hunt East, Fish West】" , desc = "0^72fe00A Novice Catching a Glimpse of the Divine Art of Angling\r^72fe00Permanent Effect: \r^ffffffAttack+2\rAccuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号2'] = {id = 7437 , note = "^72fe00【Luo Fishing Joy: Fish in Troubled Waters】" , desc = "0^72fe00A Beginner in the Divine Art of Angling\r^72fe00Permanent Effect: \r^ffffffAttack+5\rAccuracy+2\rStamina+10" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号3'] = {id = 7438 , note = "^0184ff【Luo Fishing Joy: The Beauty Angling】" , desc = "0^0184ffGradually Experiencing the Wonders of Divine Angling\r^72fe00Permanent Effect: \r^ffffffAttack+10\rAccuracy+3\rStamina+20" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号4'] = {id = 7439 , note = "^0184ff【Luo Fishing Joy: Leaf-Boat Storm】" , desc = "0^0184ffHoning the Art of Angling\r^72fe00Permanent Effect: \r^ffffffAttack+15\rAccuracy+4\rStamina+40" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号5'] = {id = 7440 , note = "^a800ff【Luoyang Fishing Joy · White-haired Angler in a Straw Hat】" , desc = "0^a800ffThe Art of Angling Has Become Your Lifelong Pursuit\r^72fe00Permanent Effect: \r^ffffffAttack+20\rAccuracy+4\rStamina+80" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号6'] = {id = 7441 , note = "^ff7d2f【Luoyang Fishing Joy · Willing Bait Takes the Hook】" , desc = "0^ff7d2fYour Angling Skill Has Reached the Realm of Fishing Without Form\r^72fe00Permanent Effect: \r^ffffffAttack+30\rAccuracy+4\rStamina+160" , desc_1 = "" , desc_2 = ""}
title_definition['端午节高级VIP尊贵称号'] = {id = 7442 , note = "^72fe00May Pomegranate Blossoms, Enchanting and Radiant; Green Willows Heavy with Hanging Rain" , desc = "0^ff7d2fDragon Boat Festival High VIP Honor Title" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片建安笑林'] = {id = 7443 , note = "^ff4ca4【Emperor of Cold Jokes】" , desc = "0^ff4ca4Permanent Effect:\r^ffffffAttack+2\rStamina+10\rDodge+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号1'] = {id = 7444 , note = "^72fe00【Merchant Guild Apprentice】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rCrit+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号2'] = {id = 7445 , note = "^0184ff【Merchant Guild Traveling Merchant】" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack+5\rCrit+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号3'] = {id = 7446 , note = "^0184ff【Merchant Guild Shopkeeper】" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack+10\rCrit+3\rDirect DMG Resist+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号4'] = {id = 7447 , note = "^a800ff【Famous Businessman】" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+15\rCrit+4\rDirect DMG Resist+2\rHealing+20" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号5'] = {id = 7448 , note = "^ff7d2f【Wealthy Merchant】" , desc = "0^ff7d2fPermanent Effect:\r^ffffffAttack+20\rCrit+5\rDirect DMG Resist+2\rHealing+40\rIndirect DMG Resist+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号排行榜1'] = {id = 7449 , note = "^fff962【Merchant Guild Chief】" , desc = "0^fff962Permanent Effect:\r^ffffffMax HP+5%\rStamina+200\rDefense+20" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号排行榜2-10'] = {id = 7450 , note = "^ff7d2f【Merchant Guild Elder】" , desc = "0^ff7d2fPermanent Effect:\r^ffffffMax HP+3%\rStamina+100\rDefense+10" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号排行榜11-30'] = {id = 7451 , note = "^a800ff【Merchant Guild Steward】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP+1%\rStamina+50" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战1'] = {id = 7452 , note = "^72fe00【Chibi Oarsman】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rCrit Resist+1\rDefense+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战2'] = {id = 7453 , note = "^0184ff【Chibi Archer】" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack+5\rCrit Resist+2\rDefense+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战3'] = {id = 7454 , note = "^0184ff【Chibi Cannoneer】" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack+10\rCrit Resist+3\rDefense+5" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战4'] = {id = 7455 , note = "^a800ff【Chibi Captain】" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+15\rCrit Resist+4\rDefense+10\rPierce+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战5'] = {id = 7456 , note = "^a800ff【Chibi Admiral】" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+20\rCrit Resist+5\rDefense+15\rPierce+2\rCrit Bonus Damage+10" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战6'] = {id = 7457 , note = "^ff7d2f【Chibi Overlord】" , desc = "0^ff7d2fPermanent Effect:\r^ffffffAttack+30\rCrit Resist+5\rDefense+20\rPierce+2\rCrit Bonus Damage+20\rPierce+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动探宝称号1'] = {id = 7458 , note = "^72fe00【Treasure Song: Return Empty from Treasure Mountain】" , desc = "0^72fe00A Novice in the World of Treasure Hunting\r^72fe00Permanent Effect: \r^ffffffAttack+5\rDodge+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动探宝称号2'] = {id = 7459 , note = "^0184ff【Treasure Song: Not Greedy for Treasure】" , desc = "0^0184ffDo Not Covet Others' Treasures; You Have Found the Way of Treasure Hunting\r^0184ffPermanent Effect: \r^ffffffAttack+10\rDodge+2\rDefense+5" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动探宝称号3'] = {id = 7460 , note = "^a800ff【Treasure Hunt Song · Embracing Precious Jewels】" , desc = "0^a800ffYou Have Tread Every Mountain and Found Many Treasures; You Are Now a Master of This Path\r^a800ffPermanent Effect: \r^ffffffAttack+20\rDodge+3\rDefense+10\rStamina+50" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动探宝称号5'] = {id = 7461 , note = "^ff7d2f【Treasure Hunt Song · God of Wealth】" , desc = "0^ff7d2fThe God of Wealth Descends! Fortune Pours In; Happiness and Fulfillment!\r^ff7d2fPermanent Effect: \r^ffffffAttack+30\rDodge+4\rDefense+15\rStamina+200" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南1'] = {id = 7462 , note = "^72fe00【Warrior Who Follows Heaven】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +1\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南2'] = {id = 7463 , note = "^72fe00【Heaven-Defying Shaman】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +1\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南3'] = {id = 7464 , note = "^72fe00【Youthful Mountain God】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +15\rAttack +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南6'] = {id = 7465 , note = "^a800ff【Chibi Expert】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['2010AMD新手卡称号'] = {id = 7466 , note = "^ff4ca4【Chibi · New Vision】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南4'] = {id = 7467 , note = "^72fe00【Long and Far Is the Road】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +30\rAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南5'] = {id = 7468 , note = "^a800ff【I Shall Search High and Low】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +80\rAttack +2\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号01'] = {id = 7469 , note = "^a800ff【Worthy Scholar of New Three Kingdoms】" , desc = "0^ff7d2fWith This Title, Between July 22 and August 8;\rLog In Nightly 19:30-21:30 to Receive the "Battle of Chibi War Prep Supplies" Reward;\rSunday Nights Also Have a 10,000-yuan Grand Prize Waiting for You, Don't Miss It!" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号02'] = {id = 7470 , note = "^ff7d2f【Wei No.1 Lord】" , desc = "0^ff7d2fWei Lord Ranked First; Title of Honor!" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号03'] = {id = 7471 , note = "^ff7d2f【Shu No.1 Lord】" , desc = "0^ff7d2fShu Lord Ranked First; Title of Honor!" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号04'] = {id = 7472 , note = "^ff7d2f【Wu No.1 Lord】" , desc = "0^ff7d2fWu Lord Ranked First; Title of Honor!" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号05'] = {id = 7473 , note = "^ff7d2f【The World's Most Honorable Lord】" , desc = "0^ff7d2fThe World's Most Honorable Lord!" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号06'] = {id = 7474 , note = "^ff4ca4【In the Golden Age, No Hero Remains Hidden】" , desc = "0^ff7d2fVeteran Return Special Title\rVeterans with this title may claim the "Welcome Home" quest at the New Three Kingdoms Talent Recruitment Envoy for special veteran rewards" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南7'] = {id = 7475 , note = "^ff7d2f【Nine Deaths, One Life】" , desc = "0^a800ffStruck by Heavenly Lightning Nine Times and Still Survived; You Are the World's Luckiest Person. Ride This Miraculous Golden Energy and Let the World Know You!" , desc_1 = "" , desc_2 = ""}
title_definition['黄金斗神勇士'] = {id = 7476 , note = "^ff7d2f【Gold Fighting God Warrior】" , desc = "0^ff7d2fGold Points Leaderboard Title of Honor!\rWith This Title, Exchange for Generous Rewards at the Perfect Gift Page.\rPlease Exchange Between Monday Maintenance and Sunday 24:00 This Week\rExpired Rewards Are Void." , desc_1 = "" , desc_2 = ""}
title_definition['黄金战甲勇士'] = {id = 7477 , note = "^ff7d2f【Gold War Armor Warrior】" , desc = "0^ff7d2fGold Points Leaderboard Title of Honor!\rWith This Title, Exchange for Generous Rewards at the Perfect Gift Page.\rPlease Exchange Between Monday Maintenance and Sunday 24:00 This Week\rExpired Rewards Are Void." , desc_1 = "" , desc_2 = ""}
title_definition['黄金千夫长'] = {id = 7478 , note = "^ff7d2f【Gold Thousand-Man Commander】" , desc = "0^ff7d2fGold Points Leaderboard Title of Honor!\rWith This Title, Exchange for Generous Rewards at the Perfect Gift Page.\rPlease Exchange Between Monday Maintenance and Sunday 24:00 This Week\rExpired Rewards Are Void." , desc_1 = "" , desc_2 = ""}
title_definition['黄金百夫长'] = {id = 7479 , note = "^ff7d2f【Gold Hundred-Man Commander】" , desc = "0^ff7d2fGold Points Leaderboard Title of Honor!\rWith This Title, Exchange for Generous Rewards at the Perfect Gift Page.\rPlease Exchange Between Monday Maintenance and Sunday 24:00 This Week\rExpired Rewards Are Void." , desc_1 = "" , desc_2 = ""}
title_definition['黄金精兵'] = {id = 7480 , note = "^ff7d2f【Gold Elite Soldier】" , desc = "0^ff7d2fGold Points Leaderboard Title of Honor!\rWith This Title, Exchange for Generous Rewards at the Perfect Gift Page.\rPlease Exchange Between Monday Maintenance and Sunday 24:00 This Week\rExpired Rewards Are Void." , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动探宝称号4'] = {id = 7481 , note = "^ff7d2f【Treasure Hunt Song · Attracting Wealth and Treasure】" , desc = "0^ff7d2fEven Sitting at Home, You Can Attract Treasures; In Others' Eyes, You Are a Money Tree\r^ff7d2fPermanent Effect: \r^ffffffAttack+30\rDodge+4\rDefense+15\rStamina+100" , desc_1 = "" , desc_2 = ""}
title_definition['中秋VIP'] = {id = 7482 , note = "^ff4ca4【Beautiful Flowers and Full Moon】" ,desc = "0^ff7d2fHigh VIP Mid-Autumn Honor Title!" , desc_1 = "" , desc_2 = ""}
title_definition['媒体9月新手卡'] = {id = 7483 , note = "^8d76ff【New Hero Who Towers Over Three Armies】" ,desc = "0^72fe00Limited Time 7 days:\r^ffffffMax HP +100" , desc_1 = "" , desc_2 = ""}
title_definition['称号_濮阳之战英雄级低'] = {id = 7484 , note = "^0184ff【Cold-Blooded Elite】" ,desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +120" , desc_1 = "" , desc_2 = ""}
title_definition['称号_濮阳之战英雄级高'] = {id = 7485 , note = "^a800ff【Defy Heaven, Change Fate】" ,desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +200\rCrit Resist +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_2010跨服PK赛3'] = {id = 7486 , note = "^ff7d2f【2010 National Arena 3rd Place】" ,desc = "0^ff7d2f2010 National Arena Tournament Third Place" , desc_1 = "" , desc_2 = ""}
title_definition['称号_2010跨服PK赛2'] = {id = 7487 , note = "^ff7d2f【2010 National Arena Runner-up】" ,desc = "0^ff7d2f2010 National Arena Tournament Runner-up" , desc_1 = "" , desc_2 = ""}
title_definition['称号_2010跨服PK赛1'] = {id = 7488 , note = "^ff7d2f【2010 National Arena Champion】" ,desc = "0^ff7d2f2010 National Arena Tournament Champion" , desc_1 = "" , desc_2 = ""}
title_definition['称号_校军场木人称号1'] = {id = 7489 , note = "【Wooden Man Civilian】" ,desc = "0The training ground wooden men consider you an ordinary member among them.\rStamina +20" , desc_1 = "" , desc_2 = ""}
title_definition['称号_校军场木人称号2'] = {id = 7490 , note = "^72fe00【Wooden Man Soldier】" ,desc = "0^72fe00The training ground wooden men generally consider you quite skilled in combat.\rStamina +40" , desc_1 = "" , desc_2 = ""}
title_definition['称号_校军场木人称号3'] = {id = 7491 , note = "^0184ff【Wooden Man Captain】" ,desc = "0^0184ffThe training ground wooden men feel your combat power is quite impressive.\rStamina +80" , desc_1 = "" , desc_2 = ""}
title_definition['称号_校军场木人称号4'] = {id = 7492 , note = "^a800ff【Wooden Man General】" ,desc = "0^a800ffThe training ground wooden dummy's reverence for you has reached a new height。\rStamina +160" , desc_1 = "" , desc_2 = ""}
title_definition['称号_校军场木人称号5'] = {id = 7493 , note = "^ff7d2f【Wooden Man Emperor】" ,desc = "0^ff7d2fIn the eyes of the training ground wooden dummy, you are a god-like existence！\rStamina +320" , desc_1 = "" , desc_2 = ""}
title_definition['称号_亲友卡称号1'] = {id = 7494 , note = "^ff6fb3【No Brothers, No Chibi】" ,desc = "0^ff7d2fJoin Hands with Your Brothers and Friends; Roam Chibi Free!" , desc_1 = "" , desc_2 = ""}
title_definition['称号_亲友卡称号2'] = {id = 7495 , note = "^ff7d2f【Overlord of the New Three Kingdoms】" ,desc = "0^ff7d2fFriend Honor Leaderboard Server 1st Place; The Three Kingdoms Overlord Surrounded by Stars, Gazing Down on All Heroes." , desc_1 = "" , desc_2 = ""}
title_definition['称号_亲友卡称号3'] = {id = 7496 , note = "^ff7d2f【Hero of the New Three Kingdoms】" ,desc = "0^ff7d2fFriend Honor Leaderboard Server Top 10; The Three Kingdoms Hero Who Turns the Tide and Sets the World Right." , desc_1 = "" , desc_2 = ""}
title_definition['称号_亲友卡称号4'] = {id = 7497 , note = "^ff7d2f【Champion of the New Three Kingdoms】" ,desc = "0^ff7d2fFriend Honor Leaderboard Server Top 100; The Three Kingdoms Champion with Strength to Uproot Mountains, Spirit Covering the World." , desc_1 = "" , desc_2 = ""}
title_definition['称号_亲友卡称号5'] = {id = 7498 , note = "^ff7d2f【Celebrity of the New Three Kingdoms】" ,desc = "0^ff7d2fFriend Honor Leaderboard Server Top 500; The Three Kingdoms Celebrity Whose Fame Reaches All Lords." , desc_1 = "" , desc_2 = ""}
title_definition['产品十月回流1'] = {id = 7499 , note = "^ff7d2f【Do Not Worry the Road Ahead Has No True Friend】" ,desc = "0^ff7d2fVeteran Return Exclusive Title! Claim generous gifts at the Perfect Gift Page!" , desc_1 = "" , desc_2 = ""}
title_definition['产品十月回流2'] = {id = 7500 , note = "^ff7d2f【Swallows Return as If Familiar】" ,desc = "0^ff7d2fVeteran Return Exclusive Title! Claim generous gifts at the Perfect Gift Page!" , desc_1 = "" , desc_2 = ""}
title_definition['产品十月回流3'] = {id = 7501 , note = "^ff7d2f【Why Must We Have Known Each Other Before Meeting】" ,desc = "0^ff7d2fVeteran Return Exclusive Title! Claim generous gifts at the Perfect Gift Page!" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷周末1'] = {id = 7502 , note = "^72fe00【Candied Hawthorn Ranger】" ,desc = "0^72fe00Title Earned with Various Seized Candied Haws.\r^72fe00Permanent Effect: \r^ffffffHP+10" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷周末2'] = {id = 7503 , note = "^72fe00【Candied Hawthorn Recruit】" ,desc = "0^72fe00Title Earned with Some Seized Candied Haws.\rYou Are Not Far from Officially Joining the Candied Haw Seizing Army.\r^72fe00Permanent Effect: \r^ffffffHP+30\rAttack+2" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷周末3'] = {id = 7504 , note = "^0184ff【Candied Hawthorn Squad Leader】" ,desc = "0^0184ffTitle Earned with a Great Quantity of Seized Candied Haws.\rCongratulations on Your Promotion to Squad Leader of the Seizing Army.\r^72fe00Permanent Effect: \r^ffffffHP+80\rAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷周末4'] = {id = 7505 , note = "^a800ff【Candied Hawthorn Grand General】" ,desc = "0^a800ffTitle Earned with Heaps of Seized Candied Haws.\rYou Have Made Outstanding Contributions to the Entire Candied Haw Seizing Army.\r^72fe00Permanent Effect: \r^ffffffHP+200\rAttack+10\rHeal Effect+1%" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷周末5'] = {id = 7506 , note = "^ff7d2f【Candied Hawthorn Supreme Chief】" ,desc = "0^ff7d2fTitle Earned with an Ocean of Seized Candied Haws.\rIn the Candied Haw Seizing Army, You Are Now Unmatched and Invincible.\r^72fe00Permanent Effect: \r^ffffffHP+400\rAttack+20\rHeal Effect+1%\rAttack Power+1%" , desc_1 = "" , desc_2 = ""}
title_definition['华容道过关称号1'] = {id = 7507 , note = "^00FF00【Narrow Escape at Huarong Pass】" ,desc = "0^00FF00A Soldier Who Successfully Crossed the Perils of Huarong Pass.\r^72fe00Permanent Effect: \r^ffffffStamina+10" , desc_1 = "" , desc_2 = ""}
title_definition['华容道过关称号2'] = {id = 7508 , note = "^0066CC【Brave Gatebreaker General】" ,desc = "0^0066CCA Fearless Soldier Charging Forward.\r^72fe00Permanent Effect: \r^ffffffStamina+30 Attack+5" , desc_1 = "" , desc_2 = ""}
title_definition['华容道过关称号3'] = {id = 7509 , note = "^6666CC【Golden Dragon Unbound by Peril】" ,desc = "0^6666CCA Hero Who Soared Over the Perils of Huarong Like a Flood Dragon.\r^72fe00Permanent Effect: \r^ffffffStamina+80 Attack+10" , desc_1 = "" , desc_2 = ""}
title_definition['华容道过关称号4'] = {id = 7510 , note = "^FF6666【Kill Gods Who Stand in the Way, Slay Buddhas Who Block the Path】" ,desc = "0^FF6666A God Whose Will Cannot Be Defied Descended at Huarong Pass.\r^72fe00Permanent Effect: \r^ffffffStamina+240 Attack+20" , desc_1 = "" , desc_2 = ""}
title_definition['华容道挑战称号1'] = {id = 7511 , note = "^66FFFF【Swift Enemy Breaker】" ,desc = "0^66FFFFYou Won at Huarong Pass Within Forty Minutes!\r^72fe00Permanent Effect: \r^ffffffDefense+2" , desc_1 = "" , desc_2 = ""}
title_definition['华容道挑战称号2'] = {id = 7512 , note = "^996666【Comradeship Never Abandoned】" ,desc = "0^996666You Successfully Rescued All Generals and Soldiers from Huarong Pass.\r^72fe00Permanent Effect: \r^ffffffHeal Potency+10" , desc_1 = "" , desc_2 = ""}
title_definition['华容道挑战称号3'] = {id = 7513 , note = "^CC9900【Iron Shoes Tread Every Mountain and River Path】" ,desc = "0^CC9900You Successfully Escorted the Walking Cao Cao Through Huarong Pass.\r^72fe00Permanent Effect: \r^ffffffStamina+5" , desc_1 = "" , desc_2 = ""}
title_definition['华容道挑战称号4'] = {id = 7514 , note = "^FF00FF【Nemesis of Fire Bombs】" ,desc = "0^FF00FFYou Successfully Prevented Any Fire Bomb from Exploding in Huarong Pass.\r^72fe00Permanent Effect: \r^ffffffBonus DMG+2" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷声望1'] = {id = 7515 , note = "^72fe00【Trust Those Employed, Honor the Worthy】" ,desc = "0^72fe00Respecting the worthy and condescending to scholars, employing people without suspicion: these are the basic qualities of a good commander。\r^72fe00Permanent Effect: \r^ffffffHeal Potency+10" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷声望2'] = {id = 7516 , note = "^72fe00【Employ the Worthy, Take All Strengths】" ,desc = "0^72fe00To Appoint Only the Worthy, with a Broad Mind, Is the Bearing of a Capable Lord.\r^72fe00Permanent Effect: \r^ffffffHeal Potency+10\rStamina+10\rDefense+1" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷声望3'] = {id = 7517 , note = "^0184ff【Discerning Eyes Rival Bo Le】" ,desc = "0^0184ffAble to Discover and Recognize Talent; Surpassing the Legendary Coachmaker Bole.\r^72fe00Permanent Effect: \r^ffffffHeal Potency+10\rStamina+30\rDefense+2" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷声望4'] = {id = 7518 , note = "^a800ff【Renowned and Respected, All Bow in Reverence】" ,desc = "0^a800ffYou Have Reached a Realm All Admire.\r^72fe00Permanent Effect: \r^ffffffHeal Potency+10\rStamina+80\rDefense+5\rBonus DMG+3" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷声望5'] = {id = 7519 , note = "^ff7d2f【Commanding the World; All Hearts Turn to You】" ,desc = "0^ff7d2fThe Duke of Zhou Spits Out His Meal; The World Turns to Him!\r^72fe00Permanent Effect: \r^ffffffHeal Potency+20\rStamina+240\rDefense+10\rBonus DMG+5" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片玩家回归称号'] = {id = 7520 , note = "^ff7d2f【The Fierce General Returns】" ,desc = "0^ff7d2fExpansion Tiger Guard Legend Return Player Exclusive Title!^72fe00\rDecember 20, 2010 - January 16, 2011\rWith this title, claim daily exclusive quests at the Perfect Gift Page:\rTiger General Returns^ffffff(available all day)\r^72fe00Tiger General Trial Order^ffffff(12:00-24:00)" , desc_1 = "" , desc_2 = ""}
title_definition['台湾9月更新专用称号'] = {id = 9500 , note = "^a800ff【Eastern Wanderer Plays Chibi With You】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['日本6月更新专用称号'] = {id = 9501 , note = "^a800ff【Chibi Expert】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['台湾10月更新专用称号'] = {id = 9502 , note = "^a800ff【Great Harmony in the World】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['日本圣诞更新专用称号'] = {id = 9503 , note = "^a800ff【Wise King】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['台湾圣诞更新专用称号'] = {id = 9504 , note = "^a800ff【Wise Overlord】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号1'] = {id = 9505 , note = "^a800ff【Wonderful Hundred Welcome the New Year】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号2'] = {id = 9506 , note = "^a800ff【Blossoming Everywhere, Flags Fluttering】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号3'] = {id = 9507 , note = "^a800ff【Unify the World, None Like Me】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号4'] = {id = 9508 , note = "^a800ff【Hot-blooded Loyal Minister, Heart of Crimson】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号5'] = {id = 9509 , note = "^a800ff【True Hero Who Expands the Frontiers】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号6'] = {id = 9510 , note = "^a800ff【No Fragrance Yet at the New Year】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号7'] = {id = 9511 , note = "^a800ff【Early Spring, First Surprise at the Grass Buds】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号8'] = {id = 9512 , note = "^a800ff【White Snow Dislikes Spring Arriving Late】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号9'] = {id = 9513 , note = "^a800ff【Deliberately Threading Through Garden Trees as Flying Blossoms】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号10'] = {id = 9514 , note = "^a800ff【You Scholars Are the Vanguard of the People】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['三周年VIP专属称号'] = {id = 9515 , note = "^FF6666【When Beacon Fires Rise, Soldiers Don Iron Armor; Long Campaigns, Heroes Never Part】" , desc = "0^ff7d2fChibi VIP 3rd Anniversary Memorial!" , desc_1 = "" , desc_2 = ""}
title_definition['兔年3月老玩家回流称号'] = {id = 9516 , note = "^ff7d2f【The Bright Moon Is Present; Fate Brings the Old Friend Home】" , desc = "0^ff7d2fVeteran Return Exclusive Title,^72fe00\rMarch 14, 2011 - April 17, 2011\rWith this title, claim generous gifts at the Chang'an Veteran Reception Ambassador (146,328)!" , desc_1 = "" , desc_2 = ""}
title_definition['人气勋章兑换称号'] = {id = 9517 , note = "^a800ff【Unparalleled in the World; Everyone Loves You; Flowers Bloom at Your Sight; A Marvelous Youth Who Creates Heaven and Earth】" , desc = "0^ff7d2fRare Title earned by participating in the Forever and Always Event, proving your popularity!" , desc_1 = "" , desc_2 = ""}
title_definition['兔年劳动节VIP称号'] = {id = 9518 , note = "^a800ff【Star-cloaked, Moon-draped; Handling Ten Thousand Affairs Daily; Little Model Worker】" , desc = "0^ff7d2fVIP 2011 Labor Day Commemorative Title!" , desc_1 = "" , desc_2 = ""}
title_definition['11年4月新手卡'] = {id = 9519 , note = "^ff7d2f【Inheritor of the Martial God】" , desc = "0^ff7d2fMartial God Privilege Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['兔年五月黄金积分1'] = {id = 9520 , note = "^ff7d2f【Inheritor of the Martial Sage's Robe and Bowl】" , desc = "0^ff7d2fGold Points Leaderboard Title of Honor!\rWith This Title, Exchange for Generous Rewards at the Perfect Gift Page.\rPlease Exchange Between Monday Maintenance and Sunday 24:00 This Week\rExpired Rewards Are Void." , desc_1 = "" , desc_2 = ""}
title_definition['兔年五月黄金积分2-3'] = {id = 9521 , note = "^ff7d2f【Disciple of the Martial Sage】" , desc = "0^ff7d2fGold Points Leaderboard Title of Honor!\rWith This Title, Exchange for Generous Rewards at the Perfect Gift Page.\rPlease Exchange Between Monday Maintenance and Sunday 24:00 This Week\rExpired Rewards Are Void." , desc_1 = "" , desc_2 = ""}
title_definition['兔年五月黄金积分4-10'] = {id = 9522 , note = "^ff7d2f【Little Disciple of the Martial Sage】" , desc = "0^ff7d2fGold Points Leaderboard Title of Honor!\rWith This Title, Exchange for Generous Rewards at the Perfect Gift Page.\rPlease Exchange Between Monday Maintenance and Sunday 24:00 This Week\rExpired Rewards Are Void." , desc_1 = "" , desc_2 = ""}
title_definition['兔年五月黄金积分11-100'] = {id = 9523 , note = "^ff7d2f【Little Friend of the Martial Sage】" , desc = "0^ff7d2fGold Points Leaderboard Title of Honor!\rWith This Title, Exchange for Generous Rewards at the Perfect Gift Page.\rPlease Exchange Between Monday Maintenance and Sunday 24:00 This Week\rExpired Rewards Are Void." , desc_1 = "" , desc_2 = ""}
title_definition['兔年五月黄金积分101-500'] = {id = 9524 , note = "^ff7d2f【Worshipper of the Martial Sage】" , desc = "0^ff7d2fGold Points Leaderboard Title of Honor!\rWith This Title, Exchange for Generous Rewards at the Perfect Gift Page.\rPlease Exchange Between Monday Maintenance and Sunday 24:00 This Week\rExpired Rewards Are Void." , desc_1 = "" , desc_2 = ""}
title_definition['新服活动活跃新人奖称号80'] = {id = 9525 , note = "^ff7d2f【Active Newbie Small Prize】" , desc = "0^ff7d2fHonorary Title Obtained by Being Online 80 Hours Within 2 Weeks of a New Server Opening." , desc_1 = "" , desc_2 = ""}
title_definition['新服活动活跃新人奖称号120'] = {id = 9526 , note = "^ff7d2f【Active Newbie Grand Prize】" , desc = "0^ff7d2fHonorary Title Obtained by Being Online 120 Hours Within 2 Weeks of a New Server Opening." , desc_1 = "" , desc_2 = ""}
title_definition['兵卒'] = {id = 9527 , note = "^72fe00Soldier" , desc = "^72fe00Arena Individual Level 1 Title." , desc_1 = "" , desc_2 = ""}
title_definition['门吏'] = {id = 9528 , note = "^72fe00Gate Clerk" , desc = "^72fe00Arena Individual Level 2 Title." , desc_1 = "" , desc_2 = ""}
title_definition['武卒'] = {id = 9529 , note = "^72fe00Warrior" , desc = "^72fe00Arena Individual Level 3 Title." , desc_1 = "" , desc_2 = ""}
title_definition['伍长'] = {id = 9530 , note = "^72fe00Squad Leader" , desc = "^72fe00Arena Individual Level 4 Title." , desc_1 = "" , desc_2 = ""}
title_definition['什长'] = {id = 9531 , note = "^72fe00Platoon Leader" , desc = "^72fe00Arena Individual Level 5 Title." , desc_1 = "" , desc_2 = ""}
title_definition['百夫长'] = {id = 9532 , note = "^0184ffCenturion" , desc = "^72fe00Arena Individual Level 6 Title." , desc_1 = "" , desc_2 = ""}
title_definition['千夫长'] = {id = 9533 , note = "^0184ffChiliarch" , desc = "^72fe00Arena Individual Level 7 Title." , desc_1 = "" , desc_2 = ""}
title_definition['军侯'] = {id = 9534 , note = "^0184ffMarquis" , desc = "^72fe00Arena Individual Level 8 Title." , desc_1 = "" , desc_2 = ""}
title_definition['军司马'] = {id = 9535 , note = "^0184ffDivision Commander" , desc = "^72fe00Arena Individual Level 9 Title." , desc_1 = "" , desc_2 = ""}
title_definition['都尉'] = {id = 9536 , note = "^0184ffCommandant" , desc = "^72fe00Arena Individual Level 10 Title." , desc_1 = "" , desc_2 = ""}
title_definition['校尉'] = {id = 9537 , note = "^a800ffColonel" , desc = "^72fe00Arena Individual Level 11 Title." , desc_1 = "" , desc_2 = ""}
title_definition['中郎将'] = {id = 9538 , note = "^a800ffCommandant" , desc = "^72fe00Arena Individual Level 12 Title." , desc_1 = "" , desc_2 = ""}
title_definition['裨将军'] = {id = 9539 , note = "^a800ffDeputy General" , desc = "^72fe00Arena Individual Level 13 Title." , desc_1 = "" , desc_2 = ""}
title_definition['偏将军'] = {id = 9540 , note = "^a800ffSide General" , desc = "^72fe00Arena Individual Level 14 Title." , desc_1 = "" , desc_2 = ""}
title_definition['卫将军'] = {id = 9541 , note = "^a800ffGuard General" , desc = "^72fe00Arena Individual Level 15 Title." , desc_1 = "" , desc_2 = ""}
title_definition['车骑将军'] = {id = 9542 , note = "^ff7d2fChariot & Cavalry General" , desc = "^72fe00Arena Individual Level 16 Title." , desc_1 = "" , desc_2 = ""}
title_definition['骠骑将军'] = {id = 9543 , note = "^ff7d2fCavalry General" , desc = "^72fe00Arena Individual Level 17 Title." , desc_1 = "" , desc_2 = ""}
title_definition['大将军'] = {id = 9544 , note = "^ff7d2fGrand General" , desc = "^72fe00Arena Individual Level 18 Title." , desc_1 = "" , desc_2 = ""}
title_definition['大司马'] = {id = 9545 , note = "^ff7d2fGrand Marshal" , desc = "^72fe00Arena Individual Level 19 Title." , desc_1 = "" , desc_2 = ""}
title_definition['兵马大都督'] = {id = 9546 , note = "^ff7d2fGrand Commander of Forces" , desc = "^72fe00Arena Individual Level 20 Title." , desc_1 = "" , desc_2 = ""}
title_definition['行伍'] = {id = 9547 , note = "^72fe00【Marching Squad】" , desc = "^72fe00Arena Team Level 1 Title." , desc_1 = "" , desc_2 = ""}
title_definition['铁伍'] = {id = 9548 , note = "^72fe00【Iron Squad】" , desc = "^72fe00Arena Team Level 2 Title." , desc_1 = "" , desc_2 = ""}
title_definition['烈伍'] = {id = 9549 , note = "^72fe00【Blazing Squad】" , desc = "^72fe00Arena Team Level 3 Title." , desc_1 = "" , desc_2 = ""}
title_definition['燎伍'] = {id = 9550 , note = "^72fe00【Scorching Squad】" , desc = "^72fe00Arena Team Level 4 Title." , desc_1 = "" , desc_2 = ""}
title_definition['鬼伍'] = {id = 9551 , note = "^72fe00【Ghost Squad】" , desc = "^72fe00Arena Team Level 5 Title." , desc_1 = "" , desc_2 = ""}
title_definition['锐步营'] = {id = 9552 , note = "^0184ff【Swift Steps Camp】" , desc = "^72fe00Arena Team Level 6 Title." , desc_1 = "" , desc_2 = ""}
title_definition['破虏营'] = {id = 9553 , note = "^0184ff【Terror of the Barbarians Camp】" , desc = "^72fe00Arena Team Level 7 Title." , desc_1 = "" , desc_2 = ""}
title_definition['神火营'] = {id = 9554 , note = "^0184ff【Divine Fire Camp】" , desc = "^72fe00Arena Team Level 8 Title." , desc_1 = "" , desc_2 = ""}
title_definition['龙锋营'] = {id = 9555 , note = "^0184ff【Dragon Vanguard Camp】" , desc = "^72fe00Arena Team Level 9 Title." , desc_1 = "" , desc_2 = ""}
title_definition['神武营'] = {id = 9556 , note = "^0184ff【Divine Might Camp】" , desc = "^72fe00Arena Team Level 10 Title." , desc_1 = "" , desc_2 = ""}
title_definition['横野军'] = {id = 9557 , note = "^a800ff【Wilderness Army】" , desc = "^72fe00Arena Team Level 11 Title." , desc_1 = "" , desc_2 = ""}
title_definition['折冲军'] = {id = 9558 , note = "^a800ff【Shock Troops】" , desc = "^72fe00Arena Team Level 12 Title." , desc_1 = "" , desc_2 = ""}
title_definition['镇威军'] = {id = 9559 , note = "^a800ff【Might Suppressing Army】" , desc = "^72fe00Arena Team Level 13 Title." , desc_1 = "" , desc_2 = ""}
title_definition['车骑军'] = {id = 9560 , note = "^a800ff【Chariot and Cavalry Army】" , desc = "^72fe00Arena Team Level 14 Title." , desc_1 = "" , desc_2 = ""}
title_definition['骠骑军'] = {id = 9561 , note = "^a800ff【Cavalry Army】" , desc = "^72fe00Arena Team Level 15 Title." , desc_1 = "" , desc_2 = ""}
title_definition['两仪极渊'] = {id = 9562 , note = "^ff7d2f【Two Principles, Ultimate Abyss】" , desc = "^72fe00Arena Team Level 16 Title." , desc_1 = "" , desc_2 = ""}
title_definition['四象均尘'] = {id = 9563 , note = "^ff7d2f【Four Symbols Equal Dust】" , desc = "^72fe00Arena Team Level 17 Title." , desc_1 = "" , desc_2 = ""}
title_definition['八阵苍穹'] = {id = 9564 , note = "^ff7d2f【Eight Formations of the Firmament】" , desc = "^72fe00Arena Team Level 18 Title." , desc_1 = "" , desc_2 = ""}
title_definition['九方星野'] = {id = 9565 , note = "^ff7d2f【Nine Directions, Starry Wilds】" , desc = "^72fe00Arena Team Level 19 Title." , desc_1 = "" , desc_2 = ""}
title_definition['泰军否极'] = {id = 9566 , note = "^ff7d2f【Peace Army, Misfortune Reaches Its Limit】" , desc = "^72fe00Arena Team Level 20 Title." , desc_1 = "" , desc_2 = ""}
title_definition['11年6月新手卡1'] = {id = 9567 , note = "^ff7d2f【Sina Peerless Hero】" , desc = "0^ff7d2fSina Peerless Hero Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['11年6月新手卡2'] = {id = 9568 , note = "^ff7d2f【Love Games, Love 17173】" , desc = "0^ff7d2f17173 Heroes Privilege Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['11年6月新手卡3'] = {id = 9569 , note = "^ff7d2f【Love Duowan, Love YY】" , desc = "0^ff7d2fDuowan YY War God Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['11年6月新手卡4'] = {id = 9570 , note = "^ff7d2f【NetEase Expert, Better Understanding Games】" , desc = "0^ff7d2fSupreme Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['11年6月新手卡5'] = {id = 9571 , note = "^ff7d2f【Little Penguin Fights the Three Kingdoms With Me】" , desc = "0^ff7d2fHeroes Conquest Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['竞技场个人排行榜1'] = {id = 9572 , note = "^ff0000【Five Tiger Generals · Righteousness Reaches the Clouds, Sweeping the Nine Provinces】" , desc = "0^a800ffGod of War Symbol\r^ff7d2fIndividual Arena EXP Leaderboard 1st Place Exclusive Title.\rHP+1000" , desc_1 = "" , desc_2 = ""}
title_definition['竞技场个人排行榜2'] = {id = 9573 , note = "^ff0000【Five Tiger Generals · One Shout Before the Formation Breaks Enemy Courage】" , desc = "0^a800ffGod of War Symbol\r^ff7d2fIndividual Arena EXP Leaderboard 2nd Place Exclusive Title.\rHP+800" , desc_1 = "" , desc_2 = ""}
title_definition['竞技场个人排行榜3'] = {id = 9574 , note = "^ff0000【Five Tiger Generals · Dragon Roar and Tiger Howl Resound Through the Ages】" , desc = "0^a800ffGod of War Symbol\r^ff7d2fIndividual Arena EXP Leaderboard 3rd Place Exclusive Title.\rHP+600" , desc_1 = "" , desc_2 = ""}
title_definition['竞技场个人排行榜4'] = {id = 9575 , note = "^ff0000【Five Tiger Generals · Lion Helm and Silver Armor Crown Three Armies】" , desc = "0^a800ffGod of War Symbol\r^ff7d2fIndividual Arena EXP Leaderboard 4th Place Exclusive Title.\rHP+600" , desc_1 = "" , desc_2 = ""}
title_definition['竞技场个人排行榜5'] = {id = 9576 , note = "^ff0000【Five Tiger Generals · Long Bow Full as the Moon Startles Wind and Thunder】" , desc = "0^a800ffGod of War Symbol\r^ff7d2fIndividual Arena EXP Leaderboard 5th Place Exclusive Title.\rHP+600" , desc_1 = "" , desc_2 = ""}
title_definition['VIP称号等级1'] = {id = 9577 , note = "^ff4ca4★ Little Moneybag ★" , desc = "0^a800ffVIP Level 1 Symbol\rThe Higher the Level, the More Privileges!" , desc_1 = "" , desc_2 = ""}
title_definition['VIP称号等级2'] = {id = 9578 , note = "^ff4ca4★ Wealthy Merchant ★" , desc = "0^a800ffVIP Level 2 Symbol\rThe Higher the Level, the More Privileges!" , desc_1 = "" , desc_2 = ""}
title_definition['VIP称号等级3'] = {id = 9579 , note = "^ff4ca4★ Richest in the Region ★" , desc = "0^a800ffVIP Level 3 Symbol\rThe Higher the Level, the More Privileges!" , desc_1 = "" , desc_2 = ""}
title_definition['VIP称号等级4'] = {id = 9580 , note = "^ff4ca4★ Famous Tycoon ★" , desc = "0^a800ffVIP Level 4 Symbol\rThe Higher the Level, the More Privileges!" , desc_1 = "" , desc_2 = ""}
title_definition['VIP称号等级5'] = {id = 9581 , note = "^ff4ca4★ Three Kingdoms Tycoon ★" , desc = "0^a800ffVIP Level 5 Symbol\rThe Higher the Level, the More Privileges!" , desc_1 = "" , desc_2 = ""}
title_definition['2011跨服PK赛冠军'] = {id = 9582 , note = "^ff7d2f【Honored by the World · Cross-server PK Tournament Champion】" , desc = "0^ff7d2fCross-server PK Tournament Champion Proof." , desc_1 = "" , desc_2 = ""}
title_definition['2011跨服PK赛亚军'] = {id = 9583 , note = "^ff7d2f【Slaughter and Expedition · Cross-server PK Tournament Runner-up】" , desc = "0^ff7d2fCross-server PK Tournament Runner-up Proof." , desc_1 = "" , desc_2 = ""}
title_definition['2011跨服PK赛季军'] = {id = 9584 , note = "^ff7d2f【Victorious in Every Battle · Cross-server PK Tournament Third Place】" , desc = "0^ff7d2fCross-server PK Tournament Third Place Proof." , desc_1 = "" , desc_2 = ""}
title_definition['11年9月新手卡'] = {id = 9585 , note = "^ff7d2f【Sina Peerless Hero】" , desc = "0^ff7d2fSina Hero Recruitment Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['合肥之战（英雄级）1'] = {id = 9586 , note = "^ffffff【In Plain Clothes, Joining the Army】" , desc = "0^ffffffHP+100" , desc_1 = "" , desc_2 = ""}
title_definition['合肥之战（英雄级）2'] = {id = 9587 , note = "^72fe00【Guarding the General Before and After the Saddle】" , desc = "0^72fe00HP+300" , desc_1 = "" , desc_2 = ""}
title_definition['合肥之战（英雄级）3'] = {id = 9588 , note = "^0184ff【Fury on the Battlefield Shatters Iron Armor】" , desc = "0^0184ffHP+600" , desc_1 = "" , desc_2 = ""}
title_definition['合肥之战（英雄级）4'] = {id = 9589 , note = "^a800ff【A Hundred Battles in Yellow Sand Pierce Golden Armor】" , desc = "0^a800ffHP+1000" , desc_1 = "" , desc_2 = ""}
title_definition['虎牢关群英会英雄级1'] = {id = 9590 , note = "^ffffff【From the Grassroots, Sacrificing for National Crisis】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP+50" , desc_1 = "" , desc_2 = ""}
title_definition['虎牢关群英会英雄级2'] = {id = 9591 , note = "^72fe00【Eighteen Lords Gather at the Eastern Capital】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP+100" , desc_1 = "" , desc_2 = ""}
title_definition['虎牢关群英会英雄级3'] = {id = 9592 , note = "^0184ff【Who Can Match the Fierce General Ahead】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP+200，Attack+2" , desc_1 = "" , desc_2 = ""}
title_definition['虎牢关群英会英雄级4'] = {id = 9593 , note = "^a800ff【Single-Handed Battle Against Marquis Wen】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP+400，Attack+5" , desc_1 = "" , desc_2 = ""}
title_definition['虎牢关群英会英雄级5'] = {id = 9594 , note = "^ff7d2f【Heroes Beneath Hulao Pass】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP+800，Attack+10" , desc_1 = "" , desc_2 = ""}
title_definition['金秋活动英雄会'] = {id = 9595 , note = "^ff4ca4【A Hundred Million Armors, Ten Million Chariots, Ten Thousand Cavalry; Commanding the Storm, Invincible】" , desc = "0^ff4ca4Rare Honor Title earned in the Heroes Guild Autumn Event" , desc_1 = "" , desc_2 = ""}
title_definition['201117173特权卡'] = {id = 9596 , note = "^ff4ca4【17173 VIP Test Drive Hero】" , desc = "0^ff4ca417173 VIP Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['2011新浪特权卡'] = {id = 9597 , note = "^ff4ca4【sina Privilege Test Drive Hero】" , desc = "0^ff4ca4Sina Privilege Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['2011多玩YY特权卡'] = {id = 9598 , note = "^ff4ca4【Y Boy Privilege Test Drive Hero】" , desc = "0^ff4ca4Duowan YY Privilege Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['2011多玩YY普通卡'] = {id = 9599 , note = "^ff4ca4【Y Boy Test Drive Vanguard】" , desc = "0^ff4ca4Duowan YY Normal Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['2011腾讯特权卡'] = {id = 9600 , note = "^ff4ca4【Tencent Privilege Test Drive Hero】" , desc = "0^ff4ca4Tencent Privilege Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['2011媒体普通卡'] = {id = 9601 , note = "^ff4ca4【Three Kingdoms Test Drive Vanguard】" , desc = "0^ff4ca4Media Normal Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['2011公会卡'] = {id = 9602 , note = "^ff4ca4【Sworn Brotherhood Across the World; Invincible】" , desc = "0^ff4ca4Guild Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['赵云补偿礼包称号'] = {id = 9603 , note = "^ff4ca4【Zhao Yun's Lord】" , desc = "0^ff4ca4Operations Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['A级机动车驾驶员'] = {id = 9604 , note = "^ff4ca4【Class A Motor Vehicle Driver】" , desc = "0^ff4ca4Class A Motor Vehicle Driver Certificate" , desc_1 = "" , desc_2 = ""}
title_definition['B级机动车驾驶员'] = {id = 9605 , note = "^ff4ca4【Class B Motor Vehicle Driver】" , desc = "0^ff4ca4Class B Motor Vehicle Driver Certificate" , desc_1 = "" , desc_2 = ""}
title_definition['C级机动车驾驶员'] = {id = 9606 , note = "^ff4ca4【Class C Motor Vehicle Driver】" , desc = "0^ff4ca4Class C Motor Vehicle Driver Certificate" , desc_1 = "" , desc_2 = ""}
title_definition['马来中GMPK称号1'] = {id = 9607 , note = "^ff4ca4【Someone Even More Awesome Than GM】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['马来中GMPK称号2'] = {id = 9608 , note = "^ff4ca4【The Idiot Who Lost to GM】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['英雄回归银特权'] = {id = 9609 , note = "^ffffff【Hero Return Silver Privilege】" , desc = "0^ff4ca4At Level 80, Claim One Mystic Scroll · Nether (Exclusive) with This Title;\rAt Hero Level 15, Claim One Mystic Scroll · Soldier (Exclusive) with This Title;\rAt Hero Level 30, Claim 20 Star Fairy Blossoms with This Title." , desc_1 = "" , desc_2 = ""}
title_definition['英雄回归金特权'] = {id = 9610 , note = "^ffffff【Hero Return Gold Privilege】" , desc = "0^ff4ca4At Level 80, Claim One Mystic Scroll · Nether (Exclusive) with This Title;\rAt Hero Level 15, Claim One Mystic Scroll · Soldier (Exclusive) with This Title;\rAt Hero Level 30, Claim 30 Star Fairy Blossoms with This Title." , desc_1 = "" , desc_2 = ""}
title_definition['化蝶去寻花，夜夜栖芳草'] = {id = 9611 , note = "^ff7d2f【Transformed into a Butterfly Seeking Flowers; Every Night Resting on Fragrant Grass】" , desc = "0^72fe00Title Obtained by Ranking 1st on the Affection Points Leaderboard.\rDefense +20\rHeal Effect +1%" , desc_1 = "" , desc_2 = ""}
title_definition['执子之手，与子偕老'] = {id = 9612 , note = "^ff7d2f【Hold Your Hand, Grow Old with You】" , desc = "0^72fe00Title Obtained by Ranking 2nd to 5th on the Affection Points Leaderboard." , desc_1 = "" , desc_2 = ""}
title_definition['青青子衿，悠悠我心'] = {id = 9613 , note = "^ff7d2f【Green, Green Your Collar; Long, Long My Heart】" , desc = "0^72fe00Title Obtained by Ranking 6th to 10th on the Affection Points Leaderboard." , desc_1 = "" , desc_2 = ""}
title_definition['天下有情人终成眷属'] = {id = 9614 , note = "^ff7d2f【May All Lovers in the World Finally Be United】" , desc = "0^72fe00Title Obtained When Affection Points Reach 520." , desc_1 = "" , desc_2 = ""}
title_definition['官渡称号士兵'] = {id = 9615 , note = "^ffffff【Soldier】" , desc = "0^ffffffMilitary Rank Obtained at Guandu Battle" , desc_1 = "" , desc_2 = ""}
title_definition['官渡称号校尉'] = {id = 9616 , note = "^72fe00【Colonel】" , desc = "0^72fe00Military Rank earned at Battle of Guandu\r^ffffffAttack+30" , desc_1 = "" , desc_2 = ""}
title_definition['官渡称号统领'] = {id = 9617 , note = "^0184ff【Commander】" , desc = "0^0184ffMilitary Rank earned at Battle of Guandu\r^ffffffAttack+60\rHP+200" , desc_1 = "" , desc_2 = ""}
title_definition['官渡称号副将'] = {id = 9618 , note = "^a800ff【Deputy General】" , desc = "0^a800ffMilitary Rank earned at Battle of Guandu\r^ffffffAttack+100\rDefense+30\rHP+400" , desc_1 = "" , desc_2 = ""}
title_definition['官渡称号大将'] = {id = 9619 , note = "^ff7d2f【Great General】" , desc = "0^ff7d2fMilitary Rank earned at Battle of Guandu\r^ffffffAttack+150\rDefense+60\rHP+600" , desc_1 = "" , desc_2 = ""}
title_definition['官渡称号元帅'] = {id = 9620 , note = "^fff962【Marshal】" , desc = "0^fff962Military Rank earned at Battle of Guandu\r^ffffffAttack+200\rDefense+100\rHP+1000" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号09'] = {id = 9621 , note = "^fff962【Junior Master】" , desc = "0^fff962Mentor & Apprentice Reward Title" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号10'] = {id = 9622 , note = "^fff962【Intermediate Master】" , desc = "0^fff962Mentor & Apprentice Reward Title" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号11'] = {id = 9623 , note = "^fff962【Senior Master】" , desc = "0^fff962Mentor & Apprentice Reward Title" , desc_1 = "" , desc_2 = ""}
title_definition['腾讯百变英雄'] = {id = 9624 , note = "^ff4ca4【Tencent Versatile Hero】" , desc = "0^ff4ca4Tencent Shapeshifting Hero Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['新浪百变英雄'] = {id = 9625 , note = "^ff4ca4【Sina Versatile Hero】" , desc = "0^ff4ca4Sina Shapeshifting Hero Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['多玩百变英雄'] = {id = 9626 , note = "^ff4ca4【Duowan Versatile Hero】" , desc = "0^ff4ca4Duowan Shapeshifting Hero Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['17173百变英雄'] = {id = 9627 , note = "^ff4ca4【17173 Versatile Hero】" , desc = "0^ff4ca417173 Shapeshifting Hero Card Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['双重★身份'] = {id = 9628 , note = "^ff4ca4【Double ★ Identity】" , desc = "0^ff4ca4Permanent Effect:\r^ffffffMax HP+50" , desc_1 = "" , desc_2 = ""}
title_definition['执着的追寻者'] = {id = 9629 , note = "^ff4ca4【Persistent Seeker】" , desc = "0^ff4ca4Operation Event Reward" , desc_1 = "" , desc_2 = ""}
title_definition['七夕情缘值奖励称号'] = {id = 9630 , note = "^ff4ca4【Tenderness Like Water; A Beautiful Date Like a Dream】" , desc = "0^ff4ca4Permanent Effect:\r^ffffffAttack+10\rDefense+10\rMax HP+100" , desc_1 = "" , desc_2 = ""}
title_definition['葭萌关称号1'] = {id = 9631 , note = "^ffffff【Jiameng Pass Soldier】" , desc = "0^ffffffJiameng Pass Reward Title\r^ffffffAttack+3\rDefense+1\rHP+100" , desc_1 = "" , desc_2 = ""}
title_definition['葭萌关称号2'] = {id = 9632 , note = "^72fe00【Jiameng Pass Corporal】" , desc = "0^72fe00Jiameng Pass Reward Title\r^ffffffAttack+6\rDefense+2\rHP+200" , desc_1 = "" , desc_2 = ""}
title_definition['葭萌关称号3'] = {id = 9633 , note = "^0184ff【Jiameng Pass Colonel】" , desc = "0^0184ffJiameng Pass Reward Title\r^ffffffAttack+9\rDefense+4\rHP+300" , desc_1 = "" , desc_2 = ""}
title_definition['葭萌关称号4'] = {id = 9634 , note = "^a800ff【Jiameng Pass Commander】" , desc = "0^a800ffJiameng Pass Reward Title\r^ffffffAttack+12\rDefense+6\rHP+400" , desc_1 = "" , desc_2 = ""}
title_definition['葭萌关称号5'] = {id = 9635 , note = "^ff7d2f【Jiameng Pass Deputy General】" , desc = "0^ff7d2fJiameng Pass Reward Title\r^ffffffAttack+15\rDefense+8\rHP+500" , desc_1 = "" , desc_2 = ""}
title_definition['葭萌关称号6'] = {id = 9636 , note = "^fff962【Jiameng Pass Great General】" , desc = "0^fff962Jiameng Pass Reward Title\r^ffffffAttack+20\rDefense+10\rHP+700" , desc_1 = "" , desc_2 = ""}
title_definition['葭萌关称号7'] = {id = 9637 , note = "^ff0000【Jiameng Pass Marshal】" , desc = "0^ff0000Jiameng Pass Reward Title\r^ffffffAttack+25\rDefense+12\rHP+1000" , desc_1 = "" , desc_2 = ""}
title_definition['七星阵称号1'] = {id = 9638 , note = "^0184ff【Breaking the Heavenly Jade Star】" , desc = "0^ff0000Seven Star Formation Achievement Title\r^ffffffDefense+5" , desc_1 = "" , desc_2 = ""}
title_definition['七星阵称号2'] = {id = 9639 , note = "^0184ff【Breaking the Heavenly Mechanism Star】" , desc = "0^ff0000Seven Star Formation Achievement Title\r^ffffffAttack+10" , desc_1 = "" , desc_2 = ""}
title_definition['七星阵称号3'] = {id = 9640 , note = "^0184ff【Breaking the Heavenly Authority Star】" , desc = "0^ff0000Seven Star Formation Achievement Title\r^ffffffHeal Potency+5" , desc_1 = "" , desc_2 = ""}
title_definition['七星阵称号4'] = {id = 9641 , note = "^0184ff【Breaking the Heavenly Balance Star】" , desc = "0^ff0000Seven Star Formation Achievement Title\r^ffffffHP+100" , desc_1 = "" , desc_2 = ""}
title_definition['七星阵称号5'] = {id = 9642 , note = "^0184ff【Breaking the Opening Yang Star】" , desc = "0^ff0000Seven Star Formation Achievement Title\r^ffffffCrit Bonus DMG+20" , desc_1 = "" , desc_2 = ""}
title_definition['七星阵称号6'] = {id = 9643 , note = "^a800ff【Great General of the Seven Star Charge】" , desc = "0^ff0000Seven Star Formation Achievement Title\r^ffffffAttack+20\rDefense+10\rHP+200\rHeal Potency+10\rCrit Bonus DMG+30\rAttack Power+1%" , desc_1 = "" , desc_2 = ""}
title_definition['战天下资料片称号'] = {id = 9644 , note = "^a800ff【Heroes Show Their Edge Today; Return to Chibi to War for the World】" , desc = "0^ff0000Battle of Heaven Hero Return Title" , desc_1 = "" , desc_2 = ""}
title_definition['群英会称号1'] = {id = 9645 , note = "^0184ff【First Arena Duel】" , desc = "0^0184ffHeroes Assembly Reward Title\r^ffffffAttack+10\rDefense+5\rHP+250" , desc_1 = "" , desc_2 = ""}
title_definition['群英会称号2'] = {id = 9646 , note = "^a800ff【Standing Tall Among the Crowd】" , desc = "0^a800ffHeroes Assembly Reward Title\r^ffffffAttack+16\rDefense+8\rHP+400" , desc_1 = "" , desc_2 = ""}
title_definition['群英会称号3'] = {id = 9647 , note = "^ff7d2f【Eighteen Martial Arts Displayed in Peerless Skill】" , desc = "0^ff7d2fHeroes Assembly Reward Title\r^ffffffAttack+22\rDefense+11\rHP+550" , desc_1 = "" , desc_2 = ""}
title_definition['群英会称号4'] = {id = 9648 , note = "^fff962【None Can Match; Needle Point Against Needle Point】" , desc = "0^fff962Heroes Assembly Reward Title\r^ffffffAttack+30\rDefense+15\rHP+750" , desc_1 = "" , desc_2 = ""}
title_definition['群英会称号5'] = {id = 9649 , note = "^ff0000【Fierce Battle Across the World, Proud of the Heroes】" , desc = "0^ff0000Heroes Assembly Reward Title\r^ffffffAttack+40\rDefense+20\rHP+1000" , desc_1 = "" , desc_2 = ""}
title_definition['官网签到活动'] = {id = 9650 , note = "^a800ff【World War Check-in Master】" , desc = "0^ff0000Battle of Heaven Official Website Sign-in Event Title" , desc_1 = "" , desc_2 = ""}
title_definition['17173战天下礼包'] = {id = 9651 , note = "^a800ff【17173 Fierce Battle for the World】" , desc = "0^ff0000Operations Beginner Card Title" , desc_1 = "" , desc_2 = ""}
title_definition['新浪战天下礼包'] = {id = 9652 , note = "^a800ff【Sina Fierce Battle for the World】" , desc = "0^ff0000Operations Beginner Card Title" , desc_1 = "" , desc_2 = ""}
title_definition['网易战天下礼包'] = {id = 9653 , note = "^a800ff【NetEase Fierce Battle for the World】" , desc = "0^ff0000Operations Beginner Card Title" , desc_1 = "" , desc_2 = ""}
title_definition['腾讯战天下礼包'] = {id = 9654 , note = "^a800ff【Tencent Fierce Battle for the World】" , desc = "0^ff0000Operations Beginner Card Title" , desc_1 = "" , desc_2 = ""}
title_definition['电玩巴士战天下礼包'] = {id = 9655 , note = "^a800ff【VGBus Fierce Battle for the World】" , desc = "0^ff0000Operations Beginner Card Title" , desc_1 = "" , desc_2 = ""}
title_definition['YY皇室冲级大礼包'] = {id = 9656 , note = "^a800ff【Duowan Fierce Battle for the World】" , desc = "0^ff0000Operations Beginner Card Title" , desc_1 = "" , desc_2 = ""}
title_definition['公会特权新手大礼包'] = {id = 9657 , note = "^a800ff【Guild Heroes Gather, Fires of War Ignite the World】" , desc = "0^ff0000Operations Beginner Card Title" , desc_1 = "" , desc_2 = ""}
title_definition['三星至尊新手大礼包'] = {id = 9658 , note = "^a800ff【Love Life, Love Samsung】" , desc = "0^ff0000Operations Beginner Card Title" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号1'] = {id = 9659 , note = "^72fe00【Horn Wood Dragon · Mansion 1】" , desc = "0^72fe00Azure Dragon\r^ffffffHP+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号2'] = {id = 9660 , note = "^72fe00【Horn Wood Dragon · Mansion 2】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+1\rBonus DMG+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号3'] = {id = 9661 , note = "^72fe00【Neck Gold Dragon · Mansion 1】" , desc = "0^72fe00Azure Dragon\r^ffffffHP+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号4'] = {id = 9662 , note = "^72fe00【Neck Gold Dragon · Mansion 2】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+1\rBonus DMG+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号5'] = {id = 9663 , note = "^72fe00【Neck Gold Dragon · Mansion 3】" , desc = "0^72fe00Azure Dragon\r^ffffffDefense+1\rHP+20\rToughness+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号6'] = {id = 9664 , note = "^72fe00【Neck Gold Dragon · Mansion 4】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+1\rAccuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号7'] = {id = 9665 , note = "^72fe00【Root Earth Racoon · Mansion 1】" , desc = "0^72fe00Azure Dragon\r^ffffffHP+20\rToughness+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号8'] = {id = 9666 , note = "^72fe00【Root Earth Racoon · Mansion 2】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+1\rBonus DMG+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号9'] = {id = 9667 , note = "^72fe00【Root Earth Racoon · Mansion 3】" , desc = "0^72fe00Azure Dragon\r^ffffffDefense+1\rHP+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号10'] = {id = 9668 , note = "^72fe00【Root Earth Racoon · Mansion 4】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+1\rHeal Potency+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号11'] = {id = 9669 , note = "^72fe00【Room Sun Rabbit · Mansion 1】" , desc = "0^72fe00Azure Dragon\r^ffffffHP+20\rToughness+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号12'] = {id = 9670 , note = "^72fe00【Room Sun Rabbit · Mansion 2】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+1\rBonus DMG+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号13'] = {id = 9671 , note = "^72fe00【Room Sun Rabbit · Mansion 3】" , desc = "0^72fe00Azure Dragon\r^ffffffDefense+1\rHP+30" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号14'] = {id = 9672 , note = "^72fe00【Room Sun Rabbit · Mansion 4】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+1\rDodge+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号15'] = {id = 9673 , note = "^72fe00【Heart Moon Fox · Mansion 1】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+1\rBonus DMG+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号16'] = {id = 9674 , note = "^72fe00【Heart Moon Fox · Mansion 2】" , desc = "0^72fe00Azure Dragon\r^ffffffDefense+1\rToughness+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号17'] = {id = 9675 , note = "^72fe00【Heart Moon Fox · Mansion 3】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+1\rHeal Potency+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号18'] = {id = 9676 , note = "^72fe00【Tail Fire Tiger · Mansion 1】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+1\rBonus DMG+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号19'] = {id = 9677 , note = "^72fe00【Tail Fire Tiger · Mansion 2】" , desc = "0^72fe00Azure Dragon\r^ffffffDefense+1\rHP+30\rToughness+3" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号20'] = {id = 9678 , note = "^72fe00【Tail Fire Tiger · Mansion 3】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+1\rBonus DMG+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号21'] = {id = 9679 , note = "^72fe00【Tail Fire Tiger · Mansion 4】" , desc = "0^72fe00Azure Dragon\r^ffffffDefense+1\rHP+30\rToughness+3" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号22'] = {id = 9680 , note = "^72fe00【Tail Fire Tiger · Mansion 5】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+1\rBonus DMG+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号23'] = {id = 9681 , note = "^72fe00【Tail Fire Tiger · Mansion 6】" , desc = "0^72fe00Azure Dragon\r^ffffffDefense+2\rHP+40\rToughness+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号24'] = {id = 9682 , note = "^72fe00【Tail Fire Tiger · Mansion 7】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+2\rDirect DMG Resist+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号25'] = {id = 9683 , note = "^72fe00【Winnow Water Leopard · Mansion 1】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+2\rBonus DMG+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号26'] = {id = 9684 , note = "^72fe00【Winnow Water Leopard · Mansion 2】" , desc = "0^72fe00Azure Dragon\r^ffffffDefense+2\rHP+50" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号27'] = {id = 9685 , note = "^72fe00【Winnow Water Leopard · Mansion 3】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+2\rBonus DMG+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号28'] = {id = 9686 , note = "^72fe00【Winnow Water Leopard · Mansion 4】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+2\rAttack Power+1%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号29'] = {id = 9687 , note = "^0184ff【Dipper Wood Xie · Mansion 1】" , desc = "0^0184ffBlack Tortoise\r^ffffffHP+100\rToughness+6" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号30'] = {id = 9688 , note = "^0184ff【Dipper Wood Xie · Mansion 2】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号31'] = {id = 9689 , note = "^0184ff【Dipper Wood Xie · Mansion 3】" , desc = "0^0184ffBlack Tortoise\r^ffffffDefense+1\rBonus DMG+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号32'] = {id = 9690 , note = "^0184ff【Dipper Wood Xie · Mansion 4】" , desc = "0^0184ffBlack Tortoise\r^ffffffHP+100" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号33'] = {id = 9691 , note = "^0184ff【Dipper Wood Xie · Mansion 5】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号34'] = {id = 9692 , note = "^0184ff【Dipper Wood Xie · Mansion 6】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+3\rPenetration+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号35'] = {id = 9693 , note = "^0184ff【Ox Gold Ox · Mansion 1】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号36'] = {id = 9694 , note = "^0184ff【Ox Gold Ox · Mansion 2】" , desc = "0^0184ffBlack Tortoise\r^ffffffHP+100\rToughness+6" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号37'] = {id = 9695 , note = "^0184ff【Ox Gold Ox · Mansion 3】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号38'] = {id = 9696 , note = "^0184ff【Ox Gold Ox · Mansion 4】" , desc = "0^0184ffBlack Tortoise\r^ffffffDefense+2\rBonus DMG+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号39'] = {id = 9697 , note = "^0184ff【Ox Gold Ox · Mansion 5】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号40'] = {id = 9698 , note = "^0184ff【Ox Gold Ox · Mansion 6】" , desc = "0^0184ffBlack Tortoise\r^ffffffBonus DMG+10\rAccuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号41'] = {id = 9699 , note = "^0184ff【Girl Earth Bat · Mansion 1】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号42'] = {id = 9700 , note = "^0184ff【Girl Earth Bat · Mansion 2】" , desc = "0^0184ffBlack Tortoise\r^ffffffHP+100\rToughness+6" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号43'] = {id = 9701 , note = "^0184ff【Girl Earth Bat · Mansion 3】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号44'] = {id = 9702 , note = "^0184ff【Girl Earth Bat · Mansion 4】" , desc = "0^0184ffBlack Tortoise\r^ffffffToughness+10\rDodge+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号45'] = {id = 9703 , note = "^0184ff【Void Sun Rat · Mansion 1】" , desc = "0^0184ffBlack Tortoise\r^ffffffDefense+2\rBonus DMG+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号46'] = {id = 9704 , note = "^0184ff【Void Sun Rat · Mansion 2】" , desc = "0^0184ffBlack Tortoise\r^ffffffDefense+3\rHeal Potency+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号47'] = {id = 9705 , note = "^0184ff【Danger Moon Swallow · Mansion 1】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号48'] = {id = 9706 , note = "^0184ff【Danger Moon Swallow · Mansion 2】" , desc = "0^0184ffBlack Tortoise\r^ffffffDefense+2\rBonus DMG+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号49'] = {id = 9707 , note = "^0184ff【Danger Moon Swallow · Mansion 3】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+4\rPierce+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号50'] = {id = 9708 , note = "^0184ff【House Fire Pig · Mansion 1】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号51'] = {id = 9709 , note = "^0184ff【House Fire Pig · Mansion 2】" , desc = "0^0184ffBlack Tortoise\r^ffffffDefense+2\rBonus DMG+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号52'] = {id = 9710 , note = "^0184ff【House Fire Pig · Mansion 3】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号53'] = {id = 9711 , note = "^0184ff【House Fire Pig · Mansion 4】" , desc = "0^0184ffBlack Tortoise\r^ffffffHP+100\rToughness+6" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号54'] = {id = 9712 , note = "^0184ff【House Fire Pig · Mansion 5】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号55'] = {id = 9713 , note = "^0184ff【House Fire Pig · Mansion 6】" , desc = "0^0184ffBlack Tortoise\r^ffffffDefense+3\rBonus DMG+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号56'] = {id = 9714 , note = "^0184ff【House Fire Pig · Mansion 7】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+3" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号57'] = {id = 9715 , note = "^0184ff【House Fire Pig · Mansion 8】" , desc = "0^0184ffBlack Tortoise\r^ffffffHP+100\rToughness+6" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号58'] = {id = 9716 , note = "^0184ff【House Fire Pig · Mansion 9】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+5\rIndirect DMG Resist+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号59'] = {id = 9717 , note = "^0184ff【Wall Water Beast · Mansion 1】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+3" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号60'] = {id = 9718 , note = "^0184ff【Wall Water Beast · Mansion 2】" , desc = "0^0184ffBlack Tortoise\r^ffffffCrit+1\rDefense+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号61'] = {id = 9719 , note = "^a800ff【Legs Wood Wolf · Mansion 1】" , desc = "0^a800ffWhite Tiger\r^ffffffHP+200\rToughness+12" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号62'] = {id = 9720 , note = "^a800ff【Legs Wood Wolf · Mansion 2】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+3" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号63'] = {id = 9721 , note = "^a800ff【Legs Wood Wolf · Mansion 3】" , desc = "0^a800ffWhite Tiger\r^ffffffDefense+3\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号64'] = {id = 9722 , note = "^a800ff【Legs Wood Wolf · Mansion 4】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+3" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号65'] = {id = 9723 , note = "^a800ff【Legs Wood Wolf · Mansion 5】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号66'] = {id = 9724 , note = "^a800ff【Legs Wood Wolf · Mansion 6】" , desc = "0^a800ffWhite Tiger\r^ffffffDefense+3\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号67'] = {id = 9725 , note = "^a800ff【Legs Wood Wolf · Mansion 7】" , desc = "0^a800ffWhite Tiger\r^ffffffHP+200\rToughness+12" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号68'] = {id = 9726 , note = "^a800ff【Legs Wood Wolf · Mansion 8】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4\rAccuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号69'] = {id = 9727 , note = "^a800ff【Legs Wood Wolf · Mansion 9】" , desc = "0^a800ffWhite Tiger\r^ffffffDefense+3\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号70'] = {id = 9728 , note = "^a800ff【Legs Wood Wolf · Mansion 10】" , desc = "0^a800ffWhite Tiger\r^ffffffHP+200\rToughness+12" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号71'] = {id = 9729 , note = "^a800ff【Kui Wood Wolf · Mansion Eleven】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号72'] = {id = 9730 , note = "^a800ff【Kui Wood Wolf · Mansion Twelve】" , desc = "0^a800ffWhite Tiger\r^ffffffDefense+3\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号73'] = {id = 9731 , note = "^a800ff【Kui Wood Wolf · Mansion Thirteen】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号74'] = {id = 9732 , note = "^a800ff【Kui Wood Wolf · Mansion Fourteen】" , desc = "0^a800ffWhite Tiger\r^ffffffHP+200\rToughness+12" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号75'] = {id = 9733 , note = "^a800ff【Kui Wood Wolf · Mansion Fifteen】" , desc = "0^a800ffWhite Tiger\r^ffffffDefense+5\rAttack Power+1%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号76'] = {id = 9734 , note = "^a800ff【Bond Gold Dog · Mansion 1】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号77'] = {id = 9735 , note = "^a800ff【Bond Gold Dog · Mansion 2】" , desc = "0^a800ffWhite Tiger\r^ffffffDefense+3\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号78'] = {id = 9736 , note = "^a800ff【Bond Gold Dog · Mansion 3】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+10\rCrit Resist+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号79'] = {id = 9737 , note = "^a800ff【Stomach Earth Pheasant · Mansion 1】" , desc = "0^a800ffWhite Tiger\r^ffffffHP+200\rToughness+12" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号80'] = {id = 9738 , note = "^a800ff【Stomach Earth Pheasant · Mansion 2】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号81'] = {id = 9739 , note = "^a800ff【Stomach Earth Pheasant · Mansion 3】" , desc = "0^a800ffWhite Tiger\r^ffffffDefense+5\rHeal Potency+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号82'] = {id = 9740 , note = "^a800ff【Hairy Sun Rooster · Mansion 1】" , desc = "0^a800ffWhite Tiger\r^ffffffDefense+3\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号83'] = {id = 9741 , note = "^a800ff【Hairy Sun Rooster · Mansion 2】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号84'] = {id = 9742 , note = "^a800ff【Hairy Sun Rooster · Mansion 3】" , desc = "0^a800ffWhite Tiger\r^ffffffHP+200\rToughness+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号85'] = {id = 9743 , note = "^a800ff【Hairy Sun Rooster · Mansion 4】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号86'] = {id = 9744 , note = "^a800ff【Hairy Sun Rooster · Mansion 5】" , desc = "0^a800ffWhite Tiger\r^ffffffDefense+3\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号87'] = {id = 9745 , note = "^a800ff【Hairy Sun Rooster · Mansion 6】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号88'] = {id = 9746 , note = "^a800ff【Hairy Sun Rooster · Mansion 7】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+10\rAccuracy+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号89'] = {id = 9747 , note = "^a800ff【Net Moon Crow · Mansion 1】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号90'] = {id = 9748 , note = "^a800ff【Net Moon Crow · Mansion 2】" , desc = "0^a800ffWhite Tiger\r^ffffffDefense+3\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号91'] = {id = 9749 , note = "^a800ff【Net Moon Crow · Mansion 3】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号92'] = {id = 9750 , note = "^a800ff【Net Moon Crow · Mansion 4】" , desc = "0^a800ffWhite Tiger\r^ffffffDefense+3\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号93'] = {id = 9751 , note = "^a800ff【Net Moon Crow · Mansion 5】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号94'] = {id = 9752 , note = "^a800ff【Net Moon Crow · Mansion 6】" , desc = "0^a800ffWhite Tiger\r^ffffffHP+200\rToughness+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号95'] = {id = 9753 , note = "^a800ff【Net Moon Crow · Mansion 7】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+10\rDodge+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号96'] = {id = 9754 , note = "^a800ff【Turtle Beak Fire Monkey · Mansion 1】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号97'] = {id = 9755 , note = "^a800ff【Turtle Beak Fire Monkey · Mansion 2】" , desc = "0^a800ffWhite Tiger\r^ffffffDefense+4\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号98'] = {id = 9756 , note = "^a800ff【Turtle Beak Fire Monkey · Mansion 3】" , desc = "0^a800ffWhite Tiger\r^ffffffDefense+10\rDirect DMG Resist+1\rIndirect DMG Resist+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号99'] = {id = 9757 , note = "^a800ff【Three Water Ape · Mansion 1】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号100'] = {id = 9758 , note = "^a800ff【Three Water Ape · Mansion 2】" , desc = "0^a800ffWhite Tiger\r^ffffffDefense+4\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号101'] = {id = 9759 , note = "^a800ff【Three Water Ape · Mansion 3】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号102'] = {id = 9760 , note = "^a800ff【Three Water Ape · Mansion 4】" , desc = "0^a800ffWhite Tiger\r^ffffffHP+200\rToughness+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号103'] = {id = 9761 , note = "^a800ff【Three Water Ape · Mansion 5】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号104'] = {id = 9762 , note = "^a800ff【Three Water Ape · Mansion 6】" , desc = "0^a800ffWhite Tiger\r^ffffffHP+200\rToughness+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号105'] = {id = 9763 , note = "^a800ff【Three Water Ape · Mansion 7】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号106'] = {id = 9764 , note = "^a800ff【Three Water Ape · Mansion 8】" , desc = "0^a800ffWhite Tiger\r^ffffffDefense+5\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号107'] = {id = 9765 , note = "^a800ff【Three Water Ape · Mansion 9】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号108'] = {id = 9766 , note = "^a800ff【Three Water Ape · Mansion 10】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+12\rPierce+1\rPenetration+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号109'] = {id = 9767 , note = "^ff7d2f【Well Wood Wildcat · Mansion 1】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号110'] = {id = 9768 , note = "^ff7d2f【Well Wood Wildcat · Mansion 2】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号111'] = {id = 9769 , note = "^ff7d2f【Well Wood Wildcat · Mansion 3】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号112'] = {id = 9770 , note = "^ff7d2f【Well Wood Wildcat · Mansion 4】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+300\rToughness+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号113'] = {id = 9771 , note = "^ff7d2f【Well Wood Wildcat · Mansion 5】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号114'] = {id = 9772 , note = "^ff7d2f【Well Wood Wildcat · Mansion 6】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号115'] = {id = 9773 , note = "^ff7d2f【Well Wood Wildcat · Mansion 7】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号116'] = {id = 9774 , note = "^ff7d2f【Well Wood Wildcat · Mansion 8】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+10\rDirect DMG Resist+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号117'] = {id = 9775 , note = "^ff7d2f【Ghost Gold Goat · Mansion 1】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号118'] = {id = 9776 , note = "^ff7d2f【Ghost Gold Goat · Mansion 2】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号119'] = {id = 9777 , note = "^ff7d2f【Ghost Gold Goat · Mansion 3】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+300\rToughness+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号120'] = {id = 9778 , note = "^ff7d2f【Ghost Gold Goat · Mansion 4】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号121'] = {id = 9779 , note = "^ff7d2f【Ghost Gold Goat · Mansion 5】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+10\rIndirect DMG Resist+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号122'] = {id = 9780 , note = "^ff7d2f【Willow Earth Deer · Mansion 1】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号123'] = {id = 9781 , note = "^ff7d2f【Willow Earth Deer · Mansion 2】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号124'] = {id = 9782 , note = "^ff7d2f【Willow Earth Deer · Mansion 3】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号125'] = {id = 9783 , note = "^ff7d2f【Willow Earth Deer · Mansion 4】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号126'] = {id = 9784 , note = "^ff7d2f【Willow Earth Deer · Mansion 5】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+300\rToughness+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号127'] = {id = 9785 , note = "^ff7d2f【Willow Earth Deer · Mansion 6】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号128'] = {id = 9786 , note = "^ff7d2f【Willow Earth Deer · Mansion 7】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+300\rToughness+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号129'] = {id = 9787 , note = "^ff7d2f【Willow Earth Deer · Mansion 8】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+10\rCrit+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号130'] = {id = 9788 , note = "^ff7d2f【Star Sun Horse · Mansion 1】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号131'] = {id = 9789 , note = "^ff7d2f【Star Sun Horse · Mansion 2】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号132'] = {id = 9790 , note = "^ff7d2f【Star Sun Horse · Mansion 3】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+300\rToughness+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号133'] = {id = 9791 , note = "^ff7d2f【Star Sun Horse · Mansion 4】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号134'] = {id = 9792 , note = "^ff7d2f【Star Sun Horse · Mansion 5】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号135'] = {id = 9793 , note = "^ff7d2f【Star Sun Horse · Mansion 6】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号136'] = {id = 9794 , note = "^ff7d2f【Star Sun Horse · Mansion 7】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+10\rCrit Resist+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号137'] = {id = 9795 , note = "^ff7d2f【Extended Moon Deer · Mansion 1】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+300\rToughness+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号138'] = {id = 9796 , note = "^ff7d2f【Extended Moon Deer · Mansion 2】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号139'] = {id = 9797 , note = "^ff7d2f【Extended Moon Deer · Mansion 3】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号140'] = {id = 9798 , note = "^ff7d2f【Extended Moon Deer · Mansion 4】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+300\rToughness+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号141'] = {id = 9799 , note = "^ff7d2f【Extended Moon Deer · Mansion 5】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号142'] = {id = 9800 , note = "^ff7d2f【Extended Moon Deer · Mansion 6】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+20\rAttack Power+2%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号143'] = {id = 9801 , note = "^ff7d2f【Wings Fire Snake · Mansion 1】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+300\rToughness+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号144'] = {id = 9802 , note = "^ff7d2f【Wings Fire Snake · Mansion 2】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号145'] = {id = 9803 , note = "^ff7d2f【Wings Fire Snake · Mansion 3】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号146'] = {id = 9804 , note = "^ff7d2f【Wings Fire Snake · Mansion 4】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+300\rToughness+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号147'] = {id = 9805 , note = "^ff7d2f【Wings Fire Snake · Mansion 5】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号148'] = {id = 9806 , note = "^ff7d2f【Wings Fire Snake · Mansion 6】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5\rDodge+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号149'] = {id = 9807 , note = "^ff7d2f【Wings Fire Snake · Mansion 7】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号150'] = {id = 9808 , note = "^ff7d2f【Wings Fire Snake · Mansion 8】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号151'] = {id = 9809 , note = "^ff7d2f【Wings Fire Snake · Mansion 9】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号152'] = {id = 9810 , note = "^ff7d2f【Wings Fire Snake · Mansion 10】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+300\rToughness+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号153'] = {id = 9811 , note = "^ff7d2f【Wing Fire Snake · Mansion Eleven】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号154'] = {id = 9812 , note = "^ff7d2f【Wing Fire Snake · Mansion Twelve】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号155'] = {id = 9813 , note = "^ff7d2f【Wing Fire Snake · Mansion Thirteen】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+300\rToughness+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号156'] = {id = 9814 , note = "^ff7d2f【Wing Fire Snake · Mansion Fourteen】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5\rAttack Power+1%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号157'] = {id = 9815 , note = "^ff7d2f【Wing Fire Snake · Mansion Fifteen】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号158'] = {id = 9816 , note = "^ff7d2f【Wing Fire Snake · Mansion Sixteen】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号159'] = {id = 9817 , note = "^ff7d2f【Wing Fire Snake · Mansion Seventeen】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号160'] = {id = 9818 , note = "^ff7d2f【Wing Fire Snake · Mansion Eighteen】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号161'] = {id = 9819 , note = "^ff7d2f【Wing Fire Snake · Mansion Nineteen】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号162'] = {id = 9820 , note = "^ff7d2f【Wing Fire Snake · Mansion Twenty】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号163'] = {id = 9821 , note = "^ff7d2f【Wing Fire Snake · Mansion Twenty-One】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号164'] = {id = 9822 , note = "^ff7d2f【Wing Fire Snake · Mansion Twenty-Two】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+20\rHeal Effect+3%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号165'] = {id = 9823 , note = "^ff7d2f【Chariot Water Earthworm · Mansion 1】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号166'] = {id = 9824 , note = "^ff7d2f【Chariot Water Earthworm · Mansion 2】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号167'] = {id = 9825 , note = "^ff7d2f【Chariot Water Earthworm · Mansion 3】" , desc = "0^ff7d2fVermilion Bird\r^ffffffDefense+5\rBonus DMG+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号168'] = {id = 9826 , note = "^ff7d2f【Chariot Water Earthworm · Mansion 4】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号169'] = {id = 9827 , note = "^ff7d2f【Chariot Water Earthworm · Mansion 5】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+30\rPierce+2\rPenetration+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号170'] = {id = 9828 , note = "^72fe00【Horn Wood Dragon】" , desc = "0^72fe00Azure Dragon\r^ffffffHP+20\rAttack+1\rBonus DMG+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号171'] = {id = 9829 , note = "^72fe00【Neck Gold Dragon】" , desc = "0^72fe00Azure Dragon\r^ffffffHP+40\rAttack+2\rDefense+1\rBonus DMG+2\rToughness+2\rAccuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号172'] = {id = 9830 , note = "^72fe00【Root Earth Racoon】" , desc = "0^72fe00Azure Dragon\r^ffffffHP+40\rAttack+2\rDefense+1\rBonus DMG+2\rToughness+2\rHeal Potency+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号173'] = {id = 9831 , note = "^72fe00【Room Sun Rabbit】" , desc = "0^72fe00Azure Dragon\r^ffffffHP+50\rAttack+2\rDefense+1\rBonus DMG+2\rToughness+4\rDodge+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号174'] = {id = 9832 , note = "^72fe00【Heart Moon Fox】" , desc = "0^72fe00Azure Dragon\r^ffffffAttack+2\rDefense+1\rBonus DMG+2\rToughness+2\rHeal Potency+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号175'] = {id = 9833 , note = "^72fe00【Tail Fire Tiger】" , desc = "0^72fe00Azure Dragon\r^ffffffHP+100\rAttack+5\rDefense+4\rBonus DMG+6\rToughness+10\rDirect DMG Resist+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号176'] = {id = 9834 , note = "^72fe00【Winnow Water Leopard】" , desc = "0^72fe00Azure Dragon\r^ffffffHP+50\rAttack+6\rDefense+2\rBonus DMG+4\rAttack Power+1%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号177'] = {id = 9835 , note = "^0184ff【Dipper Wood Xie】" , desc = "0^0184ffBlack Tortoise\r^ffffffHP+200\rAttack+7\rDefense+1\rBonus DMG+5\rToughness+6\rPenetration+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号178'] = {id = 9836 , note = "^0184ff【Ox Gold Ox】" , desc = "0^0184ffBlack Tortoise\r^ffffffHP+100\rAttack+6\rDefense+2\rBonus DMG+16\rToughness+6\rAccuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号179'] = {id = 9837 , note = "^0184ff【Girl Earth Bat】" , desc = "0^0184ffBlack Tortoise\r^ffffffHP+100\rAttack+4\rToughness+16\rDodge+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号180'] = {id = 9838 , note = "^0184ff【Void Sun Rat】" , desc = "0^0184ffBlack Tortoise\r^ffffffDefense+5\rBonus DMG+5\rHeal Potency+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号181'] = {id = 9839 , note = "^0184ff【Danger Moon Swallow】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+6\rDefense+2\rBonus DMG+5\rPierce+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号182'] = {id = 9840 , note = "^0184ff【House Fire Pig】" , desc = "0^0184ffBlack Tortoise\r^ffffffHP+200\rAttack+14\rDefense+5\rBonus DMG+10\rToughness+12\rIndirect DMG Resist+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号183'] = {id = 9841 , note = "^0184ff【Wall Water Beast】" , desc = "0^0184ffBlack Tortoise\r^ffffffAttack+3\rDefense+5\rCrit+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号184'] = {id = 9842 , note = "^a800ff【Legs Wood Wolf】" , desc = "0^a800ffWhite Tiger\r^ffffffHP+800\rAttack+22\rDefense+17\rBonus DMG+40\rToughness+48\rAccuracy+1\rAttack Power+1%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号185'] = {id = 9843 , note = "^a800ff【Bond Gold Dog】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+14\rDefense+3\rBonus DMG+10\rCrit Resist+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号186'] = {id = 9844 , note = "^a800ff【Stomach Earth Pheasant】" , desc = "0^a800ffWhite Tiger\r^ffffffHP+200\rAttack+4\rDefense+5\rToughness+12\rHeal Potency+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号187'] = {id = 9845 , note = "^a800ff【Hairy Sun Rooster】" , desc = "0^a800ffWhite Tiger\r^ffffffHP+200\rAttack+22\rDefense+6\rBonus DMG+20\rToughness+15\rAccuracy+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号188'] = {id = 9846 , note = "^a800ff【Net Moon Crow】" , desc = "0^a800ffWhite Tiger\r^ffffffHP+200\rAttack+22\rDefense+6\rBonus DMG+20\rToughness+15\rDodge+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号189'] = {id = 9847 , note = "^a800ff【Turtle Beak Fire Monkey】" , desc = "0^a800ffWhite Tiger\r^ffffffAttack+4\rDefense+14\rBonus DMG+10\rDirect DMG Resist+1\rIndirect DMG Resist+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号190'] = {id = 9848 , note = "^a800ff【Three Water Ape】" , desc = "0^a800ffWhite Tiger\r^ffffffHP+400\rAttack+32\rDefense+9\rBonus DMG+20\rToughness+30\rPierce+1\rPenetration+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号191'] = {id = 9849 , note = "^ff7d2f【Well Wood Wildcat】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+300\rAttack+20\rDefense+20\rBonus DMG+20\rToughness+20\rDirect DMG Resist+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号192'] = {id = 9850 , note = "^ff7d2f【Ghost Gold Goat】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+300\rAttack+10\rDefense+15\rBonus DMG+10\rToughness+20\rIndirect DMG Resist+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号193'] = {id = 9851 , note = "^ff7d2f【Willow Earth Deer】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+600\rAttack+25\rDefense+10\rBonus DMG+20\rToughness+40\rCrit+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号194'] = {id = 9852 , note = "^ff7d2f【Star Sun Horse】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+300\rAttack+25\rDefense+10\rBonus DMG+20\rToughness+20\rCrit Resist+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号195'] = {id = 9853 , note = "^ff7d2f【Extended Moon Deer】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+600\rAttack+30\rDefense+5\rBonus DMG+10\rToughness+40\rAttack Power+2%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号196'] = {id = 9854 , note = "^ff7d2f【Wings Fire Snake】" , desc = "0^ff7d2fVermilion Bird\r^ffffffHP+1200\rAttack+65\rDefense+40\rBonus DMG+110\rToughness+80\rAttack Power+1%\rDodge+1\rHeal Effect+3%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号197'] = {id = 9855 , note = "^ff7d2f【Chariot Water Earthworm】" , desc = "0^ff7d2fVermilion Bird\r^ffffffAttack+45\rDefense+10\rBonus DMG+30\rPierce+2\rPenetration+2" , desc_1 = "" , desc_2 = ""}
title_definition['17173斗群英礼包'] = {id = 9856 , note = "^a800ff【17173 Hero Clash】" , desc = "0^ff0000Operations Beginner Card Title" , desc_1 = "" , desc_2 = ""}
title_definition['新浪斗群英礼包'] = {id = 9857, note = "^a800ff【Sina Hero Clash】" , desc = "0^ff0000Operations Beginner Card Title" , desc_1 = "" , desc_2 = ""}
title_definition['太平洋斗群英礼包'] = {id = 9858 , note = "^a800ff【Pacific Hero Clash】" , desc = "0^ff0000Operations Beginner Card Title" , desc_1 = "" , desc_2 = ""}
title_definition['联通斗群英礼包'] = {id = 9859 , note = "^a800ff【Unicom Hero Clash】" , desc = "0^ff0000Operations Beginner Card Title" , desc_1 = "" , desc_2 = ""}
title_definition['YY皇室斗群英大礼包'] = {id = 9860, note = "^a800ff【YY Royal Hero Clash】" , desc = "0^ff0000Operations Beginner Card Title" , desc_1 = "" , desc_2 = ""}
title_definition['公会特权斗群英大礼包'] = {id = 9861 , note = "^a800ff【Guild Hero Clash, Fires of War Ignite the World】" , desc = "0^ff0000Operations Beginner Card Title" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号198'] = {id = 9862 , note = "^fff962【Lord of the Azure Dragon】" , desc = "0^fff962Azure Dragon\r^ffffffThe Focus of All Eyes; Spirit Soaring to the Sky!" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号199'] = {id = 9863 , note = "^fff962【Lord of the Black Tortoise】" , desc = "0^fff962Black Tortoise\r^ffffffThe Focus of All Eyes; Spirit Soaring to the Sky!" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号200'] = {id = 9864 , note = "^fff962【Lord of the White Tiger】" , desc = "0^fff962White Tiger\r^ffffffThe Focus of All Eyes; Spirit Soaring to the Sky!" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号201'] = {id = 9865 , note = "^fff962【Lord of the Vermilion Bird】" , desc = "0^fff962Vermilion Bird\r^ffffffThe Focus of All Eyes; Spirit Soaring to the Sky!" , desc_1 = "" , desc_2 = ""}
title_definition['2013单身节结婚称号'] = {id = 9866 , note = "^fff962【Completely Stripped Bare】" , desc = "0^fff962Stripped bare on Singles' Day!\r^ffffffAttack+1\rDefense+1" , desc_1 = "" , desc_2 = ""}
title_definition['2013单身节夫妻活动称号'] = {id = 9867 , note = "^fff962【Wholeheartedly, One Couple】" , desc = "0^fff962A thousand mountains and ten thousand waters, accompanying all the way!\r^ffffffHP+100" , desc_1 = "" , desc_2 = ""}
title_definition['新国战称号1'] = {id = 9868 , note = "^72fe00【Nation War Veteran】" , desc = "0^72fe00One day I will become a general!\r^ffffffAttack+10" , desc_1 = "" , desc_2 = ""}
title_definition['新国战称号2'] = {id = 9869 , note = "^0184ff【Nation War Junior Officer】" , desc = "0^0184ffFollow me and charge! Take the enemy's head!\r^ffffffAttack+20\rDefense+10" , desc_1 = "" , desc_2 = ""}
title_definition['新国战称号3'] = {id = 9870 , note = "^a800ff【Nation War Hero】" , desc = "0^a800ffHahaha, do you dare fight?!\r^ffffffAttack+30\rDefense+15\rHP+300" , desc_1 = "" , desc_2 = ""}
title_definition['新国战称号4'] = {id = 9871 , note = "^ff7d2f【Nation War Tyrant】" , desc = "0^ff7d2fAll under heaven is within reach!\r^ffffffAttack+40\rDefense+20\rHP+500" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_刀'] = {id = 9872, note = "^ff7d2f【Heroic Pride · Blade Fiercer Than Yunchang】" , desc = "0^ff0000Won First Place in the Blade Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_枪'] = {id = 9873, note = "^ff7d2f【Heroic Pride · Spear as Swift as Zilong】" , desc = "0^ff0000Won First Place in the Spear Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_戟'] = {id = 9874, note = "^ff7d2f【Heroic Pride · Halberd Art Surpasses Lu Bu】" , desc = "0^ff0000Won First Place in the Halberd Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_钺'] = {id = 9875, note = "^ff7d2f【Heroic Pride · Battle Axe Fiercely Fights Wei Yan】" , desc = "0^ff0000Won First Place in the Battle Axe Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_叉'] = {id = 9876, note = "^ff7d2f【Heroic Pride · Trident Speed Battles Zhang Liao】" , desc = "0^ff0000Won First Place in the Trident Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_棍'] = {id = 9877, note = "^ff7d2f【Heroic Pride · Staff Wind Like Cheng Pu】" , desc = "0^ff0000Won First Place in the Cudgel Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_剑'] = {id = 9878, note = "^ff7d2f【Heroic Pride · Sword Dance as Beautiful as Zhoulang】" , desc = "0^ff0000Won First Place in the Sword Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_斧'] = {id = 9879, note = "^ff7d2f【Heroic Pride · Axe Might Rivals Xu Huang】" , desc = "0^ff0000Won First Place in the Axe Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_钩'] = {id = 9880, note = "^ff7d2f【Heroic Pride · Hook Intent Shames Sima】" , desc = "0^ff0000Won First Place in the Hook Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_锏'] = {id = 9881, note = "^ff7d2f【Heroic Pride · Mace Surpasses Taishi Ci】" , desc = "0^ff0000Won First Place in the Mace Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_锤'] = {id = 9882, note = "^ff7d2f【Heroic Pride · Hammer Shakes Dian Wei】" , desc = "0^ff0000Won First Place in the Hammer Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_爪'] = {id = 9883, note = "^ff7d2f【Heroic Pride · Claw Strike Like Gan Xingba】" , desc = "0^ff0000Won First Place in the Claw Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_盾'] = {id = 9884, note = "^ff7d2f【Heroic Pride · Shield Blocks Foolish Xu Chu】" , desc = "0^ff0000Won First Place in the Shield Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_环'] = {id = 9885, note = "^ff7d2f【Heroic Pride · Ring Skill Like Sun Shangxiang】" , desc = "0^ff0000Won First Place in the Ring Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_杖'] = {id = 9886, note = "^ff7d2f【Heroic Pride · Staff Immortal Master Zuoci】" , desc = "0^ff0000Won First Place in the Staff Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_舞'] = {id = 9887, note = "^ff7d2f【Heroic Pride · Dance More Beautiful Than Diaochan】" , desc = "0^ff0000Won First Place in the Dance Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_扇'] = {id = 9888, note = "^ff7d2f【Heroic Pride · Fan Strategy Rivals Zhuge】" , desc = "0^ff0000Won First Place in the Fan Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_弓'] = {id = 9889, note = "^ff7d2f【Heroic Pride · Bow as Accurate as Huang Zhong】" , desc = "0^ff0000Won First Place in the Bow Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_鞭'] = {id = 9890, note = "^ff7d2f【Heroic Pride · Whip Chaos Like Zhen Ji】" , desc = "0^ff0000Won First Place in the Whip Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_弩'] = {id = 9891, note = "^ff7d2f【Heroic Pride · Crossbow Spirit Surpasses Zhang He】" , desc = "0^ff0000Won First Place in the Crossbow Troop Type at the Heroes Gathering!" , desc_1 = "" , desc_2 = ""}
title_definition['跨服军团战冠军'] = {id = 9892, note = "^ff7d2f【Champion · World's Number One Legion】" , desc = "0^ff0000Won First Place in Last Week's Cross-server Legion War!" , desc_1 = "" , desc_2 = ""}
title_definition['国战限时称号_魏'] = {id = 9893, note = "^ff7d2f【Nation War Tyrant · Wei】" , desc = "0^ff0000Victory in the Nation War!" , desc_1 = "" , desc_2 = ""}
title_definition['国战限时称号_蜀'] = {id = 9894, note = "^ff7d2f【Nation War Tyrant · Shu】" , desc = "0^ff0000Victory in the Nation War!" , desc_1 = "" , desc_2 = ""}
title_definition['国战限时称号_吴'] = {id = 9895, note = "^ff7d2f【Nation War Tyrant · Wu】" , desc = "0^ff0000Victory in the Nation War!" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励1'] = {id = 9896, note = "^fff962【First-Class Guardian of the Nation Great General】" , desc = "0^fff962Center of Attention,Valorous Spirit!\r^ffffffAttack+45\rDefense+22\rHP+1000" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励2'] = {id = 9897, note = "^fff962【Second-Class Guardian of the Nation Great General】" , desc = "0^fff962Center of Attention,Valorous Spirit!\r^ffffffAttack+39\rDefense+19\rHP+750" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励3'] = {id = 9898, note = "^fff962【Third-Class Guardian of the Nation Great General】" , desc = "0^fff962Center of Attention,Valorous Spirit!\r^ffffffAttack+36\rDefense+18\rHP+700" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励4'] = {id = 9899, note = "^fff962【Fourth-Class Guardian of the Nation Great General】" , desc = "0^fff962Center of Attention,Valorous Spirit!\r^ffffffAttack+33\rDefense+16\rHP+650" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励5'] = {id = 9900, note = "^fff962【First-Class Cavalry General】" , desc = "0^fff962Center of Attention,Valorous Spirit!\r^ffffffAttack+30\rDefense+15\rHP+600" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励6'] = {id = 9901, note = "^fff962【Second-Class Cavalry General】" , desc = "0^fff962Center of Attention,Valorous Spirit!\r^ffffffAttack+24\rDefense+12\rHP+450" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励7'] = {id = 9902, note = "^fff962【Third-Class Cavalry General】" , desc = "0^fff962Center of Attention,Valorous Spirit!\r^ffffffAttack+21\rDefense+10\rHP+400" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励8'] = {id = 9903, note = "^fff962【Fourth-Class Cavalry General】" , desc = "0^fff962Center of Attention,Valorous Spirit!\r^ffffffAttack+18\rDefense+9\rHP+350" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励9'] = {id = 9904, note = "^fff962【First-Class Chariot and Cavalry General】" , desc = "0^fff962Center of Attention,Valorous Spirit!\r^ffffffAttack+15\rDefense+7\rHP+300" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励10'] = {id = 9905, note = "^fff962【Second-Class Chariot and Cavalry General】" , desc = "0^fff962Center of Attention,Valorous Spirit!\r^ffffffAttack+11\rDefense+5\rHP+200" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励11'] = {id = 9906, note = "^fff962【Third-Class Chariot and Cavalry General】" , desc = "0^fff962Center of Attention,Valorous Spirit!\r^ffffffAttack+8\rDefense+4\rHP+150" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励12'] = {id = 9907, note = "^fff962【Fourth-Class Chariot and Cavalry General】" , desc = "0^fff962Center of Attention,Valorous Spirit!\r^ffffffAttack+5\rDefense+2\rHP+100" , desc_1 = "" , desc_2 = ""}
title_definition['2013圣诞节称号'] = {id = 9908 , note = "^fff962【Santa Claus's Little Helper】" , desc = "0^fff962More Agile Than Reindeer, More Clever Than Elves!" , desc_1 = "" , desc_2 = ""}
title_definition['2013圣诞节称号1'] = {id = 9909 , note = "^fff962【Christmas Serenade】" , desc = "0^fff962Merry Christmas!\r^ffffffAttack+30\rDefense+15" , desc_1 = "" , desc_2 = ""}
title_definition['2013圣诞节称号2'] = {id = 9910 , note = "^fff962【Christmas Waltz】" , desc = "0^fff962Merry Christmas!\r^ffffffAttack+10\rDefense+5" , desc_1 = "" , desc_2 = ""}
title_definition['2013运营称号1'] = {id = 9911 , note = "^fff962【2013 Heroes Clash Legion Tournament Champion】" , desc = "0^fff962Hero Clash Legion Championship Title" , desc_1 = "" , desc_2 = ""}
title_definition['2013运营称号2'] = {id = 9912 , note = "^fff962【2013 Heroes Clash Legion Tournament Runner-up】" , desc = "0^fff962Hero Clash Legion Championship Title" , desc_1 = "" , desc_2 = ""}
title_definition['2013运营称号3'] = {id = 9913 , note = "^fff962【2013 Heroes Clash Legion Tournament 3rd Place】" , desc = "0^fff962Hero Clash Legion Championship Title" , desc_1 = "" , desc_2 = ""}
title_definition['2013运营称号4'] = {id = 9914 , note = "^fff962【2013 · Hero Clash Individual Championship】" , desc = "0^fff962Heroes Clash Individual Tournament Title" , desc_1 = "" , desc_2 = ""}
title_definition['2013运营称号5'] = {id = 9915 , note = "^fff962【2013 · Hero Clash Individual Runner-up】" , desc = "0^fff962Heroes Clash Individual Tournament Title" , desc_1 = "" , desc_2 = ""}
title_definition['2013运营称号6'] = {id = 9916 , note = "^fff962【2013 · Hero Clash Individual Third Place】" , desc = "0^fff962Heroes Clash Individual Tournament Title" , desc_1 = "" , desc_2 = ""}
title_definition['2014六周年称号'] = {id = 9917 , note = "^fff962【Hero's Six Glorious Years; In Chibi, Only I Dominate】" , desc = "0^fff962Chibi 6th Anniversary Operations Event Title" , desc_1 = "" , desc_2 = ""}
title_definition['2014六周年称号1'] = {id = 9918 , note = "^fff962【Six Years of Hot-blooded Chibi Love; Three Kingdoms Passion Never Ends】" , desc = "0^fff962Chibi 6th Anniversary Event Title" , desc_1 = "" , desc_2 = ""}
title_definition['2014挑战塔称号1'] = {id = 9919 , note = "^a800ff【Challenge Tower · Passed the Bronze Hall】" , desc = "0^ffffffWith this title, seek Zuo Ci in the Challenge Tower Battlefield for stage selection." , desc_1 = "" , desc_2 = ""}
title_definition['2014挑战塔称号2'] = {id = 9920 , note = "^ff7d2f【Challenge Tower · Passed the Silver Hall】" , desc = "0^ffffffWith this title, seek Zuo Ci in the Challenge Tower Battlefield for stage selection." , desc_1 = "" , desc_2 = ""}
title_definition['2014挑战塔称号3'] = {id = 9921 , note = "^fff962【Challenge Tower · Passed the Gold Hall】" , desc = "0^ffffffWith this title, seek Zuo Ci in the Challenge Tower Battlefield for stage selection." , desc_1 = "" , desc_2 = ""}
title_definition['2014新服活动称号1'] = {id = 9922 , note = "^fff962【Riding Ahead of All; Tyrant of the Chaotic Age】" , desc = "0^ffffffNew Server Event Title." , desc_1 = "" , desc_2 = ""}
title_definition['2014新服活动称号2'] = {id = 9923 , note = "^fff962【Riding Ahead of All; Heroes Rising Together】" , desc = "0^ffffffNew Server Event Title." , desc_1 = "" , desc_2 = ""}
title_definition['2014新服活动称号3'] = {id = 9924 , note = "^fff962【Riding Ahead of All; Lords in Dispute】" , desc = "0^ffffffNew Server Event Title." , desc_1 = "" , desc_2 = ""}
title_definition['2014新服活动称号4'] = {id = 9925 , note = "^fff962【Riding Ahead of All; Unparalleled in the World】" , desc = "0^ffffffNew Server Event Title." , desc_1 = "" , desc_2 = ""}
title_definition['2014新服活动称号4'] = {id = 9926 , note = "^fff962【Specialized in Trapping Little Horses】" , desc = "0^ffffffOperations Event Title." , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_1'] = {id = 9927 , note = "^ffbc3c【Heaven's Blessing · Wei Fights Many Officials, One Man's Courage】" , desc = "1^ffbc3cActive Weekly:\rFaction: Wei\rSource: Last Week Wuzhangyuan Contribution Leaderboard 1st Place.\rEquippable Medal: Heaven's Blessing Medal (Wei)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_2'] = {id = 9928 , note = "^ffbc3c【Wei · Elite Officer and Minister】" , desc = "1^ffbc3cActive Weekly:\r^ffffffFaction: Wei\rSource: Last Week Wuzhangyuan Contribution Leaderboard Top 50." , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_3'] = {id = 9929 , note = "^ffbc3c【Heaven's Blessing · Shu Fights Many Officials, One Man's Courage】" , desc = "2^ffbc3cActive Weekly:\rFaction: Shu\rSource: Last Week Wuzhangyuan Contribution Leaderboard 1st Place.\rEquippable Medal: Heaven's Blessing Medal (Shu)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_4'] = {id = 9930 , note = "^ffbc3c【Shu · Elite Officer and Minister】" , desc = "2^ffbc3cActive Weekly:\r^ffffffFaction: Shu\rSource: Last Week Wuzhangyuan Contribution Leaderboard Top 50." , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_5'] = {id = 9931 , note = "^ffbc3c【Heaven's Blessing · Wu Fights Many Officials, One Man's Courage】" , desc = "3^ffbc3cActive Weekly:\rFaction: Wu\rSource: Last Week Wuzhangyuan Contribution Leaderboard 1st Place.\rEquippable Medal: Heaven's Blessing Medal (Wu)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_6'] = {id = 9932 , note = "^ffbc3c【Wu · Elite Officer and Minister】" , desc = "3^ffbc3cActive Weekly:\r^ffffffFaction: Wu\rSource: Last Week Wuzhangyuan Contribution Leaderboard Top 50." , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_7'] = {id = 9933 , note = "^ffbc3c【Gang Soul · Wei Fights Many Officials, One Man's Courage】" , desc = "1^ffbc3cActive Weekly:\rFaction: Wei\rSource: Last Week Wuzhangyuan Contribution Leaderboard 2nd Place.\rEquippable Medal: Gang Soul Medal (Wei)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_8'] = {id = 9934 , note = "^ffbc3c【Imprint · Wei Fights Many Officials, One Man's Courage】" , desc = "1^ffbc3cActive Weekly:\rFaction: Wei\rSource: Last Week Wuzhangyuan Contribution Leaderboard 3rd Place.\rEquippable Medal: Imprint Medal (Wei)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_9'] = {id = 9935 , note = "^ffbc3c【Gang Soul · Shu Fights Many Officials, One Man's Courage】" , desc = "2^ffbc3cActive Weekly:\rFaction: Shu\rSource: Last Week Wuzhangyuan Contribution Leaderboard 2nd Place.\rEquippable Medal: Gang Soul Medal (Shu)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_10'] = {id = 9936 , note = "^ffbc3c【Imprint · Shu Fights Many Officials, One Man's Courage】" , desc = "2^ffbc3cActive Weekly:\rFaction: Shu\rSource: Last Week Wuzhangyuan Contribution Leaderboard 3rd Place.\rEquippable Medal: Imprint Medal (Shu)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_11'] = {id = 9937 , note = "^ffbc3c【Gang Soul · Wu Fights Many Officials, One Man's Courage】" , desc = "3^ffbc3cActive Weekly:\rFaction: Wu\rSource: Last Week Wuzhangyuan Contribution Leaderboard 2nd Place.\rEquippable Medal: Gang Soul Medal (Wu)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_12'] = {id = 9938 , note = "^ffbc3c【Imprint · Wu Fights Many Officials, One Man's Courage】" , desc = "3^ffbc3cActive Weekly:\rFaction: Wu\rSource: Last Week Wuzhangyuan Contribution Leaderboard 3rd Place.\rEquippable Medal: Imprint Medal (Wu)" , desc_1 = "" , desc_2 = ""}
--title_definition['2014襄阳之战_1'] = {id = 9939 , note = "^ffbc3c【Cross-server Elite Legion · Wei Great General】" , desc = "1^ffbc3cActive Monthly:\rFaction: Wei\rSource: Last Month Battle of Xiangyang Wei Points Leaderboard Top 18.\rPlayers Who Earned This Honor Please Participate in the Cross-server Battle of Xiangyang This Saturday; No Exceptions After Expiry." , desc_1 = "" , desc_2 = ""}
--title_definition['2014襄阳之战_2'] = {id = 9940 , note = "^ffbc3c【Cross-server Elite Legion · Shu Great General】" , desc = "2^ffbc3cActive Monthly:\rFaction: Shu\rSource: Last Month Battle of Xiangyang Shu Points Leaderboard Top 18.\rPlayers Who Earned This Honor Please Participate in the Cross-server Battle of Xiangyang This Saturday; No Exceptions After Expiry." , desc_1 = "" , desc_2 = ""}
--title_definition['2014襄阳之战_3'] = {id = 9941 , note = "^ffbc3c【Cross-server Elite Legion · Wu Great General】" , desc = "3^ffbc3cActive Monthly:\rFaction: Wu\rSource: Last Month Battle of Xiangyang Wu Points Leaderboard Top 18.\rPlayers Who Earned This Honor Please Participate in the Cross-server Battle of Xiangyang This Saturday; No Exceptions After Expiry." , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号1'] = {id = 9942 , note = "^fff962【Bravely Fighting the Three Kingdoms · The Overlord Descends】" , desc = "0^ffffffNational Team Arena Champion Reward!\rThey Are Regional Overlords, Turning Their Hand to Clouds, Reversing It to Rain!" , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号2'] = {id = 9943 , note = "^fff962【Bravely Fighting the Three Kingdoms · Only I Am the Hero】" , desc = "0^ffffffNational Team Arena Runner-up Reward!\rThey Are Regional Overlords, Holding the Right to Rule Their Territory!" , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号3'] = {id = 9944 , note = "^fff962【Bravely Fighting the Three Kingdoms · Hero of the Chaotic Age】" , desc = "0^ffffffNational Team Arena Third Place Reward!\rFiercely Brave; One Against a Hundred!" , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号4'] = {id = 9945 , note = "^fff962【Bravely Fighting the Three Kingdoms · Unparalleled in the World】" , desc = "0^ffffffCross-Server Individual Arena Champion Exclusive Title." , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号5'] = {id = 9946 , note = "^fff962【Bravely Fighting the Three Kingdoms · Invincible】" , desc = "0^ffffffCross-Server Individual Arena Runner-up Exclusive Title." , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号6'] = {id = 9947 , note = "^fff962【Bravely Fighting the Three Kingdoms · Brave and Invincible】" , desc = "0^ffffffCross-Server Individual Arena 3rd Place Exclusive Title." , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号7'] = {id = 9948 , note = "^fff962【Bravely Fighting the Three Kingdoms · None Can Match Ten Thousand Men】" , desc = "0^ffffffCross-Server Individual Arena 4th-6th Place Exclusive Title." , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号8'] = {id = 9949 , note = "^fff962【Bravely Fighting the Three Kingdoms · Dominating One Region】" , desc = "0^ffffffCross-Server Individual Arena 7th-10th Place Exclusive Title." , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号9'] = {id = 9950 , note = "^fff962【Bravely Fighting the Three Kingdoms · King of Individual Soldiers】" , desc = "0^ffffffCross-Server Individual Arena Top Troop Type Exclusive Title." , desc_1 = "" , desc_2 = ""}
title_definition['2014七夕称号1'] = {id = 9951 , note = "^ff4ca4【Sparse Star Whispers, Lonely Moon】" , desc = "0^ffbc3c2014Year Qixi Event Exclusive Title。\rMay All Lovers Be United。\r^ffffffStamina+120\rAttack+10\rDefense+5" , desc_1 = "" , desc_2 = ""}
title_definition['2014七夕称号2'] = {id = 9952 , note = "^ff4ca4【The Long Spirit Bridge; Magpies Welcome in Pairs】" , desc = "0^ffbc3c2014Year Qixi Event Exclusive Title。\rMay All Lovers Be United。\r^ffffffStamina+250\rAttack+15\rDefense+10\rBonus DMG+5" , desc_1 = "" , desc_2 = ""}
title_definition['2014七夕称号3'] = {id = 9953 , note = "^ff4ca4【Only When Hope Seems Endless Do We Meet】" , desc = "0^ffbc3c2014Year Qixi Event Exclusive Title。\rMay All Lovers Be United。\r^ffffffStamina+400\rAttack+20\rDefense+15\rBonus DMG+10\rCrit Bonus DMG+10\rCrit DMG+3%" , desc_1 = "" , desc_2 = ""}
title_definition['2014七夕称号4'] = {id = 9954 , note = "^ff4ca4【One Night Together, A Thousand Years of Love】" , desc = "0^ffbc3c2014Year Qixi Event Exclusive Title。\rMay All Lovers Be United。\r^ffffffStamina+600\rAttack+30\rDefense+20\rBonus DMG+20\rCrit Bonus DMG+20\rCrit DMG+3%\rCrit+1" , desc_1 = "" , desc_2 = ""}
title_definition['2014七月自制称号1'] = {id = 9955 , note = "^fff962【God of War Descends · Great Wei Military Soul】" , desc = "0^ffffffCross-Server Individual Arena Top Troop Type Exclusive Title." , desc_1 = "" , desc_2 = ""}
title_definition['2014七月自制称号2'] = {id = 9956 , note = "^fff962【City-Tilting Beauty · Great Wei Beauty】" , desc = "0^ffffff2014 Qixi Festival Event Exclusive Title." , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号1'] = {id = 9957 , note = "^fff962【One Rider Against a Thousand · Sole Supreme】" , desc = "0^ff0000Chibi 7th Anniversary Heaven Board Supreme Title\r^fff962HP+1000\rAttack+50\rDefense+25\rAttack Power+3%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号2'] = {id = 9958 , note = "^fff962【One Rider Against a Thousand · Unparalleled in the World】" , desc = "0^ff0000Chibi 7th Anniversary Heaven Board Peerless Title\r^fff962HP+800\rAttack+40\rDefense+20\rAttack Power+3%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号3'] = {id = 9959 , note = "^fff962【One Rider Against a Thousand · Dragon Roar in the Ninth Heaven】" , desc = "0^ff0000Chibi 7th Anniversary Heaven Board King Title\r^fff962HP+650\rAttack+30\rDefense+15\rAttack Power+3%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号4'] = {id = 9960 , note = "^fff962【One Rider Against a Thousand · Roaming the World Free】" , desc = "0^ff0000Chibi 7th Anniversary Heaven Board Hero Title\r^fff962HP+500\rAttack+20\rDefense+10\rAttack Power+3%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号5'] = {id = 9961 , note = "^fff962【One Rider Against a Thousand · Divine Might Born of Heaven】" , desc = "0^ff0000Chibi 7th Anniversary Earth Board Supreme Title\r^fff962HP+500\rAttack+40\rAttack Power+1%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号6'] = {id = 9962 , note = "^fff962【One Rider Against a Thousand · Strategizing Behind Curtains】" , desc = "0^ff0000Chibi 7th Anniversary Earth Board Peerless Title\r^fff962HP+450\rAttack+30\rAttack Power+1%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号7'] = {id = 9963 , note = "^fff962【One Rider Against a Thousand · Achievement and Fame Accomplished】" , desc = "0^ff0000Chibi 7th Anniversary Earth Board King Title\r^fff962HP+400\rAttack+20\rAttack Power+1%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号8'] = {id = 9964 , note = "^fff962【One Rider Against a Thousand · Might Shakes the Four Wilds】" , desc = "0^ff0000Chibi 7th Anniversary Earth Board Hero Title\r^fff962HP+350\rAttack+15\rAttack Power+1%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号9'] = {id = 9965 , note = "^fff962【One Rider Against a Thousand · Hero of the Age】" , desc = "0^ff0000Chibi 7th Anniversary Human Board Supreme Title\r^fff962HP+300\rAttack+10\rDefense+5" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号10'] = {id = 9966 , note = "^fff962【One Rider Against a Thousand · Peerless Prodigy】" , desc = "0^ff0000Chibi 7th Anniversary Human Board Peerless Title\r^fff962HP+200\rAttack+8\rDefense+4" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号11'] = {id = 9967 , note = "^fff962【One Rider Against a Thousand · Martial Arts Master】" , desc = "0^ff0000Chibi 7th Anniversary Human Board King Title\r^fff962HP+150\rAttack+6\rDefense+3" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号12'] = {id = 9968 , note = "^fff962【One Rider Against a Thousand · First Showing of Brilliance】" , desc = "0^ff0000Chibi 7th Anniversary Earth Board Hero Title\r^fff962HP+120\rAttack+5\rDefense+2" , desc_1 = "" , desc_2 = ""}
title_definition['2015年赤壁新年专属称号'] = {id = 9969 , note = "^ff0000【Chibi's Number One Great Shemale】" , desc = "0^ff0000Year of the Sheep Spring Festival Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['羊年春节专属称号1'] = {id = 9970 , note = "^ff0000【Spring Breeze Blows; The Leader Sheep Ascends Mount Tai Again】" , desc = "0^ff0000Year of the Sheep Spring Festival Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['羊年春节专属称号2'] = {id = 9971 , note = "^ff0000【Victory Songs Ring; The Thousand-li Horse Has Long Passed Jade Gate Pass】" , desc = "0^ff0000Year of the Sheep Spring Festival Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['羊年春节专属称号3'] = {id = 9972 , note = "^ffbc3c【Sheep Brush Like a Rafter; Painting Mountains and Rivers; Writing Spring's Meaning】" , desc = "0^ff0000Year of the Sheep Spring Festival Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['羊年春节专属称号4'] = {id = 9973 , note = "^ffbc3c【Horse Hooves Leap Snow; Steps Leave Fragrance; Spreading Good Tidings】" , desc = "0^ff0000Year of the Sheep Spring Festival Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['15年520活动称号1'] = {id = 9974 , note = "^ff0000【Blood Shed, Wolf Smoke Rises · Zither Startles Brocade Robes】" , desc = "0^ffbc3c2015 520 EventExclusive Title。\rMay All Lovers Be United。\r^ffffffHP+1000\rAttack+50\rDefense+10\rCrit Bonus DMG+30\rCrit+1\rCrit DMG+3%" , desc_1 = "" , desc_2 = ""}
title_definition['15年520活动称号2'] = {id = 9975 , note = "^ff0000【Tyrant Writes Legend · Long Sky, Flying Wing to Wing】" , desc = "0^ffbc3c2015 520 EventExclusive Title。\rMay All Lovers Be United。\r^ffffffHP+1000\rAttack+25\rDefense+20\rToughness+30\rCrit Resist+2" , desc_1 = "" , desc_2 = ""}
title_definition['15年520活动称号3'] = {id = 9976 , note = "^ff0000【War Horses Roar Across the World · Rivers and Mountains Wed You】" , desc = "0^ffbc3c2015 520 EventExclusive Title。\rMay All Lovers Be United。\r^ffffffHP+1000\rAttack+50\rDefense+10\rCrit Bonus DMG+30\rPierce+1\rAttack Power+3%" , desc_1 = "" , desc_2 = ""}
title_definition['15年520活动称号4'] = {id = 9977 , note = "^ff0000【Chaotic Age Battles Among Heroes · Holding Hands Leaves a Noble Name】" , desc = "0^ffbc3c2015 520 EventExclusive Title。\rMay All Lovers Be United。\r^ffffffHP+1000\rAttack+25\rDefense+20\rToughness+30\rDirect Resist+1\rIndirect Resist+1" , desc_1 = "" , desc_2 = ""}
title_definition['15年720老玩家回归称号'] = {id = 9978 , note = "^ff0000【King Returns · Chaotic Age Heroes War in the Three Kingdoms】" , desc = "0^ffbc3c2015 Veteran Return Exclusive Title." , desc_1 = "" , desc_2 = ""}
title_definition['15年720王者称号'] = {id = 9979 , note = "^ff0000【Three Thousand Merits and Fame Are Dust and Earth】" , desc = "0^ffbc3cKing Returns Limited Title。\r^ffffffAttack+30\rDefense+15\rBonus DMG+20\rAccuracy+1\rToughness+20" , desc_1 = "" , desc_2 = ""}
title_definition['15年七夕活动称号'] = {id = 9980 , note = "^FF00FF【Hearts Close, Love Returns; A Thousand Miles of Longing Becomes Joy; Growing Old Together, Wish Fulfilled】" , desc = "0^FF00FFWish to Find One True Love, Never Parting Until White-haired." , desc_1 = "" , desc_2 = ""}
title_definition['2015全国竞技称号1'] = {id = 9981 , note = "^fff962【War Sweeps the World · Bravest of Three Armies】" , desc = "0^ffffff2015 National Arena Tournament Champion Reward!" , desc_1 = "" , desc_2 = ""}
title_definition['2015全国竞技称号2'] = {id = 9982 , note = "^fff962【War Sweeps the World · One Rider Raises No Dust】" , desc = "0^ffffff2015 National Arena Tournament Runner-up Reward!" , desc_1 = "" , desc_2 = ""}
title_definition['2015全国竞技称号3'] = {id = 9983 , note = "^fff962【War Sweeps the World · Unstoppable Force】" , desc = "0^ffffff2015 National Arena Tournament Third Place Reward!" , desc_1 = "" , desc_2 = ""}
title_definition['2015全国群英会称号1'] = {id = 9984 , note = "^fff962【War Sweeps the World · Sovereign of the World】" , desc = "0^ffffff2015 National Heroes Assembly Champion Exclusive Title!" , desc_1 = "" , desc_2 = ""}
title_definition['2015全国群英会称号2'] = {id = 9985 , note = "^fff962【War Sweeps the World · Lone Peak's Summit】" , desc = "0^ffffff2015 National Heroes Assembly Runner-up Exclusive Title!" , desc_1 = "" , desc_2 = ""}
title_definition['2015全国群英会称号3'] = {id = 9986 , note = "^fff962【War Sweeps the World · Victorious in Every Battle】" , desc = "0^ffffff2015 National Heroes Assembly 3rd Place Exclusive Title!" , desc_1 = "" , desc_2 = ""}
title_definition['2015全国群英会称号4'] = {id = 9987 , note = "^fff962【War Sweeps the World · Overbearing Spirit Unmatched】" , desc = "0^ffffff2015 National Heroes Assembly 4th-10th Place Exclusive Title!" , desc_1 = "" , desc_2 = ""}
title_definition['2015全国群英会称号5'] = {id = 9988 , note = "^fff962【War Sweeps the World · God of War Descends from Heaven】" , desc = "0^ffffff2015 National Heroes Assembly King of Individual Warriors Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['新阵营官职-魏王'] = {id = 9989 , note = "^fff962【King of Wei】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = "" , icon = "King of Wei.dds"}
title_definition['新阵营官职-魏国夫人'] = {id = 9990 , note = "^fff962【Lady of Wei】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = "" , icon = "Lady of Wei.dds"}
title_definition['新阵营官职-魏国公'] = {id = 9991 , note = "^fff962【Duke of Wei】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = "" , icon = "Duke of Wei.dds"}
title_definition['新阵营官职-蜀王'] = {id = 9992 , note = "^fff962【King of Shu】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = "" , icon = "King of Shu.dds"}
title_definition['新阵营官职-蜀国夫人'] = {id = 9993 , note = "^fff962【Lady of Shu】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = "" , icon = "Lady of Shu.dds"}
title_definition['新阵营官职-蜀国公'] = {id = 9994 , note = "^fff962【Duke of Shu】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = "" , icon = "Duke of Shu.dds"}
title_definition['新阵营官职-吴王'] = {id = 9995 , note = "^fff962【King of Wu】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = "" , icon = "King of Wu.dds"}
title_definition['新阵营官职-吴国夫人'] = {id = 9996 , note = "^fff962【Lady of Wu】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = "" , icon = "Lady of Wu.dds"}
title_definition['新阵营官职-吴国公'] = {id = 9997 , note = "^fff962【Duke of Wu】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = "" , icon = "Duke of Wu.dds"}
title_definition['新阵营官职-大将军'] = {id = 9998 , note = "^fff962【Grand General】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = "" , icon = "Grand General.dds"}
title_definition['新阵营官职-大丞相'] = {id = 9999 , note = "^fff962【Grand Chancellor】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = "" , icon = "Grand Chancellor.dds"}
title_definition['新阵营官职-大司空'] = {id = 10000 , note = "^fff962【Grand Minister of Works】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = "" , icon = "Grand Minister of Works.dds"}
title_definition['新阵营官职-大司马'] = {id = 10001 , note = "^fff962【Grand Minister of War】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = "" , icon = "Grand Minister of War.dds"}
title_definition['新阵营官职-大司徒'] = {id = 10002 , note = "^fff962【Grand Minister of Education】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = "" , icon = "Grand Minister of Education.dds"}
title_definition['新阵营官职-羽林郎将'] = {id = 10003 , note = "^fff962【Feather Forest Colonel】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = "" , icon = "Feather Forest Colonel.dds"}
title_definition['新阵营官职-阵营指挥官'] = {id = 10004 , note = "^fff962【Faction Commander】" , desc = "0^ffffffOfficial Rank Title, symbol of power and status." , desc_1 = "" , desc_2 = ""}
title_definition['2015资料片称号'] = {id = 10005 , note = "^ff4ca4【I Am a Brick of the Faction; Moved Wherever Needed】" , desc = "0^ffffff"Three-Way Division" Expansion Exclusive Title." , desc_1 = "" , desc_2 = ""}
title_definition['私人订制1'] = {id = 10006 , note = "^ff0000【Feet on Two Stars, Blade Splits Adou】" , desc = "0^ffffffPlayer ^ff7d2f绝铯惑℃☆帝^ffffff Custom Title." , desc_1 = "" , desc_2 = ""}
title_definition['私人订制2'] = {id = 10007 , note = "^ff0000【The Zither Has Fifty Strings Without Reason; Each String, Each Pillar, Reminds of Blooming Years】" , desc = "0^ffffffPlayer ^ff7d2fKing Returns※Three Kingdoms Connoisseur^ffffff Custom Title." , desc_1 = "" , desc_2 = ""}
title_definition['私人订制3'] = {id = 10008 , note = "^fff962【God of War Descends; Pacifies the Three Kingdoms】" , desc = "0^ffffffPlayer ^ff7d2f竹海子龙^ffffff Custom Title." , desc_1 = "" , desc_2 = ""}
title_definition['私人订制4'] = {id = 10009 , note = "^66FFFF【A Lifetime of Tenderness for a Gentle Smile】" , desc = "0^ffffffPlayer ^ff7d2f丿☆堇色素颜`丶^ffffff Custom Title." , desc_1 = "" , desc_2 = ""}
title_definition['私人订制5'] = {id = 10010 , note = "^ff0000【After Battle, the Battlefield Moon Is Cold; Drunk as in a Deep Dream, Sweet Osmanthus Fragrance】" , desc = "0^ffffffPlayer ^ff7d2f灬婉风若曦灬^ffffff Custom Title." , desc_1 = "" , desc_2 = ""}
title_definition['私人订制6'] = {id = 10011 , note = "^ff4ca4【So He Is Handsome!】" , desc = "0^ffffffPlayer ^ff7d2fξ天降男神^ffffff Custom Title." , desc_1 = "" , desc_2 = ""}
title_definition['赤壁终身成就奖'] = {id = 10012 , note = "^ff4ca4【Chibi Know-It-All】" , desc = "0^ffffffChibi Lifetime Honor Contribution Award.\rPlayer ^ff7d2fSingle Blade War Companion^ffffff Exclusive Title." , desc_1 = "" , desc_2 = ""}
title_definition['私人订制7'] = {id = 10013 , note = "^fff962【Bodhi Falling Leaves Turn to Dust · How Many Rebirths, How Many People】" , desc = "0^ffffffPlayer ^ff7d2f跳大神的黄半仙^ffffff Custom Title." , desc_1 = "" , desc_2 = ""}
title_definition['20151202双12活动1'] = {id = 10014 , note = "^ffc556【Three Kingdoms Division · Tianguan Army Breaker】" , desc = "0^ffc556Permanent Effect:\r^ffffffMax HP +1000\rAttack +30\rDefense +10\rPierce +1\rPierce +1\rAttack Power +2%\rCrit Bonus Damage +50\r^ffc5562015Year Hero Token Event Exclusive Title！" , desc_1 = "" , desc_2 = ""}
title_definition['20151202双12活动2'] = {id = 10015 , note = "^ffc556【Three Kingdoms Division · Xuanming Wenqu】" , desc = "0^ffc556Permanent Effect:\r^ffffffMax HP +1000\rAttack +20\rDefense +20\rCrit Resist +2\rSpell Resist +2\rHealing Effect +3%\rToughness +30\r^ffc5562015Year Hero Token Event Exclusive Title！" , desc_1 = "" , desc_2 = ""}
title_definition['20151202双12活动3'] = {id = 10016 , note = "^ffc556【Three Kingdoms Division · Danyuan Lianzhen】" , desc = "0^ffc556Permanent Effect:\r^ffffffMax HP +1000\rAttack +30\rDefense +10\rDirect DMG Resist +1\rIndirect DMG Resist +1\rStamina +500\rToughness +20\r^ffc5562015Year Hero Token Event Exclusive Title！" , desc_1 = "" , desc_2 = ""}
title_definition['2015烟花称号1'] = {id = 10017 , note = "^72fe00【Loulan Fireworks Page】" , desc = "0^ffc556Permanent Effect:\r^ffffffMax HP +100\rAttack +4\rDefense +2\r^ffc5562015Year Fireworks Event Exclusive Title！" , desc_1 = "" , desc_2 = ""}
title_definition['2015烟花称号2'] = {id = 10018 , note = "^0184ff【Loulan Fireworks Envoy】" , desc = "0^ffc556Permanent Effect:\r^ffffffMax HP +200\rAttack +10\rDefense +5\r^ffc5562015Year Fireworks Event Exclusive Title！" , desc_1 = "" , desc_2 = ""}
title_definition['2015烟花称号3'] = {id = 10019 , note = "^a800ff【Loulan Fireworks Ambassador】" , desc = "0^ffc556Permanent Effect:\r^ffffffMax HP +500\rAttack +20\rDefense +10\rCrit Bonus Damage +25\r^ffc5562015Year Fireworks Event Exclusive Title！" , desc_1 = "" , desc_2 = ""}
title_definition['2015烟花称号4'] = {id = 10020 , note = "^fff962【Loulan Fireworks Sacred Envoy】" , desc = "0^ffc556Permanent Effect:\r^ffffffMax HP +500\rAttack +30\rDefense +15\rCrit Bonus Damage +30\rHealing Effect +1%\rSpell Resist +1\r^ffc5562015Year Fireworks Event Exclusive Title！" , desc_1 = "" , desc_2 = ""}
title_definition['2015烟花称号5'] = {id = 10021 , note = "^fff962【Loulan Fireworks Sacred Envoy】" , desc = "0^ffc556Permanent Effect:\r^ffffffMax HP +500\rAttack +30\rDefense +15\rCrit Bonus Damage +30\rHealing Effect +1%\rSpell Resist +1\r^ffc5562015Year Fireworks Event Exclusive Title！" , desc_1 = "" , desc_2 = ""}
title_definition['2016至尊VIP开年称号'] = {id = 10022 , note = "^fff962【Bingshen Golden Monkey Embraces New Joy; Spring Fills the Earth, Fortune Fills the People】" , desc = "^fff962Chibi VIP Player Exclusive Title" , desc_1 = "" , desc_2 = ""}
title_definition['2025至尊启动称号'] = {id = 20001 , note = "^fff962【Chibi · Soul-Seizing Blade】" , desc = "^fff962Chibi Player Exclusive Title\r^00FFFFQQExchange Group：902662692\r^FFFF00HP+2000\rStamina+3000\rAttack+10%\rDefense+10%\rAttack Power+30%\rAttack Speed+10%\rCrit+20\rCrit DMG+50%\rPierce+20\rPenetration+15\rDirect DMG Resist+10\rIndirect DMG Resist+10" , desc_1 = "" , desc_2 = ""}

function title_definition:GetTitleDef()
	return self;
end

---title_dir部分为称号分类，
---如果一个{}中前面是字符串，后面是id，表明该为一组次级分类称号 ---如果一个{}中前面是id，后面是字符串，表明该为一个可升级称号

title_dir =
	{
		{
			"Chibi Event",
			20001,
		},
		{
			"Peerage",
			7277,
			7278,
			7279,
			7280,
			7281,
			7282,
			7283,
			7338,
			7339,
		},
		{
			"Faction",
			{
				"Chibi",
				7452,
				7453,
				7454,
				7455,
				7456,
				7457,
			},
			{
				"Faction Post" ,
				9989 ,
				9990 ,
				9991 ,
				9992 ,
				9993 ,
				9994 ,
				9995 ,
				9996 ,
				9997 ,
				9998 ,
				9999 ,
				10000 ,
				10001 ,
				10002 ,
				10003 ,
				10004 ,
			},
			{
				"Official",
				{7334,1112,1212,7268,7323,7324,7325,7326},
				{7335,7332,1312,7266,7315,7316,7317,7318},
				{7336,7331,7333,7267,7319,7320,7321,7322},
				{7402,7403,7404,7405,7406,7407,7408,7409,7410},
			},
			{
				"Kingdom of Wei",
				1105,
				1106,
				1107,
				1108,
				1109,
				1110,
				1111,
				1104,
				1103,
				1102,
				1101,
				7139,
				7145,
				7146,
                7147,
                7148,
                7149,
                7150,
                7151,
                7152,
                7153,
                7154,
                1113,
                1114,
				7285,
				7262,
				9927,
				9928,
				9933,
				9934,
			},
			{
				"Kingdom of Shu",
				1205,
				1206,
				1207,
				1208,
				1209,
				1210,
				1211,
				1204,
				1203,
				1202,
				1201,
				7140,
				7155,
                7156,
                7157,
                7158,
                7159,
                7160,
                7161,
                7162,
                7163,
                7164,
                1213,
                1214,
				7286,
				7263,
				9929,
				9930,
				9935,
				9936,
			},
			{
				"Kingdom of Wu",
				1305,
				1306,
				1307,
				1308,
				1309,
				1310,
				1311,
				1304,
				1303,
				1302,
				1301,
				7141,
                7165,
                7166,
                7167,
                7168,
                7169,
                7170,
                7171,
                7172,
                7173,
                7174,
                1313,
                1314,
				7287,
				7264,
				9931,
				9932,
				9937,
				9938,
			}
		},
		{
			"Official Post",
			{
				"Military Post",
				5162,
				5160,
				5161,
				5157,
				5158,
				5159,
				5151,
				5152,
				5153,
				5154,
				5155,
				5156,
				5150,
				5149,
				5148,
				5147,
				5146,
				5145,
				5144,
				5143,
				5142,
				5132,
				5131,
				5130,
				5129,
				5128,
				5127,
				5126,
				5125,
				5124,
				5141,
				5140,
				5139,
				5138,
				5137,
				5136,
				5135,
				5134,
				5133,
				5120,
				5121,
				5122,
				5123,
				5116,
				5117,
				5118,
				5119,
				5110,
				5111,
				5112,
				5113,
				5114,
				5115,
				5106,
				5107,
				5108,
				5109,
				5104,
				5105,
				5103,
				5102,
				5101,
				5263,
				5264,
				5267,
				5268,
				5269,
				5270,
				5271,
				5272,
				5273,
				5274,
				5275,
				5276,
				5277,
				5278,
				5279,
				5280,
				5281,
				5282,
				5283,
				5284,
				5285,
				5286,
				5287,
				5288,
				5289,
				5290,
				5291,
				5292,
				5293,
				5294,
				5295,
				5296,
				5297,
				5298,
				5299,
				5300,
				5301,
				5302,
				5303,
				5304,
				5305,
				5306,
				5307,
				5308,
				5309,
				5310,
				5311,
				5312,
				5313,
				5314,
				5315,
				5316,
				5317,
				5381,
				5382,
				5383,
				5384,
				5385,
				5386,
				5387,
				5388,
				5389,
				5390,
				5391,
				5392
			},
			{
				"Civil Post",
				5262,
				5260,
				5261,
				5257,
				5258,
				5259,
				5251,
				5252,
				5253,
				5254,
				5255,
				5256,
				5250,
				5249,
				5248,
				5247,
				5246,
				5245,
				5244,
				5243,
				5242,
				5232,
				5231,
				5230,
				5229,
				5228,
				5227,
				5226,
				5225,
				5224,
				5241,
				5240,
				5239,
				5238,
				5237,
				5236,
				5235,
				5234,
				5233,
				5220,
				5221,
				5222,
				5223,
				5216,
				5217,
				5218,
				5219,
				5210,
				5211,
				5212,
				5213,
				5214,
				5215,
				5206,
				5207,
				5208,
				5209,
				5204,
				5205,
				5203,
				5202,
				5201,
				5265,
				5266,
				5318,
				5319,
				5320,
				5321,
				5322,
				5323,
				5324,
				5325,
				5326,
				5327,
				5328,
				5329,
				5330,
				5331,
				5332,
				5333,
				5334,
				5335,
				5336,
				5337,
				5338,
				5339,
				5340,
				5341,
				5342,
				5343,
				5344,
				5345,
				5346,
				5347,
				5348,
				5349,
				5350,
				5351,
				5352,
				5353,
				5354,
				5355,
				5356,
				5357,
				5358,
				5359,
				5360,
				5361,
				5362,
				5363,
				5364,
				5365,
				5366,
				5367,
				5368,
				5369,
				5370,
				5371,
				5372,
				5373,
				5374,
				5375,
				5376,
				5377,
				5378,
				5379,
				5380
			},
			{
				"Military Post",
				4103,
				4102,
				4101,
				4104,
				7288
			}
		},
		{
			"Story",
			{
				"Yellow Turban Rebellion",
				2101,
				2102,
				2103,
			},
			{
				"Xiliang Tempest",
				2201,
				2202,
				2203,
				2204,
				2205,
				2206,
				2207,
				7401,
			},
			{
				"Ba-Shu Smoke of War",
				{2304,2303,2302,2301},
				2305,
				2306,
				2307,
				2308,
				2309,
			},
			{
				"Southern Zhong Conquered",
				2401,
				2402,
				2403,
				2404,
				2405,
			},
			{
				"Misty Rain Jiangnan",
				2501,
				2502,
				2503,
				2504,
				2505,
				2506,
			},
			{
				"Jingxiang Chaotic Current",
				2601,
				2602,
				2603,
				2604,
				2605,
				2606,
			},
			{
				"Wei Wu Wields the Whip",
				2607,
				2608,
			},
			{
				"Luoyang Millet Desolation",
				7417,
				7418,
                7419,
				7420,
				7421,
				7422,
				7423,
			},
			{
				"Gallop on the Grassland",
				7424,
				7425,
				7426,
				7427,
				7428,
				7429,
			},
			{
				"Eastern Sea Waves",
				7430,
				7431,
				7432,
				7433,
				7434,
				7435,
			},
			{
				"South Sichuan Fate",
				7462,
				7463,
				7464,
				7467,
				7468,
				7475,
			}
		},
		{
			"Region",
			{
				"Hebei",
				3105,
				3106,
				3107,
				3108,
				3109,
				3110,
				{3115,3114,3113,3104,3112,3103,3111,3102,3101},
			},
			{
				"Xiliang",
				3205,
				3206,
				3207,
				3208,
				3209,
				3210,
				{3215,3214,3213,3204,3212,3203,3211,3202,3201},
			},
			{
				"Ba-Shu",
				3305,
				3306,
				3307,
				3308,
				3309,
				3310,
				{3315,3314,3313,3304,3312,3303,3311,3302,3301},
			},
			{
				"Southern Barbarians",
				3405,
				3406,
				3407,
				3408,
				3409,
				3410,
				{3415,3414,3413,3404,3412,3403,3411,3402,3401},
			},
			{
				"Jiangnan",
				3505,
				3506,
				3507,
				3508,
				3509,
				3510,
				{3515,3514,3513,3504,3512,3503,3511,3502,3501},
			},
			{
				"Jingxiang",
				3605,
				3606,
				3607,
				3608,
				3609,
				3610,
				{3615,3614,3613,3604,3612,3603,3611,3602,3601},
			},
			{
				"Guanzhong",
				3705,
				3706,
				3707,
				3708,
				3709,
				3710,
				{3715,3714,3713,3704,3712,3703,3711,3702,3701},
			},
			{
				"South Sichuan",
				3805,
				3806,
				3807,
				3808,
				3809,
				3810,
				{3815,3814,3813,3804,3812,3803,3811,3802,3801},
			}
		},
		{
			"Lineage",
			{3009,3008,3007,3006,3005,3004,3003,3002,3001},
			{3019,3018,3017,3016,3015,3014,3013,3012,3011},
		},
		{
			"Civilian",
			6206,
			6205,
			6204,
			6203,
			6202,
			6201,
			6109,
			6108,
			6107,
			6106,
			6105,
			6104,
			6103,
			6102,
			6101,
			7443,
			7465,
			7489,
			7490,
			7491,
			7492,
			7493,
		},
		{
			"Merchant Guild",
			7444,
			7445,
			7446,
			7447,
			7448,
		},
		{
			"Legend",
           {6112,6111,6110},
           6113,
           6114,
           7113,
           7142,
           7143,
           7183,
           7190,
           7191,
           {7208,7207,7206},
           7224,
		   {7485,7484},
           {7248,7249,7250},
		   7270,
		   7271,
		   7272,
		   7273,
           {7276,7275,7274},
           7289,
           7290,
           7291,
           7292,
           7293,
           {7329,7328,7327},
		   7343,
           {7361,7360,7359},
		   7370,
		   7371,
		   {7374,7373,7372},
		   7375,
		   7376,
		   7377,
		   7387,
		   7507,
		   7508,
		   7509,
		   7510,
		   7511,
		   7512,
		   7513,
		   7514,
		   {9589,9588,9587,9586},
		   {9594,9593,9592,9591,9590},
		   9638,
		   9639,
		   9640,
		   9641,
		   9642,
		   9643,
		   9872,
		   9873,
		   9874,
		   9875,
		   9876,
		   9877,
		   9878,
		   9879,
		   9880,
		   9881,
		   9882,
		   9883,
		   9884,
		   9885,
		   9886,
		   9887,
		   9888,
		   9889,
		   9890,
		   9891,
		   9892,
		   9893,
		   9894,
		   9895,
		   9919,
		   9920,
		   9921,
		},
		{
			"Event",
			9973,
			9972,
			9971,
			9970,
			9969,
			9957,
			9958,
			9959,
			9960,
			9961,
			9962,
			9963,
			9964,
			9965,
			9966,
			9967,
			9968,
			9974,
			9975,
			9976,
			9977,
			7101,
			8001,
			8002,
			8003,
			8004,
			8005,
			8006,
			{8009,8008,8007},
			8010,
			{2609,8012,8011},
			7102,
			7103,
			7104,
			7105,
			7106,
			7144,
			7175,
			7176,
			7177,
			7178,
			7179,
			{8113,8112,8111},
			7180,
			7181,
			7182,
			7192,
			7193,
			7194,
			7195,
			7196,
			7197,
			7198,
			7199,
			7200,
			7201,
			7202,
			7203,
			7204,
			7205,
			7212,
			7213,
			7214,
			7215,
			7216,
			7217,
			7218,
			{7221,7220,7219},
			7222,
			7223,
			7225,
			7226,
			7227,
			7228,
			7229,
			7230,
			7231,
			7232,
			7233,
			7234,
			7235,
			7236,
			7237,
			7238,
			7239,
			7240,
			7241,
			7242,
			7243,
			7244,
			7245,
			7246,
			7247,
			7251,
			7252,
			7253,
			7254,
			7255,
			7256,
			7257,
			7258,
			7259,
			7265,
			7269,
			7284,
			7330,
			7337,
			7347,
			7352,
			7353,
			7354,
			7355,
			7356,
			7357,
			7358,
			7362,
			7363,
			7364,
			7365,
			7368,
			7369,
			7378,
			7379,
			7380,
			7381,
			7382,
			7383,
			7384,
			7385,
			7386,
			7388,
			7389,
			7390,
			7391,
			7392,
			7393,
			7394,
			7396,
			7397,
		    7398,
		    7399,
			7411,
			7412,
			7413,
			7414,
			7415,
			7416,
			7436,
			7437,
			7438,
			7439,
			7440,
			7441,
			7442,
			7458,
			7459,
			7460,
			7481,
			7461,
			7466,
			7469,
			7470,
			7471,
			7472,
			7473,
			7474,
			7476,
			7477,
			7478,
			7479,
			7480,
			9500,
			9501,
			9502,
			9503,
			9504,
			9505,
			9506,
			9507,
			9508,
			9509,
			9510,
			9511,
			9512,
			9513,
			9514,
			7482,
			7483,
			7486,
			7487,
			7488,
			7494,
			7495,
			7496,
			7497,
			7498,
			7499,
			7500,
			7501,
			7502,
			7503,
			7504,
			7505,
			7506,
			7515,
			7516,
			7517,
			7518,
			7519,
			7520,
			9515,
			9516,
			9517,
			9518,
			9519,
			9520,
			9521,
			9522,
			9523,
			9524,
			9525,
			9526,
			9567,
			9568,
			9569,
			9570,
			9571,
			9577,
			9578,
			9579,
			9580,
			9581,
			9582,
			9583,
			9584,
			9585,
			9595,
			9603,
			9596,
			9597,
			9598,
			9599,
			9600,
			9601,
			9602,
			9604,
			9605,
			9606,
			9607,
			9608,
			9609,
			9610,
			9611,
			9612,
			9613,
			9614,
			9615,
			9616,
			9617,
			9618,
			9619,
			9620,
			9624,
			9625,
			9626,
			9627,
			9628,
			9629,
			9630,
			{9637,9636,9635,9634,9633,9632,9631},
			9644,
			{9649,9648,9647,9646,9645},
			9650,
			9651,
			9652,
			9653,
			9654,
			9655,
			9656,
			9657,
			9658,
			9856,
			9857,
			9858,
			9859,
			9860,
			9861,
			9866,
			9867,
			{9871,9870,9869,9868},
			9896,
			9897,
			9898,
			9899,
			9900,
			9901,
			9902,
			9903,
			9904,
			9905,
			9906,
			9907,
			9908,
			9909,
			9910,
			9911,
			9912,
			9913,
			9914,
			9915,
			9916,
			9917,
			9918,
			9922,
			9923,
			9924,
			9925,
			9926,
			9942,
			9943,
			9944,
			9945,
			9946,
			9947,
			9948,
			9949,
			9950,
			9951,
			9952,
			9953,
			9954,
			9955,
			9956,
			9978,
			9979,
			9980,
			9981,
			9982,
			9983,
			9984,
			9985,
			9986,
			9987,
			9988,
			10005,
			10006,
			10007,
			10008,
			10009,
			10010,
			10011,
			10012,
			10013,
			10014,
			10015,
			10016,
			{10021,10020,10019,10018,10017},
			10022,


		},
		{
			"Marriage",
			1,
			2,
			9001,
			9002,
			9003,
			9004,
			9005,
			9006,
			9007,
			9008,
			9009,
			9010,
			9011,

		},
		{
			"Inheritance",
			7130,
			7131,
			7132,
			7133,
			7134,
			7135,
			7136,
			7137,
			7138,

		},
		{
    		"Ranking",
    		{
			    "Consumption Points",
			    7366,
			    7367,
			},
			{
			    "Arena",
			    9572,
			    9573,
			    9574,
			    9575,
			    9576,
				
			},
			{
        		"Righteousness",
        		7107,
        		7108,
        		7109,
        		7110,
        		7111,
        		7112,
				7294,
				7295,
				7296,
				7297,
				7298,
				7299,
				7300,
				7301,
				7302,
				7303,
				7304,
				7305,
				7306,
				7307,
				7308,
				7309,
				7310,
				7311,
				7312,
				7313,
				7314,
    		},
			{
        		"Merchant Guild",
        		7449,
				7450,
				7451,
    		},
		},
		{
			"Mentor & Apprentice",
			7342,
			7344,
			7345,
			7346,
			7348,
			7349,
			7350,
			7351,
			9621,
			9622,
			9623,
		},

		{
		"Star Chart",
			{
				"Azure Dragon",
				{9828,9660,9659},
				{9829,9664,9663,9662,9661},
				{9830,9668,9667,9666,9665},
				{9831,9672,9671,9670,9669},
				{9832,9675,9674,9673},
				{9833,9682,9681,9680,9679,9678,9677,9676},
				{9834,9686,9685,9684,9683},
				9862,
			},
			{
				"Black Tortoise",
				{9835,9692,9691,9690,9689,9688,9687},
				{9836,9698,9697,9696,9695,9694,9693},
				{9837,9702,9701,9700,9699},
				{9838,9704,9703},
				{9839,9707,9706,9705},
				{9840,9716,9715,9714,9713,9712,9711,9710,9709,9708},
				{9841,9718,9717},
				9863,
			},
			{
				"White Tiger",
				{9842,9733,9732,9731,9730,9729,9728,9727,9726,9725,9724,9723,9722,9721,9720,9719},
				{9843,9736,9735,9734},
				{9844,9739,9738,9737},
				{9845,9746,9745,9744,9743,9742,9741,9740},
				{9846,9753,9752,9751,9750,9749,9748,9747},
				{9847,9756,9755,9754},
				{9848,9766,9765,9764,9763,9762,9761,9760,9759,9758,9757},
				9864,
			},
			{
				"Vermilion Bird",
				{9849,9774,9773,9772,9771,9770,9769,9768,9767},
				{9850,9779,9778,9777,9776,9775},
				{9851,9787,9786,9785,9784,9783,9782,9781,9780},
				{9852,9794,9793,9792,9791,9790,9789,9788},
				{9853,9800,9799,9798,9797,9796,9795},
				{9854,9822,9821,9820,9819,9818,9817,9816,9815,9814,9813,9812,9811,9810,9809,9808,9807,9806,9805,9804,9803,9802,9801},
				{9855,9827,9826,9825,9824,9823},
				9865,
			},
		},


	}

---（不要修改）返回称号分类
function title_dir:GetDir()

	return self
end
--[[测试
do
	local numR = 0
	local titleRev = {}
	for i,v in pairs(title_definition) do
		if type(v)=="table" and v.id~=nil  then
			if titleRev[v.id] == nil then
				titleRev[v.id] = i
			else
				numR = numR+1
				print(titleRev[v.id]..";"..i..":"..v.id)
			end
		end
	end
	print("numRepeat:"..numR)
end
]]--
