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
title_definition['称号_剧情巴蜀14'] = {id = 2308 , note = "^72fe00【Tomb-Robbing Colonel】" , desc = "0^72fe00Permanent Effect:\r^ffffffHP恢复速度 +1\rEXP +1%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀15'] = {id = 2309 , note = "^72fe00【Terminator】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +20\rAttack +2\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望01'] = {id = 3001 , note = "^72fe00Rookie of Central Plains" , desc = "0^72fe00Permanent Effect:\r^ffffffStamina +10\r^ffc556族系Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望02'] = {id = 3002 , note = "^0184ff※Hero of Central Plains※" , desc = "0^0184ffPermanent Effect:\r^ffffffStamina +20\rDefense +2\r^ffc556族系Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望03'] = {id = 3003 , note = "^a800ffRenowned Hero of Central Plains" , desc = "0^a800ffPermanent Effect:\r^ffffffStamina +20\rDefense +4\rCrit Bonus Damage +10\r^ffc556族系Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望04'] = {id = 3004 , note = "^ff7d2fElite of Central Plains" , desc = "0^ff7d2fPermanent Effect:\r^ffffffStamina +20\rDefense +6\rCrit Bonus Damage +10\rAccuracy +1\r^ffc556族系Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望05'] = {id = 3005 , note = "^fff962Pillar of Central Plains" , desc = "0^fff962Permanent Effect:\r^ffffffStamina +40\rDefense +8\rCrit Bonus Damage +10\rAccuracy +1\r^ffc556族系Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望06'] = {id = 3006 , note = "^ffc556National Hero of Central Plains" , desc = "0^ffc556Permanent Effect:\r^ffffffStamina +40\rDefense +10\rCrit Bonus Damage +10\rAccuracy +1\rDodge +1\r^ffc556族系Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望07'] = {id = 3007 , note = "^ffc556Cornerstone of Central Plains" , desc = "0^ffc556Permanent Effect:\r^ffffffStamina +60\rDefense +20\rCrit Bonus Damage +10\rAccuracy +1\rDodge +1\r^ffc556族系Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望01'] = {id = 3011 , note = "^72fe00Rookie of Wunan" , desc = "0^72fe00Permanent Effect:\r^ffffffStamina +10\r^ffc556族系Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望02'] = {id = 3012 , note = "^0184ff※Hero of Wunan※" , desc = "0^0184ffPermanent Effect:\r^ffffffStamina +20\rAttack +4\r^ffc556族系Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望03'] = {id = 3013 , note = "^a800ffRenowned Hero of Wunan" , desc = "0^a800ffPermanent Effect:\r^ffffffStamina +20\rAttack +8\rCrit Bonus Damage +10\r^ffc556族系Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望04'] = {id = 3014 , note = "^ff7d2fElite of Wunan" , desc = "0^ff7d2fPermanent Effect:\r^ffffffStamina +20\rAttack +12\rCrit Bonus Damage +10\rCrit Resist +1\r^ffc556族系Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望05'] = {id = 3015 , note = "^fff962Pillar of Wunan" , desc = "0^fff962Permanent Effect:\r^ffffffStamina +40\rAttack +16\rCrit Bonus Damage +10\rCrit Resist +1\r^ffc556族系Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望06'] = {id = 3016 , note = "^ffc556National Hero of Wunan" , desc = "0^ffc556Permanent Effect:\r^ffffffStamina +40\rAttack +20\rCrit Bonus Damage +10\rCrit +1\rCrit Resist +1\r^ffc556族系Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望07'] = {id = 3017 , note = "^ffc556Cornerstone of Wunan" , desc = "0^ffc556Permanent Effect:\r^ffffffStamina +60\rAttack +20\rCrit Bonus Damage +20\rCrit +1\rCrit Resist +1\r^ffc556族系Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北友善'] = {id = 3101 , note = "^72fe00Righteous Warrior of Hebei" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +20\rAttack +1\rDefense +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北尊敬'] = {id = 3102 , note = "^0184ffKnight of Hebei" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +20\rAttack +1\rDefense +1\rCrit +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北崇敬'] = {id = 3103 , note = "^a800ffHero of Hebei" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +60\rAttack +3\rDefense +1\rCrit +1\rCrit Damage +3%\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北崇拜'] = {id = 3104 , note = "^a800ffChampion of Hebei" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +120\rAttack +3\rDefense +1\rCrit +1\rCrit Damage +5%\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北15000'] = {id = 3111 , note = "^0184ffFamous Scholar of Hebei" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +50\rAttack +2\rDefense +1\rCrit +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北十万'] = {id = 3112 , note = "^a800ffHero of Hebei" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +70\rAttack +3\rDefense +1\rCrit +1\rCrit Damage +5%\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北20万'] = {id = 3113 , note = "^a800ffVenerable of Hebei" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +220\rAttack +3\rDefense +1\rCrit +1\rCrit Damage +5%\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜1'] = {id = 3105 , note = "^ff7d2fLittle Overlord of Hebei" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜2'] = {id = 3106 , note = "^a800ffSeven Stars of Hebei" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜3'] = {id = 3107 , note = "^a800ffEighteen Cavalry of Hebei" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜4'] = {id = 3108 , note = "^a800ffThirty-Six Champions of Hebei" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜5'] = {id = 3109 , note = "^0184ffSeventy-Two Heroes of Hebei" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜6'] = {id = 3110 , note = "^0184ffCelebrity of Hebei" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉友善'] = {id = 3201 , note = "^72fe00Righteous Warrior of Xi Liang" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +30\rAttack +2\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉尊敬'] = {id = 3202 , note = "^0184ffKnight of Xi Liang" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +30\rAttack +2\rCrit +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉崇敬'] = {id = 3203 , note = "^a800ffHero of Xi Liang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +60\rAttack +8\rCrit +1\rCrit Resist +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉崇拜'] = {id = 3204 , note = "^a800ffChampion of Xi Liang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +120\rAttack +8\rCrit +1\rCrit Resist +2\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉15000'] = {id = 3211 , note = "^0184ffFamous Scholar of Xi Liang" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +60\rAttack +4\rCrit +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉十万'] = {id = 3212 , note = "^a800ffHero of Xi Liang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +70\rAttack +8\rCrit +1\rCrit Resist +2\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉20万'] = {id = 3213 , note = "^a800ffVenerable of Xi Liang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +220\rAttack +8\rCrit +1\rCrit Resist +2\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜1'] = {id = 3205 , note = "^ff7d2fLittle Overlord of Xi Liang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜2'] = {id = 3206 , note = "^a800ffSeven Heroes of Xi Liang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜3'] = {id = 3207 , note = "^a800ffEighteen Cavalry of Xi Liang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜4'] = {id = 3208 , note = "^a800ffThirty-Six Champions of Xi Liang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜5'] = {id = 3209 , note = "^0184ffSeventy-Two Heroes of Xi Liang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜6'] = {id = 3210 , note = "^0184ffCelebrity of Xi Liang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀友善'] = {id = 3301 , note = "^72fe00Righteous Warrior of Ba-Shu" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +40\rHP恢复速度 +5\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀尊敬'] = {id = 3302 , note = "^0184ffKnight of Ba-Shu" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +40\rHP恢复速度 +5\rCrit +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀崇敬'] = {id = 3303 , note = "^a800ffHero of Ba-Shu" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +80\rAttack +3\rDefense +1\rHP恢复速度 +5\rCrit +1\rDodge +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀崇拜'] = {id = 3304 , note = "^a800ffChampion of Ba-Shu" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +140\rAttack +3\rDefense +4\rHP恢复速度 +5\rCrit +1\rDodge +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀15000'] = {id = 3311 , note = "^0184ffFamous Scholar of Ba-Shu" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +70\rAttack +1\rDefense +1\rHP恢复速度 +5\rCrit +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀十万'] = {id = 3312 , note = "^a800ffHero of Ba-Shu" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +90\rAttack +3\rDefense +4\rHP恢复速度 +5\rCrit +1\rDodge +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀20万'] = {id = 3313 , note = "^a800ffVenerable of Ba-Shu" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +240\rAttack +3\rDefense +4\rHP恢复速度 +5\rCrit +1\rDodge +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀排行榜2'] = {id = 3306 , note = "^a800ffSeven Champions of Ba-Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀排行榜3'] = {id = 3307 , note = "^a800ffEighteen Cavalry of Ba-Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀排行榜4'] = {id = 3308 , note = "^a800ffThirty-Six Champions of Ba-Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀排行榜5'] = {id = 3309 , note = "^0184ffSeventy-Two Heroes of Ba-Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀排行榜6'] = {id = 3310 , note = "^0184ffCelebrity of Ba-Shu" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮友善'] = {id = 3401 , note = "^72fe00Righteous Warrior of Southern Barbarians" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +60\rAttack +2\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮尊敬'] = {id = 3402 , note = "^0184ffKnight of Southern Barbarians" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +60\rAttack +2\rCrit +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮崇敬'] = {id = 3403 , note = "^a800ffHero of Southern Barbarians" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +60\rAttack +2\rDefense +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rIndirect Resist +3\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮崇拜'] = {id = 3404 , note = "^a800ffChampion of Southern Barbarians" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +140\rAttack +2\rDefense +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rIndirect Resist +3\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮15000'] = {id = 3411 , note = "^0184ffFamous Scholar of Southern Barbarians" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +60\rAttack +2\rDefense +2\rCrit +1\rMax HP +1%\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮十万'] = {id = 3412 , note = "^a800ffHero of Southern Barbarians" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +90\rAttack +2\rDefense +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rIndirect Resist +3\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮20万'] = {id = 3413 , note = "^a800ffVenerable of Southern Barbarians" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +240\rAttack +2\rDefense +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rIndirect Resist +3\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜1'] = {id = 3405 , note = "^ff7d2fLittle Overlord of Southern Barbarians" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜2'] = {id = 3406 , note = "^a800ffSeven Warriors of Southern Barbarians" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜3'] = {id = 3407 , note = "^a800ffEighteen Cavalry of Southern Barbarians" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜4'] = {id = 3408 , note = "^a800ffThirty-Six Champions of Southern Barbarians" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜5'] = {id = 3409 , note = "^0184ffSeventy-Two Heroes of Southern Barbarians" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜6'] = {id = 3410 , note = "^0184ffCelebrity of Southern Barbarians" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南友善'] = {id = 3501 , note = "^72fe00Righteous Warrior of Jiangnan" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +50\rAttack +2\rDefense +2\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南尊敬'] = {id = 3502 , note = "^0184ffKnight of Jiangnan" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +50\rAttack +2\rDefense +2\rCrit +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南崇敬'] = {id = 3503 , note = "^a800ffHero of Jiangnan" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +50\rAttack +3\rDefense +3\rCrit +1\rMax HP +1%\rAttack Power +1%\rDodge +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南崇拜'] = {id = 3504 , note = "^a800ffChampion of Jiangnan" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +110\rAttack +3\rDefense +3\rCrit +1\rMax HP +1%\rAttack Power +2%\rDodge +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南15000'] = {id = 3511 , note = "^0184ffFamous Scholar of Jiangnan" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +50\rAttack +3\rDefense +3\rCrit +1\rMax HP +1%\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南十万'] = {id = 3512 , note = "^a800ffHero of Jiangnan" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +60\rAttack +3\rDefense +3\rCrit +1\rMax HP +1%\rAttack Power +2%\rDodge +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南20万'] = {id = 3513 , note = "^a800ffVenerable of Jiangnan" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +210\rAttack +3\rDefense +3\rCrit +1\rMax HP +1%\rAttack Power +2%\rDodge +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜1'] = {id = 3505 , note = "^ff7d2fLittle Overlord of Jiangnan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜2'] = {id = 3506 , note = "^a800ffSeven Eccentrics of Jiangnan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜3'] = {id = 3507 , note = "^a800ffEighteen Cavalry of Jiangnan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜4'] = {id = 3508 , note = "^a800ffThirty-Six Champions of Jiangnan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜5'] = {id = 3509 , note = "^0184ffSeventy-Two Heroes of Jiangnan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜6'] = {id = 3510 , note = "^0184ffCelebrity of Jiangnan" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄友善'] = {id = 3601 , note = "^72fe00Righteous Warrior of Jing-Xiang" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +60\rDefense +2\rHP恢复速度 +2\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄尊敬'] = {id = 3602 , note = "^0184ffKnight of Jing-Xiang" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +60\rDefense +2\rHP恢复速度 +2\rCrit +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄崇敬'] = {id = 3603 , note = "^a800ffHero of Jing-Xiang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +60\rAttack +5\rDefense +2\rHP恢复速度 +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rAccuracy +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄崇拜'] = {id = 3604 , note = "^a800ffChampion of Jing-Xiang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +120\rAttack +5\rDefense +2\rHP恢复速度 +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rAccuracy +2\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄15000'] = {id = 3611 , note = "^0184ffFamous Scholar of Jing-Xiang" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +60\rAttack +2\rDefense +2\rHP恢复速度 +2\rCrit +1\rMax HP +1%\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄十万'] = {id = 3612 , note = "^a800ffHero of Jing-Xiang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +70\rAttack +5\rDefense +2\rHP恢复速度 +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rAccuracy +2\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄20万'] = {id = 3613 , note = "^a800ffVenerable of Jing-Xiang" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +220\rAttack +5\rDefense +2\rHP恢复速度 +2\rCrit +1\rMax HP +1%\rAttack Power +1%\rAccuracy +2\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜1'] = {id = 3605 , note = "^ff7d2fLittle Overlord of Jing-Xiang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜2'] = {id = 3606 , note = "^a800ffSeven Talents of Jing-Xiang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜3'] = {id = 3607 , note = "^a800ffEighteen Cavalry of Jing-Xiang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜4'] = {id = 3608 , note = "^a800ffThirty-Six Champions of Jing-Xiang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜5'] = {id = 3609 , note = "^0184ffSeventy-Two Heroes of Jing-Xiang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜6'] = {id = 3610 , note = "^0184ffCelebrity of Jing-Xiang" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中友善'] = {id = 3701 , note = "^72fe00Righteous Warrior of Guanzhong" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +2\rDefense +2\rHP恢复速度 +2\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中尊敬'] = {id = 3702 , note = "^0184ffKnight of Guanzhong" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack +2\rDefense +2\rHP恢复速度 +2\rCrit +1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中崇敬'] = {id = 3703 , note = "^a800ffHero of Guanzhong" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack +2\rDefense +2\rHP恢复速度 +2\rCrit +1\rCrit Damage +7%\rMax HP +1%\rAttack Power +1%\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中崇拜'] = {id = 3704 , note = "^a800ffChampion of Guanzhong" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +80\rAttack +2\rDefense +2\rHP恢复速度 +2\rCrit +1\rCrit Damage +7%\rMax HP +1%\rAttack Power +1%\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中15000'] = {id = 3711 , note = "^0184ffFamous Scholar of Guanzhong" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack +2\rDefense +2\rHP恢复速度 +2\rCrit +1\rCrit Damage +2%\rMax HP +1%\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中十万'] = {id = 3712 , note = "^a800ffHero of Guanzhong" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +30\rAttack +2\rDefense +2\rHP恢复速度 +2\rCrit +1\rCrit Damage +7%\rMax HP +1%\rAttack Power +1%\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中20万'] = {id = 3713 , note = "^a800ffVenerable of Guanzhong" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +180\rAttack +2\rDefense +2\rHP恢复速度 +2\rCrit +1\rCrit Damage +7%\rMax HP +1%\rAttack Power +1%\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜1'] = {id = 3705 , note = "^ff7d2fLittle Overlord of Guanzhong" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜2'] = {id = 3706 , note = "^a800ffSeven Knights of Guanzhong" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜3'] = {id = 3707 , note = "^a800ffEighteen Cavalry of Guanzhong" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜4'] = {id = 3708 , note = "^a800ffThirty-Six Champions of Guanzhong" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜5'] = {id = 3709 , note = "^0184ffSeventy-Two Heroes of Guanzhong" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜6'] = {id = 3710 , note = "^0184ffCelebrity of Guanzhong" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南友善'] = {id = 3801 , note = "^72fe00Righteous Warrior of South Sichuan" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rStamina+5\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南尊敬'] = {id = 3802 , note = "^0184ffKnight of South Sichuan" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack+2\rStamina+5\rCrit Resist+1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南崇敬'] = {id = 3803 , note = "^a800ffHero of South Sichuan" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+4\rStamina+5\rCrit Resist+1\rHP恢复速度+2\rCrit Bonus Damage+10\rCrit+1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南崇拜'] = {id = 3804 , note = "^a800ffChampion of South Sichuan" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+8\rStamina+10\rCrit Resist+1\rHP恢复速度+5\rCrit Bonus Damage+30\rCrit+1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南15000'] = {id = 3811 , note = "^0184ffFamous Scholar of South Sichuan" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack+2\rStamina+5\rCrit Resist+1\rHP恢复速度+2\rCrit Bonus Damage+10\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南十万'] = {id = 3812 , note = "^a800ffHero of South Sichuan" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+6\rStamina+5\rCrit Resist+1\rHP恢复速度+5\rCrit Bonus Damage+20\rCrit+1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南20万'] = {id = 3813 , note = "^a800ffVenerable of South Sichuan" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+10\rStamina+10\rCrit Resist+1\rHP恢复速度+5\rCrit Bonus Damage+40\rCrit+1\r^ffc556地区Renown称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
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
title_definition['剧情关中称号3'] = {id = 2609 , note = "^a800ff【乱世歌者】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +5\rCrit Resist +2\rAccuracy +2" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号1'] = {id = 8001 , note = "^a800ff【Fishing God】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +100\rAccuracy +5\r学会技能“不瞬之目”" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号2'] = {id = 8002 , note = "^0184ff【Fishing Master】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +50\rAccuracy +3\r学会技能“忍耐钓术”" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号3'] = {id = 8003 , note = "^0184ff【Fishing Celebrity】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +30\rAccuracy +2\r学会技能“忍耐钓术”" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号4'] = {id = 8004 , note = "^72fe00【Fishing Expert】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10\rAccuracy +2" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号5'] = {id = 8005 , note = "^72fe00【Fishing Novice】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10\rAccuracy +1" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号6'] = {id = 8006 , note = "^72fe00【Fishing Swift Hand】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号7'] = {id = 8007 , note = "^72fe00【Riding the Fragrant Carriage】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10\rAttack +1" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号8'] = {id = 8008 , note = "^0184ff【With Beauty and Fine Furs】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +20\rAttack +2\rDodge +1" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号9'] = {id = 8009 , note = "^a800ff【笑揽社稷九州】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +30\rAttack +2\rDodge +2\rCrit +1" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号10'] = {id = 8010 , note = "^ff4ca4【尚香亲卫队】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +20\rHP恢复速度 +1" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号11'] = {id = 8011 , note = "^72fe00【Apprentice Poetry Collector】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号12'] = {id = 8012 , note = "^0184ff【Professional Poetry Collector】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +3\rCrit Resist +1" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号1'] = {id = 9001 , note = "^72fe00【Hearts Linked as One】" , desc = "0^72fe00Title Level: 1\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号2'] = {id = 9002 , note = "^72fe00【Eyes Full of Tenderness】" , desc = "0^72fe00Title Level: 2\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +20" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号3'] = {id = 9003 , note = "^72fe00【A Match Made in Heaven】" , desc = "0^72fe00Title Level: 3\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +30\rAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号4'] = {id = 9004 , note = "^0184ff【How Deep Is Love】" , desc = "0^72fe00Title Level: 4\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +40\rAttack +5" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号5'] = {id = 9005 , note = "^0184ff【If Life Were Only Like First Meetings】" , desc = "0^72fe00Title Level: 5\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +50\rAttack +8" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号6'] = {id = 9006 , note = "^a800ff【恩爱两不疑】" , desc = "0^72fe00Title Level: 6\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +60\rAttack +10" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号7'] = {id = 9007 , note = "^a800ff【与子偕老】" , desc = "0^72fe00Title Level: 7\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +3%\rAttack +10\rAttack Power +1%\rMax HP +60" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号8'] = {id = 9008 , note = "^ff7d2f【死生契阔】" , desc = "0^72fe00Title Level: 8\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +4%\rAttack +10\rAttack Power +2%\rMax HP +60" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号9'] = {id = 9009 , note = "^ff4ca4【天荒地老】" , desc = "0^72fe00Title Level: 9\rWhen you obtain a higher Marriage title\rattributes will move to the new higher title\r^ffffffMax HP +5%\rAttack +10\rAttack Power +3%\rMax HP +60" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号10'] = {id = 9010 , note = "^72fe00【Rose King of Divine Virtue】" , desc = "0^72fe00The one who owns 9999 roses!" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号11'] = {id = 9011 , note = "^72fe00【Spouse Title 11】" , desc = "0^72fe00Quality: Common" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动2'] = {id = 7102 , note = "^72fe00【Splash Dark Ink, Paint Three Kingdoms Sorrow】" , desc = "0^72fe00首 times won the Chibi Side Story Battlefield 策划 Grand Prize reward title" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动3'] = {id = 7103 , note = "^0184ff【With Heavy Brush, Speak of the Great River】" , desc = "0^72fe00再 times won the Chibi Side Story Battlefield 策划 Grand Prize reward title" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动4'] = {id = 7104 , note = "^a800ff【施丹青绘血火峥嵘】" , desc = "0^72fe00三 times won the Chibi Side Story Battlefield 策划 Grand Prize reward title" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动5'] = {id = 7105 , note = "^ff7d2f【生妙笔书赤壁春秋】" , desc = "0^72fe00四 times won the Chibi Side Story Battlefield 策划 Grand Prize reward title" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动6'] = {id = 7106 , note = "^ff9c00【圣火护卫队】" , desc = "0^72fe00Rewards warriors who made outstanding contributions during the passing of the Sacred Flame of Xuanyuan" , desc_1 = "" , desc_2 = ""}
title_definition['称号_传奇1'] = {id = 6110 , note = "^72fe00【White Gate Tower Righteous Man】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10\rAttack +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_传奇2'] = {id = 6111 , note = "^0184ff【Marquis Wen's Guard Cavalry】" , desc = "0^0184ffPermanent Effect:\r^ffffffMax HP +30\rAttack +2\rAccuracy+1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_传奇3'] = {id = 6112 , note = "^a800ff【飞将之神助】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +60\rAttack +2\rAccuracy+2\rCrit Damage +3%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_虎牢关01'] = {id = 6113 , note = "^72fe00【Loyal Minister Who Punishes Rebels】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +20" , desc_1 = "" , desc_2 = ""}
title_definition['称号_虎牢关02'] = {id = 6114 , note = "^72fe00【虎牢关五虎将】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行1'] = {id = 7107 , note = "^ff7d2f【天下第一仁君】" , desc = "0^ff7d2f仁义值排行榜第一的奖励称号\r为头顶称号时生效:\r^ffffff攻击力 +10\r历练值 +20%\r生命值 +200" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行2-4'] = {id = 7108 , note = "^ff7d2f【三君贤师】" , desc = "0^ff7d2f仁义值排行榜第二到第四的奖励称号\r为头顶称号时生效:\r^ffffff攻击力 +8\r历练值 +10%\r生命值 +100" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行5-12'] = {id = 7109 , note = "^a800ffFamous Scholar of Ba Jun" , desc = "0^a800ff仁义值排行榜第五到第十二的奖励称号\r为头顶称号时生效:\r^ffffff攻击力 +5\r历练值 +10%\r生命值 +100" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行13-20'] = {id = 7110 , note = "^a800ffFamous Scholar of Ba Gu" , desc = "0^a800ff仁义值排行榜第十三到第二十的奖励称号\r为头顶称号时生效:\r^ffffff攻击力 +3\r历练值 +5%\r生命值 +100" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行21-28'] = {id = 7111 , note = "^a800ff【八及君子】" , desc = "0^a800ff仁义值排行榜第二十一到第二十八的奖励称号\r为头顶称号时生效:\r^ffffff攻击力 +1\r历练值 +5%\r生命值 +100" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行29-36'] = {id = 7112 , note = "^a800ff【八厨君子】" , desc = "0^a800ff仁义值排行榜第二十九到第三十六的奖励称号\r为头顶称号时生效:\r^ffffff历练值 +5%\r生命值 +80" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品7'] = {id = 5263 , note = "^ffbc3c〓Sub-Grade 4 Might-Building Commandant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品8'] = {id = 5264 , note = "^ffbc3c〓Grade 4 Martial Guard Commandant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品7'] = {id = 5265 , note = "^ffbc3c〓Sub-Grade 4 Usher Assistant〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品8'] = {id = 5266 , note = "^ffbc3c〓Grade 4 Vice Censor-in-Chief〓" , desc = "0^ffbc3cPermanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_典韦传'] = {id = 7113 , note = "^72fe00【Iron Wall E Lai】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +20" , desc_1 = "" , desc_2 = ""}
title_definition['军团等级排行1']= {id = 7114 , note = "^72fe00老一军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行2']= {id = 7115 , note = "^72fe00老二军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行3']= {id = 7116 , note = "^72fe00老三军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行4']= {id = 7117 , note = "^72fe00老四军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行5']= {id = 7118 , note = "^72fe00老五军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行6']= {id = 7119 , note = "^72fe00老六军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行7']= {id = 7120 , note = "^72fe00老七军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行8']= {id = 7121 , note = "^72fe00老八军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行9']= {id = 7122 , note = "^72fe00老九军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行10']= {id = 7123 , note = "^72fe00老十军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行11']= {id = 7124 , note = "^72fe00老十一军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行12']= {id = 7125 , note = "^72fe00老十二军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行13']= {id = 7126 , note = "^72fe00老十三军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行14']= {id = 7127 , note = "^72fe00老十四军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行15']= {id = 7128 , note = "^72fe00老十五军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['军团等级排行16']= {id = 7129 , note = "^72fe00老十六军团老大",desc = "0",desc_1 = "",desc_2 = ""}
title_definition['名将传承01尚香传'] = {id = 7130 , note = "^72fe00【Heroine · Fragrant Wind】" , desc = "0^72fe00装备生效\r^fff600得名将尚香之传承。\r青丝一缕，红颜铿锵，可传香风万里，钢铁柔肠。\r^ffffff生命回复速度+10" , desc_2 = ""}
title_definition['名将传承02吕布传'] = {id = 7131 , note = "^72fe00【God of Slaughter · Four Directions】" , desc = "0^72fe00装备生效\r^fff600得名将吕布之传承。\r英雄名，传千古，天命得之定四方，人力夺之斩八荒。\r^ffffff受伤抗性+10" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承03刘备传'] = {id = 7132 , note = "^72fe00【Overlord · People's Harmony】" , desc = "0^72fe00装备生效\r^fff600得英雄刘备之传承。\r霸主何为？政通人和。夫得道者多助，失道者寡助，多助之至，天下顺之。\r^ffffff限制抗性+10" ,  desc_1 = "" , desc_2 = ""}
title_definition['名将传承04曹操传'] = {id = 7133 , note = "^72fe00【Overlord · Mandate of Heaven】" , desc = "0^72fe00装备生效\r^fff600得英雄曹操之传承。\r霸主何为？天命所归。堂上谋臣帷幄，边头猛将干戈。得天命者，定四方。\r^ffffff虚弱抗性+10" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承05典韦传'] = {id = 7134 , note = "^72fe00【Fierce General · E Lai】" , desc = "0^72fe00装备生效\r^fff600得名将典韦之传承。\r古之恶来，今之猛将，手提双戟八十斤，万夫莫当。\r^ffffff封印抗性+10" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承06孙权传'] = {id = 7135 , note = "^72fe00【Overlord · Geographic Advantage】" , desc = "0^72fe00装备生效\r^fff600得英雄孙权之传承。\r霸主何为？方圆地利。鱼米乡，天堑地，富庶民，乐一方。得地利者，长久安。\r^ffffff流血抗性+10" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承07赵云传'] = {id = 7136 , note = "^72fe00【Loyalty · Lone Courage】" , desc = "0^72fe00装备生效\r^fff600得名将赵云之传承。\r忠义有千秋，孤胆真英雄。谁能一身是胆？谁敢七进七出？道不尽将军风，传予今日豪雄。\r^ffffff治疗效果+10%" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承08蒋干传'] = {id = 7137 , note = "^72fe00【Persuasion · Sharp Tongue】" , desc = "0^72fe07暂无" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承09组合称号'] = {id = 7138 , note = "^a800ff【三分霸主】" , desc = "0^72fe08暂无" , desc_1 = "" , desc_2 = ""}
title_definition['魏国声望排行前100'] = {id = 7139 , note = "^a800ff【Wei General】" , desc = "1^a800ffKingdom of Wei Renown Ranking top 100 reward title\rDuring national wars, holds partial authority over national affairs" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国声望排行前100'] = {id = 7140 , note = "^a800ff【Shu General】" , desc = "2^a800ffKingdom of Shu Renown Ranking top 100 reward title\rDuring national wars, holds partial authority over national affairs" , desc_1 = "" , desc_2 = ""}
title_definition['吴国声望排行前100'] = {id = 7141 , note = "^a800ff【Wu General】" , desc = "3^a800ffKingdom of Wu Renown Ranking top 100 reward title\rDuring national wars, holds partial authority over national affairs" , desc_1 = "" , desc_2 = ""}
title_definition['称号蒋干传01'] = {id = 7142 , note = "^72fe00【Ghostly Stratagem's Divine Aid】" , desc = "0^72fe00Permanent Effect\r^ffffffStamina +5\rCast Speed +3%" , desc_1 = "" , desc_2 = ""}
title_definition['称号蒋干传02'] = {id = 7143 , note = "^72fe00【Elegant Book Thief】" , desc = "0^72fe00Permanent Effect\r^ffffffStamina +5" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动7'] = {id = 7144 , note = "^72fe00【Frontier Guarding Envoy】" , desc = "0^72fe00Permanent Effect\r^ffffffStamina +5" , desc_1 = "" , desc_2 = ""}
title_definition['魏国武勋排行1'] = {id = 7145 , note = "^ff7d2f【Great Wei Commander-in-Chief】" , desc = "1^ff7d2fTitle earned by the meritorious general of Kingdom of Wei\rQualification: 魏国武勋排行第1名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国武勋排行2-5'] = {id = 7146 , note = "^a800ff【Great Wei Supreme General】" , desc = "1^a800ffTitle earned by the meritorious general of Kingdom of Wei\rQualification: 魏国武勋排行第2-5名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国武勋排行6-20'] = {id = 7147 , note = "^0184ff【Great Wei Renowned General】" , desc = "1^0184ffTitle earned by the meritorious general of Kingdom of Wei\rQualification: 魏国武勋排行第6-20名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国武勋排行21-100'] = {id = 7148 , note = "^72fe00【Great Wei Good General】" , desc = "1^72fe00Title earned by the meritorious general of Kingdom of Wei\rQualification: 魏国武勋排行第21-100名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国武勋排行101-500'] = {id = 7149 , note = "^72fe00【Great Wei Officer】" , desc = "1^72fe00Title earned by the meritorious general of Kingdom of Wei\rQualification: 魏国武勋排行第101-500名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国文勋排行1'] = {id = 7150 , note = "^ff7d2f【Great Wei Chief Minister】" , desc = "1^ff7d2fTitle earned by the outstanding civil minister of Kingdom of Wei\rQualification: 魏国文勋排行第1名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国文勋排行2-5'] = {id = 7151 , note = "^a800ff【Great Wei Capable Minister】" , desc = "1^a800ffTitle earned by the outstanding civil minister of Kingdom of Wei\rQualification: 魏国文勋排行第2-5名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国文勋排行6-20'] = {id = 7152 , note = "^0184ff【Great Wei Renowned Minister】" , desc = "1^0184ffTitle earned by the outstanding civil minister of Kingdom of Wei\rQualification: 魏国文勋排行第6-20名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国文勋排行21-100'] = {id = 7153 , note = "^72fe00【Great Wei Good Minister】" , desc = "1^72fe00Title earned by the outstanding civil minister of Kingdom of Wei\rQualification: 魏国文勋排行第21-100名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国文勋排行101-500'] = {id = 7154 , note = "^72fe00【Great Wei Minister Aide】" , desc = "1^72fe00Title earned by the outstanding civil minister of Kingdom of Wei\rQualification: 魏国文勋排行第101-500名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国武勋排行1'] = {id = 7155 , note = "^ff7d2f【Great Shu Commander-in-Chief】" , desc = "2^ff7d2fTitle earned by the meritorious general of Kingdom of Shu\rQualification: 蜀国武勋排行第1名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国武勋排行2-5'] = {id = 7156 , note = "^a800ff【Great Shu Supreme General】" , desc = "2^a800ffTitle earned by the meritorious general of Kingdom of Shu\rQualification: 蜀国武勋排行第2-5名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国武勋排行6-20'] = {id = 7157 , note = "^0184ff【Great Shu Renowned General】" , desc = "2^0184ffTitle earned by the meritorious general of Kingdom of Shu\rQualification: 蜀国武勋排行第6-20名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国武勋排行21-100'] = {id = 7158 , note = "^72fe00【Great Shu Good General】" , desc = "2^72fe00Title earned by the meritorious general of Kingdom of Shu\rQualification: 蜀国武勋排行第21-100名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国武勋排行101-500'] = {id = 7159 , note = "^72fe00【Great Shu Officer】" , desc = "2^72fe00Title earned by the meritorious general of Kingdom of Shu\rQualification: 蜀国武勋排行第101-500名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国文勋排行1'] = {id = 7160 , note = "^ff7d2f【Great Shu Chief Minister】" , desc = "2^ff7d2fTitle earned by the outstanding civil minister of Kingdom of Shu\rQualification: 蜀国文勋排行第1名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国文勋排行2-5'] = {id = 7161 , note = "^a800ff【Great Shu Capable Minister】" , desc = "2^a800ffTitle earned by the outstanding civil minister of Kingdom of Shu\rQualification: 蜀国文勋排行第2-5名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国文勋排行6-20'] = {id = 7162 , note = "^0184ff【Great Shu Renowned Minister】" , desc = "2^0184ffTitle earned by the outstanding civil minister of Kingdom of Shu\rQualification: 蜀国文勋排行第6-20名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国文勋排行21-100'] = {id = 7163 , note = "^72fe00【Great Shu Good Minister】" , desc = "2^72fe00Title earned by the outstanding civil minister of Kingdom of Shu\rQualification: 蜀国文勋排行第21-100名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国文勋排行101-500'] = {id = 7164 , note = "^72fe00【Great Shu Minister Aide】" , desc = "2^72fe00Title earned by the outstanding civil minister of Kingdom of Shu\rQualification: 蜀国文勋排行第101-500名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国武勋排行1'] = {id = 7165 , note = "^ff7d2f【Great Wu Commander-in-Chief】" , desc = "3^ff7d2fTitle earned by the meritorious general of Kingdom of Wu\rQualification: 吴国武勋排行第1名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国武勋排行2-5'] = {id = 7166 , note = "^a800ff【Great Wu Supreme General】" , desc = "3^a800ffTitle earned by the meritorious general of Kingdom of Wu\rQualification: 吴国武勋排行第2-5名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国武勋排行6-20'] = {id = 7167 , note = "^0184ff【Great Wu Renowned General】" , desc = "3^0184ffTitle earned by the meritorious general of Kingdom of Wu\rQualification: 吴国武勋排行第6-20名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国武勋排行21-100'] = {id = 7168 , note = "^72fe00【Great Wu Good General】" , desc = "3^72fe00Title earned by the meritorious general of Kingdom of Wu\rQualification: 吴国武勋排行第21-100名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国武勋排行101-500'] = {id = 7169 , note = "^72fe00【Great Wu Officer】" , desc = "3^72fe00Title earned by the meritorious general of Kingdom of Wu\rQualification: 吴国武勋排行第101-500名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国文勋排行1'] = {id = 7170 , note = "^ff7d2f【Great Wu Chief Minister】" , desc = "3^ff7d2fTitle earned by the outstanding civil minister of Kingdom of Wu\rQualification: 吴国文勋排行第1名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国文勋排行2-5'] = {id = 7171 , note = "^a800ff【Great Wu Capable Minister】" , desc = "3^a800ffTitle earned by the outstanding civil minister of Kingdom of Wu\rQualification: 吴国文勋排行第2-5名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国文勋排行6-20'] = {id = 7172 , note = "^0184ff【Great Wu Renowned Minister】" , desc = "3^0184ffTitle earned by the outstanding civil minister of Kingdom of Wu\rQualification: 吴国文勋排行第6-20名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国文勋排行21-100'] = {id = 7173 , note = "^72fe00【Great Wu Good Minister】" , desc = "3^72fe00Title earned by the outstanding civil minister of Kingdom of Wu\rQualification: 吴国文勋排行第21-100名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国文勋排行101-500'] = {id = 7174 , note = "^72fe00【Great Wu Minister Aide】" , desc = "3^72fe00Title earned by the outstanding civil minister of Kingdom of Wu\rQualification: 吴国文勋排行第101-500名" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_新手称号'] = {id = 7175 , note = "^e12500【勇士精英】" , desc = "0^72fe00Title earned by warriors holding the Elite Soldier Summoning Order" , desc_1 = "" , desc_2 = ""}
title_definition['全国竞技赛八强'] = {id = 7176 , note = "^0184ff【Eight Champions of the Realm Legion】" , desc = "0^72fe00Title earned by a National Arena Top 8 competitor" , desc_1 = "" , desc_2 = ""}
title_definition['全国竞技赛四强'] = {id = 7177 , note = "^a800ff【天下四英军团众】" , desc = "0^72fe00Title earned by a National Arena Top 4 competitor" , desc_1 = "" , desc_2 = ""}
title_definition['全国竞技赛亚军'] = {id = 7178 , note = "^fff962【天下双雄军团众】" , desc = "0^72fe00Title earned by the National Arena runner-up" , desc_1 = "" , desc_2 = ""}
title_definition['全国竞技赛冠军'] = {id = 7179 , note = "^ff0000【天下无双军团众】" , desc = "0^72fe00Title earned by the National Arena champion" , desc_1 = "" , desc_2 = ""}
title_definition['老玩家回流称号1'] = {id = 7180 , note = "^d181ff【衣锦还乡】" , desc = "0^72fe00The great wind rises, clouds fly high; power reaches all within the seas, returning to my homeland!" , desc_1 = "" , desc_2 = ""}
title_definition['老玩家回流称号2'] = {id = 7181 , note = "^d181ff【荣归故里】" , desc = "0^72fe00The great wind rises, clouds fly high; power reaches all within the seas, returning to my homeland!" , desc_1 = "" , desc_2 = ""}
title_definition['老玩家回流称号3'] = {id = 7182 , note = "^d181ff【功成名就】" , desc = "0^72fe00The great wind rises, clouds fly high; power reaches all within the seas, returning to my homeland!" , desc_1 = "" , desc_2 = ""}
title_definition['资质初始称号'] = {id = 7183 , note = "^a800ff【纵横天下】" , desc = "0^a800ffPermanent Effect\r^ffffff全资质 +1" , desc_1 = "" , desc_2 = ""}
title_definition['魏国玩家61级称号'] = {id = 1113 , note = "^72fe00【Wei Elite Soldier】" , desc = "0You are now one of Kingdom of Wei's elite soldiers!" , desc_1 = "" , desc_2 = ""}
title_definition['吴国玩家61级称号'] = {id = 1313 , note = "^72fe00【Wu Elite Soldier】" , desc = "0You are now one of Kingdom of Wu's elite soldiers!" , desc_1 = "" , desc_2 = ""}
title_definition['无阵营玩家60级称号'] = {id = 4104 , note = "^72fe00【Great Han Elite Soldier】" , desc = "0You are now an elite soldier of Great Han!" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国玩家61级称号'] = {id = 1213 , note = "^72fe00【Shu Elite Soldier】" , desc = "0You are now one of Kingdom of Shu's elite soldiers!" , desc_1 = "" , desc_2 = ""}
title_definition['活动神兵玄奇称号1'] = {id = 8111 , note = "^72fe00【Skilled Artisan】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +2\rMax HP  +10" , desc_1 = "" , desc_2 = ""}
title_definition['活动神兵玄奇称号2'] = {id = 8112 , note = "^0184ff【Teacher of a Generation】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +5\rMax HP  +30" , desc_1 = "" , desc_2 = ""}
title_definition['活动神兵玄奇称号3'] = {id = 8113 , note = "^a800ff【鬼斧神工】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +10\rMax HP  +60" , desc_1 = "" , desc_2 = ""}
title_definition['魏国玩家61级称号新'] = {id = 1114 , note = "^72fe00【Wei Elite Soldier】" , desc = "0You are now one of Kingdom of Wei's elite soldiers!" , desc_1 = "" , desc_2 = ""}
title_definition['吴国玩家61级称号新'] = {id = 1314 , note = "^72fe00【Wu Elite Soldier】" , desc = "0You are now one of Kingdom of Wu's elite soldiers!" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国玩家61级称号新'] = {id = 1214 , note = "^72fe00【Shu Elite Soldier】" , desc = "0You are now one of Kingdom of Shu's elite soldiers!" , desc_1 = "" , desc_2 = ""}
title_definition['江山如画系列任务称号'] = {id = 7190 , note = "^a800ff【江山如此多娇】" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+ 5\rStamina +10\rBonus Damage+ 5" , desc_1 = "" , desc_2 = ""}
title_definition['曹植外传称号'] = {id = 7191 , note = "^0184ff【In Dreams, Unaware I Am a Guest】" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号1'] = {id = 7192 , note = "^e12500【刀猛胜云长】" , desc = "0^72fe00Title earned by a Blade Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号2'] = {id = 7193 , note = "^e12500【斧威敌徐晃】" , desc = "0^72fe00Title earned by a Axe Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号3'] = {id = 7194 , note = "^e12500【棍风似程普】" , desc = "0^72fe00Title earned by a Cudgel Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号4'] = {id = 7195 , note = "^e12500【枪快如子龙】" , desc = "0^72fe00Title earned by a Spear Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号5'] = {id = 7196 , note = "^e12500【弓准比黄忠】" , desc = "0^72fe00Title earned by a Bow Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号6'] = {id = 7197 , note = "^e12500【剑舞美周郎】" , desc = "0^72fe00Title earned by a Sword Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号7'] = {id = 7198 , note = "^e12500【杖仙师左慈】" , desc = "0^72fe00Title earned by a Staff Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号8'] = {id = 7199 , note = "^e12500【扇谋赛诸葛】" , desc = "0^72fe00Title earned by a Fan Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号9'] = {id = 7200 , note = "^e12500【环巧孙尚香】" , desc = "0^72fe00Title earned by a Ring Blade Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号10'] = {id = 7201 , note = "^e12500【爪袭甘兴霸】" , desc = "0^72fe00Title earned by a Claw Warrior" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号11'] = {id = 7202 , note = "^e12500【Bloodthirsty Arena King】" , desc = "0^72fe00Title earned by the Bloodthirsty Arena victor" , desc_1 = "" , desc_2 = ""}
title_definition['护送称号1'] = {id = 7203 , note = "^72fe00【Escort Walker】" , desc = "0^72fe00Your first escort participation each day grants a small amount of bonus EXP." , desc_1 = "" , desc_2 = ""}
title_definition['护送称号2'] = {id = 7204 , note = "^0184ff【Escort Chief】" , desc = "0^0184ffYour first escort participation each day grants a certain amount of bonus EXP." , desc_1 = "" , desc_2 = ""}
title_definition['护送称号3'] = {id = 7205 , note = "^a800ff【总镖头】" , desc = "0^a800ff每天第一次参与护送可以额外获得较多历练。" , desc_1 = "" , desc_2 = ""}
title_definition['演义唇楼称号1'] = {id = 7206 , note = "^72fe00【Celebrity of the Mirage】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +2\rBonus Damage +5" , desc_1 = "" , desc_2 = ""}
title_definition['演义唇楼称号2'] = {id = 7207 , note = "^0184ff【Mirage City Advisor】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +4\rMax HP +10\rBonus Damage +5" , desc_1 = "" , desc_2 = ""}
title_definition['演义唇楼称号3'] = {id = 7208 , note = "^a800ff【女王的闺蜜】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +6\rStamina +5\Max HP +20\rBonus Damage +5" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号隐藏1'] = {id = 7209 , note = "" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号隐藏2'] = {id = 7210 , note = "" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号隐藏3'] = {id = 7211 , note = "" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号1'] = {id = 7212 , note = "^a800ff【御雪天王】" , desc = "0圣诞活动中获得新年积分第一名的牛人。" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号2'] = {id = 7213 , note = "^0184ff【Deer-Taming Sage】" , desc = "0圣诞活动中获得新年积分2-10名的牛人。" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号3'] = {id = 7214 , note = "^72fe00【Christmas Blessing Recluse】" , desc = "0圣诞活动中获得新年积分11－100名的牛人。" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望兑换称号1'] = {id = 7215 , note = "^72fe00【Christmas Snow Baby】" , desc = "012.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取20个普通雪球。" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望兑换称号2'] = {id = 7216 , note = "^72fe00【Christmas Snow Sprite】" , desc = "012.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取40个普通雪球。" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望兑换称号3'] = {id = 7217 , note = "^72fe00【Snow-Treading Plum Seeker】" , desc = "012.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取60个普通雪球。" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望兑换称号4'] = {id = 7218 , note = "^72fe00【Plum-Snow Tea Brewer】" , desc = "012.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取80个普通雪球。" , desc_1 = "" , desc_2 = ""}
title_definition['赛马活动称号1'] = {id = 7219 , note = "^72fe00【Drive Ten Thousand Miles】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +5" , desc_1 = "" , desc_2 = ""}
title_definition['赛马活动称号2'] = {id = 7220 , note = "^0184ff【One Horse Treads a Thousand Hills】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +10\rMax HP +2%" , desc_1 = "" , desc_2 = ""}
title_definition['赛马活动称号3'] = {id = 7221 , note = "^a800ff【龙马震九州】" , desc = "0^72fe00Permanent Effect\r^ffffffAttack +20\rMax HP +2%\rAttack Power +3%" , desc_1 = "" , desc_2 = ""}
title_definition['香港_自拍活动称号男'] = {id = 7222 , note = "^ff4ca4【Chibi Handsome Guy】" , desc = "0^72fe00经Gamania官方认可的帅哥，如假包换！" , desc_1 = "" , desc_2 = ""}
title_definition['香港_自拍活动称号女'] = {id = 7223 , note = "^ff4ca4【Chibi Glamour Girl】" , desc = "0^72fe00经Gamania官方认可的索女，如假包换！" , desc_1 = "" , desc_2 = ""}
title_definition['征战03濮阳霸主'] = {id = 7224 , note = "^ff7d2f【濮阳霸主】" , desc = "0^72fe00获得濮阳之战贰所有图鉴后，获得的称号。\r^72fe00永久生效\r^ffffff攻击力 +20\r附加伤害 +15\r暴击抗性 +3\r限制抗性 +3" , desc_1 = "" , desc_2 = ""}
title_definition['春节活动称号'] = {id = 7225 , note = "^ff4ca4【牛气冲天】" , desc = "0^72fe00Effective during Spring Festival Event Jan 23 - Feb 26, 2009\r^ffffffAttack +5\rDefense +5\rMax HP +5%" , desc_1 = "" , desc_2 = ""}
title_definition['情人节活动称号男'] = {id = 7226 , note = "^ff4ca4【相逢恨晚两心知】" , desc = "0^72fe00Valentine's Day couple-exclusive title." , desc_1 = "" , desc_2 = ""}
title_definition['情人节活动称号女'] = {id = 7227 , note = "^ff4ca4【只愿君心似我心】" , desc = "0^72fe00Valentine's Day couple-exclusive title." , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动01'] = {id = 7228 , note = "^e12500【A Blade Across the Universe】" , desc = "0^72fe00Blade Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动02'] = {id = 7229 , note = "^e12500【百步穿扬】" , desc = "0^72fe00Bow Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动03'] = {id = 7230 , note = "^e12500【Phantom Assassin】" , desc = "0^72fe00Claw Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动04'] = {id = 7231 , note = "^e12500【杖八金刚】" , desc = "0^72fe00Staff Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动05'] = {id = 7232 , note = "^e12500【斧斧生威】" , desc = "0^72fe00Axe Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动06'] = {id = 7233 , note = "^e12500【Divine Fan, Ghostly Stratagem】" , desc = "0^72fe00Fan Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动07'] = {id = 7234 , note = "^e12500【救世神棍】" , desc = "0^72fe00Cudgel Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动08'] = {id = 7235 , note = "^e12500【Divine Dragon Spear Sage】" , desc = "0^72fe00Spear Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动09'] = {id = 7236 , note = "^e12500【侠义之剑】" , desc = "0^72fe00Sword Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动10'] = {id = 7237 , note = "^e12500【环球先生】" , desc = "0^72fe00Ring Blade Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动11'] = {id = 7238 , note = "^e12500【环球小姐】" , desc = "0^72fe00Ring Blade Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动12'] = {id = 7239 , note = "^e12500【Martial Arts World Supreme】" , desc = "0^72fe00Dance Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动13'] = {id = 7240 , note = "^e12500【Halberd Peerless in the World】" , desc = "0^72fe00Halberd Overlord" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动14'] = {id = 7241 , note = "^e12500『十全武者』" , desc = "0^72fe00由Gamania官方认证的至尊武者" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_老玩家回流'] = {id = 7242 , note = "^a800ff【永远忠诚】" , desc = "0^72fe00Forever loyal warrior!" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第1称号'] = {id = 7243 , note = "^ff7d2f【天下无敌】" , desc = "0^ff7d2fArena Points Ranking 1st place martial arts title.\rPermanent Effect\r^ffffffMax HP +10%\rMax Attack +20" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第2-4称号'] = {id = 7244 , note = "^ff7d2f【三国无敌】" , desc = "0^ff7d2fArena Points Ranking 2nd to 4th place martial arts title.\rPermanent Effect\r^ffffffMax HP +200\rMax Attack +15" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第1-30称号'] = {id = 7245 , note = "^a800ff【一骑当千】" , desc = "0^a800ffArena Points Ranking 1st to 30th place martial arts title.\r^ffffffMax HP +3%\rMax Attack +10" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第31-100称号'] = {id = 7246 , note = "^0184ff【Martial Arts Master】" , desc = "0^0184ffArena Points Ranking 31st to 100th place martial arts title.\r^ffffffMax HP +3%\rMax Attack +5" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第101-200称号'] = {id = 7247 , note = "^72fe00【Martial Arts Expert】" , desc = "0^72fe00Arena Points Ranking 101st to 200th place martial arts title.\r^ffffffMax HP +3%" , desc_1 = "" , desc_2 = ""}
title_definition['无双07称号紫'] = {id = 7248 , note = "^a800ff【相思不到楚江东】" , desc = "0^72fe00Permanent Effect\r^ffffffMax Attack +12\rBonus Damage +5\rMax HP +1%" , desc_1 = "" , desc_2 = ""}
title_definition['无双07称号蓝'] = {id = 7249 , note = "^0184ff【Nine Songs: Lord in the Clouds】" , desc = "0^72fe00Permanent Effect\r^ffffffMax Attack +7\rBonus Damage +3" , desc_1 = "" , desc_2 = ""}
title_definition['无双07称号绿'] = {id = 7250 , note = "^72fe00【I Am a Chu Madman】" , desc = "0^72fe00Permanent Effect\r^ffffffMax Attack +5" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第201-500称号'] = {id = 7251 , note = "^72fe00【Martial Practitioner】" , desc = "0^72fe00Arena Points Ranking 201st to 500th place martial arts title.\r^ffffffMax HP +2%" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会十人敌'] = {id = 7252 , note = "^72fe00【Takes On Ten】" , desc = "0^72fe00Title earned when Arena Points reach 10." , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会百人敌'] = {id = 7253 , note = "^0184ff【Takes On Hundred】" , desc = "0^0184ffTitle earned when Arena Points reach 100." , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会千人敌'] = {id = 7254 , note = "^a800ff【Takes On Thousand】" , desc = "0^a800ff擂台大会竞技积分达到1000点，获得的称号。" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会万人敌'] = {id = 7255 , note = "^ff7d2f【Takes On Ten Thousand】" , desc = "0^ff7d2f擂台大会竞技积分达到10000点，获得的称号。" , desc_1 = "" , desc_2 = ""}
title_definition['活动01初级称号'] = {id = 7256 , note = "^72fe00【Shepherd Shrimp】" , desc = "0^ff7d2f羊倌儿的初级身份证明。" , desc_1 = "" , desc_2 = ""}
title_definition['活动01中级称号'] = {id = 7257 , note = "^0184ff【Shepherd Calf】" , desc = "0^ff7d2f羊倌儿的中级身份证明。" , desc_1 = "" , desc_2 = ""}
title_definition['活动01高级称号'] = {id = 7258 , note = "^a800ff【牧羊刀狼】" , desc = "0^ff7d2f羊倌儿的高级身份证明。" , desc_1 = "" , desc_2 = ""}
title_definition['活动01顶级称号'] = {id = 7259 , note = "^ff7d2f【牧羊神兽】" , desc = "0^ff7d2f羊倌儿的顶级身份证明。" , desc_1 = "" , desc_2 = ""}
--title_definition['竞技场胜利称号'] = {id = 7260 , note = "" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['竞技场失败称号'] = {id = 7261 , note = "" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['阵营频道魏发言称号'] = {id = 7262 , note = "^ff7d2f【Wei Spokesperson】" , desc = "0^ff7d2f持有此称号，\r可以消耗魏国诏书来进行阵营频道发言。" , desc_1 = "" , desc_2 = ""}
title_definition['阵营频道蜀发言称号'] = {id = 7263 , note = "^ff7d2f【Shu Spokesperson】" , desc = "0^ff7d2f持有此称号，\r可以消耗蜀国诏书来进行阵营频道发言。" , desc_1 = "" , desc_2 = ""}
title_definition['阵营频道吴发言称号'] = {id = 7264 , note = "^ff7d2f【Wu Spokesperson】" , desc = "0^ff7d2f持有此称号，\r可以消耗吴国诏书来进行阵营频道发言。" , desc_1 = "" , desc_2 = ""}
title_definition['活动端午节称号'] = {id = 7265 , note = "^a800ff【屈子护卫】" , desc = "0^ff7d2f在端午节护卫三闾大夫的英勇证明。" , desc_1 = "" , desc_2 = ""}
title_definition['阵营魏国霸主'] = {id = 7266 , note = "^ff7d2f※〓Great Wei Overlord〓※" , desc = "0^ff7d2f拥有魏国最强大势力的军团都督，\r被全国群雄推戴为霸主。\r可以发布奇袭敌国的命令。\r本周军团指令数增加100。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['阵营蜀国霸主'] = {id = 7267 , note = "^ff7d2f※〓Great Shu Overlord〓※" , desc = "0^ff7d2f拥有蜀国最强大势力的军团都督，\r被全国群雄推戴为霸主。\r可以发布奇袭敌国的命令。\r本周军团指令数增加100。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['阵营吴国霸主'] = {id = 7268 , note = "^ff7d2f※〓Great Wu Overlord〓※" , desc = "0^ff7d2f拥有吴国最强大势力的军团都督，\r被全国群雄推戴为霸主。\r可以发布奇袭敌国的命令。\r本周军团指令数增加100。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['活动端午节称号2'] = {id = 7269 , note = "^a800ff【沧浪清兮濯吾缨】" , desc = "0^ff7d2f端午节活动获得，以提醒洁身自好，永怀英灵。" , desc_1 = "" , desc_2 = ""}
title_definition['外传马超传称号1'] = {id = 7270 , note = "^72fe00【Really Don't Touch Me】" , desc = "0^ffbc3cPermanent Effect:\r^72fe00逆旅河山战场获得\r^ffffffAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['外传马超传称号2'] = {id = 7271 , note = "^0184ff【Commander Ma】" , desc = "0^ffbc3cPermanent Effect:\r^0184ff逆旅河山战场获得\r^ffffffAttack +3，Bonus Damage+5" , desc_1 = "" , desc_2 = ""}
title_definition['外传马超传称号3'] = {id = 7272 , note = "^0184ff【Big Sister Ma】" , desc = "0^ffbc3cPermanent Effect:\r^0184ff逆旅河山战场获得\r^ffffffAttack +3，Bonus Damage+5" , desc_1 = "" , desc_2 = ""}
title_definition['外传马超传称号4'] = {id = 7273 , note = "^a800ff【游刃无间因有余】" , desc = "0^ffbc3cPermanent Effect:\r^a800ff逆旅河山战场获得\r^ffffffAttack +5，Bonus Damage+5" , desc_1 = "" , desc_2 = ""}
title_definition['演义12低级称号'] = {id = 7274 , note = "^72fe00【The Unyielding】" , desc = "0^a800ff来自演义剧本麦城之战\r^72fe00永久生效\r^ffffff攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['演义12中级称号'] = {id = 7275 , note = "^0184ff【Three Hundred Warriors of Mai City】" , desc = "0^a800ff来自演义剧本麦城之战\r^72fe00永久生效\r^ffffff攻击力 +3，暴击伤害 +1%" , desc_1 = "" , desc_2 = ""}
title_definition['演义12高级称号'] = {id = 7276 , note = "^a800ff【武圣之手】" , desc = "0^a800ff来自演义剧本麦城之战\r^72fe00永久生效\r^ffffff攻击力 +5，暴击伤害 +2%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国1'] = {id = 5267 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the North〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第10名\r印玺：镇北将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国2'] = {id = 5268 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the West〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第11名\r印玺：镇西将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国3'] = {id = 5269 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the South〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第12名\r印玺：镇南将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国4'] = {id = 5270 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the East〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第13名\r印玺：镇东将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国5'] = {id = 5271 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the North〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第14名\r印玺：征北将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国6'] = {id = 5272 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the West〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第15名\r印玺：征西将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国7'] = {id = 5273 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the South〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第16名\r印玺：征南将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国8'] = {id = 5274 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the East〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第17名\r印玺：征东将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国9'] = {id = 5275 , note = "^ffbc3c〓Grade 2 Army-Supporting Grand General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第5名\r印玺：抚军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国10'] = {id = 5276 , note = "^ffbc3c〓Grade 2 Army-Guarding Grand General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第6名\r印玺：镇军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国11'] = {id = 5277 , note = "^ffbc3c〓Grade 2 Right Chariot & Cavalry General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第7名\r印玺：右车骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国12'] = {id = 5278 , note = "^ffbc3c〓Grade 2 Right Cavalry General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第8名\r印玺：右骠骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国13'] = {id = 5279 , note = "^ffbc3c〓Grade 2 Right Grand General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第9名\r印玺：右大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国1'] = {id = 5280 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the North〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第10名\r印玺：镇北将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国2'] = {id = 5281 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the West〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第11名\r印玺：镇西将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国3'] = {id = 5282 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the South〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第12名\r印玺：镇南将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国4'] = {id = 5283 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the East〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第13名\r印玺：镇东将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国5'] = {id = 5284 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the North〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第14名\r印玺：征北将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国6'] = {id = 5285 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the West〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第15名\r印玺：征西将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国7'] = {id = 5286 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the South〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第16名\r印玺：征南将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国8'] = {id = 5287 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the East〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第17名\r印玺：征东将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国9'] = {id = 5288 , note = "^ffbc3c〓Grade 2 Army-Supporting Grand General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第5名\r印玺：抚军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国10'] = {id = 5289 , note = "^ffbc3c〓Grade 2 Army-Guarding Grand General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第6名\r印玺：镇军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国11'] = {id = 5290 , note = "^ffbc3c〓Grade 2 State-Assisting Grand General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第7名\r印玺：辅国大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国12'] = {id = 5291 , note = "^ffbc3c〓Grade 2 Right Protector General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第8名\r印玺：右都护印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国13'] = {id = 5292 , note = "^ffbc3c〓Grade 2 Left Protector General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第9名\r印玺：左都护印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国1'] = {id = 5293 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the North〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第10名\r印玺：镇北将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国2'] = {id = 5294 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the West〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第11名\r印玺：镇西将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国3'] = {id = 5295 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the South〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第12名\r印玺：镇南将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国4'] = {id = 5296 , note = "^ffbc3c〓Sub-Grade 2 General Who Guards the East〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第13名\r印玺：镇东将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国5'] = {id = 5297 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the North〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第14名\r印玺：征北将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国6'] = {id = 5298 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the West〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第15名\r印玺：征西将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国7'] = {id = 5299 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the South〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第16名\r印玺：征南将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国8'] = {id = 5300 , note = "^ffbc3c〓Sub-Grade 2 General Who Conquers the East〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第17名\r印玺：征东将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国9'] = {id = 5301 , note = "^ffbc3c〓Grade 2 Army-Supporting Grand General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第5名\r印玺：抚军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国10'] = {id = 5302 , note = "^ffbc3c〓Grade 2 Army-Guarding Grand General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第6名\r印玺：镇军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国11'] = {id = 5303 , note = "^ffbc3c〓Grade 2 State-Assisting Grand General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第7名\r印玺：辅国大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国12'] = {id = 5304 , note = "^ffbc3c〓Grade 2 Central Army Grand General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第8名\r印玺：中军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国13'] = {id = 5305 , note = "^ffbc3c〓Grade 2 Upper Army Grand General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第9名\r印玺：上军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品蜀国1'] = {id = 5306 , note = "^ffbc3c〓Sub-Grade 1 Guard General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第2名\r印玺：卫将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品蜀国2'] = {id = 5307 , note = "^ffbc3c〓Sub-Grade 1 Chariot & Cavalry General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第3名\r印玺：车骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品蜀国3'] = {id = 5308 , note = "^ffbc3c〓Sub-Grade 1 Cavalry General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第4名\r印玺：骠骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品吴国1'] = {id = 5309 , note = "^ffbc3c〓Sub-Grade 1 Guard General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第2名\r印玺：卫将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品吴国2'] = {id = 5310 , note = "^ffbc3c〓Sub-Grade 1 Chariot & Cavalry General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第3名\r印玺：车骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品吴国3'] = {id = 5311 , note = "^ffbc3c〓Sub-Grade 1 Cavalry General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第4名\r印玺：骠骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品魏国1'] = {id = 5312 , note = "^ffbc3c〓Sub-Grade 1 Guard General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第2名\r印玺：卫将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品魏国2'] = {id = 5313 , note = "^ffbc3c〓Sub-Grade 1 Chariot & Cavalry General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第3名\r印玺：车骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品魏国3'] = {id = 5314 , note = "^ffbc3c〓Sub-Grade 1 Cavalry General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第4名\r印玺：骠骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官正一品蜀国'] = {id = 5315 , note = "^ffbc3c〓Grade 1 Grand General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第1名\r印玺：大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官正一品吴国'] = {id = 5316 , note = "^ffbc3c〓Grade 1 Grand Commander〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第1名\r印玺：大都督印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官正一品魏国'] = {id = 5317 , note = "^ffbc3c〓Grade 1 Grand General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第1名\r印玺：大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国1'] = {id = 5318 , note = "^ffbc3c〓Sub-Grade 2 Left Fengyi Governor〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第10名\r印玺：左冯翊印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国2'] = {id = 5319 , note = "^ffbc3c〓Sub-Grade 2 Right Fuyi Governor〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第11名\r印玺：右扶风印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国3'] = {id = 5320 , note = "^ffbc3c〓Sub-Grade 2 Capital Governor〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第12名\r印玺：京兆尹印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国4'] = {id = 5321 , note = "^ffbc3c〓Sub-Grade 2 Grand Chamberlain〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第13名\r印玺：大长秋印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国5'] = {id = 5322 , note = "^ffbc3c〓Sub-Grade 2 Minister of Imperial Clan〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第14名\r印玺：宗正印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国6'] = {id = 5323 , note = "^ffbc3c〓Sub-Grade 2 Minister of Justice〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第15名\r印玺：廷尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国7'] = {id = 5324 , note = "^ffbc3c〓Sub-Grade 2 Master of Ceremonies〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第16名\r印玺：光禄勋印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国8'] = {id = 5325 , note = "^ffbc3c〓Sub-Grade 2 Privy Treasurer〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第17名\r印玺：少府印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国9'] = {id = 5326 , note = "^ffbc3c〓Grade 2 Grand Coachman〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第5名\r印玺：太仆印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国10'] = {id = 5327 , note = "^ffbc3c〓Grade 2 Grand Ceremonial〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第6名\r印玺：太常印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国11'] = {id = 5328 , note = "^ffbc3c〓Grade 2 Guard Commander〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第7名\r印玺：卫尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国12'] = {id = 5329 , note = "^ffbc3c〓Grade 2 Grand Ceremonial Master〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第8名\r印玺：大鸿胪印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国13'] = {id = 5330 , note = "^ffbc3c〓Grade 2 Grand Minister of Agriculture〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第9名\r印玺：大司农印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国1'] = {id = 5331 , note = "^ffbc3c〓Sub-Grade 2 Left Fengyi Governor〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第10名\r印玺：左冯翊印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国2'] = {id = 5332 , note = "^ffbc3c〓Sub-Grade 2 Right Fuyi Governor〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第11名\r印玺：右扶风印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国3'] = {id = 5333 , note = "^ffbc3c〓Sub-Grade 2 Capital Governor〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第12名\r印玺：京兆尹印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国4'] = {id = 5334 , note = "^ffbc3c〓Sub-Grade 2 Grand Chamberlain〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第13名\r印玺：大长秋印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国5'] = {id = 5335 , note = "^ffbc3c〓Sub-Grade 2 Minister of Imperial Clan〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第14名\r印玺：宗正印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国6'] = {id = 5336 , note = "^ffbc3c〓Sub-Grade 2 Minister of Justice〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第15名\r印玺：廷尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国7'] = {id = 5337 , note = "^ffbc3c〓Sub-Grade 2 Master of Ceremonies〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第16名\r印玺：光禄勋印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国8'] = {id = 5338 , note = "^ffbc3c〓Sub-Grade 2 Privy Treasurer〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第17名\r印玺：少府印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国9'] = {id = 5339 , note = "^ffbc3c〓Grade 2 Grand Coachman〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第5名\r印玺：太仆印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国10'] = {id = 5340 , note = "^ffbc3c〓Grade 2 Grand Ceremonial〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第6名\r印玺：太常印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国11'] = {id = 5341 , note = "^ffbc3c〓Grade 2 Guard Commander〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第7名\r印玺：卫尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国12'] = {id = 5342 , note = "^ffbc3c〓Grade 2 Grand Ceremonial Master〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第8名\r印玺：大鸿胪印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国13'] = {id = 5343 , note = "^ffbc3c〓Grade 2 Grand Minister of Agriculture〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第9名\r印玺：大司农印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国1'] = {id = 5344 , note = "^ffbc3c〓Sub-Grade 2 Left Fengyi Governor〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第10名\r印玺：左冯翊印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国2'] = {id = 5345 , note = "^ffbc3c〓Sub-Grade 2 Right Fuyi Governor〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第11名\r印玺：右扶风印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国3'] = {id = 5346 , note = "^ffbc3c〓Sub-Grade 2 Capital Governor〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第12名\r印玺：京兆尹印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国4'] = {id = 5347 , note = "^ffbc3c〓Sub-Grade 2 Grand Chamberlain〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第13名\r印玺：大长秋印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国5'] = {id = 5348 , note = "^ffbc3c〓Sub-Grade 2 Minister of Imperial Clan〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第14名\r印玺：宗正印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国6'] = {id = 5349 , note = "^ffbc3c〓Sub-Grade 2 Minister of Justice〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第15名\r印玺：廷尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国7'] = {id = 5350 , note = "^ffbc3c〓Sub-Grade 2 Master of Ceremonies〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第16名\r印玺：光禄勋印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国8'] = {id = 5351 , note = "^ffbc3c〓Sub-Grade 2 Privy Treasurer〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第17名\r印玺：少府印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国9'] = {id = 5352 , note = "^ffbc3c〓Grade 2 Grand Coachman〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第5名\r印玺：太仆印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国10'] = {id = 5353 , note = "^ffbc3c〓Grade 2 Grand Ceremonial〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第6名\r印玺：太常印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国11'] = {id = 5354 , note = "^ffbc3c〓Grade 2 Guard Commander〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第7名\r印玺：卫尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国12'] = {id = 5355 , note = "^ffbc3c〓Grade 2 Grand Ceremonial Master〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第8名\r印玺：大鸿胪印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国13'] = {id = 5356 , note = "^ffbc3c〓Grade 2 Grand Minister of Agriculture〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第9名\r印玺：大司农印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品蜀国1'] = {id = 5357 , note = "^ffbc3c〓Sub-Grade 1 Minister of Education〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第2名\r印玺：司空印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品蜀国2'] = {id = 5358 , note = "^ffbc3c〓Sub-Grade 1 Minister of Works〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第3名\r印玺：司徒印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品蜀国3'] = {id = 5359 , note = "^ffbc3c〓Sub-Grade 1 Grand Commandant〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第4名\r印玺：太尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品吴国1'] = {id = 5360 , note = "^ffbc3c〓Sub-Grade 1 Minister of Education〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第2名\r印玺：司空印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品吴国2'] = {id = 5361 , note = "^ffbc3c〓Sub-Grade 1 Minister of Works〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第3名\r印玺：司徒印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品吴国3'] = {id = 5362 , note = "^ffbc3c〓Sub-Grade 1 Grand Commandant〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第4名\r印玺：太尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品魏国1'] = {id = 5363 , note = "^ffbc3c〓Sub-Grade 1 Minister of Education〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第2名\r印玺：司空印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品魏国2'] = {id = 5364 , note = "^ffbc3c〓Sub-Grade 1 Minister of Works〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第3名\r印玺：司徒印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品魏国3'] = {id = 5365 , note = "^ffbc3c〓Sub-Grade 1 Grand Commandant〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第4名\r印玺：太尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官正一品蜀国'] = {id = 5366 , note = "^ffbc3c〓Grade 1 Grand Chancellor〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第1名\r印玺：大丞相印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官正一品吴国'] = {id = 5367 , note = "^ffbc3c〓Grade 1 Grand Chancellor〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第1名\r印玺：大丞相印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官正一品魏国'] = {id = 5368 , note = "^ffbc3c〓Grade 1 Grand Chancellor〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第1名\r印玺：大丞相印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品1魏国'] = {id = 5369 , note = "^ffbc3c〓Sub-Grade 2 Front Inspector〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第18－30名\r印玺：前监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品2魏国'] = {id = 5370 , note = "^ffbc3c〓Sub-Grade 2 Rear Inspector〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第31－50名\r印玺：后监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品3魏国'] = {id = 5371 , note = "^ffbc3c〓Sub-Grade 2 Left Inspector〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第51－100名\r印玺：左监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品4魏国'] = {id = 5372 , note = "^ffbc3c〓Sub-Grade 2 Right Inspector〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国文官上月获得Renown排行榜第101－1000名\r印玺：右监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品1蜀国'] = {id = 5373 , note = "^ffbc3c〓Sub-Grade 2 Front Inspector〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第18－30名\r印玺：前监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品2蜀国'] = {id = 5374 , note = "^ffbc3c〓Sub-Grade 2 Rear Inspector〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第31－50名\r印玺：后监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品3蜀国'] = {id = 5375 , note = "^ffbc3c〓Sub-Grade 2 Left Inspector〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第51－100名\r印玺：左监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品4蜀国'] = {id = 5376 , note = "^ffbc3c〓Sub-Grade 2 Right Inspector〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国文官上月获得Renown排行榜第101－1000名\r印玺：右监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品1吴国'] = {id = 5377 , note = "^ffbc3c〓Sub-Grade 2 Front Inspector〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第18－30名\r印玺：前监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品2吴国'] = {id = 5378 , note = "^ffbc3c〓Sub-Grade 2 Rear Inspector〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第31－50名\r印玺：后监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品3吴国'] = {id = 5379 , note = "^ffbc3c〓Sub-Grade 2 Left Inspector〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第51－100名\r印玺：左监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品4吴国'] = {id = 5380 , note = "^ffbc3c〓Sub-Grade 2 Right Inspector〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国文官上月获得Renown排行榜第101－1000名\r印玺：右监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品1魏国'] = {id = 5381 , note = "^ffbc3c〓Sub-Grade 2 Front Vanguard General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第18－30名\r印玺：前领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品2魏国'] = {id = 5382 , note = "^ffbc3c〓Sub-Grade 2 Rear Vanguard General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第31－50名\r印玺：后领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品3魏国'] = {id = 5383 , note = "^ffbc3c〓Sub-Grade 2 Left Vanguard General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第51－100名\r印玺：左领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品4魏国'] = {id = 5384 , note = "^ffbc3c〓Sub-Grade 2 Right Vanguard General〓" , desc = "1^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：魏\r来源：魏国武官上月获得Renown排行榜第101－1000名\r印玺：右领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品1蜀国'] = {id = 5385 , note = "^ffbc3c〓Sub-Grade 2 Front Vanguard General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第18－30名\r印玺：前领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品2蜀国'] = {id = 5386 , note = "^ffbc3c〓Sub-Grade 2 Rear Vanguard General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第31－50名\r印玺：后领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品3蜀国'] = {id = 5387 , note = "^ffbc3c〓Sub-Grade 2 Left Vanguard General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第51－100名\r印玺：左领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品4蜀国'] = {id = 5388 , note = "^ffbc3c〓Sub-Grade 2 Right Vanguard General〓" , desc = "2^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：蜀\r来源：蜀国武官上月获得Renown排行榜第101－1000名\r印玺：右领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品1吴国'] = {id = 5389 , note = "^ffbc3c〓Sub-Grade 2 Front Vanguard General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第18－30名\r印玺：前领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品2吴国'] = {id = 5390 , note = "^ffbc3c〓Sub-Grade 2 Rear Vanguard General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第31－50名\r印玺：后领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品3吴国'] = {id = 5391 , note = "^ffbc3c〓Sub-Grade 2 Left Vanguard General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第51－100名\r印玺：左领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品4吴国'] = {id = 5392 , note = "^ffbc3c〓Sub-Grade 2 Right Vanguard General〓" , desc = "3^ffbc3cPermanent Effect:\r^ffffffMax HP +10\r阵营：吴\r来源：吴国武官上月获得Renown排行榜第101－1000名\r印玺：右领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号01关内侯'] = {id = 7277 , note = "^72fe00【Marquis Within the Pass】" , desc = "0^72fe00Peerage earned at Renown 2000-4999." , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号02乡侯'] = {id = 7278 , note = "^0184ff【Village Marquis】" , desc = "0^0184ffPeerage earned at Renown 5000-9999." , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号03县侯'] = {id = 7279 , note = "^0184ff【County Marquis】" , desc = "0^0184ffPeerage earned at Renown 10000-19999." , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号04男爵'] = {id = 7280 , note = "^a800ff【Baron】" , desc = "0^a800ffPeerage earned at Renown 20000-79999." , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号05子爵'] = {id = 7281 , note = "^a800ff【Viscount】" , desc = "0^a800ffPeerage earned at Renown 80000-179999." , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号06伯爵'] = {id = 7282 , note = "^a800ff【Earl】" , desc = "0^a800ffPeerage earned at Renown 180000-349999." , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号07侯爵'] = {id = 7283 , note = "^ff7d2f【Marquis】" , desc = "0^ff7d2f名望350000——599999获得的爵位。" , desc_1 = "" , desc_2 = ""}
title_definition['活动团团称号'] = {id = 7284 , note = "^ff4ca4【我的团长我的团】" , desc = "0^ff7d2f倾团之战后获得，惟以铭记军团伙伴：皇天后土，尘世苍茫，生死与共，情谊绵长。" , desc_1 = "" , desc_2 = ""}
title_definition['称号_魏国军团长称号'] = {id = 7285 , note = "^72fe00【Wei Chieftain】" , desc = "0You are now a member of Kingdom of Wei!\rStatus: Legion Leader" , desc_1 = "" , desc_2 = ""}
title_definition['称号_蜀国军团长称号'] = {id = 7286 , note = "^72fe00【Shu Chieftain】" , desc = "0You are now a member of Kingdom of Wei!\rStatus: Legion Leader" , desc_1 = "" , desc_2 = ""}
title_definition['称号_吴国军团长称号'] = {id = 7287 , note = "^72fe00【Wu Chieftain】" , desc = "0You are now a member of Kingdom of Wei!\rStatus: Legion Leader" , desc_1 = "" , desc_2 = ""}
title_definition['称号_大汉军团长称号'] = {id = 7288 , note = "^72fe00【Great Han Chieftain】" , desc = "0You are now a member of Kingdom of Wei!\rStatus: Legion Leader" , desc_1 = "" , desc_2 = ""}
title_definition['外传貂婵传1'] = {id = 7289 , note = "^72fe00【Hand in Hand with Loli in the Night Cool】" , desc = "0^72fe00Permanent Effect:\r^ffffff\rAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['外传貂婵传2'] = {id = 7290 , note = "^72fe00【Love the Realm, Love Beauty More】" , desc = "0^72fe00Permanent Effect:\r^ffffff\rDefense +2" , desc_1 = "" , desc_2 = ""}
title_definition['外传貂婵传3'] = {id = 7291 , note = "^a800ff【生怕情多累美人】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +20\rAttack +5\rCrit Damage +2%" , desc_1 = "" , desc_2 = ""}
title_definition['外传貂婵传4'] = {id = 7292 , note = "^a800ff【两生花开不记年】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +20\rAttack +5\rCrit Damage +2%" , desc_1 = "" , desc_2 = ""}
title_definition['阵营战地图称号1'] = {id = 7293 , note = "^a800ff【子午谷名将】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP +60\rAttack +2\rAccuracy+2\rCrit Damage +3%" , desc_1 = "" , desc_2 = ""}
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
title_definition['军团名望每周排行魏国第2'] = {id = 7315 , note = "^a800ff【Great Wei Heroic Lord】" , desc = "0^a800ff拥有魏国第二大势力的军团都督\r本周军团指令数增加80。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行魏国第3'] = {id = 7316 , note = "^a800ff【Great Wei Wise Lord】" , desc = "0^a800ff拥有魏国第三大势力的军团都督\r本周军团指令数增加70。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行魏国第4'] = {id = 7317 , note = "^a800ff【Great Wei Mighty Lord】" , desc = "0^a800ff拥有魏国第四大势力的军团都督\r本周军团指令数增加60。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行魏国第5'] = {id = 7318 , note = "^a800ff【Great Wei Strong Lord】" , desc = "0^a800ff拥有魏国第五大势力的军团都督\r本周军团指令数增加50。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行蜀国第2'] = {id = 7319 , note = "^a800ff【Great Shu Heroic Lord】" , desc = "0^a800ff拥有蜀国第二大势力的军团都督\r本周军团指令数增加80。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行蜀国第3'] = {id = 7320 , note = "^a800ff【Great Shu Wise Lord】" , desc = "0^a800ff拥有蜀国第三大势力的军团都督\r本周军团指令数增加70。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行蜀国第4'] = {id = 7321 , note = "^a800ff【Great Shu Mighty Lord】" , desc = "0^a800ff拥有蜀国第四大势力的军团都督\r本周军团指令数增加60。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行蜀国第5'] = {id = 7322 , note = "^a800ff【Great Shu Strong Lord】" , desc = "0^a800ff拥有蜀国第五大势力的军团都督\r本周军团指令数增加50。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行吴国第2'] = {id = 7323 , note = "^a800ff【Great Wu Heroic Lord】" , desc = "0^a800ff拥有吴国第二大势力的军团都督\r本周军团指令数增加80。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行吴国第3'] = {id = 7324 , note = "^a800ff【Great Wu Wise Lord】" , desc = "0^a800ff拥有吴国第三大势力的军团都督\r本周军团指令数增加70。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行吴国第4'] = {id = 7325 , note = "^a800ff【Great Wu Mighty Lord】" , desc = "0^a800ff拥有吴国第四大势力的军团都督\r本周军团指令数增加60。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行吴国第5'] = {id = 7326 , note = "^a800ff【Great Wu Strong Lord】" , desc = "0^a800ff拥有吴国第五大势力的军团都督\r本周军团指令数增加50。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['无双隆中奇情称号01'] = {id = 7327 , note = "^72fe00【How Many Times in Dreams With You】" , desc = "0Title earned in Peerless Battlefield "Romance at Longzhong"\rAttack +3" , desc_1 = "" , desc_2 = ""}
title_definition['无双隆中奇情称号02'] = {id = 7328 , note = "^0184ff【Fearing This Meeting Is a Dream】" , desc = "0Title earned in Peerless Battlefield "Romance at Longzhong"\rAttack +5, Max HP +20" , desc_1 = "" , desc_2 = ""}
title_definition['无双隆中奇情称号03'] = {id = 7329 , note = "^a800ff【风月情浓痴情种】" , desc = "0Title earned in Peerless Battlefield "Romance at Longzhong"\rAttack +10, Max HP +50" , desc_1 = "" , desc_2 = ""}
title_definition['百团盛典活动称号-老玩家'] = {id = 7330 , note = "^d181ff【天下谁人不识君】" , desc = "0老玩家专属的尊荣称号" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营魏国入门2'] = {id = 7331 , note = "^72fe00【Citizen of Wei】" , desc = "0You have now become a citizen of Kingdom of Wei!" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营蜀国入门2'] = {id = 7332 , note = "^72fe00【Citizen of Shu】" , desc = "0You have now become a citizen of Kingdom of Shu!" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营吴国入门2'] = {id = 7333 , note = "^72fe00【Citizen of Wu】" , desc = "0You have now become a citizen of Kingdom of Wu!" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营无国家称号1'] = {id = 7334 , note = "^72fe00【Living Idle in a Thatched Hut】" , desc = "0You have not joined any nation yet!" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营无国家称号2'] = {id = 7335 , note = "^72fe00【Wandering Free Agent】" , desc = "0You are now a wandering free agent!" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营无国家称号3'] = {id = 7336 , note = "^72fe00【Idle Cloud, Wild Crane】" , desc = "0You are now a free wanderer!" , desc_1 = "" , desc_2 = ""}
title_definition['百团盛典活动称号-声望兑换'] = {id = 7337 , note = "^deff00【万水千山总关情】" , desc = "0Earned in Hundred Legions Celebration Event, recording footsteps across the homeland; homesickness lives forever in the wanderer's heart." , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号08公爵'] = {id = 7338 , note = "^ff7d2f【Duke】" , desc = "0^ff7d2f名望600000——999999获得的爵位。" , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号09王爵'] = {id = 7339 , note = "^ff7d2f【King】" , desc = "0^ff7d2f名望达到1000000以上，获得的最高爵位。" , desc_1 = "" , desc_2 = ""}
title_definition['故土声望排行隐藏称号1'] = {id = 7340 , note = "" , desc = "Ranks 01-3" , desc_1 = "" , desc_2 = ""}
title_definition['故土声望排行隐藏称号2'] = {id = 7341 , note = "" , desc = "Ranks 04-10" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号01'] = {id = 7342 , note = "^72fe00【$T's Apprentice】" , desc = "0^72fe00Mentor & Apprentice title reward" , desc_1 = "" , desc_2 = ""}
title_definition['七星湖南中蛮王'] = {id = 7343 , note = "^d181ff【南中蛮王】" , desc = "0^d181ff在七星湖得到孟获军所有人物图鉴获得的珍贵称号，\r完成孟获友好度相关战术任务时可以获得双倍名望加成。" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号02'] = {id = 7344 , note = "^ffffff【Novice Master】" , desc = "0^ffffff师徒奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号03'] = {id = 7345 , note = "^72fe00【Intermediate Master】" , desc = "0^72fe00Mentor & Apprentice reward title" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号04'] = {id = 7346 , note = "^0184ff【Senior Master】" , desc = "0^0184ffMentor & Apprentice reward title" , desc_1 = "" , desc_2 = ""}
title_definition['义结天下奖励称号'] = {id = 7347 , note = "^72fe00【Assembly Call】" , desc = "0Reward title from Brotherhood of the World Event!" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号05'] = {id = 7348 , note = "^a800ff【Novice Teacher】" , desc = "0^a800ff师徒奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号06'] = {id = 7349 , note = "^ff7d2f【Intermediate Teacher】" , desc = "0^ff7d2f师徒奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号07'] = {id = 7350 , note = "^fff962【Senior Teacher】" , desc = "0^fff962师徒奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号08'] = {id = 7351 , note = "^ff7d2f【天朝良师】" , desc = "0^ff7d2f师德排行奖励称号\r^ffffff生命值+200 防御力+2" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号01'] = {id = 7352 , note = "^ff4ca4【绝妙问题提供者】" , desc = "0绝妙问题提供者" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号02'] = {id = 7353 , note = "^3bbcec【Question Giver】" , desc = "0Question Giver" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号03'] = {id = 7354 , note = "^72fe00【鼓励奖】" , desc = "0鼓励奖" , desc_1 = "" , desc_2 = ""}
title_definition['跨服竞技全国冠军'] = {id = 7355 , note = "^ff7d2f【Chibi Overlord】" , desc = "0^ff7d2f在跨服军团竞技赛获得冠军，天下无敌的强大军团的一员！" , desc_1 = "" , desc_2 = ""}
title_definition['跨服竞技全国亚军'] = {id = 7356 , note = "^ff7d2f【Chibi Tiger General】" , desc = "0^ff7d2f在跨服军团竞技赛获得亚军，名震天下的强大军团的一员！" , desc_1 = "" , desc_2 = ""}
title_definition['跨服竞技全国季军'] = {id = 7357 , note = "^ff7d2fHigh Minister of Chibi" , desc = "0^ff7d2f在跨服军团竞技赛获得季军，名扬天下的强大军团的一员！" , desc_1 = "" , desc_2 = ""}
title_definition['跨服竞技全国4－6名'] = {id = 7358 , note = "^ff7d2fCelebrity of Chibi" , desc = "0^ff7d2f在跨服军团竞技赛晋身前六名，名闻天下的强大军团的一员！" , desc_1 = "" , desc_2 = ""}
title_definition['演义逆旅河山01'] = {id = 7359 , note = "^72fe00【Wanderer of the Reversing Journey】" , desc = "0^72fe00演义战场“逆旅河山”中获得的称号\r攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['演义逆旅河山02'] = {id = 7360 , note = "^0184ff【A Thousand Years a Wanderer, Idly Asking Flowers】" , desc = "0^0184ffTitle earned in Chronicle Battlefield "Reversing Rivers and Mountains"\rAttack +3, Defense +1" , desc_1 = "" , desc_2 = ""}
title_definition['演义逆旅河山03'] = {id = 7361 , note = "^a800ff【三千世界万行具足觉妙如来逆时自在法王】" , desc = "0^a800ff演义战场“逆旅河山”中获得的称号\r攻击力+5,防御值+2，体力值+5" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_七夕称号01'] = {id = 7362 , note = "^a800ff【在天愿作比翼鸟】" , desc = "0Title earned in Qixi Event!" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_七夕称号02'] = {id = 7363 , note = "^a800ff【在地愿为连理枝】" , desc = "0Title earned in Qixi Event!" , desc_1 = "" , desc_2 = ""}
title_definition['09七夕称号01'] = {id = 7364 , note = "^a800ff【风情万种鹊桥归】" , desc = "0^fff600七夕活动获得。拥有999朵蓝色妖姬，人所钟情的绝世美人！" , desc_1 = "" , desc_2 = ""}
title_definition['09七夕称号02'] = {id = 7365 , note = "^a800ff【在水一方蓝颜醉】" , desc = "0^fff600七夕活动获得。拥有999朵蓝色妖姬，人所钟情的无双君子！" , desc_1 = "" , desc_2 = ""}
title_definition['商城积分月榜第1隐藏称号'] = {id = 7366 , note = "^fffd44【天禄小福神】" , desc = "0^fffd44每月消费积分排行榜第一名获得的称号\r生命值+1000 暴击+5 命中+10 治疗点数+150\r^fffd44有效期至每月月底" , desc_1 = "" , desc_2 = ""}
title_definition['商城积分月榜第2-10隐藏称号'] = {id = 7367 , note = "^ff9c00【天禄小福星】" , desc = "0^ff9c00每月消费积分排行榜第二至十名获得的称号\r生命值+500 暴击+2 命中+5 治疗点数+80\r^ff9c00有效期至每月月底" , desc_1 = "" , desc_2 = ""}
title_definition['09中秋称号01'] = {id = 7368 , note = "^ff7d2f【天若有情天亦老】" , desc = "0^ff7d2f中秋活动奖励称号！" , desc_1 = "" , desc_2 = ""}
title_definition['09中秋称号02'] = {id = 7369 , note = "^ff7d2f【月如无恨月长圆】" , desc = "0^ff7d2f中秋活动奖励称号！" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城文官称号'] = {id = 7370 , note = "^d181ff【智谋贯通】" , desc = "0^d181ff获得了所有八枚文官列传图鉴的嘉奖，\r可向长安图鉴使者张华一次性领取10000点文勋和10000点功勋。" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城武官称号'] = {id = 7371 , note = "^d181ff【兵法透彻】" , desc = "0^d181ff获得了所有八枚武官列传图鉴的嘉奖，\r可向长安图鉴使者张华一次性领取10000点武勋和10000点功勋。" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商1'] = {id = 7372 , note = "^72fe00【Wandering Mountain Peddler】" , desc = "0^72fe00白帝城跑商中获得的称号\r攻击力 +2，防御力+1" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商2'] = {id = 7373 , note = "^0184ff【Meticulous Little Merchant】" , desc = "0^0184ffTitle earned in Baidi City Trade Run\rMax HP +10, Attack +5, Defense +3" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商3'] = {id = 7374 , note = "^a800ff【Baidi City Honored Merchant】" , desc = "0^a800ff白帝城跑商中获得的称号\r生命值+60，攻击力 +10，防御力+5" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商4'] = {id = 7375 , note = "^ff4ca4【献爱心的小商人】" , desc = "0^ff4ca4白帝城跑商中获得的称号\r治疗属性+1%" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商5'] = {id = 7376 , note = "^ff4ca4【口吐莲花小商人】" , desc = "0^ff4ca4白帝城跑商中获得的称号\r附加伤害+2" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商6'] = {id = 7377 , note = "^ff4ca4【被忽悠了的善良商人】" , desc = "0^ff4ca4白帝城跑商中获得的称号\r体力值+5" , desc_1 = "" , desc_2 = ""}
title_definition['PK之王个人赛冠军'] = {id = 7378 , note = "^ff4ca4【Personal Tournament Champion】" , desc = "0^ff4ca4PK之王个人赛的冠军！" , desc_1 = "" , desc_2 = ""}
title_definition['PK之王个人赛亚军'] = {id = 7379 , note = "^ff7d2f【Personal Tournament Runner-up】" , desc = "0^ff7d2fPK之王个人赛的亚军！" , desc_1 = "" , desc_2 = ""}
title_definition['PK之王个人赛季军'] = {id = 7380 , note = "^a800ff【Personal Tournament 3rd Place】" , desc = "0^a800ffPK之王个人赛的季军！" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片灵气称号01'] = {id = 7381 , note = "^ff7d2f【灵气称号1】" , desc = "0^ff7d2f中秋活动奖励称号！" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片灵气称号02'] = {id = 7382 , note = "^ff7d2f【灵气称号2】" , desc = "0^ff7d2f中秋活动奖励称号！" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片灵气称号03'] = {id = 7383 , note = "^ff7d2f【灵气称号3】" , desc = "0^ff7d2f中秋活动奖励称号！" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片老玩家回归称号01'] = {id = 7384 , note = "^ff7d2f【红尘数见应识我】" , desc = "0^ff7d2f热血战魂老玩家回归专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片老玩家回归称号02'] = {id = 7385 , note = "^ff7d2f【碧山入画又逢君】" , desc = "0^ff7d2f热血战魂老玩家回归专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片老玩家回归称号03'] = {id = 7386 , note = "^ff7d2f【白云堪卧君早归】" , desc = "0^ff7d2f热血战魂老玩家回归专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['战魂前提称号'] = {id = 7387 , note = "^ff7200【战魂使】" , desc = "0^ff7200拥有了与战魂产生共鸣的能力\r生命+50，攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['战魂活动称号'] = {id = 7388 , note = "^ff7d2f【祈魂大师】" , desc = "0^ff7d2f祈魂大典获得的称号" , desc_1 = "" , desc_2 = ""}
title_definition['09圣诞活动称号01'] = {id = 7389 , note = "^ffc556【Shining Christmas Archangel】" , desc = "0^ff6fb3被四面八方的雪球击中，可谓2009年圣诞节最受欢迎的大天使！" , desc_1 = "" , desc_2 = ""}
title_definition['09圣诞活动称号02'] = {id = 7390 , note = "^ffc556【Flying Snow Christmas Little Devil】" , desc = "0^ff6fb3偷偷向别人扔祝福雪球，可谓2009年圣诞节最可爱的小恶魔！" , desc_1 = "" , desc_2 = ""}
title_definition['09圣诞活动称号03'] = {id = 7391 , note = "^ff7d2f【坐看云起万里鹏程】" , desc = "0^ff6fb32010年元旦登高的收获。新年立志高远，你的未来将无比美好！" , desc_1 = "" , desc_2 = ""}
title_definition['二周年庆典称号01'] = {id = 7392 , note = "^a800ff【三国巡礼者】" , desc = "0^ff7d2f赤壁二周年庆典独享称号！凭此称号可在每天完成横刀立马或千里平乱任务后领取一次高额历练奖励。" , desc_1 = "" , desc_2 = ""}
title_definition['二周年庆典称号02'] = {id = 7393 , note = "^ff7d2f【历史见证者】" , desc = "0^a800ff历史的沧桑与辉煌，赤壁的风雨和成长，尽在有心人眼中。" , desc_1 = "" , desc_2 = ""}
title_definition['虎年高级VIP称号'] = {id = 7394 , note = "^ff7d2f【五湖四海皆春色万水千山尽得辉】" , desc = "0^a800ff高级VIP的象征" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号04'] = {id = 7395 , note = "^ff4ca4【绝妙问题提供者】" , desc = "0绝妙问题提供者" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号05'] = {id = 7396 , note = "^3bbcec【Question Giver】" , desc = "0Question Giver" , desc_1 = "" , desc_2 = ""}
title_definition['二周年庆典称号03'] = {id = 7397 , note = "^ff7d2f【登崖一啸千峰鸣】" , desc = "0^a800ff继往开来，破旧立新，开创新的时代。" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_活动称号1'] = {id = 7398 , note = "^72fe00【Hot-Blooded Youth】" , desc = "革命百年活动称号" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_活动称号2'] = {id = 7399 , note = "^ff7d2f【抛头颅撒热血】" , desc = "革命百年活动称号" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号06'] = {id = 7400 , note = "^72fe00【鼓励奖】" , desc = "0鼓励奖" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉13'] = {id = 7401 , note = "^72fe00【Kill Buddhas If They Stand in the Way】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +10" , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度魏1'] = {id = 7402 , note = "^ff7d2f【Great Wei Peerless Commander】" , desc = "0^72fe00Kingdom of Wei Legion last week's Activity Rank 1st reward title!\r可于周日晚18:00 to 22:00间在军团基地\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度魏2-5'] = {id = 7403 , note = "^a800ff【Great Wei Elite Commander】" , desc = "0^72fe00Kingdom of Wei Legion last week's Activity Rank 2nd to 5th reward title!\r可于周日晚18:00 to 22:00间在军团基地\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度魏6-15'] = {id = 7404 , note = "^0184ff【Great Wei Outstanding Commander】" , desc = "0^72fe00Kingdom of Wei Legion last week's Activity Rank 6th to 15th reward title!\r可于周日晚18:00 to 22:00间在军团基地\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度蜀1'] = {id = 7405 , note = "^ff7d2f【Great Shu Peerless Commander】" , desc = "0^72fe00Kingdom of Shu Legion last week's Activity Rank 1st reward title!\r可于周日晚18:00 to 22:00间在军团基地\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度蜀2-5'] = {id = 7406 , note = "^a800ff【Great Shu Elite Commander】" , desc = "0^72fe00Kingdom of Shu Legion last week's Activity Rank 2nd to 5th reward title!\r可于周日晚18:00 to 22:00间在军团基地\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度蜀6-15'] = {id = 7407 , note = "^0184ff【Great Shu Outstanding Commander】" , desc = "0^72fe00Kingdom of Shu Legion last week's Activity Rank 6th to 15th reward title!\r可于周日晚18:00 to 22:00间在军团基地\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度吴1'] = {id = 7408 , note = "^ff7d2f【Great Wu Peerless Commander】" , desc = "0^72fe00Kingdom of Wu Legion last week's Activity Rank 1st reward title!\r可于周日晚18:00 to 22:00间在军团基地\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度吴2-5'] = {id = 7409 , note = "^a800ff【Great Wu Elite Commander】" , desc = "0^72fe00Kingdom of Wu Legion last week's Activity Rank 2nd to 5th reward title!\r可于周日晚18:00 to 22:00间在军团基地\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度吴6-15'] = {id = 7410 , note = "^0184ff【Great Wu Outstanding Commander】" , desc = "0^72fe00Kingdom of Wu Legion last week's Activity Rank 6th to 15th reward title!\r可于周日晚18:00 to 22:00间在军团基地\rfrom the Military Affairs Officer's Martial Arts Practice Ground.\r(Cannot claim if the Legion Leader's kingdom differs from the Legion's kingdom!)\rNote: Each level gained by a Legion member brings a large amount of Activity." , desc_1 = "" , desc_2 = ""}
title_definition['4月资料片老玩家回归称号'] = {id = 7411 , note = "^ff7d2f【大将归来战沙场】" , desc = "0^ff7d2f老玩家回归专属称号！\r4月19日后上线可获得高额经验奖励\r4.19到5.9期间，每天可组队作为队长在虎大将处开启“大将军的印记”任务，获取高额奖励！" , desc_1 = "" , desc_2 = ""}
title_definition['虎年四月资料片送水称号'] = {id = 7412, note = "^ff7d2f【我比明星有爱心】" , desc = "0^ff7d2f累积上交20个爱心甘露获得的专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['5月主题活动祈福称号'] = {id = 7413, note = "^ff7200【天佑中华 同心祈福】" , desc = "0^ff7200天佑中华祈福活动专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['5月主题活动欢乐积分排行榜第1名称号'] = {id = 7414, note = "^ff7200【招财进宝小财神】" , desc = "0^ff7200欢乐积分排行榜第1名专属称号！\r拥有此称号，可前往完美礼品使者处领取奖品。" , desc_1 = "" , desc_2 = ""}
title_definition['5月主题活动欢乐积分排行榜第2-10名称号'] = {id = 7415, note = "^ff7200【招财小神】" , desc = "0^ff7200欢乐积分排行榜第2-10名专属称号！\r拥有此称号，可前往完美礼品使者处领取奖品。" , desc_1 = "" , desc_2 = ""}
title_definition['5月主题活动欢乐积分排行榜第111-100名称号'] = {id = 7416, note = "^ff7200【进宝小仙】" , desc = "0^ff7200欢乐积分排行榜第11-100名专属称号！\r拥有此称号，可前往完美礼品使者处领取奖品。" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片洛阳剧情称号1'] = {id = 7417 , note = "^ff7d2f【英雄命格】" , desc = "0^ff7d2f任何一项武艺达到尊级九段获得的命格，\r可以找长安城壶公开启新的英雄道路。\r永久生效:\r^ffffff攻击力+10\防御力+5\体质+10\命中+1" , desc_1 = "" , desc_2 = ""}
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
title_definition['2010资料片活动钓鱼称号1'] = {id = 7436 , note = "^72fe00【Luo Fishing Joy: Hunt East, Fish West】" , desc = "0^72fe00钓鱼之神技的初窥门道者\r^72fe00永久生效:\r^ffffff攻击力+2\r命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号2'] = {id = 7437 , note = "^72fe00【Luo Fishing Joy: Fish in Troubled Waters】" , desc = "0^72fe00钓鱼之神技的初入门道者\r^72fe00永久生效:\r^ffffff攻击力+5\r命中+2\r体质+10" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号3'] = {id = 7438 , note = "^0184ff【Luo Fishing Joy: The Beauty Angling】" , desc = "0^0184ff逐步体验到钓鱼神技的奥妙\r^72fe00永久生效:\r^ffffff攻击力+10\r命中+3\r体质+20" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号4'] = {id = 7439 , note = "^0184ff【Luo Fishing Joy: Leaf-Boat Storm】" , desc = "0^0184ff磨练垂钓的技艺\r^72fe00永久生效:\r^ffffff攻击力+15\r命中+4\r体质+40" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号5'] = {id = 7440 , note = "^a800ff【洛渔乐·白头笠翁】" , desc = "0^a800ff垂钓技艺已经成为你一生的追求\r^72fe00永久生效:\r^ffffff攻击力+20\r命中+4\r体质+80" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号6'] = {id = 7441 , note = "^ff7d2f【洛渔乐·愿者上钩】" , desc = "0^ff7d2f你的钓鱼技艺已经达到垂钓于无形的境界\r^72fe00永久生效:\r^ffffff攻击力+30\r命中+4\r体质+160" , desc_1 = "" , desc_2 = ""}
title_definition['端午节高级VIP尊贵称号'] = {id = 7442 , note = "^72fe00五月榴花妖艳烘绿杨带雨垂垂重" , desc = "0^ff7d2f端午节高级VIP尊贵称号" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片建安笑林'] = {id = 7443 , note = "^ff4ca4【冷笑话帝】" , desc = "0^ff4ca4Permanent Effect:\r^ffffffAttack+2\rStamina+10\rDodge+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号1'] = {id = 7444 , note = "^72fe00【Merchant Guild Apprentice】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rCrit+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号2'] = {id = 7445 , note = "^0184ff【Merchant Guild Traveling Merchant】" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack+5\rCrit+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号3'] = {id = 7446 , note = "^0184ff【Merchant Guild Shopkeeper】" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack+10\rCrit+3\rDirect DMG Resist+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号4'] = {id = 7447 , note = "^a800ff【Famous Businessman】" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+15\rCrit+4\rDirect DMG Resist+2\rHealing+20" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号5'] = {id = 7448 , note = "^ff7d2f【Wealthy Merchant】" , desc = "0^ff7d2fPermanent Effect:\r^ffffffAttack+20\rCrit+5\rDirect DMG Resist+2\rHealing+40\r间接伤害抗性+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号排行榜1'] = {id = 7449 , note = "^fff962【Merchant Guild Chief】" , desc = "0^fff962Permanent Effect:\r^ffffffMax HP+5%\rStamina+200\rDefense+20" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号排行榜2-10'] = {id = 7450 , note = "^ff7d2f【Merchant Guild Elder】" , desc = "0^ff7d2fPermanent Effect:\r^ffffffMax HP+3%\rStamina+100\rDefense+10" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号排行榜11-30'] = {id = 7451 , note = "^a800ff【Merchant Guild Steward】" , desc = "0^a800ffPermanent Effect:\r^ffffffMax HP+1%\rStamina+50" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战1'] = {id = 7452 , note = "^72fe00【Chibi Oarsman】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack+2\rCrit Resist+1\rDefense+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战2'] = {id = 7453 , note = "^0184ff【Chibi Archer】" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack+5\rCrit Resist+2\rDefense+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战3'] = {id = 7454 , note = "^0184ff【Chibi Cannoneer】" , desc = "0^0184ffPermanent Effect:\r^ffffffAttack+10\rCrit Resist+3\rDefense+5" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战4'] = {id = 7455 , note = "^a800ff【Chibi Captain】" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+15\rCrit Resist+4\rDefense+10\r刺破+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战5'] = {id = 7456 , note = "^a800ff【Chibi Admiral】" , desc = "0^a800ffPermanent Effect:\r^ffffffAttack+20\rCrit Resist+5\rDefense+15\r刺破+2\rCrit Bonus Damage+10" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战6'] = {id = 7457 , note = "^ff7d2f【Chibi Overlord】" , desc = "0^ff7d2fPermanent Effect:\r^ffffffAttack+30\rCrit Resist+5\rDefense+20\r刺破+2\rCrit Bonus Damage+20\r穿透+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动探宝称号1'] = {id = 7458 , note = "^72fe00【Treasure Song: Return Empty from Treasure Mountain】" , desc = "0^72fe00寻宝界的初出茅庐者\r^72fe00永久生效:\r^ffffff攻击力+5\r闪避+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动探宝称号2'] = {id = 7459 , note = "^0184ff【Treasure Song: Not Greedy for Treasure】" , desc = "0^0184ff不可贪心他人之宝，你已经摸到了探宝的门道\r^0184ff永久生效:\r^ffffff攻击力+10\r闪避+2\r防御力+5" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动探宝称号3'] = {id = 7460 , note = "^a800ff【探宝歌·抱宝怀珍】" , desc = "0^a800ff踏遍群山，寻得众多宝物，你已然精于此道\r^a800ff永久生效:\r^ffffff攻击力+20\r闪避+3\r防御力+10\r体质+50" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动探宝称号5'] = {id = 7461 , note = "^ff7d2f【探宝歌·财神爷】" , desc = "0^ff7d2f财神爷降临！财源滚进，幸福美满！\r^ff7d2f永久生效:\r^ffffff攻击力+30\r闪避+4\r防御力+15\r体质+200" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南1'] = {id = 7462 , note = "^72fe00【Warrior Who Follows Heaven】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +1\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南2'] = {id = 7463 , note = "^72fe00【Heaven-Defying Shaman】" , desc = "0^72fe00Permanent Effect:\r^ffffffAttack +1\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南3'] = {id = 7464 , note = "^72fe00【Youthful Mountain God】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +15\rAttack +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南6'] = {id = 7465 , note = "^a800ff【Chibi Expert】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['2010AMD新手卡称号'] = {id = 7466 , note = "^ff4ca4【Chibi · New Vision】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南4'] = {id = 7467 , note = "^72fe00【Long and Far Is the Road】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +30\rAttack +2" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南5'] = {id = 7468 , note = "^a800ff【I Shall Search High and Low】" , desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +80\rAttack +2\rDefense +1" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号01'] = {id = 7469 , note = "^a800ff【新三国贤士】" , desc = "0^ff7d2f拥有此称号在7月22-8月8日间\r每晚19：30-21：30，在线即可获得“赤壁之战备战物资”奖励\r周日晚还有万元大奖等着你哦，不要错过！" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号02'] = {id = 7470 , note = "^ff7d2f【Wei No.1 Lord】" , desc = "0^ff7d2f魏国主公排名第一，荣耀之称！" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号03'] = {id = 7471 , note = "^ff7d2f【Shu No.1 Lord】" , desc = "0^ff7d2f蜀国主公排名第一，荣耀之称！" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号04'] = {id = 7472 , note = "^ff7d2f【Wu No.1 Lord】" , desc = "0^ff7d2f吴国主公排名第一，荣耀之称！" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号05'] = {id = 7473 , note = "^ff7d2f【天下最荣耀主公】" , desc = "0^ff7d2f天下最荣耀之主公！" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号06'] = {id = 7474 , note = "^ff4ca4【盛世无隐英雄归】" , desc = "0^ff7d2f老玩家回归特殊称号\r拥有此称号的老玩家可于新三国·招贤使节处领取“欢迎回家”任务，获得老玩家特殊奖励" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南7'] = {id = 7475 , note = "^ff7d2f【九死一生】" , desc = "0^a800ff被天雷击中九次还能死里逃生，天下第一幸运儿非你莫属。乘着这奇迹般的金色能量，让世界认识你吧！" , desc_1 = "" , desc_2 = ""}
title_definition['黄金斗神勇士'] = {id = 7476 , note = "^ff7d2f【黄金斗神勇士】" , desc = "0^ff7d2f黄金积分排行榜荣耀之称！\r拥有此称号可在完美礼品童子处兑换丰厚奖励。\r请在本周内周一维护后到周日24点间兑换奖励\r过期作废" , desc_1 = "" , desc_2 = ""}
title_definition['黄金战甲勇士'] = {id = 7477 , note = "^ff7d2f【黄金战甲勇士】" , desc = "0^ff7d2f黄金积分排行榜荣耀之称！\r拥有此称号可在完美礼品童子处兑换丰厚奖励。\r请在本周内周一维护后到周日24点间兑换奖励\r过期作废" , desc_1 = "" , desc_2 = ""}
title_definition['黄金千夫长'] = {id = 7478 , note = "^ff7d2f【黄金千夫长】" , desc = "0^ff7d2f黄金积分排行榜荣耀之称！\r拥有此称号可在完美礼品童子处兑换丰厚奖励。\r请在本周内周一维护后到周日24点间兑换奖励\r过期作废" , desc_1 = "" , desc_2 = ""}
title_definition['黄金百夫长'] = {id = 7479 , note = "^ff7d2f【黄金百夫长】" , desc = "0^ff7d2f黄金积分排行榜荣耀之称！\r拥有此称号可在完美礼品童子处兑换丰厚奖励。\r请在本周内周一维护后到周日24点间兑换奖励\r过期作废" , desc_1 = "" , desc_2 = ""}
title_definition['黄金精兵'] = {id = 7480 , note = "^ff7d2f【黄金精兵】" , desc = "0^ff7d2f黄金积分排行榜荣耀之称！\r拥有此称号可在完美礼品童子处兑换丰厚奖励。\r请在本周内周一维护后到周日24点间兑换奖励\r过期作废" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动探宝称号4'] = {id = 7481 , note = "^ff7d2f【探宝歌·招财进宝】" , desc = "0^ff7d2f稳坐家中亦能招揽珍宝，你在别人眼中就是一棵摇钱树了\r^ff7d2f永久生效:\r^ffffff攻击力+30\r闪避+4\r防御力+15\r体质+100" , desc_1 = "" , desc_2 = ""}
title_definition['中秋VIP'] = {id = 7482 , note = "^ff4ca4【花好月圆】" ,desc = "0^ff7d2f高级VIP中秋尊贵称号！" , desc_1 = "" , desc_2 = ""}
title_definition['媒体9月新手卡'] = {id = 7483 , note = "^8d76ff【傲视三军新英雄】" ,desc = "0^72fe00限时7天:\r^ffffff生命上限 +100" , desc_1 = "" , desc_2 = ""}
title_definition['称号_濮阳之战英雄级低'] = {id = 7484 , note = "^0184ff【Cold-Blooded Elite】" ,desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +120" , desc_1 = "" , desc_2 = ""}
title_definition['称号_濮阳之战英雄级高'] = {id = 7485 , note = "^a800ff【逆天改命】" ,desc = "0^72fe00Permanent Effect:\r^ffffffMax HP +200\rCrit Resist +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_2010跨服PK赛3'] = {id = 7486 , note = "^ff7d2f【2010 National Arena 3rd Place】" ,desc = "0^ff7d2f2010全国竞技赛的季军得主" , desc_1 = "" , desc_2 = ""}
title_definition['称号_2010跨服PK赛2'] = {id = 7487 , note = "^ff7d2f【2010 National Arena Runner-up】" ,desc = "0^ff7d2f2010全国竞技赛的亚军得主" , desc_1 = "" , desc_2 = ""}
title_definition['称号_2010跨服PK赛1'] = {id = 7488 , note = "^ff7d2f【2010 National Arena Champion】" ,desc = "0^ff7d2f2010全国竞技赛的冠军得主" , desc_1 = "" , desc_2 = ""}
title_definition['称号_校军场木人称号1'] = {id = 7489 , note = "【Wooden Man Civilian】" ,desc = "0The training ground wooden men consider you an ordinary member among them.\rStamina +20" , desc_1 = "" , desc_2 = ""}
title_definition['称号_校军场木人称号2'] = {id = 7490 , note = "^72fe00【Wooden Man Soldier】" ,desc = "0^72fe00The training ground wooden men generally consider you quite skilled in combat.\rStamina +40" , desc_1 = "" , desc_2 = ""}
title_definition['称号_校军场木人称号3'] = {id = 7491 , note = "^0184ff【Wooden Man Captain】" ,desc = "0^0184ffThe training ground wooden men feel your combat power is quite impressive.\rStamina +80" , desc_1 = "" , desc_2 = ""}
title_definition['称号_校军场木人称号4'] = {id = 7492 , note = "^a800ff【Wooden Man General】" ,desc = "0^a800ff校军场木人对你的崇敬达到了一个新的高度。\r体质 +160" , desc_1 = "" , desc_2 = ""}
title_definition['称号_校军场木人称号5'] = {id = 7493 , note = "^ff7d2f【Wooden Man Emperor】" ,desc = "0^ff7d2f校军场木人的眼中你就是神一般的存在！\r体质 +320" , desc_1 = "" , desc_2 = ""}
title_definition['称号_亲友卡称号1'] = {id = 7494 , note = "^ff6fb3【无兄弟不赤壁】" ,desc = "0^ff7d2f和你的兄弟朋友携手并肩，纵横赤壁吧！" , desc_1 = "" , desc_2 = ""}
title_definition['称号_亲友卡称号2'] = {id = 7495 , note = "^ff7d2f【新三国霸王】" ,desc = "0^ff7d2f亲友荣誉排行榜全服第一名，众星拱月傲视群雄的三国霸主。" , desc_1 = "" , desc_2 = ""}
title_definition['称号_亲友卡称号3'] = {id = 7496 , note = "^ff7d2f【新三国英雄】" ,desc = "0^ff7d2f亲友荣誉排行榜全服前十名，力挽狂澜定乾坤的三国英雄。" , desc_1 = "" , desc_2 = ""}
title_definition['称号_亲友卡称号4'] = {id = 7497 , note = "^ff7d2f【新三国豪杰】" ,desc = "0^ff7d2f亲友荣誉排行榜全服前一百名，力拔山兮气盖世的三国豪杰。" , desc_1 = "" , desc_2 = ""}
title_definition['称号_亲友卡称号5'] = {id = 7498 , note = "^ff7d2f【新三国名流】" ,desc = "0^ff7d2f亲友荣誉排行榜全服前五百名，声名闻达于诸侯的三国名流。" , desc_1 = "" , desc_2 = ""}
title_definition['产品十月回流1'] = {id = 7499 , note = "^ff7d2f【莫愁前路无知己】" ,desc = "0^ff7d2f老玩家回归专属称号！可在完美礼品童子处领取丰厚大礼！" , desc_1 = "" , desc_2 = ""}
title_definition['产品十月回流2'] = {id = 7500 , note = "^ff7d2f【似曾相识燕归来】" ,desc = "0^ff7d2f老玩家回归专属称号！可在完美礼品童子处领取丰厚大礼！" , desc_1 = "" , desc_2 = ""}
title_definition['产品十月回流3'] = {id = 7501 , note = "^ff7d2f【相逢何必曾相识】" ,desc = "0^ff7d2f老玩家回归专属称号！可在完美礼品童子处领取丰厚大礼！" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷周末1'] = {id = 7502 , note = "^72fe00【Candied Hawthorn Ranger】" ,desc = "0^72fe00用抢夺来的各种糖葫芦换来的称号。\r^72fe00永久生效:\r^ffffff生命值+10" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷周末2'] = {id = 7503 , note = "^72fe00【Candied Hawthorn Recruit】" ,desc = "0^72fe00用抢夺来的一些糖葫芦换来的称号。\r离正式加入抢夺糖葫芦的大军不远了。\r^72fe00永久生效:\r^ffffff生命值+30\r攻击力+2" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷周末3'] = {id = 7504 , note = "^0184ff【Candied Hawthorn Squad Leader】" ,desc = "0^0184ff用抢夺来的大量糖葫芦换来的称号。\r恭喜已经成功升职为抢夺大军的小队长了。\r^72fe00永久生效:\r^ffffff生命值+80\r攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷周末4'] = {id = 7505 , note = "^a800ff【Candied Hawthorn Grand General】" ,desc = "0^a800ff用抢夺来的成堆的糖葫芦换来的称号。\r你已经为整个抢夺糖葫芦的军队做出了杰出的贡献。\r^72fe00永久生效:\r^ffffff生命值+200\r攻击力+10\r治疗效果+1%" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷周末5'] = {id = 7506 , note = "^ff7d2f【Candied Hawthorn Supreme Chief】" ,desc = "0^ff7d2f用抢夺来的海量的糖葫芦换来的称号。\r你在抢夺糖葫芦的军队里，已经所向披靡无人能及了。\r^72fe00永久生效:\r^ffffff生命值+400\r攻击力+20\r治疗效果+1%\r攻击强度+1%" , desc_1 = "" , desc_2 = ""}
title_definition['华容道过关称号1'] = {id = 7507 , note = "^00FF00【险过华容道】" ,desc = "0^00FF00面对华容道之险，依然成功闯越的军士。\r^72fe00永久生效:\r^ffffff体质+10" , desc_1 = "" , desc_2 = ""}
title_definition['华容道过关称号2'] = {id = 7508 , note = "^0066CC【悍勇破关将】" ,desc = "0^0066CC无畏无惧勇往直前的将士。\r^72fe00永久生效:\r^ffffff体质+30 攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['华容道过关称号3'] = {id = 7509 , note = "^6666CC【Golden Dragon Unbound by Peril】" ,desc = "0^6666CC犹如蛟龙一般，轻松飞跃华容天险的豪杰。\r^72fe00永久生效:\r^ffffff体质+80 攻击力+10" , desc_1 = "" , desc_2 = ""}
title_definition['华容道过关称号4'] = {id = 7510 , note = "^FF6666【神挡杀神 佛挡杀佛】" ,desc = "0^FF6666不可忤逆其意志的神在华容道降临了。\r^72fe00永久生效:\r^ffffff体质+240 攻击力+20" , desc_1 = "" , desc_2 = ""}
title_definition['华容道挑战称号1'] = {id = 7511 , note = "^66FFFF【Swift Enemy Breaker】" ,desc = "0^66FFFF你成功的四十分钟内获得了华容道的胜利！\r^72fe00永久生效:\r^ffffff防御力+2" , desc_1 = "" , desc_2 = ""}
title_definition['华容道挑战称号2'] = {id = 7512 , note = "^996666【同袍之谊永不弃】" ,desc = "0^996666你成功的救出了华容道所有的将领和士兵。\r^72fe00永久生效:\r^ffffff治疗点数+10" , desc_1 = "" , desc_2 = ""}
title_definition['华容道挑战称号3'] = {id = 7513 , note = "^CC9900【铁鞋踏遍山河路】" ,desc = "0^CC9900你成功的护送步行的曹操闯过了华容道。\r^72fe00永久生效:\r^ffffff体力值+5" , desc_1 = "" , desc_2 = ""}
title_definition['华容道挑战称号4'] = {id = 7514 , note = "^FF00FF【火雷克星】" ,desc = "0^FF00FF你成功的没有让一个火雷罐在华容道里成功爆炸。\r^72fe00永久生效:\r^ffffff附加伤害+2" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷声望1'] = {id = 7515 , note = "^72fe00【Trust Those Employed, Honor the Worthy】" ,desc = "0^72fe00礼贤下士，用人不疑，这是一个好的统帅具有的基本素质。\r^72fe00永久生效:\r^ffffff治疗点数+10" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷声望2'] = {id = 7516 , note = "^72fe00【Employ the Worthy, Take All Strengths】" ,desc = "0^72fe00所谓任人唯贤，胸怀大气，为能主之相。\r^72fe00永久生效:\r^ffffff治疗点数+10\r体质+10\r防御力+1" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷声望3'] = {id = 7517 , note = "^0184ff【Discerning Eyes Rival Bo Le】" ,desc = "0^0184ff能够发掘人才，辨识人才，赛过伯乐啊。\r^72fe00永久生效:\r^ffffff治疗点数+10\r体质+30\r防御力+2" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷声望4'] = {id = 7518 , note = "^a800ff【重望高名人皆拜】" ,desc = "0^a800ff你已经达到了一个人人仰慕的境界了。\r^72fe00永久生效:\r^ffffff治疗点数+10\r体质+80\r防御力+5\r附加伤害+3" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷声望5'] = {id = 7519 , note = "^ff7d2f【统帅天下齐归心】" ,desc = "0^ff7d2f周公吐哺，天下归心！\r^72fe00永久生效:\r^ffffff治疗点数+20\r体质+240\r防御力+10\r附加伤害+5" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片玩家回归称号'] = {id = 7520 , note = "^ff7d2f【虎将归来】" ,desc = "0^ff7d2f资料片虎卫传奇回归玩家专属称号！^72fe00\r2010年12月20日-2011年1月16日\r凭此称号每天可在完美礼品童子处领取专属任务:\r虎将归来^ffffff(全天领取)\r^72fe00虎将试炼令^ffffff（12：00-24：00）" , desc_1 = "" , desc_2 = ""}
title_definition['台湾9月更新专用称号'] = {id = 9500 , note = "^a800ff【东游玩子陪你玩赤壁】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['日本6月更新专用称号'] = {id = 9501 , note = "^a800ff【Chibi Expert】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['台湾10月更新专用称号'] = {id = 9502 , note = "^a800ff【世界大同】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['日本圣诞更新专用称号'] = {id = 9503 , note = "^a800ff【智慧王者】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['台湾圣诞更新专用称号'] = {id = 9504 , note = "^a800ff【智慧霸主】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号1'] = {id = 9505 , note = "^a800ff【精彩一百迎新年】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号2'] = {id = 9506 , note = "^a800ff【遍地开花旗飘扬】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号3'] = {id = 9507 , note = "^a800ff【一统天下无二人】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号4'] = {id = 9508 , note = "^a800ff【热血忠臣赤丹心】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号5'] = {id = 9509 , note = "^a800ff【开疆辟土真英雄】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号6'] = {id = 9510 , note = "^a800ff【新年都未有芳华】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号7'] = {id = 9511 , note = "^a800ff【二月初惊见草芽】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号8'] = {id = 9512 , note = "^a800ff【白雪却嫌春色晩】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号9'] = {id = 9513 , note = "^a800ff【故穿庭树作飞花】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['港台新三国称号称号10'] = {id = 9514 , note = "^a800ff【兹尔多士为民先锋】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['三周年VIP专属称号'] = {id = 9515 , note = "^FF6666【三周年VIP纪念】" , desc = "" , desc_1 = "" , desc_2 = ""}


--（不要修改）返回称号描述
function title_definition:GetTitleDef()
	return self;
end

---title_dir部分为称号分类，
---如果一个{}中前面是字符串，后面是id，表明该为一组次级分类称号 ---如果一个{}中前面是id，后面是字符串，表明该为一个可升级称号

title_dir =
	{
		{
			"爵位",
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
			"阵营",
			{
				"赤壁",
				7452,
				7453,
				7454,
				7455,
				7456,
				7457,
			},
			{
				"Official",
				{7334,1112,1212,7268,7323,7324,7325,7326},
				{7335,7332,1312,7266,7315,7316,7317,7318},
				{7336,7331,7333,7267,7319,7320,7321,7322},
				{7402,7403,7404,7405,7406,7407,7408,7409,7410},
			},
			{
				"魏国",
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
			},
			{
				"蜀国",
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
			}
		},
		{
			"Official Post",
			{
				"武官",
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
				"黄巾之乱",
				2101,
				2102,
				2103,
			},
			{
				"西凉风云",
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
				"烟雨江南",
				2501,
				2502,
				2503,
				2504,
				2505,
				2506,
			},
			{
				"荆襄乱流",
				2601,
				2602,
				2603,
				2604,
				2605,
				2606,
			},
			{
				"魏武挥鞭",
				2607,
				2608,
			},
			{
				"洛阳黍离",
				7417,
				7418,
                7419,
				7420,
				7421,
				7422,
				7423,
			},
			{
				"草原策马",
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
				"河北",
				3105,
				3106,
				3107,
				3108,
				3109,
				3110,
				{3113,3104,3112,3103,3111,3102,3101},
			},
			{
				"西凉",
				3205,
				3206,
				3207,
				3208,
				3209,
				3210,
				{3213,3204,3212,3203,3211,3202,3201},
			},
			{
				"Ba-Shu",
				3305,
				3306,
				3307,
				3308,
				3309,
				3310,
				{3313,3304,3312,3303,3311,3302,3301},
			},
			{
				"Southern Barbarians",
				3405,
				3406,
				3407,
				3408,
				3409,
				3410,
				{3413,3404,3412,3403,3411,3402,3401},
			},
			{
				"Jiangnan",
				3505,
				3506,
				3507,
				3508,
				3509,
				3510,
				{3513,3504,3512,3503,3511,3502,3501},
			},
			{
				"荆襄",
				3605,
				3606,
				3607,
				3608,
				3609,
				3610,
				{3613,3604,3612,3603,3611,3602,3601},
			},
			{
				"Guanzhong",
				3705,
				3706,
				3707,
				3708,
				3709,
				3710,
				{3713,3704,3712,3703,3711,3702,3701},
			},
			{
				"South Sichuan",
				3805,
				3806,
				3807,
				3808,
				3809,
				3810,
				{3813,3804,3812,3803,3811,3802,3801},
			}
		},
		{
			"族系",
			{3007,3006,3005,3004,3003,3002,3001},
			{3017,3016,3015,3014,3013,3012,3011},
		},
		{
			"民间",
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
		},
		{
			"活动",
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
			"传承",
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
			    "消费积分",
			    7366,
			    7367,
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
