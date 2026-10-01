 --﻿称号显示脚本本
--title_definition部分为称号描述，包括'asdf'（字符串描述）、id、note（名称）、desc（描述1）、desc_1（描述2）、desc_2（描述3） --title_definition中的desc的第一个字符表示称号归属的国家：0表示称号永远显示；1表示只有魏国玩家才能显示；2表示蜀国玩家才能显示；3表示吴国玩家才能显示
--$S 表示夫妻
--$T 表示师徒
title_definition = {}
title_definition['测试称号1'] = {id = 1 , note = "^ffbc3c【$S的相公】" , desc = "0从此便相濡以沫，不离不弃。" , desc_1 = "" , desc_2 = ""}
title_definition['测试称号2'] = {id = 2 , note = "^ffbc3c【$S的娘子】" , desc = "0从此便相濡以沫，不离不弃。" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国友善'] = {id = 1101 , note = "^72fe00【魏国义士】" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国尊敬'] = {id = 1102 , note = "^0184ff【魏国侠客】" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国崇敬'] = {id = 1103 , note = "^a800ff【魏国豪杰】" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国崇拜'] = {id = 1104 , note = "^a800ff【魏国英雄】" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国排行榜1'] = {id = 1105 , note = "^ff7d2f※魏国小霸王※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国排行榜2'] = {id = 1106 , note = "^a800ff※魏国五虎将※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国排行榜3'] = {id = 1107 , note = "^a800ff※魏国家将※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国排行榜4'] = {id = 1108 , note = "^a800ff※魏国重臣※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国排行榜5'] = {id = 1109 , note = "^0184ff※魏国猛将※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国排行榜6'] = {id = 1110 , note = "^0184ff※魏国义臣※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营魏国排行榜7'] = {id = 1111 , note = "^0184ff※魏国名流※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营魏国入门'] = {id = 1112 , note = "^72fe00【魏国仕官】" , desc = "0你现在已经是魏国的成员！" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国友善'] = {id = 1201 , note = "^72fe00【蜀国义士】" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国尊敬'] = {id = 1202 , note = "^0184ff【蜀国侠客】" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国崇敬'] = {id = 1203 , note = "^a800ff【蜀国豪杰】" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国崇拜'] = {id = 1204 , note = "^a800ff【蜀国英雄】" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国排行榜1'] = {id = 1205 , note = "^ff7d2f※蜀国小霸王※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国排行榜2'] = {id = 1206 , note = "^a800ff※蜀国五虎将※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国排行榜3'] = {id = 1207 , note = "^a800ff※蜀国家将※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国排行榜4'] = {id = 1208 , note = "^a800ff※蜀国重臣※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国排行榜5'] = {id = 1209 , note = "^0184ff※蜀国猛将※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国排行榜6'] = {id = 1210 , note = "^0184ff※蜀国义臣※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营蜀国排行榜7'] = {id = 1211 , note = "^0184ff※蜀国名流※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营蜀国入门'] = {id = 1212 , note = "^72fe00【蜀国仕官】" , desc = "0你现在已经是蜀国的成员！" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国友善'] = {id = 1301 , note = "^72fe00【吴国义士】" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国尊敬'] = {id = 1302 , note = "^0184ff【吴国侠客】" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国崇敬'] = {id = 1303 , note = "^a800ff【吴国豪杰】" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国崇拜'] = {id = 1304 , note = "^a800ff【吴国英雄】" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国排行榜1'] = {id = 1305 , note = "^ff7d2f※吴国小霸王※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国排行榜2'] = {id = 1306 , note = "^a800ff※吴国五虎将※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国排行榜3'] = {id = 1307 , note = "^a800ff※吴国家将※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国排行榜4'] = {id = 1308 , note = "^a800ff※吴国重臣※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国排行榜5'] = {id = 1309 , note = "^0184ff※吴国猛将※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国排行榜6'] = {id = 1310 , note = "^0184ff※吴国义臣※" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['称号_阵营吴国排行榜7'] = {id = 1311 , note = "^0184ff※吴国名流※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营吴国入门'] = {id = 1312 , note = "^72fe00【吴国仕官】" , desc = "0你现在已经是吴国的成员！" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情河北3'] = {id = 2101 , note = "^72fe00【奸雄之相】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +1\r防御力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情河北4'] = {id = 2102 , note = "^72fe00【能臣之相】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +1\r防御力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情河北5'] = {id = 2103 , note = "^72fe00【路漫漫其修远兮】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +30\r攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉6'] = {id = 2201 , note = "^72fe00【金牌园丁】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +15\r攻击力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉7'] = {id = 2202 , note = "^72fe00【赤墨墨者】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +10\r攻击力 +1\r防御力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉8'] = {id = 2203 , note = "^72fe00【白墨墨者】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +10\r攻击力 +1\r防御力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉9'] = {id = 2204 , note = "^72fe00【麒麟儿】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +10\r历练值 +1%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉10'] = {id = 2205 , note = "^72fe00【一夜筑城的人】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +15\r攻击力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉11'] = {id = 2206 , note = "^72fe00【人民艺术家】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉12'] = {id = 2207 , note = "^72fe00【火曜来客】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +20\r攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀7'] = {id = 2301 , note = "^72fe00【五丁部落的客人】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀8'] = {id = 2302 , note = "^72fe00【五丁部落的朋友】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +20\r攻击力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀9'] = {id = 2303 , note = "^72fe00【五丁部落的救星】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +35\r攻击力 +1\r防御力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀10'] = {id = 2304 , note = "^72fe00【五丁部落的英雄】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +60\r攻击力 +2\r防御力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀11'] = {id = 2305 , note = "^72fe00【千里独行客】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +30\r攻击力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀12'] = {id = 2306 , note = "^72fe00【曾给神仙捶过腿】" , desc = "0^72fe00永久生效:\r^ffffff防御力 +1\r历练值 +1%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀13'] = {id = 2307 , note = "^72fe00【妙笔丹青】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +35\r攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀14'] = {id = 2308 , note = "^72fe00【摸金校尉】" , desc = "0^72fe00永久生效:\r^ffffff生命恢复速度 +1\r历练值 +1%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情巴蜀15'] = {id = 2309 , note = "^72fe00【终结者】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +20\r攻击力 +2\r防御力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望01'] = {id = 3001 , note = "^72fe00※中原新秀※" , desc = "0^72fe00永久生效:\r^ffffff体质 +10\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望02'] = {id = 3002 , note = "^0184ff※中原豪侠※" , desc = "0^0184ff永久生效:\r^ffffff体质 +20\r防御力 +2\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望03'] = {id = 3003 , note = "^a800ff※中原名杰※" , desc = "0^a800ff永久生效:\r^ffffff体质 +20\r防御力 +4\r暴击附加伤害 +10\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望04'] = {id = 3004 , note = "^ff7d2f※中原精英※" , desc = "0^ff7d2f永久生效:\r^ffffff体质 +20\r防御力 +6\r暴击附加伤害 +10\r命中 +1\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望05'] = {id = 3005 , note = "^fff962※中原栋梁※" , desc = "0^fff962永久生效:\r^ffffff体质 +40\r防御力 +8\r暴击附加伤害 +10\r命中 +1\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望06'] = {id = 3006 , note = "^ffc556※中原国士※" , desc = "0^ffc556永久生效:\r^ffffff体质 +40\r防御力 +10\r暴击附加伤害 +10\r命中 +1\r闪避 +1\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望07'] = {id = 3007 , note = "^ffc556※中原柱石※" , desc = "0^ffc556永久生效:\r^ffffff体质 +60\r防御力 +20\r暴击附加伤害 +10\r命中 +1\r闪避 +1\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望08'] = {id = 3008 , note = "^ffc556※中原雏凤※" , desc = "0^ffc556永久生效:\r^ffffff生命上限 +200\r体质 +60\r防御力 +28\r暴击附加伤害 +10\r命中 +1\r闪避 +1\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_中原族系声望09'] = {id = 3009 , note = "^ffc556※中原潜龙※" , desc = "0^ffc556永久生效:\r^ffffff生命上限 +500\r体质 +60\r防御力 +40\r暴击附加伤害 +10\r命中 +1\r闪避 +1\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望01'] = {id = 3011 , note = "^72fe00※巫南新秀※" , desc = "0^72fe00永久生效:\r^ffffff体质 +10\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望02'] = {id = 3012 , note = "^0184ff※巫南豪侠※" , desc = "0^0184ff永久生效:\r^ffffff体质 +20\r攻击力 +4\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望03'] = {id = 3013 , note = "^a800ff※巫南名杰※" , desc = "0^a800ff永久生效:\r^ffffff体质 +20\r攻击力 +8\r暴击附加伤害 +10\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望04'] = {id = 3014 , note = "^ff7d2f※巫南精英※" , desc = "0^ff7d2f永久生效:\r^ffffff体质 +20\r攻击力 +12\r暴击附加伤害 +10\r暴击抗性 +1\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望05'] = {id = 3015 , note = "^fff962※巫南栋梁※" , desc = "0^fff962永久生效:\r^ffffff体质 +40\r攻击力 +16\r暴击附加伤害 +10\r暴击抗性 +1\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望06'] = {id = 3016 , note = "^ffc556※巫南国士※" , desc = "0^ffc556永久生效:\r^ffffff体质 +40\r攻击力 +20\r暴击附加伤害 +10\r暴击 +1\r暴击抗性 +1\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望07'] = {id = 3017 , note = "^ffc556※巫南柱石※" , desc = "0^ffc556永久生效:\r^ffffff体质 +60\r攻击力 +20\r暴击附加伤害 +20\r暴击 +1\r暴击抗性 +1\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望08'] = {id = 3018 , note = "^ffc556※巫南雏凤※" , desc = "0^ffc556永久生效:\r^ffffff生命上限 +200\r体质 +60\r防御力 +8\r攻击力 +20\r暴击附加伤害 +20\r暴击 +1\r暴击抗性 +1\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_巫南族系声望09'] = {id = 3019 , note = "^ffc556※巫南潜龙※" , desc = "0^ffc556永久生效:\r^ffffff生命上限 +500\r体质 +60\r防御力 +20\r攻击力 +20\r暴击附加伤害 +20\r暴击 +1\r暴击抗性 +1\r^ffc556族系声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北友善'] = {id = 3101 , note = "^72fe00【河北义士】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +20\r攻击力 +1\r防御力 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北尊敬'] = {id = 3102 , note = "^0184ff【河北侠客】" , desc = "0^0184ff永久生效:\r^ffffff生命上限 +20\r攻击力 +1\r防御力 +1\r暴击 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北崇敬'] = {id = 3103 , note = "^a800ff【河北豪杰】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +60\r攻击力 +3\r防御力 +1\r暴击 +1\r暴击伤害 +3%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北崇拜'] = {id = 3104 , note = "^a800ff【河北英雄】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +120\r攻击力 +3\r防御力 +1\r暴击 +1\r暴击伤害 +5%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北15000'] = {id = 3111 , note = "^0184ff【河北名士】" , desc = "0^0184ff永久生效:\r^ffffff生命上限 +50\r攻击力 +2\r防御力 +1\r暴击 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北十万'] = {id = 3112 , note = "^a800ff【河北英杰】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +70\r攻击力 +3\r防御力 +1\r暴击 +1\r暴击伤害 +5%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北20万'] = {id = 3113 , note = "^a800ff【河北尊者】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +220\r攻击力 +3\r防御力 +1\r暴击 +1\r暴击伤害 +5%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北50万'] = {id = 3114 , note = "^a800ff【河北王者】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +420\r攻击力 +3\r防御力 +9\r暴击 +1\r暴击伤害 +5%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北100万'] = {id = 3115 , note = "^a800ff【河北圣雄】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +720\r攻击力 +3\r防御力 +21\r暴击 +1\r暴击伤害 +5%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜1'] = {id = 3105 , note = "^ff7d2f※河北小霸王※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜2'] = {id = 3106 , note = "^a800ff※河北七秀※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜3'] = {id = 3107 , note = "^a800ff※河北十八骑※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜4'] = {id = 3108 , note = "^a800ff※河北三十六强※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜5'] = {id = 3109 , note = "^0184ff※河北七十二众※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区河北排行榜6'] = {id = 3110 , note = "^0184ff※河北名流※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉友善'] = {id = 3201 , note = "^72fe00【西凉义士】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +30\r攻击力 +2\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉尊敬'] = {id = 3202 , note = "^0184ff【西凉侠客】" , desc = "0^0184ff永久生效:\r^ffffff生命上限 +30\r攻击力 +2\r暴击 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉崇敬'] = {id = 3203 , note = "^a800ff【西凉豪杰】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +60\r攻击力 +8\r暴击 +1\r暴击抗性 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉崇拜'] = {id = 3204 , note = "^a800ff【西凉英雄】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +120\r攻击力 +8\r暴击 +1\r暴击抗性 +2\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉15000'] = {id = 3211 , note = "^0184ff【西凉名士】" , desc = "0^0184ff永久生效:\r^ffffff生命上限 +60\r攻击力 +4\r暴击 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉十万'] = {id = 3212 , note = "^a800ff【西凉英杰】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +70\r攻击力 +8\r暴击 +1\r暴击抗性 +2\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉20万'] = {id = 3213 , note = "^a800ff【西凉尊者】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +220\r攻击力 +8\r暴击 +1\r暴击抗性 +2\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉50万'] = {id = 3214 , note = "^a800ff【西凉王者】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +420\r攻击力 +8\r防御力 +8\r暴击 +1\r暴击抗性 +2\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉100万'] = {id = 3215 , note = "^a800ff【西凉圣雄】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +720\r攻击力 +8\r防御力 +20\r暴击 +1\r暴击抗性 +2\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜1'] = {id = 3205 , note = "^ff7d2f※西凉小霸王※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜2'] = {id = 3206 , note = "^a800ff※西凉七豪※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜3'] = {id = 3207 , note = "^a800ff※西凉十八骑※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜4'] = {id = 3208 , note = "^a800ff※西凉三十六强※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜5'] = {id = 3209 , note = "^0184ff※西凉七十二众※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区西凉排行榜6'] = {id = 3210 , note = "^0184ff※西凉名流※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀友善'] = {id = 3301 , note = "^72fe00【巴蜀义士】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +40\r生命恢复速度 +5\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀尊敬'] = {id = 3302 , note = "^0184ff【巴蜀侠客】" , desc = "0^0184ff永久生效:\r^ffffff生命上限 +40\r生命恢复速度 +5\r暴击 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀崇敬'] = {id = 3303 , note = "^a800ff【巴蜀豪杰】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +80\r攻击力 +3\r防御力 +1\r生命恢复速度 +5\r暴击 +1\r闪避 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀崇拜'] = {id = 3304 , note = "^a800ff【巴蜀英雄】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +140\r攻击力 +3\r防御力 +4\r生命恢复速度 +5\r暴击 +1\r闪避 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀15000'] = {id = 3311 , note = "^0184ff【巴蜀名士】" , desc = "0^0184ff永久生效:\r^ffffff生命上限 +70\r攻击力 +1\r防御力 +1\r生命恢复速度 +5\r暴击 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀十万'] = {id = 3312 , note = "^a800ff【巴蜀英杰】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +90\r攻击力 +3\r防御力 +4\r生命恢复速度 +5\r暴击 +1\r闪避 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀20万'] = {id = 3313 , note = "^a800ff【巴蜀尊者】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +240\r攻击力 +3\r防御力 +4\r生命恢复速度 +5\r暴击 +1\r闪避 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀50万'] = {id = 3314 , note = "^a800ff【巴蜀王者】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +440\r攻击力 +3\r防御力 +12\r生命恢复速度 +5\r暴击 +1\r闪避 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀100万'] = {id = 3315 , note = "^a800ff【巴蜀圣雄】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +740\r攻击力 +3\r防御力 +24\r生命恢复速度 +5\r暴击 +1\r闪避 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀排行榜2'] = {id = 3306 , note = "^a800ff※巴蜀七杰※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀排行榜3'] = {id = 3307 , note = "^a800ff※巴蜀十八骑※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀排行榜4'] = {id = 3308 , note = "^a800ff※巴蜀三十六强※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀排行榜5'] = {id = 3309 , note = "^0184ff※巴蜀七十二众※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区巴蜀排行榜6'] = {id = 3310 , note = "^0184ff※巴蜀名流※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮友善'] = {id = 3401 , note = "^72fe00【南蛮义士】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +60\r攻击力 +2\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮尊敬'] = {id = 3402 , note = "^0184ff【南蛮侠客】" , desc = "0^0184ff永久生效:\r^ffffff生命上限 +60\r攻击力 +2\r暴击 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮崇敬'] = {id = 3403 , note = "^a800ff【南蛮豪杰】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +60\r攻击力 +2\r防御力 +2\r暴击 +1\r生命值 +1%\r攻击强度 +1%\r间接抗性 +3\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮崇拜'] = {id = 3404 , note = "^a800ff【南蛮英雄】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +140\r攻击力 +2\r防御力 +2\r暴击 +1\r生命值 +1%\r攻击强度 +1%\r间接抗性 +3\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮15000'] = {id = 3411 , note = "^0184ff【南蛮名士】" , desc = "0^0184ff永久生效:\r^ffffff生命上限 +60\r攻击力 +2\r防御力 +2\r暴击 +1\r生命值 +1%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮十万'] = {id = 3412 , note = "^a800ff【南蛮英杰】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +90\r攻击力 +2\r防御力 +2\r暴击 +1\r生命值 +1%\r攻击强度 +1%\r间接抗性 +3\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮20万'] = {id = 3413 , note = "^a800ff【南蛮尊者】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +240\r攻击力 +2\r防御力 +2\r暴击 +1\r生命值 +1%\r攻击强度 +1%\r间接抗性 +3\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮50万'] = {id = 3414 , note = "^a800ff【南蛮王者】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +440\r攻击力 +2\r防御力 +10\r暴击 +1\r生命值 +1%\r攻击强度 +1%\r间接抗性 +3\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮100万'] = {id = 3415 , note = "^a800ff【南蛮圣雄】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +740\r攻击力 +2\r防御力 +22\r暴击 +1\r生命值 +1%\r攻击强度 +1%\r间接抗性 +3\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜1'] = {id = 3405 , note = "^ff7d2f※南蛮小霸王※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜2'] = {id = 3406 , note = "^a800ff※南蛮七雄※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜3'] = {id = 3407 , note = "^a800ff※南蛮十八骑※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜4'] = {id = 3408 , note = "^a800ff※南蛮三十六强※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜5'] = {id = 3409 , note = "^0184ff※南蛮七十二众※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区南蛮排行榜6'] = {id = 3410 , note = "^0184ff※南蛮名流※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南友善'] = {id = 3501 , note = "^72fe00【江南义士】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +50\r攻击力 +2\r防御力 +2\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南尊敬'] = {id = 3502 , note = "^0184ff【江南侠客】" , desc = "0^0184ff永久生效:\r^ffffff生命上限 +50\r攻击力 +2\r防御力 +2\r暴击 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南崇敬'] = {id = 3503 , note = "^a800ff【江南豪杰】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +50\r攻击力 +3\r防御力 +3\r暴击 +1\r生命值 +1%\r攻击强度 +1%\r闪避 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南崇拜'] = {id = 3504 , note = "^a800ff【江南英雄】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +110\r攻击力 +3\r防御力 +3\r暴击 +1\r生命值 +1%\r攻击强度 +2%\r闪避 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南15000'] = {id = 3511 , note = "^0184ff【江南名士】" , desc = "0^0184ff永久生效:\r^ffffff生命上限 +50\r攻击力 +3\r防御力 +3\r暴击 +1\r生命值 +1%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南十万'] = {id = 3512 , note = "^a800ff【江南英杰】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +60\r攻击力 +3\r防御力 +3\r暴击 +1\r生命值 +1%\r攻击强度 +2%\r闪避 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南20万'] = {id = 3513 , note = "^a800ff【江南尊者】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +210\r攻击力 +3\r防御力 +3\r暴击 +1\r生命值 +1%\r攻击强度 +2%\r闪避 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南50万'] = {id = 3514 , note = "^a800ff【江南王者】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +410\r攻击力 +3\r防御力 +11\r暴击 +1\r生命值 +1%\r攻击强度 +2%\r闪避 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南100万'] = {id = 3515 , note = "^a800ff【江南圣雄】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +710\r攻击力 +3\r防御力 +23\r暴击 +1\r生命值 +1%\r攻击强度 +2%\r闪避 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜1'] = {id = 3505 , note = "^ff7d2f※江南小霸王※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜2'] = {id = 3506 , note = "^a800ff※江南七怪※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜3'] = {id = 3507 , note = "^a800ff※江南十八骑※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜4'] = {id = 3508 , note = "^a800ff※江南三十六强※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜5'] = {id = 3509 , note = "^0184ff※江南七十二众※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区江南排行榜6'] = {id = 3510 , note = "^0184ff※江南名流※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄友善'] = {id = 3601 , note = "^72fe00【荆襄义士】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +60\r防御力 +2\r生命恢复速度 +2\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄尊敬'] = {id = 3602 , note = "^0184ff【荆襄侠客】" , desc = "0^0184ff永久生效:\r^ffffff生命上限 +60\r防御力 +2\r生命恢复速度 +2\r暴击 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄崇敬'] = {id = 3603 , note = "^a800ff【荆襄豪杰】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +60\r攻击力 +5\r防御力 +2\r生命恢复速度 +2\r暴击 +1\r生命值 +1%\r攻击强度 +1%\r命中 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄崇拜'] = {id = 3604 , note = "^a800ff【荆襄英雄】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +120\r攻击力 +5\r防御力 +2\r生命恢复速度 +2\r暴击 +1\r生命值 +1%\r攻击强度 +1%\r命中 +2\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄15000'] = {id = 3611 , note = "^0184ff【荆襄名士】" , desc = "0^0184ff永久生效:\r^ffffff生命上限 +60\r攻击力 +2\r防御力 +2\r生命恢复速度 +2\r暴击 +1\r生命值 +1%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄十万'] = {id = 3612 , note = "^a800ff【荆襄英杰】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +70\r攻击力 +5\r防御力 +2\r生命恢复速度 +2\r暴击 +1\r生命值 +1%\r攻击强度 +1%\r命中 +2\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄20万'] = {id = 3613 , note = "^a800ff【荆襄尊者】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +220\r攻击力 +5\r防御力 +2\r生命恢复速度 +2\r暴击 +1\r生命值 +1%\r攻击强度 +1%\r命中 +2\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄50万'] = {id = 3614 , note = "^a800ff【荆襄王者】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +420\r攻击力 +5\r防御力 +10\r生命恢复速度 +2\r暴击 +1\r生命值 +1%\r攻击强度 +1%\r命中 +2\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄100万'] = {id = 3615 , note = "^a800ff【荆襄圣雄】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +720\r攻击力 +5\r防御力 +22\r生命恢复速度 +2\r暴击 +1\r生命值 +1%\r攻击强度 +1%\r命中 +2\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜1'] = {id = 3605 , note = "^ff7d2f※荆襄小霸王※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜2'] = {id = 3606 , note = "^a800ff※荆襄七俊※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜3'] = {id = 3607 , note = "^a800ff※荆襄十八骑※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜4'] = {id = 3608 , note = "^a800ff※荆襄三十六强※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜5'] = {id = 3609 , note = "^0184ff※荆襄七十二众※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区荆襄排行榜6'] = {id = 3610 , note = "^0184ff※荆襄名流※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中友善'] = {id = 3701 , note = "^72fe00【关中义士】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +2\r防御力 +2\r生命恢复速度 +2\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中尊敬'] = {id = 3702 , note = "^0184ff【关中侠客】" , desc = "0^0184ff永久生效:\r^ffffff攻击力 +2\r防御力 +2\r生命恢复速度 +2\r暴击 +1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中崇敬'] = {id = 3703 , note = "^a800ff【关中豪杰】" , desc = "0^a800ff永久生效:\r^ffffff攻击力 +2\r防御力 +2\r生命恢复速度 +2\r暴击 +1\r暴击伤害 +7%\r生命值 +1%\r攻击强度 +1%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中崇拜'] = {id = 3704 , note = "^a800ff【关中英雄】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +80\r攻击力 +2\r防御力 +2\r生命恢复速度 +2\r暴击 +1\r暴击伤害 +7%\r生命值 +1%\r攻击强度 +1%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中15000'] = {id = 3711 , note = "^0184ff【关中名士】" , desc = "0^0184ff永久生效:\r^ffffff攻击力 +2\r防御力 +2\r生命恢复速度 +2\r暴击 +1\r暴击伤害 +2%\r生命值 +1%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中十万'] = {id = 3712 , note = "^a800ff【关中英杰】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +30\r攻击力 +2\r防御力 +2\r生命恢复速度 +2\r暴击 +1\r暴击伤害 +7%\r生命值 +1%\r攻击强度 +1%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中20万'] = {id = 3713 , note = "^a800ff【关中尊者】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +180\r攻击力 +2\r防御力 +2\r生命恢复速度 +2\r暴击 +1\r暴击伤害 +7%\r生命值 +1%\r攻击强度 +1%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中50万'] = {id = 3714 , note = "^a800ff【关中王者】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +380\r攻击力 +2\r防御力 +10\r生命恢复速度 +2\r暴击 +1\r暴击伤害 +7%\r生命值 +1%\r攻击强度 +1%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中100万'] = {id = 3715 , note = "^a800ff【关中圣雄】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +680\r攻击力 +2\r防御力 +22\r生命恢复速度 +2\r暴击 +1\r暴击伤害 +7%\r生命值 +1%\r攻击强度 +1%\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜1'] = {id = 3705 , note = "^ff7d2f※关中小霸王※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜2'] = {id = 3706 , note = "^a800ff※关中七侠※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜3'] = {id = 3707 , note = "^a800ff※关中十八骑※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜4'] = {id = 3708 , note = "^a800ff※关中三十六强※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜5'] = {id = 3709 , note = "^0184ff※关中七十二众※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区关中排行榜6'] = {id = 3710 , note = "^0184ff※关中名流※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南友善'] = {id = 3801 , note = "^72fe00【川南义士】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体力值+5\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南尊敬'] = {id = 3802 , note = "^0184ff【川南侠客】" , desc = "0^0184ff永久生效:\r^ffffff攻击力+2\r体力值+5\r暴击抗性+1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南崇敬'] = {id = 3803 , note = "^a800ff【川南豪杰】" , desc = "0^a800ff永久生效:\r^ffffff攻击力+4\r体力值+5\r暴击抗性+1\r生命恢复速度+2\r暴击附加伤害+10\r暴击+1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南崇拜'] = {id = 3804 , note = "^a800ff【川南英雄】" , desc = "0^a800ff永久生效:\r^ffffff攻击力+8\r体力值+10\r暴击抗性+1\r生命恢复速度+5\r暴击附加伤害+30\r暴击+1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南15000'] = {id = 3811 , note = "^0184ff【川南名士】" , desc = "0^0184ff永久生效:\r^ffffff攻击力+2\r体力值+5\r暴击抗性+1\r生命恢复速度+2\r暴击附加伤害+10\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南十万'] = {id = 3812 , note = "^a800ff【川南英杰】" , desc = "0^a800ff永久生效:\r^ffffff攻击力+6\r体力值+5\r暴击抗性+1\r生命恢复速度+5\r暴击附加伤害+20\r暴击+1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南20万'] = {id = 3813 , note = "^a800ff【川南尊者】" , desc = "0^a800ff永久生效:\r^ffffff攻击力+10\r体力值+10\r暴击抗性+1\r生命恢复速度+5\r暴击附加伤害+40\r暴击+1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南50万'] = {id = 3814 , note = "^a800ff【川南王者】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +200\r防御力 +8\r攻击力+10\r体力值+10\r暴击抗性+1\r生命恢复速度+5\r暴击附加伤害+40\r暴击+1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南100万'] = {id = 3815 , note = "^a800ff【川南圣雄】" , desc = "0^a800ff永久生效:\r^ffffff生命上限 +500\r防御力 +20\r攻击力+10\r体力值+10\r暴击抗性+1\r生命恢复速度+5\r暴击附加伤害+40\r暴击+1\r^ffc556地区声望称号只显示已拥有最高级的" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南排行榜1'] = {id = 3805 , note = "^ff7d2f※川南小霸王※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南排行榜2'] = {id = 3806 , note = "^a800ff※川南七侠※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南排行榜3'] = {id = 3807 , note = "^a800ff※川南十八骑※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南排行榜4'] = {id = 3808 , note = "^a800ff※川南三十六强※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南排行榜5'] = {id = 3809 , note = "^0184ff※川南七十二众※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_地区川南排行榜6'] = {id = 3810 , note = "^0184ff※川南名流※" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_军队1'] = {id = 4101 , note = "^72fe00【新兵】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_军队2'] = {id = 4102 , note = "^72fe00【兵卒】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +30\r攻击力 +1\r防御力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_军队3'] = {id = 4103 , note = "^72fe00【兵长】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +50\r攻击力 +2\r防御力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官9品'] = {id = 5101 , note = "^ffbc3c〓九品 军侯〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官8品'] = {id = 5102 , note = "^ffbc3c〓八品 校尉〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官7品'] = {id = 5103 , note = "^ffbc3c〓七品 都尉〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官6品1'] = {id = 5104 , note = "^ffbc3c〓六品 裨将〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官6品2'] = {id = 5105 , note = "^ffbc3c〓六品 偏将〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官5品1'] = {id = 5106 , note = "^ffbc3c〓五品 鹰扬将军〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官5品2'] = {id = 5107 , note = "^ffbc3c〓五品 伏波将军〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官5品3'] = {id = 5108 , note = "^ffbc3c〓五品 讨虏将军〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官5品4'] = {id = 5109 , note = "^ffbc3c〓五品 横野将军〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品1'] = {id = 5110 , note = "^ffbc3c〓正四品 羽林中郎将〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品2'] = {id = 5111 , note = "^ffbc3c〓正四品 虎贲中郎将〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品3'] = {id = 5112 , note = "^ffbc3c〓正四品 五官中郎将〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品4'] = {id = 5113 , note = "^ffbc3c〓从四品 典军中郎将〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品5'] = {id = 5114 , note = "^ffbc3c〓从四品 抚军中郎将〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品6'] = {id = 5115 , note = "^ffbc3c〓从四品 荡寇中郎将〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品1'] = {id = 5116 , note = "^ffbc3c〓从三品 前将军〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品2'] = {id = 5117 , note = "^ffbc3c〓从三品 后将军〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品3'] = {id = 5118 , note = "^ffbc3c〓从三品 左将军〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品4'] = {id = 5119 , note = "^ffbc3c〓从三品 右将军〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品5'] = {id = 5120 , note = "^ffbc3c〓正三品 平东将军〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品6'] = {id = 5121 , note = "^ffbc3c〓正三品 平南将军〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品7'] = {id = 5122 , note = "^ffbc3c〓正三品 平西将军〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官3品8'] = {id = 5123 , note = "^ffbc3c〓正三品 平北将军〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀1'] = {id = 5124 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀2'] = {id = 5125 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀3'] = {id = 5126 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀4'] = {id = 5127 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀5'] = {id = 5128 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀6'] = {id = 5129 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀7'] = {id = 5130 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀8'] = {id = 5131 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品蜀9'] = {id = 5132 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴1'] = {id = 5133 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴2'] = {id = 5134 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴3'] = {id = 5135 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴4'] = {id = 5136 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴5'] = {id = 5137 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴6'] = {id = 5138 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴7'] = {id = 5139 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴8'] = {id = 5140 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品吴9'] = {id = 5141 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏1'] = {id = 5142 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏2'] = {id = 5143 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏3'] = {id = 5144 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏4'] = {id = 5145 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏5'] = {id = 5146 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏6'] = {id = 5147 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏7'] = {id = 5148 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏8'] = {id = 5149 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官2品魏9'] = {id = 5150 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品蜀1'] = {id = 5151 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品蜀2'] = {id = 5152 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品蜀3'] = {id = 5153 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品吴1'] = {id = 5154 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品吴2'] = {id = 5155 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品吴3'] = {id = 5156 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品魏1'] = {id = 5157 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品魏2'] = {id = 5158 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官1品魏3'] = {id = 5159 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官特品蜀'] = {id = 5160 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官特品吴'] = {id = 5161 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官特品魏'] = {id = 5162 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官9品'] = {id = 5201 , note = "^ffbc3c〓九品 书佐〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官8品'] = {id = 5202 , note = "^ffbc3c〓八品 功曹〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官7品'] = {id = 5203 , note = "^ffbc3c〓七品 主簿〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官6品1'] = {id = 5204 , note = "^ffbc3c〓六品 别驾〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官6品2'] = {id = 5205 , note = "^ffbc3c〓六品 长史〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官5品1'] = {id = 5206 , note = "^ffbc3c〓五品 太乐令〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官5品2'] = {id = 5207 , note = "^ffbc3c〓五品 太史令〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官5品3'] = {id = 5208 , note = "^ffbc3c〓五品 太医令〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官5品4'] = {id = 5209 , note = "^ffbc3c〓五品 太仓令〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品1'] = {id = 5210 , note = "^ffbc3c〓正四品 太中大夫〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品2'] = {id = 5211 , note = "^ffbc3c〓正四品 尚书仆射〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品3'] = {id = 5212 , note = "^ffbc3c〓正四品 中散大夫〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品4'] = {id = 5213 , note = "^ffbc3c〓从四品 谏议大夫〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品5'] = {id = 5214 , note = "^ffbc3c〓从四品 太子洗马〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品6'] = {id = 5215 , note = "^ffbc3c〓从四品 散骑常侍〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品1'] = {id = 5216 , note = "^ffbc3c〓从三品 尚书令〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品2'] = {id = 5217 , note = "^ffbc3c〓从三品 中书令〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品3'] = {id = 5218 , note = "^ffbc3c〓正三品 太子太傅〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品4'] = {id = 5219 , note = "^ffbc3c〓从三品 太子少傅〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品5'] = {id = 5220 , note = "^ffbc3c〓从三品 侍中〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品6'] = {id = 5221 , note = "^ffbc3c〓正三品 执金吾〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品7'] = {id = 5222 , note = "^ffbc3c〓正三品 将作大匠〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官3品8'] = {id = 5223 , note = "^ffbc3c〓正三品 水衡都尉〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀1'] = {id = 5224 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀2'] = {id = 5225 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀3'] = {id = 5226 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀4'] = {id = 5227 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀5'] = {id = 5228 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀6'] = {id = 5229 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀7'] = {id = 5230 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀8'] = {id = 5231 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品蜀9'] = {id = 5232 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴1'] = {id = 5233 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴2'] = {id = 5234 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴3'] = {id = 5235 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴4'] = {id = 5236 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴5'] = {id = 5237 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴6'] = {id = 5238 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴7'] = {id = 5239 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴8'] = {id = 5240 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品吴9'] = {id = 5241 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏1'] = {id = 5242 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏2'] = {id = 5243 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏3'] = {id = 5244 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏4'] = {id = 5245 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏5'] = {id = 5246 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏6'] = {id = 5247 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏7'] = {id = 5248 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏8'] = {id = 5249 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官2品魏9'] = {id = 5250 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品蜀1'] = {id = 5251 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品蜀2'] = {id = 5252 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品蜀3'] = {id = 5253 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品吴1'] = {id = 5254 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品吴2'] = {id = 5255 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品吴3'] = {id = 5256 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品魏1'] = {id = 5257 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品魏2'] = {id = 5258 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官1品魏3'] = {id = 5259 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官特品蜀'] = {id = 5260 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官特品吴'] = {id = 5261 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官特品魏'] = {id = 5262 , note = "^ffbc3c废弃" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆河北'] = {id = 6101 , note = "^72fe00【扫黄先锋】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +30\r历练值 +1%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆西凉'] = {id = 6102 , note = "^72fe00【荒野大镖客】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +40\r历练值 +1%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆巴蜀'] = {id = 6103 , note = "^72fe00【六扇门神捕】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +50\r历练值 +1%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆南蛮'] = {id = 6104 , note = "^72fe00【大金刚】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +50\r历练值 +2%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆江南1'] = {id = 6105 , note = "^72fe00【风流才子】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +60\r历练值 +2%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆江南2'] = {id = 6106 , note = "^72fe00【多情美人】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +60\r历练值 +2%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆荆襄'] = {id = 6107 , note = "^72fe00【捉鬼大师】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +70\r历练值 +2%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆关中1'] = {id = 6108 , note = "^72fe00【大内密探】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +70\r历练值 +3%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆关中2'] = {id = 6109 , note = "^72fe00【待定】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +100" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆高级2'] = {id = 6201 , note = "^72fe00【待定】" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆高级3'] = {id = 6202 , note = "^72fe00【待定】" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆高级4'] = {id = 6203 , note = "^72fe00【待定】" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆高级5'] = {id = 6204 , note = "^72fe00【待定】" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆高级6'] = {id = 6205 , note = "^72fe00【待定】" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_民间酒馆高级7'] = {id = 6206 , note = "^72fe00【待定】" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动1'] = {id = 7101 , note = "^ff9c00【火眼金睛】" , desc = "0^72fe00奖给对游戏有特殊贡献的人" , desc_1 = "" , desc_2 = ""}
title_definition['剧情南蛮称号1'] = {id = 2401 , note = "^72fe00【炼蛊师】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情南蛮称号2'] = {id = 2402 , note = "^72fe00【驯象师】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +50\r攻击力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['剧情南蛮称号3'] = {id = 2403 , note = "^72fe00【印象派画家】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +1\r防御力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情南蛮称号4'] = {id = 2404 , note = "^72fe00【南中踏破】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +30\r攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情南蛮称号5'] = {id = 2405 , note = "^72fe00【咒泉乡旅人】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +60\r攻击力 +2\r防御力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情江南称号1'] = {id = 2501 , note = "^72fe00【我是谁】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情江南称号2'] = {id = 2502 , note = "^72fe00【凤雏弟子】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +3\r历练值 +1%" , desc_1 = "" , desc_2 = ""}
title_definition['剧情江南称号3'] = {id = 2503 , note = "^72fe00【瑜米】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +20\r攻击力 +1\r防御力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['剧情江南称号4'] = {id = 2504 , note = "^72fe00【舌战高手】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['剧情江南称号5'] = {id = 2505 , note = "^72fe00【锦帆贼】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +60\r攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情江南称号6'] = {id = 2506 , note = "^72fe00【无神论者】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +60\r攻击力 +2\r防御力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情荆襄称号1'] = {id = 2601 , note = "^72fe00【妙手空空】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +30\r攻击力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['剧情荆襄称号2'] = {id = 2602 , note = "^72fe00【亮粉】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +2\r历练值 +1%" , desc_1 = "" , desc_2 = ""}
title_definition['剧情荆襄称号3'] = {id = 2603 , note = "^72fe00【腹有诗书气自华】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +4\r防御力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['剧情荆襄称号4'] = {id = 2604 , note = "^72fe00【神算鬼谋】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +30\r攻击力 +3" , desc_1 = "" , desc_2 = ""}
title_definition['剧情荆襄称号5'] = {id = 2605 , note = "^72fe00【白墨队主】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +80\r防御力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情荆襄称号6'] = {id = 2606 , note = "^72fe00【赤墨队主】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +80\r防御力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['剧情关中称号1'] = {id = 2607 , note = "^72fe00【人中赤兔马中吕布】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +1\r防御力 +3" , desc_1 = "" , desc_2 = ""}
title_definition['剧情关中称号2'] = {id = 2608 , note = "^72fe00【吾将上下而求索】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +80\r攻击力 +2\r防御力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['剧情关中称号3'] = {id = 2609 , note = "^a800ff【乱世歌者】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +5\r暴击抗性 +2\r命中 +2" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号1'] = {id = 8001 , note = "^a800ff【钓鱼之神】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +100\r命中 +5\r学会技能“不瞬之目”" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号2'] = {id = 8002 , note = "^0184ff【钓鱼大师】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +50\r命中 +3\r学会技能“忍耐钓术”" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号3'] = {id = 8003 , note = "^0184ff【钓鱼名人】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +30\r命中 +2\r学会技能“忍耐钓术”" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号4'] = {id = 8004 , note = "^72fe00【钓鱼高手】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +10\r命中 +2" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号5'] = {id = 8005 , note = "^72fe00【钓鱼新手】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +10\r命中 +1" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号6'] = {id = 8006 , note = "^72fe00【钓鱼快手】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号7'] = {id = 8007 , note = "^72fe00【驾乘香车宝辇】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +10\r攻击力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号8'] = {id = 8008 , note = "^0184ff【坐拥红颜锦裘】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +20\r攻击力 +2\r闪避 +1" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号9'] = {id = 8009 , note = "^a800ff【笑揽社稷九州】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +30\r攻击力 +2\r闪避 +2\r暴击 +1" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号10'] = {id = 8010 , note = "^ff4ca4【尚香亲卫队】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +20\r生命恢复速度 +1" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号11'] = {id = 8011 , note = "^72fe00【见习采诗官】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['日常活动称号12'] = {id = 8012 , note = "^0184ff【专业采诗官】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +3\r暴击抗性 +1" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号1'] = {id = 9001 , note = "^72fe00【心有灵犀】" , desc = "0^72fe00称号等级：一级\r拥有更高级姻缘称号后\r属性将移至新的高级称号\r^ffffff生命值 +10" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号2'] = {id = 9002 , note = "^72fe00【脉脉含情】" , desc = "0^72fe00称号等级：二级\r拥有更高级姻缘称号后\r属性将移至新的高级称号\r^ffffff生命值 +20" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号3'] = {id = 9003 , note = "^72fe00【天生一对】" , desc = "0^72fe00称号等级：三级\r拥有更高级姻缘称号后\r属性将移至新的高级称号\r^ffffff生命值 +30\r攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号4'] = {id = 9004 , note = "^0184ff【一往情深深几许】" , desc = "0^72fe00称号等级：四级\r拥有更高级姻缘称号后\r属性将移至新的高级称号\r^ffffff生命值 +40\r攻击力 +5" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号5'] = {id = 9005 , note = "^0184ff【人生若只如初见】" , desc = "0^72fe00称号等级：五级\r拥有更高级姻缘称号后\r属性将移至新的高级称号\r^ffffff生命值 +50\r攻击力 +8" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号6'] = {id = 9006 , note = "^a800ff【恩爱两不疑】" , desc = "0^72fe00称号等级：六级\r拥有更高级姻缘称号后\r属性将移至新的高级称号\r^ffffff生命值 +60\r攻击力 +10" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号7'] = {id = 9007 , note = "^a800ff【与子偕老】" , desc = "0^72fe00称号等级：七级\r拥有更高级姻缘称号后\r属性将移至新的高级称号\r^ffffff生命值 +3%\r攻击力 +10\r攻击强度 +1%\r生命值 +60" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号8'] = {id = 9008 , note = "^ff7d2f【死生契阔】" , desc = "0^72fe00称号等级：八级\r拥有更高级姻缘称号后\r属性将移至新的高级称号\r^ffffff生命值 +4%\r攻击力 +10\r攻击强度 +2%\r生命值 +60" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号9'] = {id = 9009 , note = "^ff4ca4【天荒地老】" , desc = "0^72fe00称号等级：九级\r拥有更高级姻缘称号后\r属性将移至新的高级称号\r^ffffff生命值 +5%\r攻击力 +10\r攻击强度 +3%\r生命值 +60" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号10'] = {id = 9010 , note = "^72fe00【法天立道圣德神功玫瑰王】" , desc = "0^72fe00拥有9999朵玫瑰的牛人！" , desc_1 = "" , desc_2 = ""}
title_definition['夫妻称号11'] = {id = 9011 , note = "^72fe00【夫妻称号11】" , desc = "0^72fe00品质：普通" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动2'] = {id = 7102 , note = "^72fe00【泼浓墨描三国悲愁】" , desc = "0^72fe00首获《赤壁》外传战场策划大奖的奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动3'] = {id = 7103 , note = "^0184ff【运重笔话大江滔滔】" , desc = "0^72fe00再获《赤壁》外传战场策划大奖的奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动4'] = {id = 7104 , note = "^a800ff【施丹青绘血火峥嵘】" , desc = "0^72fe00三获《赤壁》外传战场策划大奖的奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动5'] = {id = 7105 , note = "^ff7d2f【生妙笔书赤壁春秋】" , desc = "0^72fe00四获《赤壁》外传战场策划大奖的奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动6'] = {id = 7106 , note = "^ff9c00【圣火护卫队】" , desc = "0^72fe00奖励在轩辕圣火的传递过程中有突出贡献的勇者" , desc_1 = "" , desc_2 = ""}
title_definition['称号_传奇1'] = {id = 6110 , note = "^72fe00【白门楼义士】" , desc = "0^72fe00永久生效:\r^ffffff生命值 +10\r攻击力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_传奇2'] = {id = 6111 , note = "^0184ff【温候近卫骑】" , desc = "0^0184ff永久生效:\r^ffffff生命值 +30\r攻击力 +2\r命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_传奇3'] = {id = 6112 , note = "^a800ff【飞将之神助】" , desc = "0^a800ff永久生效:\r^ffffff生命值 +60\r攻击力 +2\r命中+2\r暴击伤害 +3%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_虎牢关01'] = {id = 6113 , note = "^72fe00【讨逆之忠臣】" , desc = "0^72fe00永久生效:\r^ffffff生命值 +20" , desc_1 = "" , desc_2 = ""}
title_definition['称号_虎牢关02'] = {id = 6114 , note = "^72fe00【虎牢关五虎将】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行1'] = {id = 7107 , note = "^ff7d2f【天下第一仁君】" , desc = "0^ff7d2f仁义值排行榜第一的奖励称号\r为头顶称号时生效:\r^ffffff攻击力 +10\r历练值 +20%\r生命值 +200" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行2-4'] = {id = 7108 , note = "^ff7d2f【三君贤师】" , desc = "0^ff7d2f仁义值排行榜第二到第四的奖励称号\r为头顶称号时生效:\r^ffffff攻击力 +8\r历练值 +10%\r生命值 +100" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行5-12'] = {id = 7109 , note = "^a800ff【八骏名士】" , desc = "0^a800ff仁义值排行榜第五到第十二的奖励称号\r为头顶称号时生效:\r^ffffff攻击力 +5\r历练值 +10%\r生命值 +100" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行13-20'] = {id = 7110 , note = "^a800ff【八顾名士】" , desc = "0^a800ff仁义值排行榜第十三到第二十的奖励称号\r为头顶称号时生效:\r^ffffff攻击力 +3\r历练值 +5%\r生命值 +100" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行21-28'] = {id = 7111 , note = "^a800ff【八及君子】" , desc = "0^a800ff仁义值排行榜第二十一到第二十八的奖励称号\r为头顶称号时生效:\r^ffffff攻击力 +1\r历练值 +5%\r生命值 +100" , desc_1 = "" , desc_2 = ""}
title_definition['仁义值排行29-36'] = {id = 7112 , note = "^a800ff【八厨君子】" , desc = "0^a800ff仁义值排行榜第二十九到第三十六的奖励称号\r为头顶称号时生效:\r^ffffff历练值 +5%\r生命值 +80" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品7'] = {id = 5263 , note = "^ffbc3c〓从四品 建威中郎将〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职武官4品8'] = {id = 5264 , note = "^ffbc3c〓正四品 武卫中郎将〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品7'] = {id = 5265 , note = "^ffbc3c〓从四品 谒者仆射〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_官职文官4品8'] = {id = 5266 , note = "^ffbc3c〓正四品 御史中丞〓" , desc = "0^ffbc3c永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['称号_典韦传'] = {id = 7113 , note = "^72fe00【铁壁恶来】" , desc = "0^72fe00永久生效:\r^ffffff生命值 +20" , desc_1 = "" , desc_2 = ""}
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
title_definition['名将传承01尚香传'] = {id = 7130 , note = "^72fe00【巾帼·香风】" , desc = "0^72fe00装备生效\r^fff600得名将尚香之传承。\r青丝一缕，红颜铿锵，可传香风万里，钢铁柔肠。\r^ffffff生命回复速度+10" , desc_2 = ""}
title_definition['名将传承02吕布传'] = {id = 7131 , note = "^72fe00【杀神·四方】" , desc = "0^72fe00装备生效\r^fff600得名将吕布之传承。\r英雄名，传千古，天命得之定四方，人力夺之斩八荒。\r^ffffff受伤抗性+10" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承03刘备传'] = {id = 7132 , note = "^72fe00【霸主·人和】" , desc = "0^72fe00装备生效\r^fff600得英雄刘备之传承。\r霸主何为？政通人和。夫得道者多助，失道者寡助，多助之至，天下顺之。\r^ffffff限制抗性+10" ,  desc_1 = "" , desc_2 = ""}
title_definition['名将传承04曹操传'] = {id = 7133 , note = "^72fe00【霸主·天命】" , desc = "0^72fe00装备生效\r^fff600得英雄曹操之传承。\r霸主何为？天命所归。堂上谋臣帷幄，边头猛将干戈。得天命者，定四方。\r^ffffff虚弱抗性+10" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承05典韦传'] = {id = 7134 , note = "^72fe00【猛将·恶来】" , desc = "0^72fe00装备生效\r^fff600得名将典韦之传承。\r古之恶来，今之猛将，手提双戟八十斤，万夫莫当。\r^ffffff封印抗性+10" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承06孙权传'] = {id = 7135 , note = "^72fe00【霸主·地利】" , desc = "0^72fe00装备生效\r^fff600得英雄孙权之传承。\r霸主何为？方圆地利。鱼米乡，天堑地，富庶民，乐一方。得地利者，长久安。\r^ffffff流血抗性+10" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承07赵云传'] = {id = 7136 , note = "^72fe00【忠义·孤胆】" , desc = "0^72fe00装备生效\r^fff600得名将赵云之传承。\r忠义有千秋，孤胆真英雄。谁能一身是胆？谁敢七进七出？道不尽将军风，传予今日豪雄。\r^ffffff治疗效果+10%" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承08蒋干传'] = {id = 7137 , note = "^72fe00【纵横·利舌】" , desc = "0^72fe07暂无" , desc_1 = "" , desc_2 = ""}
title_definition['名将传承09组合称号'] = {id = 7138 , note = "^a800ff【三分霸主】" , desc = "0^72fe08暂无" , desc_1 = "" , desc_2 = ""}
title_definition['魏国声望排行前100'] = {id = 7139 , note = "^a800ff【魏国将领】" , desc = "1^a800ff魏国声望排行一到一百名的奖励称号\r国战时拥有部分国家事务的处理权" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国声望排行前100'] = {id = 7140 , note = "^a800ff【蜀国将领】" , desc = "2^a800ff蜀国声望排行一到一百名的奖励称号\r国战时拥有部分国家事务的处理权" , desc_1 = "" , desc_2 = ""}
title_definition['吴国声望排行前100'] = {id = 7141 , note = "^a800ff【吴国将领】" , desc = "3^a800ff吴国声望排行一到一百名的奖励称号\r国战时拥有部分国家事务的处理权" , desc_1 = "" , desc_2 = ""}
title_definition['称号蒋干传01'] = {id = 7142 , note = "^72fe00【鬼谋之神助】" , desc = "0^72fe00永久生效\r^ffffff体力值 +5\r吟唱速度 +3%" , desc_1 = "" , desc_2 = ""}
title_definition['称号蒋干传02'] = {id = 7143 , note = "^72fe00【风雅窃书贼】" , desc = "0^72fe00永久生效\r^ffffff体力值 +5" , desc_1 = "" , desc_2 = ""}
title_definition['称号_活动7'] = {id = 7144 , note = "^72fe00【镇疆御使】" , desc = "0^72fe00永久生效\r^ffffff体力值 +5" , desc_1 = "" , desc_2 = ""}
title_definition['魏国武勋排行1'] = {id = 7145 , note = "^ff7d2f【大魏统帅】" , desc = "1^ff7d2f魏国功勋彪炳之武将所获之称号\r获得资格：魏国武勋排行第1名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国武勋排行2-5'] = {id = 7146 , note = "^a800ff【大魏上将】" , desc = "1^a800ff魏国功勋彪炳之武将所获之称号\r获得资格：魏国武勋排行第2-5名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国武勋排行6-20'] = {id = 7147 , note = "^0184ff【大魏名将】" , desc = "1^0184ff魏国功勋彪炳之武将所获之称号\r获得资格：魏国武勋排行第6-20名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国武勋排行21-100'] = {id = 7148 , note = "^72fe00【大魏良将】" , desc = "1^72fe00魏国功勋彪炳之武将所获之称号\r获得资格：魏国武勋排行第21-100名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国武勋排行101-500'] = {id = 7149 , note = "^72fe00【大魏将佐】" , desc = "1^72fe00魏国功勋彪炳之武将所获之称号\r获得资格：魏国武勋排行第101-500名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国文勋排行1'] = {id = 7150 , note = "^ff7d2f【大魏首辅】" , desc = "1^ff7d2f魏国功绩卓越之文臣所获之称号\r获得资格：魏国文勋排行第1名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国文勋排行2-5'] = {id = 7151 , note = "^a800ff【大魏能臣】" , desc = "1^a800ff魏国功绩卓越之文臣所获之称号\r获得资格：魏国文勋排行第2-5名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国文勋排行6-20'] = {id = 7152 , note = "^0184ff【大魏名臣】" , desc = "1^0184ff魏国功绩卓越之文臣所获之称号\r获得资格：魏国文勋排行第6-20名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国文勋排行21-100'] = {id = 7153 , note = "^72fe00【大魏良臣】" , desc = "1^72fe00魏国功绩卓越之文臣所获之称号\r获得资格：魏国文勋排行第21-100名" , desc_1 = "" , desc_2 = ""}
title_definition['魏国文勋排行101-500'] = {id = 7154 , note = "^72fe00【大魏臣佐】" , desc = "1^72fe00魏国功绩卓越之文臣所获之称号\r获得资格：魏国文勋排行第101-500名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国武勋排行1'] = {id = 7155 , note = "^ff7d2f【大蜀统帅】" , desc = "2^ff7d2f蜀国功勋彪炳之武将所获之称号\r获得资格：蜀国武勋排行第1名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国武勋排行2-5'] = {id = 7156 , note = "^a800ff【大蜀上将】" , desc = "2^a800ff蜀国功勋彪炳之武将所获之称号\r获得资格：蜀国武勋排行第2-5名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国武勋排行6-20'] = {id = 7157 , note = "^0184ff【大蜀名将】" , desc = "2^0184ff蜀国功勋彪炳之武将所获之称号\r获得资格：蜀国武勋排行第6-20名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国武勋排行21-100'] = {id = 7158 , note = "^72fe00【大蜀良将】" , desc = "2^72fe00蜀国功勋彪炳之武将所获之称号\r获得资格：蜀国武勋排行第21-100名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国武勋排行101-500'] = {id = 7159 , note = "^72fe00【大蜀将佐】" , desc = "2^72fe00蜀国功勋彪炳之武将所获之称号\r获得资格：蜀国武勋排行第101-500名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国文勋排行1'] = {id = 7160 , note = "^ff7d2f【大蜀首辅】" , desc = "2^ff7d2f蜀国功绩卓越之文臣所获之称号\r获得资格：蜀国文勋排行第1名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国文勋排行2-5'] = {id = 7161 , note = "^a800ff【大蜀能臣】" , desc = "2^a800ff蜀国功绩卓越之文臣所获之称号\r获得资格：蜀国文勋排行第2-5名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国文勋排行6-20'] = {id = 7162 , note = "^0184ff【大蜀名臣】" , desc = "2^0184ff蜀国功绩卓越之文臣所获之称号\r获得资格：蜀国文勋排行第6-20名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国文勋排行21-100'] = {id = 7163 , note = "^72fe00【大蜀良臣】" , desc = "2^72fe00蜀国功绩卓越之文臣所获之称号\r获得资格：蜀国文勋排行第21-100名" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国文勋排行101-500'] = {id = 7164 , note = "^72fe00【大蜀臣佐】" , desc = "2^72fe00蜀国功绩卓越之文臣所获之称号\r获得资格：蜀国文勋排行第101-500名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国武勋排行1'] = {id = 7165 , note = "^ff7d2f【大吴统帅】" , desc = "3^ff7d2f吴国功勋彪炳之武将所获之称号\r获得资格：吴国武勋排行第1名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国武勋排行2-5'] = {id = 7166 , note = "^a800ff【大吴上将】" , desc = "3^a800ff吴国功勋彪炳之武将所获之称号\r获得资格：吴国武勋排行第2-5名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国武勋排行6-20'] = {id = 7167 , note = "^0184ff【大吴名将】" , desc = "3^0184ff吴国功勋彪炳之武将所获之称号\r获得资格：吴国武勋排行第6-20名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国武勋排行21-100'] = {id = 7168 , note = "^72fe00【大吴良将】" , desc = "3^72fe00吴国功勋彪炳之武将所获之称号\r获得资格：吴国武勋排行第21-100名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国武勋排行101-500'] = {id = 7169 , note = "^72fe00【大吴将佐】" , desc = "3^72fe00吴国功勋彪炳之武将所获之称号\r获得资格：吴国武勋排行第101-500名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国文勋排行1'] = {id = 7170 , note = "^ff7d2f【大吴首辅】" , desc = "3^ff7d2f吴国功绩卓越之文臣所获之称号\r获得资格：吴国文勋排行第1名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国文勋排行2-5'] = {id = 7171 , note = "^a800ff【大吴能臣】" , desc = "3^a800ff吴国功绩卓越之文臣所获之称号\r获得资格：吴国文勋排行第2-5名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国文勋排行6-20'] = {id = 7172 , note = "^0184ff【大吴名臣】" , desc = "3^0184ff吴国功绩卓越之文臣所获之称号\r获得资格：吴国文勋排行第6-20名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国文勋排行21-100'] = {id = 7173 , note = "^72fe00【大吴良臣】" , desc = "3^72fe00吴国功绩卓越之文臣所获之称号\r获得资格：吴国文勋排行第21-100名" , desc_1 = "" , desc_2 = ""}
title_definition['吴国文勋排行101-500'] = {id = 7174 , note = "^72fe00【大吴臣佐】" , desc = "3^72fe00吴国功绩卓越之文臣所获之称号\r获得资格：吴国文勋排行第101-500名" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_新手称号'] = {id = 7175 , note = "^e12500【勇士精英】" , desc = "0^72fe00拥有精兵召集令的勇士所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['全国竞技赛八强'] = {id = 7176 , note = "^0184ff【天下八杰军团众】" , desc = "0^72fe00参加全国竞技赛进入八强所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['全国竞技赛四强'] = {id = 7177 , note = "^a800ff【天下四英军团众】" , desc = "0^72fe00参加全国竞技赛进入四强所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['全国竞技赛亚军'] = {id = 7178 , note = "^fff962【天下双雄军团众】" , desc = "0^72fe00参加全国竞技赛夺得亚军所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['全国竞技赛冠军'] = {id = 7179 , note = "^ff0000【天下无双军团众】" , desc = "0^72fe00参加全国竞技赛夺得冠军所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['老玩家回流称号1'] = {id = 7180 , note = "^d181ff【衣锦还乡】" , desc = "0^72fe00大风起兮云飞扬，威加海内兮归故乡！" , desc_1 = "" , desc_2 = ""}
title_definition['老玩家回流称号2'] = {id = 7181 , note = "^d181ff【荣归故里】" , desc = "0^72fe00大风起兮云飞扬，威加海内兮归故乡！" , desc_1 = "" , desc_2 = ""}
title_definition['老玩家回流称号3'] = {id = 7182 , note = "^d181ff【功成名就】" , desc = "0^72fe00大风起兮云飞扬，威加海内兮归故乡！" , desc_1 = "" , desc_2 = ""}
title_definition['资质初始称号'] = {id = 7183 , note = "^a800ff【纵横天下】" , desc = "0^a800ff永久生效\r^ffffff全资质 +1" , desc_1 = "" , desc_2 = ""}
title_definition['魏国玩家61级称号'] = {id = 1113 , note = "^72fe00【魏国精兵】" , desc = "0你已经是魏国精兵中的一员！" , desc_1 = "" , desc_2 = ""}
title_definition['吴国玩家61级称号'] = {id = 1313 , note = "^72fe00【吴国精兵】" , desc = "0你已经是吴国精兵中的一员！" , desc_1 = "" , desc_2 = ""}
title_definition['无阵营玩家60级称号'] = {id = 4104 , note = "^72fe00【大汉精兵】" , desc = "0你已经是大汉的精兵！" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国玩家61级称号'] = {id = 1213 , note = "^72fe00【蜀国精兵】" , desc = "0你已经是蜀国精兵中的一员！" , desc_1 = "" , desc_2 = ""}
title_definition['活动神兵玄奇称号1'] = {id = 8111 , note = "^72fe00【能工巧匠】" , desc = "0^72fe00永久生效\r^ffffff攻击力 +2\r生命值  +10" , desc_1 = "" , desc_2 = ""}
title_definition['活动神兵玄奇称号2'] = {id = 8112 , note = "^0184ff【一代名师】" , desc = "0^72fe00永久生效\r^ffffff攻击力 +5\r生命值  +30" , desc_1 = "" , desc_2 = ""}
title_definition['活动神兵玄奇称号3'] = {id = 8113 , note = "^a800ff【鬼斧神工】" , desc = "0^72fe00永久生效\r^ffffff攻击力 +10\r生命值  +60" , desc_1 = "" , desc_2 = ""}
title_definition['魏国玩家61级称号新'] = {id = 1114 , note = "^72fe00【魏国精兵】" , desc = "0你已经是魏国精兵中的一员！" , desc_1 = "" , desc_2 = ""}
title_definition['吴国玩家61级称号新'] = {id = 1314 , note = "^72fe00【吴国精兵】" , desc = "0你已经是吴国精兵中的一员！" , desc_1 = "" , desc_2 = ""}
title_definition['蜀国玩家61级称号新'] = {id = 1214 , note = "^72fe00【蜀国精兵】" , desc = "0你已经是蜀国精兵中的一员！" , desc_1 = "" , desc_2 = ""}
title_definition['江山如画系列任务称号'] = {id = 7190 , note = "^a800ff【江山如此多娇】" , desc = "0^a800ff永久生效:\r^ffffff攻击力+ 5\r体力值 +10\r附加伤害+ 5" , desc_1 = "" , desc_2 = ""}
title_definition['曹植外传称号'] = {id = 7191 , note = "^0184ff【梦里不知身是客】" , desc = "0^0184ff永久生效:\r^ffffff攻击力 +3" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号1'] = {id = 7192 , note = "^e12500【刀猛胜云长】" , desc = "0^72fe00持刀勇士所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号2'] = {id = 7193 , note = "^e12500【斧威敌徐晃】" , desc = "0^72fe00持斧勇士所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号3'] = {id = 7194 , note = "^e12500【棍风似程普】" , desc = "0^72fe00持棍勇士所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号4'] = {id = 7195 , note = "^e12500【枪快如子龙】" , desc = "0^72fe00持枪勇士所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号5'] = {id = 7196 , note = "^e12500【弓准比黄忠】" , desc = "0^72fe00持弓勇士所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号6'] = {id = 7197 , note = "^e12500【剑舞美周郎】" , desc = "0^72fe00持剑勇士所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号7'] = {id = 7198 , note = "^e12500【杖仙师左慈】" , desc = "0^72fe00持杖勇士所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号8'] = {id = 7199 , note = "^e12500【扇谋赛诸葛】" , desc = "0^72fe00持扇勇士所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号9'] = {id = 7200 , note = "^e12500【环巧孙尚香】" , desc = "0^72fe00持环勇士所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号10'] = {id = 7201 , note = "^e12500【爪袭甘兴霸】" , desc = "0^72fe00持爪勇士所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_兵种活动称号11'] = {id = 7202 , note = "^e12500【嗜血擂台王者】" , desc = "0^72fe00嗜血擂台赛胜利者所获之称号" , desc_1 = "" , desc_2 = ""}
title_definition['护送称号1'] = {id = 7203 , note = "^72fe00【趟子手】" , desc = "0^72fe00每天第一次参与护送可以额外获得少量历练。" , desc_1 = "" , desc_2 = ""}
title_definition['护送称号2'] = {id = 7204 , note = "^0184ff【镖头】" , desc = "0^0184ff每天第一次参与护送可以额外获得一定历练。" , desc_1 = "" , desc_2 = ""}
title_definition['护送称号3'] = {id = 7205 , note = "^a800ff【总镖头】" , desc = "0^a800ff每天第一次参与护送可以额外获得较多历练。" , desc_1 = "" , desc_2 = ""}
title_definition['演义唇楼称号1'] = {id = 7206 , note = "^72fe00【蜃之名人】" , desc = "0^72fe00永久生效\r^ffffff攻击力 +2\r附加伤害 +5" , desc_1 = "" , desc_2 = ""}
title_definition['演义唇楼称号2'] = {id = 7207 , note = "^0184ff【蜃楼城幕僚】" , desc = "0^72fe00永久生效\r^ffffff攻击力 +4\r生命值 +10\r附加伤害 +5" , desc_1 = "" , desc_2 = ""}
title_definition['演义唇楼称号3'] = {id = 7208 , note = "^a800ff【女王的闺蜜】" , desc = "0^72fe00永久生效\r^ffffff攻击力 +6\r体力值 +5\生命值 +20\r附加伤害 +5" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号隐藏1'] = {id = 7209 , note = "" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号隐藏2'] = {id = 7210 , note = "" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号隐藏3'] = {id = 7211 , note = "" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号1'] = {id = 7212 , note = "^a800ff【御雪天王】" , desc = "0圣诞活动中获得新年积分第一名的牛人。" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号2'] = {id = 7213 , note = "^0184ff【伏鹿圣者】" , desc = "0圣诞活动中获得新年积分2-10名的牛人。" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望排行称号3'] = {id = 7214 , note = "^72fe00【圣诞赐福居士】" , desc = "0圣诞活动中获得新年积分11－100名的牛人。" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望兑换称号1'] = {id = 7215 , note = "^72fe00【圣诞雪宝宝】" , desc = "012.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取20个普通雪球。" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望兑换称号2'] = {id = 7216 , note = "^72fe00【圣诞雪精灵】" , desc = "012.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取40个普通雪球。" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望兑换称号3'] = {id = 7217 , note = "^72fe00【踏雪寻梅客】" , desc = "012.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取60个普通雪球。" , desc_1 = "" , desc_2 = ""}
title_definition['圣诞声望兑换称号4'] = {id = 7218 , note = "^72fe00【梅雪煮茶人】" , desc = "012.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取80个普通雪球。" , desc_1 = "" , desc_2 = ""}
title_definition['赛马活动称号1'] = {id = 7219 , note = "^72fe00【长驱行万里】" , desc = "0^72fe00永久生效\r^ffffff攻击力 +5" , desc_1 = "" , desc_2 = ""}
title_definition['赛马活动称号2'] = {id = 7220 , note = "^0184ff【一马踏千山】" , desc = "0^72fe00永久生效\r^ffffff攻击力 +10\r生命值 +2%" , desc_1 = "" , desc_2 = ""}
title_definition['赛马活动称号3'] = {id = 7221 , note = "^a800ff【龙马震九州】" , desc = "0^72fe00永久生效\r^ffffff攻击力 +20\r生命值 +2%\r攻击强度 +3%" , desc_1 = "" , desc_2 = ""}
title_definition['香港_自拍活动称号男'] = {id = 7222 , note = "^ff4ca4【赤壁帅哥】" , desc = "0^72fe00经Gamania官方认可的帅哥，如假包换！" , desc_1 = "" , desc_2 = ""}
title_definition['香港_自拍活动称号女'] = {id = 7223 , note = "^ff4ca4【赤壁索女】" , desc = "0^72fe00经Gamania官方认可的索女，如假包换！" , desc_1 = "" , desc_2 = ""}
title_definition['征战03濮阳霸主'] = {id = 7224 , note = "^ff7d2f【濮阳霸主】" , desc = "0^72fe00获得濮阳之战贰所有图鉴后，获得的称号。\r^72fe00永久生效\r^ffffff攻击力 +20\r附加伤害 +15\r暴击抗性 +3\r限制抗性 +3" , desc_1 = "" , desc_2 = ""}
title_definition['春节活动称号'] = {id = 7225 , note = "^ff4ca4【牛气冲天】" , desc = "0^72fe002009年1月23日－2月26日春节活动期间生效\r^ffffff攻击力 +5\r防御力 +5\r生命值 +5%" , desc_1 = "" , desc_2 = ""}
title_definition['情人节活动称号男'] = {id = 7226 , note = "^ff4ca4【相逢恨晚两心知】" , desc = "0^72fe00情人节情侣专属称号。" , desc_1 = "" , desc_2 = ""}
title_definition['情人节活动称号女'] = {id = 7227 , note = "^ff4ca4【只愿君心似我心】" , desc = "0^72fe00情人节情侣专属称号。" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动01'] = {id = 7228 , note = "^e12500【寰宇一刀】" , desc = "0^72fe00刀之霸者" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动02'] = {id = 7229 , note = "^e12500【百步穿扬】" , desc = "0^72fe00弓之霸者" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动03'] = {id = 7230 , note = "^e12500【魅影刺客】" , desc = "0^72fe00爪之霸者" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动04'] = {id = 7231 , note = "^e12500【杖八金刚】" , desc = "0^72fe00杖之霸者" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动05'] = {id = 7232 , note = "^e12500【斧斧生威】" , desc = "0^72fe00斧之霸者" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动06'] = {id = 7233 , note = "^e12500【神扇鬼谋】" , desc = "0^72fe00扇之霸者" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动07'] = {id = 7234 , note = "^e12500【救世神棍】" , desc = "0^72fe00棍之霸者" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动08'] = {id = 7235 , note = "^e12500【神龙枪圣】" , desc = "0^72fe00枪之霸者" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动09'] = {id = 7236 , note = "^e12500【侠义之剑】" , desc = "0^72fe00剑之霸者" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动10'] = {id = 7237 , note = "^e12500【环球先生】" , desc = "0^72fe00环之霸者" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动11'] = {id = 7238 , note = "^e12500【环球小姐】" , desc = "0^72fe00环之霸者" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动12'] = {id = 7239 , note = "^e12500【舞林至尊】" , desc = "0^72fe00舞之霸者" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动13'] = {id = 7240 , note = "^e12500【至戟无敌】" , desc = "0^72fe00戟之霸者" , desc_1 = "" , desc_2 = ""}
title_definition['香港_玩家比武活动14'] = {id = 7241 , note = "^e12500『十全武者』" , desc = "0^72fe00由Gamania官方认证的至尊武者" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_老玩家回流'] = {id = 7242 , note = "^a800ff【永远忠诚】" , desc = "0^72fe00永远忠诚的勇士！" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第1称号'] = {id = 7243 , note = "^ff7d2f【天下无敌】" , desc = "0^ff7d2f竞技积分排行第一名获得的武艺称号。\r永久生效\r^ffffff生命上限 +10％\r攻击力上限 +20" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第2-4称号'] = {id = 7244 , note = "^ff7d2f【三国无敌】" , desc = "0^ff7d2f竞技积分排行第二到四名获得的武艺称号。\r永久生效\r^ffffff生命上限 +200\r攻击力上限 +15" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第1-30称号'] = {id = 7245 , note = "^a800ff【一骑当千】" , desc = "0^a800ff竞技积分排行第一到三十名获得的武艺称号。\r^ffffff生命上限 +3％\r攻击力上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第31-100称号'] = {id = 7246 , note = "^0184ff【武艺大师】" , desc = "0^0184ff竞技积分排行第三十一到一百名获得的武艺称号。\r^ffffff生命上限 +3％\r攻击力上限 +5" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第101-200称号'] = {id = 7247 , note = "^72fe00【武艺高手】" , desc = "0^72fe00竞技积分排行第一百零一到二百名获得的武艺称号。\r^ffffff生命上限 +3％" , desc_1 = "" , desc_2 = ""}
title_definition['无双07称号紫'] = {id = 7248 , note = "^a800ff【相思不到楚江东】" , desc = "0^72fe00永久生效\r^ffffff攻击力上限 +12\r附加伤害 +5\r生命值 +1%" , desc_1 = "" , desc_2 = ""}
title_definition['无双07称号蓝'] = {id = 7249 , note = "^0184ff【九歌云中君】" , desc = "0^72fe00永久生效\r^ffffff攻击力上限 +7\r附加伤害 +3" , desc_1 = "" , desc_2 = ""}
title_definition['无双07称号绿'] = {id = 7250 , note = "^72fe00【我本楚狂人】" , desc = "0^72fe00永久生效\r^ffffff攻击力上限 +5" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会排行第201-500称号'] = {id = 7251 , note = "^72fe00【习武之人】" , desc = "0^72fe00竞技积分排行第二百零一到五百名获得的武艺称号。\r^ffffff生命上限 +2％" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会十人敌'] = {id = 7252 , note = "^72fe00【十人敌】" , desc = "0^72fe00擂台大会竞技积分达到10点，获得的称号。" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会百人敌'] = {id = 7253 , note = "^0184ff【百人敌】" , desc = "0^0184ff擂台大会竞技积分达到100点，获得的称号。" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会千人敌'] = {id = 7254 , note = "^a800ff【千人敌】" , desc = "0^a800ff擂台大会竞技积分达到1000点，获得的称号。" , desc_1 = "" , desc_2 = ""}
title_definition['擂台大会万人敌'] = {id = 7255 , note = "^ff7d2f【万人敌】" , desc = "0^ff7d2f擂台大会竞技积分达到10000点，获得的称号。" , desc_1 = "" , desc_2 = ""}
title_definition['活动01初级称号'] = {id = 7256 , note = "^72fe00【牧羊虾米】" , desc = "0^ff7d2f羊倌儿的初级身份证明。" , desc_1 = "" , desc_2 = ""}
title_definition['活动01中级称号'] = {id = 7257 , note = "^0184ff【牧羊小牛】" , desc = "0^ff7d2f羊倌儿的中级身份证明。" , desc_1 = "" , desc_2 = ""}
title_definition['活动01高级称号'] = {id = 7258 , note = "^a800ff【牧羊刀狼】" , desc = "0^ff7d2f羊倌儿的高级身份证明。" , desc_1 = "" , desc_2 = ""}
title_definition['活动01顶级称号'] = {id = 7259 , note = "^ff7d2f【牧羊神兽】" , desc = "0^ff7d2f羊倌儿的顶级身份证明。" , desc_1 = "" , desc_2 = ""}
--title_definition['竞技场胜利称号'] = {id = 7260 , note = "" , desc = "0" , desc_1 = "" , desc_2 = ""}
--title_definition['竞技场失败称号'] = {id = 7261 , note = "" , desc = "0" , desc_1 = "" , desc_2 = ""}
title_definition['阵营频道魏发言称号'] = {id = 7262 , note = "^ff7d2f【魏国发言官】" , desc = "0^ff7d2f持有此称号，\r可以消耗魏国诏书来进行阵营频道发言。" , desc_1 = "" , desc_2 = ""}
title_definition['阵营频道蜀发言称号'] = {id = 7263 , note = "^ff7d2f【蜀国发言官】" , desc = "0^ff7d2f持有此称号，\r可以消耗蜀国诏书来进行阵营频道发言。" , desc_1 = "" , desc_2 = ""}
title_definition['阵营频道吴发言称号'] = {id = 7264 , note = "^ff7d2f【吴国发言官】" , desc = "0^ff7d2f持有此称号，\r可以消耗吴国诏书来进行阵营频道发言。" , desc_1 = "" , desc_2 = ""}
title_definition['活动端午节称号'] = {id = 7265 , note = "^a800ff【屈子护卫】" , desc = "0^ff7d2f在端午节护卫三闾大夫的英勇证明。" , desc_1 = "" , desc_2 = ""}
title_definition['阵营魏国霸主'] = {id = 7266 , note = "^ff7d2f※〓大魏霸主〓※" , desc = "0^ff7d2f拥有魏国最强大势力的军团都督，\r被全国群雄推戴为霸主。\r可以发布奇袭敌国的命令。\r本周军团指令数增加100。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['阵营蜀国霸主'] = {id = 7267 , note = "^ff7d2f※〓大蜀霸主〓※" , desc = "0^ff7d2f拥有蜀国最强大势力的军团都督，\r被全国群雄推戴为霸主。\r可以发布奇袭敌国的命令。\r本周军团指令数增加100。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['阵营吴国霸主'] = {id = 7268 , note = "^ff7d2f※〓大吴霸主〓※" , desc = "0^ff7d2f拥有吴国最强大势力的军团都督，\r被全国群雄推戴为霸主。\r可以发布奇袭敌国的命令。\r本周军团指令数增加100。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['活动端午节称号2'] = {id = 7269 , note = "^a800ff【沧浪清兮濯吾缨】" , desc = "0^ff7d2f端午节活动获得，以提醒洁身自好，永怀英灵。" , desc_1 = "" , desc_2 = ""}
title_definition['外传马超传称号1'] = {id = 7270 , note = "^72fe00【真别摸我】" , desc = "0^ffbc3c永久生效:\r^72fe00逆旅河山战场获得\r^ffffff攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['外传马超传称号2'] = {id = 7271 , note = "^0184ff【马大帅】" , desc = "0^ffbc3c永久生效:\r^0184ff逆旅河山战场获得\r^ffffff攻击力 +3，附加伤害+5" , desc_1 = "" , desc_2 = ""}
title_definition['外传马超传称号3'] = {id = 7272 , note = "^0184ff【马大姐】" , desc = "0^ffbc3c永久生效:\r^0184ff逆旅河山战场获得\r^ffffff攻击力 +3，附加伤害+5" , desc_1 = "" , desc_2 = ""}
title_definition['外传马超传称号4'] = {id = 7273 , note = "^a800ff【游刃无间因有余】" , desc = "0^ffbc3c永久生效:\r^a800ff逆旅河山战场获得\r^ffffff攻击力 +5，附加伤害+5" , desc_1 = "" , desc_2 = ""}
title_definition['演义12低级称号'] = {id = 7274 , note = "^72fe00【不屈之人】" , desc = "0^a800ff来自演义剧本麦城之战\r^72fe00永久生效\r^ffffff攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['演义12中级称号'] = {id = 7275 , note = "^0184ff【麦城三百勇士】" , desc = "0^a800ff来自演义剧本麦城之战\r^72fe00永久生效\r^ffffff攻击力 +3，暴击伤害 +1%" , desc_1 = "" , desc_2 = ""}
title_definition['演义12高级称号'] = {id = 7276 , note = "^a800ff【武圣之手】" , desc = "0^a800ff来自演义剧本麦城之战\r^72fe00永久生效\r^ffffff攻击力 +5，暴击伤害 +2%" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国1'] = {id = 5267 , note = "^ffbc3c※〓从二品 镇北将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第10名\r印玺：镇北将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国2'] = {id = 5268 , note = "^ffbc3c※〓从二品 镇西将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第11名\r印玺：镇西将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国3'] = {id = 5269 , note = "^ffbc3c※〓从二品 镇南将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第12名\r印玺：镇南将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国4'] = {id = 5270 , note = "^ffbc3c※〓从二品 镇东将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第13名\r印玺：镇东将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国5'] = {id = 5271 , note = "^ffbc3c※〓从二品 征北将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第14名\r印玺：征北将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国6'] = {id = 5272 , note = "^ffbc3c※〓从二品 征西将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第15名\r印玺：征西将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国7'] = {id = 5273 , note = "^ffbc3c※〓从二品 征南将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第16名\r印玺：征南将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国8'] = {id = 5274 , note = "^ffbc3c※〓从二品 征东将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第17名\r印玺：征东将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国9'] = {id = 5275 , note = "^ffbc3c※〓正二品 抚军大将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第5名\r印玺：抚军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国10'] = {id = 5276 , note = "^ffbc3c※〓正二品 镇军大将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第6名\r印玺：镇军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国11'] = {id = 5277 , note = "^ffbc3c※〓正二品 右车骑将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第7名\r印玺：右车骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国12'] = {id = 5278 , note = "^ffbc3c※〓正二品 右骠骑将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第8名\r印玺：右骠骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品蜀国13'] = {id = 5279 , note = "^ffbc3c※〓正二品 右大将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第9名\r印玺：右大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国1'] = {id = 5280 , note = "^ffbc3c※〓从二品 镇北将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第10名\r印玺：镇北将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国2'] = {id = 5281 , note = "^ffbc3c※〓从二品 镇西将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第11名\r印玺：镇西将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国3'] = {id = 5282 , note = "^ffbc3c※〓从二品 镇南将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第12名\r印玺：镇南将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国4'] = {id = 5283 , note = "^ffbc3c※〓从二品 镇东将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第13名\r印玺：镇东将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国5'] = {id = 5284 , note = "^ffbc3c※〓从二品 征北将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第14名\r印玺：征北将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国6'] = {id = 5285 , note = "^ffbc3c※〓从二品 征西将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第15名\r印玺：征西将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国7'] = {id = 5286 , note = "^ffbc3c※〓从二品 征南将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第16名\r印玺：征南将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国8'] = {id = 5287 , note = "^ffbc3c※〓从二品 征东将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第17名\r印玺：征东将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国9'] = {id = 5288 , note = "^ffbc3c※〓正二品 抚军大将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第5名\r印玺：抚军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国10'] = {id = 5289 , note = "^ffbc3c※〓正二品 镇军大将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第6名\r印玺：镇军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国11'] = {id = 5290 , note = "^ffbc3c※〓正二品 辅国大将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第7名\r印玺：辅国大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国12'] = {id = 5291 , note = "^ffbc3c※〓正二品 右都护〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第8名\r印玺：右都护印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品吴国13'] = {id = 5292 , note = "^ffbc3c※〓正二品 左都护〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第9名\r印玺：左都护印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国1'] = {id = 5293 , note = "^ffbc3c※〓从二品 镇北将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第10名\r印玺：镇北将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国2'] = {id = 5294 , note = "^ffbc3c※〓从二品 镇西将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第11名\r印玺：镇西将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国3'] = {id = 5295 , note = "^ffbc3c※〓从二品 镇南将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第12名\r印玺：镇南将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国4'] = {id = 5296 , note = "^ffbc3c※〓从二品 镇东将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第13名\r印玺：镇东将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国5'] = {id = 5297 , note = "^ffbc3c※〓从二品 征北将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第14名\r印玺：征北将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国6'] = {id = 5298 , note = "^ffbc3c※〓从二品 征西将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第15名\r印玺：征西将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国7'] = {id = 5299 , note = "^ffbc3c※〓从二品 征南将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第16名\r印玺：征南将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国8'] = {id = 5300 , note = "^ffbc3c※〓从二品 征东将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第17名\r印玺：征东将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国9'] = {id = 5301 , note = "^ffbc3c※〓正二品 抚军大将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第5名\r印玺：抚军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国10'] = {id = 5302 , note = "^ffbc3c※〓正二品 镇军大将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第6名\r印玺：镇军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国11'] = {id = 5303 , note = "^ffbc3c※〓正二品 辅国大将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第7名\r印玺：辅国大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国12'] = {id = 5304 , note = "^ffbc3c※〓正二品 中军大将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第8名\r印玺：中军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官二品魏国13'] = {id = 5305 , note = "^ffbc3c※〓正二品 上军大将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第9名\r印玺：上军大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品蜀国1'] = {id = 5306 , note = "^ffbc3c※〓从一品 卫将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第2名\r印玺：卫将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品蜀国2'] = {id = 5307 , note = "^ffbc3c※〓从一品 车骑将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第3名\r印玺：车骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品蜀国3'] = {id = 5308 , note = "^ffbc3c※〓从一品 骠骑将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第4名\r印玺：骠骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品吴国1'] = {id = 5309 , note = "^ffbc3c※〓从一品 卫将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第2名\r印玺：卫将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品吴国2'] = {id = 5310 , note = "^ffbc3c※〓从一品 车骑将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第3名\r印玺：车骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品吴国3'] = {id = 5311 , note = "^ffbc3c※〓从一品 骠骑将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第4名\r印玺：骠骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品魏国1'] = {id = 5312 , note = "^ffbc3c※〓从一品 卫将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第2名\r印玺：卫将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品魏国2'] = {id = 5313 , note = "^ffbc3c※〓从一品 车骑将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第3名\r印玺：车骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官一品魏国3'] = {id = 5314 , note = "^ffbc3c※〓从一品 骠骑将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第4名\r印玺：骠骑将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官正一品蜀国'] = {id = 5315 , note = "^ffbc3c※〓正一品 大将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第1名\r印玺：大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官正一品吴国'] = {id = 5316 , note = "^ffbc3c※〓正一品 大都督〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第1名\r印玺：大都督印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官正一品魏国'] = {id = 5317 , note = "^ffbc3c※〓正一品 大将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第1名\r印玺：大将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国1'] = {id = 5318 , note = "^ffbc3c※〓从二品 左冯翊〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第10名\r印玺：左冯翊印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国2'] = {id = 5319 , note = "^ffbc3c※〓从二品 右扶风〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第11名\r印玺：右扶风印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国3'] = {id = 5320 , note = "^ffbc3c※〓从二品 京兆尹〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第12名\r印玺：京兆尹印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国4'] = {id = 5321 , note = "^ffbc3c※〓从二品 大长秋〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第13名\r印玺：大长秋印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国5'] = {id = 5322 , note = "^ffbc3c※〓从二品 宗正〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第14名\r印玺：宗正印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国6'] = {id = 5323 , note = "^ffbc3c※〓从二品 廷尉〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第15名\r印玺：廷尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国7'] = {id = 5324 , note = "^ffbc3c※〓从二品 光禄勋〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第16名\r印玺：光禄勋印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国8'] = {id = 5325 , note = "^ffbc3c※〓从二品 少府〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第17名\r印玺：少府印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国9'] = {id = 5326 , note = "^ffbc3c※〓正二品 太仆〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第5名\r印玺：太仆印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国10'] = {id = 5327 , note = "^ffbc3c※〓正二品 太常〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第6名\r印玺：太常印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国11'] = {id = 5328 , note = "^ffbc3c※〓正二品 卫尉〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第7名\r印玺：卫尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国12'] = {id = 5329 , note = "^ffbc3c※〓正二品 大鸿胪〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第8名\r印玺：大鸿胪印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品蜀国13'] = {id = 5330 , note = "^ffbc3c※〓正二品 大司农〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第9名\r印玺：大司农印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国1'] = {id = 5331 , note = "^ffbc3c※〓从二品 左冯翊〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第10名\r印玺：左冯翊印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国2'] = {id = 5332 , note = "^ffbc3c※〓从二品 右扶风〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第11名\r印玺：右扶风印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国3'] = {id = 5333 , note = "^ffbc3c※〓从二品 京兆尹〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第12名\r印玺：京兆尹印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国4'] = {id = 5334 , note = "^ffbc3c※〓从二品 大长秋〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第13名\r印玺：大长秋印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国5'] = {id = 5335 , note = "^ffbc3c※〓从二品 宗正〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第14名\r印玺：宗正印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国6'] = {id = 5336 , note = "^ffbc3c※〓从二品 廷尉〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第15名\r印玺：廷尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国7'] = {id = 5337 , note = "^ffbc3c※〓从二品 光禄勋〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第16名\r印玺：光禄勋印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国8'] = {id = 5338 , note = "^ffbc3c※〓从二品 少府〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第17名\r印玺：少府印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国9'] = {id = 5339 , note = "^ffbc3c※〓正二品 太仆〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第5名\r印玺：太仆印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国10'] = {id = 5340 , note = "^ffbc3c※〓正二品 太常〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第6名\r印玺：太常印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国11'] = {id = 5341 , note = "^ffbc3c※〓正二品 卫尉〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第7名\r印玺：卫尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国12'] = {id = 5342 , note = "^ffbc3c※〓正二品 大鸿胪〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第8名\r印玺：大鸿胪印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品吴国13'] = {id = 5343 , note = "^ffbc3c※〓正二品 大司农〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第9名\r印玺：大司农印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国1'] = {id = 5344 , note = "^ffbc3c※〓从二品 左冯翊〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第10名\r印玺：左冯翊印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国2'] = {id = 5345 , note = "^ffbc3c※〓从二品 右扶风〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第11名\r印玺：右扶风印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国3'] = {id = 5346 , note = "^ffbc3c※〓从二品 京兆尹〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第12名\r印玺：京兆尹印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国4'] = {id = 5347 , note = "^ffbc3c※〓从二品 大长秋〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第13名\r印玺：大长秋印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国5'] = {id = 5348 , note = "^ffbc3c※〓从二品 宗正〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第14名\r印玺：宗正印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国6'] = {id = 5349 , note = "^ffbc3c※〓从二品 廷尉〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第15名\r印玺：廷尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国7'] = {id = 5350 , note = "^ffbc3c※〓从二品 光禄勋〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第16名\r印玺：光禄勋印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国8'] = {id = 5351 , note = "^ffbc3c※〓从二品 少府〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第17名\r印玺：少府印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国9'] = {id = 5352 , note = "^ffbc3c※〓正二品 太仆〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第5名\r印玺：太仆印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国10'] = {id = 5353 , note = "^ffbc3c※〓正二品 太常〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第6名\r印玺：太常印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国11'] = {id = 5354 , note = "^ffbc3c※〓正二品 卫尉〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第7名\r印玺：卫尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国12'] = {id = 5355 , note = "^ffbc3c※〓正二品 大鸿胪〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第8名\r印玺：大鸿胪印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官二品魏国13'] = {id = 5356 , note = "^ffbc3c※〓正二品 大司农〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第9名\r印玺：大司农印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品蜀国1'] = {id = 5357 , note = "^ffbc3c※〓从一品 司空〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第2名\r印玺：司空印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品蜀国2'] = {id = 5358 , note = "^ffbc3c※〓从一品 司徒〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第3名\r印玺：司徒印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品蜀国3'] = {id = 5359 , note = "^ffbc3c※〓从一品 太尉〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第4名\r印玺：太尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品吴国1'] = {id = 5360 , note = "^ffbc3c※〓从一品 司空〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第2名\r印玺：司空印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品吴国2'] = {id = 5361 , note = "^ffbc3c※〓从一品 司徒〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第3名\r印玺：司徒印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品吴国3'] = {id = 5362 , note = "^ffbc3c※〓从一品 太尉〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第4名\r印玺：太尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品魏国1'] = {id = 5363 , note = "^ffbc3c※〓从一品 司空〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第2名\r印玺：司空印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品魏国2'] = {id = 5364 , note = "^ffbc3c※〓从一品 司徒〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第3名\r印玺：司徒印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官一品魏国3'] = {id = 5365 , note = "^ffbc3c※〓从一品 太尉〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第4名\r印玺：太尉印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官正一品蜀国'] = {id = 5366 , note = "^ffbc3c※〓正一品 大丞相〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第1名\r印玺：大丞相印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官正一品吴国'] = {id = 5367 , note = "^ffbc3c※〓正一品 大丞相〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第1名\r印玺：大丞相印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官正一品魏国'] = {id = 5368 , note = "^ffbc3c※〓正一品 大丞相〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第1名\r印玺：大丞相印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品1魏国'] = {id = 5369 , note = "^ffbc3c※〓从二品 前监军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第18－30名\r印玺：前监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品2魏国'] = {id = 5370 , note = "^ffbc3c※〓从二品 后监军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第31－50名\r印玺：后监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品3魏国'] = {id = 5371 , note = "^ffbc3c※〓从二品 左监军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第51－100名\r印玺：左监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品4魏国'] = {id = 5372 , note = "^ffbc3c※〓从二品 右监军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国文官上月获得名望排行榜第101－1000名\r印玺：右监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品1蜀国'] = {id = 5373 , note = "^ffbc3c※〓从二品 前监军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第18－30名\r印玺：前监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品2蜀国'] = {id = 5374 , note = "^ffbc3c※〓从二品 后监军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第31－50名\r印玺：后监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品3蜀国'] = {id = 5375 , note = "^ffbc3c※〓从二品 左监军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第51－100名\r印玺：左监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品4蜀国'] = {id = 5376 , note = "^ffbc3c※〓从二品 右监军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国文官上月获得名望排行榜第101－1000名\r印玺：右监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品1吴国'] = {id = 5377 , note = "^ffbc3c※〓从二品 前监军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第18－30名\r印玺：前监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品2吴国'] = {id = 5378 , note = "^ffbc3c※〓从二品 后监军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第31－50名\r印玺：后监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品3吴国'] = {id = 5379 , note = "^ffbc3c※〓从二品 左监军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第51－100名\r印玺：左监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_文官候补从二品4吴国'] = {id = 5380 , note = "^ffbc3c※〓从二品 右监军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国文官上月获得名望排行榜第101－1000名\r印玺：右监军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品1魏国'] = {id = 5381 , note = "^ffbc3c※〓从二品 前领军将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第18－30名\r印玺：前领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品2魏国'] = {id = 5382 , note = "^ffbc3c※〓从二品 后领军将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第31－50名\r印玺：后领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品3魏国'] = {id = 5383 , note = "^ffbc3c※〓从二品 左领军将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第51－100名\r印玺：左领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品4魏国'] = {id = 5384 , note = "^ffbc3c※〓从二品 右领军将军〓※" , desc = "1^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：魏\r来源：魏国武官上月获得名望排行榜第101－1000名\r印玺：右领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品1蜀国'] = {id = 5385 , note = "^ffbc3c※〓从二品 前领军将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第18－30名\r印玺：前领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品2蜀国'] = {id = 5386 , note = "^ffbc3c※〓从二品 后领军将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第31－50名\r印玺：后领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品3蜀国'] = {id = 5387 , note = "^ffbc3c※〓从二品 左领军将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第51－100名\r印玺：左领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品4蜀国'] = {id = 5388 , note = "^ffbc3c※〓从二品 右领军将军〓※" , desc = "2^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：蜀\r来源：蜀国武官上月获得名望排行榜第101－1000名\r印玺：右领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品1吴国'] = {id = 5389 , note = "^ffbc3c※〓从二品 前领军将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第18－30名\r印玺：前领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品2吴国'] = {id = 5390 , note = "^ffbc3c※〓从二品 后领军将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第31－50名\r印玺：后领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品3吴国'] = {id = 5391 , note = "^ffbc3c※〓从二品 左领军将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第51－100名\r印玺：左领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['称号_武官候补从二品4吴国'] = {id = 5392 , note = "^ffbc3c※〓从二品 右领军将军〓※" , desc = "3^ffbc3c永久生效:\r^ffffff生命上限 +10\r阵营：吴\r来源：吴国武官上月获得名望排行榜第101－1000名\r印玺：右领军将军印" , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号01关内侯'] = {id = 7277 , note = "^72fe00【关内侯】" , desc = "0^72fe00名望2000－4999获得的爵位。" , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号02乡侯'] = {id = 7278 , note = "^0184ff【乡侯】" , desc = "0^0184ff名望5000－9999获得的爵位。" , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号03县侯'] = {id = 7279 , note = "^0184ff【县侯】" , desc = "0^0184ff名望10000－19999获得的爵位。" , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号04男爵'] = {id = 7280 , note = "^a800ff【男爵】" , desc = "0^a800ff名望20000－79999获得的爵位。" , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号05子爵'] = {id = 7281 , note = "^a800ff【子爵】" , desc = "0^a800ff名望80000－179999获得的爵位。" , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号06伯爵'] = {id = 7282 , note = "^a800ff【伯爵】" , desc = "0^a800ff名望180000－349999获得的爵位。" , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号07侯爵'] = {id = 7283 , note = "^ff7d2f【侯爵】" , desc = "0^ff7d2f名望350000——599999获得的爵位。" , desc_1 = "" , desc_2 = ""}
title_definition['活动团团称号'] = {id = 7284 , note = "^ff4ca4【我的团长我的团】" , desc = "0^ff7d2f倾团之战后获得，惟以铭记军团伙伴：皇天后土，尘世苍茫，生死与共，情谊绵长。" , desc_1 = "" , desc_2 = ""}
title_definition['称号_魏国军团长称号'] = {id = 7285 , note = "^72fe00【魏国头目】" , desc = "0你现在已经是魏国的成员！\r身份：军团首领" , desc_1 = "" , desc_2 = ""}
title_definition['称号_蜀国军团长称号'] = {id = 7286 , note = "^72fe00【蜀国头目】" , desc = "0你现在已经是魏国的成员！\r身份：军团首领" , desc_1 = "" , desc_2 = ""}
title_definition['称号_吴国军团长称号'] = {id = 7287 , note = "^72fe00【吴国头目】" , desc = "0你现在已经是魏国的成员！\r身份：军团首领" , desc_1 = "" , desc_2 = ""}
title_definition['称号_大汉军团长称号'] = {id = 7288 , note = "^72fe00【大汉头目】" , desc = "0你现在已经是魏国的成员！\r身份：军团首领" , desc_1 = "" , desc_2 = ""}
title_definition['外传貂婵传1'] = {id = 7289 , note = "^72fe00【手挽萝莉趁夜凉】" , desc = "0^72fe00永久生效:\r^ffffff\r攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['外传貂婵传2'] = {id = 7290 , note = "^72fe00【爱江山更爱美人】" , desc = "0^72fe00永久生效:\r^ffffff\r防御力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['外传貂婵传3'] = {id = 7291 , note = "^a800ff【生怕情多累美人】" , desc = "0^a800ff永久生效:\r^ffffff生命值 +20\r攻击力 +5\r暴击伤害 +2%" , desc_1 = "" , desc_2 = ""}
title_definition['外传貂婵传4'] = {id = 7292 , note = "^a800ff【两生花开不记年】" , desc = "0^a800ff永久生效:\r^ffffff生命值 +20\r攻击力 +5\r暴击伤害 +2%" , desc_1 = "" , desc_2 = ""}
title_definition['阵营战地图称号1'] = {id = 7293 , note = "^a800ff【子午谷名将】" , desc = "0^a800ff永久生效:\r^ffffff生命值 +60\r攻击力 +2\r命中+2\r暴击伤害 +3%" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励01魏名次1] = {id = 7294 , note = "^ff7d2f【魏国名士】" , desc = "0^72fe00魏国上周获得名望排行榜第1名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励02魏名次2-10] = {id = 7295 , note = "^a800ff【魏国名士】" , desc = "0^72fe00魏国上周获得名望排行榜第2-10名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励03魏名次11-50] = {id = 7296 , note = "^a800ff【魏国名士】" , desc = "0^72fe00魏国上周获得名望排行榜第11-50名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励04魏名次51-100] = {id = 7297 , note = "^0184ff【魏国名士】" , desc = "0^72fe00魏国上周获得名望排行榜第51-100名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励05魏名次101-500] = {id = 7298 , note = "^0184ff【魏国名士】" , desc = "0^72fe00魏国上周获得名望排行榜第101-500名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励06魏名次501-1000] = {id = 7299 , note = "^72fe00【魏国名士】" , desc = "0^72fe00魏国上周获得名望排行榜第501-1000名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励07魏名次1001以上] = {id = 7300 , note = "^72fe00【魏国名士】" , desc = "0^72fe00魏国上周获得名望排行榜第1001＋名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励01蜀名次1] = {id = 7301 , note = "^ff7d2f【蜀国名士】" , desc = "0^72fe00蜀国上周获得名望排行榜第1名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励02蜀名次2-10] = {id = 7302 , note = "^a800ff【蜀国名士】" , desc = "0^72fe00蜀国上周获得名望排行榜第2-10名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励03蜀名次11-50] = {id = 7303 , note = "^a800ff【蜀国名士】" , desc = "0^72fe00蜀国上周获得名望排行榜第11-50名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励04蜀名次51-100] = {id = 7304 , note = "^0184ff【蜀国名士】" , desc = "0^72fe00蜀国上周获得名望排行榜第51-100名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励05蜀名次101-500] = {id = 7305 , note = "^0184ff【蜀国名士】" , desc = "0^72fe00蜀国上周获得名望排行榜第101-500名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励06蜀名次501-1000] = {id = 7306 , note = "^72fe00【蜀国名士】" , desc = "0^72fe00蜀国上周获得名望排行榜第501-1000名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励07蜀名次1001以上] = {id = 7307 , note = "^72fe00【蜀国名士】" , desc = "0^72fe00蜀国上周获得名望排行榜第1001＋名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励01吴名次1] = {id = 7308 , note = "^ff7d2f【吴国名士】" , desc = "0^72fe00吴国上周获得名望排行榜第1名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励02吴名次2-10] = {id = 7309 , note = "^a800ff【吴国名士】" , desc = "0^72fe00吴国上周获得名望排行榜第2-10名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励03吴名次11-50] = {id = 7310 , note = "^a800ff【吴国名士】" , desc = "0^72fe00吴国上周获得名望排行榜第11-50名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励04吴名次51-100] = {id = 7311 , note = "^0184ff【吴国名士】" , desc = "0^72fe00吴国上周获得名望排行榜第51-100名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励05吴名次101-500] = {id = 7312 , note = "^0184ff【吴国名士】" , desc = "0^72fe00吴国上周获得名望排行榜第101-500名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励06吴名次501-1000] = {id = 7313 , note = "^72fe00【吴国名士】" , desc = "0^72fe00吴国上周获得名望排行榜第501-1000名称号。" , desc_1 = "" , desc_2 = ""}
--title_definition['周排行榜个人奖励07吴名次1001以上] = {id = 7314 , note = "^72fe00【吴国名士】" , desc = "0^72fe00吴国上周获得名望排行榜第1001＋名称号。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行魏国第2'] = {id = 7315 , note = "^a800ff【大魏英主】" , desc = "0^a800ff拥有魏国第二大势力的军团都督\r本周军团指令数增加80。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行魏国第3'] = {id = 7316 , note = "^a800ff【大魏明主】" , desc = "0^a800ff拥有魏国第三大势力的军团都督\r本周军团指令数增加70。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行魏国第4'] = {id = 7317 , note = "^a800ff【大魏雄主】" , desc = "0^a800ff拥有魏国第四大势力的军团都督\r本周军团指令数增加60。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行魏国第5'] = {id = 7318 , note = "^a800ff【大魏强主】" , desc = "0^a800ff拥有魏国第五大势力的军团都督\r本周军团指令数增加50。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行蜀国第2'] = {id = 7319 , note = "^a800ff【大蜀英主】" , desc = "0^a800ff拥有蜀国第二大势力的军团都督\r本周军团指令数增加80。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行蜀国第3'] = {id = 7320 , note = "^a800ff【大蜀明主】" , desc = "0^a800ff拥有蜀国第三大势力的军团都督\r本周军团指令数增加70。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行蜀国第4'] = {id = 7321 , note = "^a800ff【大蜀雄主】" , desc = "0^a800ff拥有蜀国第四大势力的军团都督\r本周军团指令数增加60。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行蜀国第5'] = {id = 7322 , note = "^a800ff【大蜀强主】" , desc = "0^a800ff拥有蜀国第五大势力的军团都督\r本周军团指令数增加50。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行吴国第2'] = {id = 7323 , note = "^a800ff【大吴英主】" , desc = "0^a800ff拥有吴国第二大势力的军团都督\r本周军团指令数增加80。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行吴国第3'] = {id = 7324 , note = "^a800ff【大吴明主】" , desc = "0^a800ff拥有吴国第三大势力的军团都督\r本周军团指令数增加70。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行吴国第4'] = {id = 7325 , note = "^a800ff【大吴雄主】" , desc = "0^a800ff拥有吴国第四大势力的军团都督\r本周军团指令数增加60。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['军团名望每周排行吴国第5'] = {id = 7326 , note = "^a800ff【大吴强主】" , desc = "0^a800ff拥有吴国第五大势力的军团都督\r本周军团指令数增加50。\r团员可以前去皇甫炎领取战略指令。" , desc_1 = "" , desc_2 = ""}
title_definition['无双隆中奇情称号01'] = {id = 7327 , note = "^72fe00【几回魂梦与君同】" , desc = "0无双战场“隆中奇情”中获得的称号\r攻击力 +3" , desc_1 = "" , desc_2 = ""}
title_definition['无双隆中奇情称号02'] = {id = 7328 , note = "^0184ff【犹恐相逢是梦中】" , desc = "0无双战场“隆中奇情”中获得的称号\r攻击力 +5,生命值 +20" , desc_1 = "" , desc_2 = ""}
title_definition['无双隆中奇情称号03'] = {id = 7329 , note = "^a800ff【风月情浓痴情种】" , desc = "0无双战场“隆中奇情”中获得的称号\r攻击力+10,生命值+50" , desc_1 = "" , desc_2 = ""}
title_definition['百团盛典活动称号-老玩家'] = {id = 7330 , note = "^d181ff【天下谁人不识君】" , desc = "0老玩家专属的尊荣称号" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营魏国入门2'] = {id = 7331 , note = "^72fe00【魏国人士】" , desc = "0你现在已经成为魏国的人士！" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营蜀国入门2'] = {id = 7332 , note = "^72fe00【蜀国人士】" , desc = "0你现在已经成为蜀国的人士！" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营吴国入门2'] = {id = 7333 , note = "^72fe00【吴国人士】" , desc = "0你现在已经成为吴国的人士！" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营无国家称号1'] = {id = 7334 , note = "^72fe00【草庐闲居】" , desc = "0你现在还没有加入任何国家！" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营无国家称号2'] = {id = 7335 , note = "^72fe00【在野人士】" , desc = "0你现在是一位在野人士！" , desc_1 = "" , desc_2 = ""}
title_definition['称号_阵营无国家称号3'] = {id = 7336 , note = "^72fe00【闲云野鹤】" , desc = "0你现在是自由的闲云野鹤！" , desc_1 = "" , desc_2 = ""}
title_definition['百团盛典活动称号-声望兑换'] = {id = 7337 , note = "^deff00【万水千山总关情】" , desc = "0百团盛典活动中获得，记录遍访故土河山的足迹，乡情永存游子心中。" , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号08公爵'] = {id = 7338 , note = "^ff7d2f【公爵】" , desc = "0^ff7d2f名望600000——999999获得的爵位。" , desc_1 = "" , desc_2 = ""}
title_definition['爵位称号09王爵'] = {id = 7339 , note = "^ff7d2f【王爵】" , desc = "0^ff7d2f名望达到1000000以上，获得的最高爵位。" , desc_1 = "" , desc_2 = ""}
title_definition['故土声望排行隐藏称号1'] = {id = 7340 , note = "" , desc = "01～3名" , desc_1 = "" , desc_2 = ""}
title_definition['故土声望排行隐藏称号2'] = {id = 7341 , note = "" , desc = "04～10名" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号01'] = {id = 7342 , note = "^72fe00【$T的徒弟】" , desc = "0^72fe00师徒称号奖励" , desc_1 = "" , desc_2 = ""}
title_definition['七星湖南中蛮王'] = {id = 7343 , note = "^d181ff【南中蛮王】" , desc = "0^d181ff得到孟获军所有人物图鉴获得的珍贵称号。" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号02'] = {id = 7344 , note = "^ffffff【初级师傅】" , desc = "0^ffffff师徒奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号03'] = {id = 7345 , note = "^72fe00【中级师傅】" , desc = "0^72fe00师徒奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号04'] = {id = 7346 , note = "^0184ff【高级师傅】" , desc = "0^0184ff师徒奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['义结天下奖励称号'] = {id = 7347 , note = "^72fe00【集结号】" , desc = "0义结天下活动奖励称号！" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号05'] = {id = 7348 , note = "^a800ff【初级名师】" , desc = "0^a800ff师徒奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号06'] = {id = 7349 , note = "^ff7d2f【中级名师】" , desc = "0^ff7d2f师徒奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号07'] = {id = 7350 , note = "^fff962【高级名师】" , desc = "0^fff962师徒奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号08'] = {id = 7351 , note = "^ff7d2f【天朝良师】" , desc = "0^ff7d2f师德排行奖励称号\r^ffffff生命值+200 防御力+5" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号01'] = {id = 7352 , note = "^ff4ca4【绝妙问题提供者】" , desc = "0绝妙问题提供者" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号02'] = {id = 7353 , note = "^3bbcec【问题提供者】" , desc = "0问题提供者" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号03'] = {id = 7354 , note = "^72fe00【鼓励奖】" , desc = "0鼓励奖" , desc_1 = "" , desc_2 = ""}
title_definition['跨服竞技全国冠军'] = {id = 7355 , note = "^ff7d2f【赤壁霸主】" , desc = "0^ff7d2f在跨服军团竞技赛获得冠军，天下无敌的强大军团的一员！" , desc_1 = "" , desc_2 = ""}
title_definition['跨服竞技全国亚军'] = {id = 7356 , note = "^ff7d2f【赤壁虎将】" , desc = "0^ff7d2f在跨服军团竞技赛获得亚军，名震天下的强大军团的一员！" , desc_1 = "" , desc_2 = ""}
title_definition['跨服竞技全国季军'] = {id = 7357 , note = "^ff7d2f【赤壁重臣】" , desc = "0^ff7d2f在跨服军团竞技赛获得季军，名扬天下的强大军团的一员！" , desc_1 = "" , desc_2 = ""}
title_definition['跨服竞技全国4－6名'] = {id = 7358 , note = "^ff7d2f【赤壁名流】" , desc = "0^ff7d2f在跨服军团竞技赛晋身前六名，名闻天下的强大军团的一员！" , desc_1 = "" , desc_2 = ""}
title_definition['演义逆旅河山01'] = {id = 7359 , note = "^72fe00【逆旅散人】" , desc = "0^72fe00演义战场“逆旅河山”中获得的称号\r攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['演义逆旅河山02'] = {id = 7360 , note = "^0184ff【羁旅千年闲问花】" , desc = "0^0184ff演义战场“逆旅河山”中获得的称号\r攻击力 +3,防御值+1" , desc_1 = "" , desc_2 = ""}
title_definition['演义逆旅河山03'] = {id = 7361 , note = "^a800ff【三千世界万行具足觉妙如来逆时自在法王】" , desc = "0^a800ff演义战场“逆旅河山”中获得的称号\r攻击力+5,防御值+2，体力值+5" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_七夕称号01'] = {id = 7362 , note = "^a800ff【在天愿作比翼鸟】" , desc = "0七夕活动中获得的称号！" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_七夕称号02'] = {id = 7363 , note = "^a800ff【在地愿为连理枝】" , desc = "0七夕活动中获得的称号！" , desc_1 = "" , desc_2 = ""}
title_definition['09七夕称号01'] = {id = 7364 , note = "^a800ff【风情万种鹊桥归】" , desc = "0^fff600七夕活动获得。拥有999朵蓝色妖姬，人所钟情的绝世美人！" , desc_1 = "" , desc_2 = ""}
title_definition['09七夕称号02'] = {id = 7365 , note = "^a800ff【在水一方蓝颜醉】" , desc = "0^fff600七夕活动获得。拥有999朵蓝色妖姬，人所钟情的无双君子！" , desc_1 = "" , desc_2 = ""}
title_definition['商城积分月榜第1隐藏称号'] = {id = 7366 , note = "^fffd44【天禄小福神】" , desc = "0^fffd44每月消费积分排行榜第一名获得的称号\r生命值+1000 暴击+5 命中+10 治疗点数+150\r^fffd44有效期至每月月底" , desc_1 = "" , desc_2 = ""}
title_definition['商城积分月榜第2-10隐藏称号'] = {id = 7367 , note = "^ff9c00【天禄小福星】" , desc = "0^ff9c00每月消费积分排行榜第二至十名获得的称号\r生命值+500 暴击+2 命中+5 治疗点数+80\r^ff9c00有效期至每月月底" , desc_1 = "" , desc_2 = ""}
title_definition['09中秋称号01'] = {id = 7368 , note = "^ff7d2f【天若有情天亦老】" , desc = "0^ff7d2f中秋活动奖励称号！" , desc_1 = "" , desc_2 = ""}
title_definition['09中秋称号02'] = {id = 7369 , note = "^ff7d2f【月如无恨月长圆】" , desc = "0^ff7d2f中秋活动奖励称号！" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城文官称号'] = {id = 7370 , note = "^d181ff【智谋贯通】" , desc = "0^d181ff获得了所有八枚文官列传图鉴的嘉奖，\r可向长安图鉴使者张华一次性领取10000点文勋和10000点功勋。" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城武官称号'] = {id = 7371 , note = "^d181ff【兵法透彻】" , desc = "0^d181ff获得了所有八枚武官列传图鉴的嘉奖，\r可向长安图鉴使者张华一次性领取10000点武勋和10000点功勋。" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商1'] = {id = 7372 , note = "^72fe00【云游山水的小贩】" , desc = "0^72fe00白帝城跑商中获得的称号\r攻击力 +2，防御力+1" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商2'] = {id = 7373 , note = "^0184ff【精打细算小富商】" , desc = "0^0184ff白帝城跑商中获得的称号\r生命值+10，攻击力 +5，防御力+3" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商3'] = {id = 7374 , note = "^a800ff【白帝城荣誉商人】" , desc = "0^a800ff白帝城跑商中获得的称号\r生命值+60，攻击力 +10，防御力+5" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商4'] = {id = 7375 , note = "^ff4ca4【献爱心的小商人】" , desc = "0^ff4ca4白帝城跑商中获得的称号\r治疗属性+1%" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商5'] = {id = 7376 , note = "^ff4ca4【口吐莲花小商人】" , desc = "0^ff4ca4白帝城跑商中获得的称号\r附加伤害+2" , desc_1 = "" , desc_2 = ""}
title_definition['白帝城跑商6'] = {id = 7377 , note = "^ff4ca4【被忽悠了的善良商人】" , desc = "0^ff4ca4白帝城跑商中获得的称号\r体力值+5" , desc_1 = "" , desc_2 = ""}
title_definition['PK之王个人赛冠军'] = {id = 7378 , note = "^ff4ca4【个人赛冠军】" , desc = "0^ff4ca4PK之王个人赛的冠军！" , desc_1 = "" , desc_2 = ""}
title_definition['PK之王个人赛亚军'] = {id = 7379 , note = "^ff7d2f【个人赛亚军】" , desc = "0^ff7d2fPK之王个人赛的亚军！" , desc_1 = "" , desc_2 = ""}
title_definition['PK之王个人赛季军'] = {id = 7380 , note = "^a800ff【个人赛季军】" , desc = "0^a800ffPK之王个人赛的季军！" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片灵气称号01'] = {id = 7381 , note = "^ff7d2f【灵气称号1】" , desc = "0^ff7d2f中秋活动奖励称号！" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片灵气称号02'] = {id = 7382 , note = "^ff7d2f【灵气称号2】" , desc = "0^ff7d2f中秋活动奖励称号！" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片灵气称号03'] = {id = 7383 , note = "^ff7d2f【灵气称号3】" , desc = "0^ff7d2f中秋活动奖励称号！" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片老玩家回归称号01'] = {id = 7384 , note = "^ff7d2f【红尘数见应识我】" , desc = "0^ff7d2f热血战魂老玩家回归专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片老玩家回归称号02'] = {id = 7385 , note = "^ff7d2f【碧山入画又逢君】" , desc = "0^ff7d2f热血战魂老玩家回归专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['Q4资料片老玩家回归称号03'] = {id = 7386 , note = "^ff7d2f【白云堪卧君早归】" , desc = "0^ff7d2f热血战魂老玩家回归专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['战魂前提称号'] = {id = 7387 , note = "^ff7200【战魂使】" , desc = "0^ff7200拥有了与战魂产生共鸣的能力\r生命+50，攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['战魂活动称号'] = {id = 7388 , note = "^ff7d2f【祈魂大师】" , desc = "0^ff7d2f祈魂大典获得的称号" , desc_1 = "" , desc_2 = ""}
title_definition['09圣诞活动称号01'] = {id = 7389 , note = "^ffc556【闪亮圣诞大天使】" , desc = "0^ff6fb3被四面八方的雪球击中，可谓2009年圣诞节最受欢迎的大天使！" , desc_1 = "" , desc_2 = ""}
title_definition['09圣诞活动称号02'] = {id = 7390 , note = "^ffc556【飞雪圣诞小恶魔】" , desc = "0^ff6fb3偷偷向别人扔祝福雪球，可谓2009年圣诞节最可爱的小恶魔！" , desc_1 = "" , desc_2 = ""}
title_definition['09圣诞活动称号03'] = {id = 7391 , note = "^ff7d2f【坐看云起万里鹏程】" , desc = "0^ff6fb32010年元旦登高的收获。新年立志高远，你的未来将无比美好！" , desc_1 = "" , desc_2 = ""}
title_definition['二周年庆典称号01'] = {id = 7392 , note = "^a800ff【三国巡礼者】" , desc = "0^ff7d2f赤壁二周年庆典独享称号！凭此称号可在每天完成横刀立马或千里平乱任务后领取一次高额历练奖励。" , desc_1 = "" , desc_2 = ""}
title_definition['二周年庆典称号02'] = {id = 7393 , note = "^ff7d2f【历史见证者】" , desc = "0^a800ff历史的沧桑与辉煌，赤壁的风雨和成长，尽在有心人眼中。" , desc_1 = "" , desc_2 = ""}
title_definition['虎年高级VIP称号'] = {id = 7394 , note = "^ff7d2f【五湖四海皆春色万水千山尽得辉】" , desc = "0^a800ff高级VIP的象征" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号04'] = {id = 7395 , note = "^ff4ca4【绝妙问题提供者】" , desc = "0绝妙问题提供者" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号05'] = {id = 7396 , note = "^3bbcec【问题提供者】" , desc = "0问题提供者" , desc_1 = "" , desc_2 = ""}
title_definition['二周年庆典称号03'] = {id = 7397 , note = "^ff7d2f【登崖一啸千峰鸣】" , desc = "0^a800ff继往开来，破旧立新，开创新的时代。" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_活动称号1'] = {id = 7398 , note = "^72fe00【热血青年】" , desc = "革命百年活动称号" , desc_1 = "" , desc_2 = ""}
title_definition['台湾_活动称号2'] = {id = 7399 , note = "^ff7d2f【抛头颅撒热血】" , desc = "革命百年活动称号" , desc_1 = "" , desc_2 = ""}
title_definition['日本_舌战群儒称号06'] = {id = 7400 , note = "^72fe00【鼓励奖】" , desc = "0鼓励奖" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情西凉13'] = {id = 7401 , note = "^72fe00【佛挡杀佛】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +10" , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度魏1'] = {id = 7402 , note = "^ff7d2f【大魏无双都督】" , desc = "0^72fe00魏国军团上周活跃度第一名的奖励称号！\r可于周日晚18：00到22：00间在军团基地\r兵曹长吏习演武处领取奖励。\r(军团长国家与军团所属国家不同时无法领奖！)\r注：军团内成员每升一级可带来大量活跃度。" , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度魏2-5'] = {id = 7403 , note = "^a800ff【大魏精英都督】" , desc = "0^72fe00魏国军团上周活跃度第二至五名的奖励称号！\r可于周日晚18：00到22：00间在军团基地\r兵曹长吏习演武处领取奖励。\r(军团长国家与军团所属国家不同时无法领奖！)\r注：军团内成员每升一级可带来大量活跃度。" , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度魏6-15'] = {id = 7404 , note = "^0184ff【大魏杰出都督】" , desc = "0^72fe00魏国军团上周活跃度第六至十五名的奖励称号！\r可于周日晚18：00到22：00间在军团基地\r兵曹长吏习演武处领取奖励。\r(军团长国家与军团所属国家不同时无法领奖！)\r注：军团内成员每升一级可带来大量活跃度。" , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度蜀1'] = {id = 7405 , note = "^ff7d2f【大蜀无双都督】" , desc = "0^72fe00蜀国军团上周活跃度第一名的奖励称号！\r可于周日晚18：00到22：00间在军团基地\r兵曹长吏习演武处领取奖励。\r(军团长国家与军团所属国家不同时无法领奖！)\r注：军团内成员每升一级可带来大量活跃度。" , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度蜀2-5'] = {id = 7406 , note = "^a800ff【大蜀精英都督】" , desc = "0^72fe00蜀国军团上周活跃度第二至五名的奖励称号！\r可于周日晚18：00到22：00间在军团基地\r兵曹长吏习演武处领取奖励。\r(军团长国家与军团所属国家不同时无法领奖！)\r注：军团内成员每升一级可带来大量活跃度。" , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度蜀6-15'] = {id = 7407 , note = "^0184ff【大蜀杰出都督】" , desc = "0^72fe00蜀国军团上周活跃度第六至十五名的奖励称号！\r可于周日晚18：00到22：00间在军团基地\r兵曹长吏习演武处领取奖励。\r(军团长国家与军团所属国家不同时无法领奖！)\r注：军团内成员每升一级可带来大量活跃度。" , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度吴1'] = {id = 7408 , note = "^ff7d2f【大吴无双都督】" , desc = "0^72fe00吴国军团上周活跃度第一名的奖励称号！\r可于周日晚18：00到22：00间在军团基地\r兵曹长吏习演武处领取奖励。\r(军团长国家与军团所属国家不同时无法领奖！)\r注：军团内成员每升一级可带来大量活跃度。" , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度吴2-5'] = {id = 7409 , note = "^a800ff【大吴精英都督】" , desc = "0^72fe00吴国军团上周活跃度第二至五名的奖励称号！\r可于周日晚18：00到22：00间在军团基地\r兵曹长吏习演武处领取奖励。\r(军团长国家与军团所属国家不同时无法领奖！)\r注：军团内成员每升一级可带来大量活跃度。" , desc_1 = "" , desc_2 = ""}
title_definition['排行_军团上周活跃度吴6-15'] = {id = 7410 , note = "^0184ff【大吴杰出都督】" , desc = "0^72fe00吴国军团上周活跃度第六至十五名的奖励称号！\r可于周日晚18：00到22：00间在军团基地\r兵曹长吏习演武处领取奖励。\r(军团长国家与军团所属国家不同时无法领奖！)\r注：军团内成员每升一级可带来大量活跃度。" , desc_1 = "" , desc_2 = ""}
title_definition['4月资料片老玩家回归称号'] = {id = 7411 , note = "^ff7d2f【大将归来战沙场】" , desc = "0^ff7d2f老玩家回归专属称号！\r4月19日后上线可获得高额经验奖励\r4.19到5.9期间，每天可组队作为队长在虎大将处开启“大将军的印记”任务，获取高额奖励！" , desc_1 = "" , desc_2 = ""}
title_definition['虎年四月资料片送水称号'] = {id = 7412, note = "^ff7d2f【我比明星有爱心】" , desc = "0^ff7d2f累积上交20个爱心甘露获得的专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['5月主题活动祈福称号'] = {id = 7413, note = "^ff7200【天佑中华 同心祈福】" , desc = "0^ff7200天佑中华祈福活动专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['5月主题活动欢乐积分排行榜第1名称号'] = {id = 7414, note = "^ff7200【招财进宝小财神】" , desc = "0^ff7200欢乐积分排行榜第1名专属称号！\r拥有此称号，可前往完美礼品使者处领取奖品。" , desc_1 = "" , desc_2 = ""}
title_definition['5月主题活动欢乐积分排行榜第2-10名称号'] = {id = 7415, note = "^ff7200【招财小神】" , desc = "0^ff7200欢乐积分排行榜第2-10名专属称号！\r拥有此称号，可前往完美礼品使者处领取奖品。" , desc_1 = "" , desc_2 = ""}
title_definition['5月主题活动欢乐积分排行榜第111-100名称号'] = {id = 7416, note = "^ff7200【进宝小仙】" , desc = "0^ff7200欢乐积分排行榜第11-100名专属称号！\r拥有此称号，可前往完美礼品使者处领取奖品。" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片洛阳剧情称号1'] = {id = 7417 , note = "^ff7d2f【英雄命格】" , desc = "0^ff7d2f任何一项武艺达到尊级九段获得的命格，\r可以找长安城壶公开启新的英雄道路。\r永久生效:\r^ffffff攻击力+10\防御力+5\体质+10\命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片洛阳剧情称号2'] = {id = 7418 , note = "^72fe00【名侦探】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r闪避+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片洛阳剧情称号3'] = {id = 7419 , note = "^72fe00【赤墨长老】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+30\r治疗点数+10\r命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片洛阳剧情称号4'] = {id = 7420 , note = "^72fe00【白墨长老】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+30\r治疗点数+10\r命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片洛阳剧情称号5'] = {id = 7421 , note = "^72fe00【园艺圣手】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r治疗点数+10\r命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片洛阳剧情称号6'] = {id = 7422 , note = "^72fe00【金玉良缘】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r闪避+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片洛阳剧情称号7'] = {id = 7423 , note = "^72fe00【鬼吹灯】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片草原剧情称号1'] = {id = 7424 , note = "^72fe00【红酥手暖】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r治疗点数+10" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片草原剧情称号2'] = {id = 7425 , note = "^72fe00【试问不平事】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r防御力+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片草原剧情称号3'] = {id = 7426 , note = "^72fe00【老夫让你三招】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r防御力+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片草原剧情称号4'] = {id = 7427 , note = "^72fe00【相逢未有期】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片草原剧情称号5'] = {id = 7428 , note = "^72fe00【寡人有喜】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r防御力+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片草原剧情称号6'] = {id = 7429 , note = "^72fe00【长乐未央】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片东海剧情称号1'] = {id = 7430 , note = "^72fe00【看门侠】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r闪避+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片东海剧情称号2'] = {id = 7431 , note = "^72fe00【人间路快乐少年郎】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r治疗点数+10" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片东海剧情称号3'] = {id = 7432 , note = "^72fe00【棋痴】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r闪避+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片东海剧情称号4'] = {id = 7433 , note = "^72fe00【万里月光号的助手】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片东海剧情称号5'] = {id = 7434 , note = "^72fe00【除魔卫道】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r防御力+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片东海剧情称号6'] = {id = 7435 , note = "^72fe00【八卦异士】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r体质+10\r防御力+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号1'] = {id = 7436 , note = "^72fe00【洛渔乐·东猎西渔】" , desc = "0^72fe00钓鱼之神技的初窥门道者\r^72fe00永久生效:\r^ffffff攻击力+2\r命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号2'] = {id = 7437 , note = "^72fe00【洛渔乐·浑水摸鱼】" , desc = "0^72fe00钓鱼之神技的初入门道者\r^72fe00永久生效:\r^ffffff攻击力+5\r命中+2\r体质+10" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号3'] = {id = 7438 , note = "^0184ff【洛渔乐·伊人垂钓】" , desc = "0^0184ff逐步体验到钓鱼神技的奥妙\r^72fe00永久生效:\r^ffffff攻击力+10\r命中+3\r体质+20" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号4'] = {id = 7439 , note = "^0184ff【洛渔乐·叶舟风波】" , desc = "0^0184ff磨练垂钓的技艺\r^72fe00永久生效:\r^ffffff攻击力+15\r命中+4\r体质+40" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号5'] = {id = 7440 , note = "^a800ff【洛渔乐·白头笠翁】" , desc = "0^a800ff垂钓技艺已经成为你一生的追求\r^72fe00永久生效:\r^ffffff攻击力+20\r命中+4\r体质+80" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动钓鱼称号6'] = {id = 7441 , note = "^ff7d2f【洛渔乐·愿者上钩】" , desc = "0^ff7d2f你的钓鱼技艺已经达到垂钓于无形的境界\r^72fe00永久生效:\r^ffffff攻击力+30\r命中+4\r体质+160" , desc_1 = "" , desc_2 = ""}
title_definition['端午节高级VIP尊贵称号'] = {id = 7442 , note = "^72fe00五月榴花妖艳烘绿杨带雨垂垂重" , desc = "0^ff7d2f端午节高级VIP尊贵称号" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片建安笑林'] = {id = 7443 , note = "^ff4ca4【冷笑话帝】" , desc = "0^ff4ca4永久生效:\r^ffffff攻击力+2\r体质+10\r闪避+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号1'] = {id = 7444 , note = "^72fe00【商会学徒】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r暴击+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号2'] = {id = 7445 , note = "^0184ff【商会旅行商】" , desc = "0^0184ff永久生效:\r^ffffff攻击力+5\r暴击+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号3'] = {id = 7446 , note = "^0184ff【商会掌柜】" , desc = "0^0184ff永久生效:\r^ffffff攻击力+10\r暴击+3\r直接伤害抗性+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号4'] = {id = 7447 , note = "^a800ff【商界名人】" , desc = "0^a800ff永久生效:\r^ffffff攻击力+15\r暴击+4\r直接伤害抗性+2\r治疗点数+20" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号5'] = {id = 7448 , note = "^ff7d2f【商界富豪】" , desc = "0^ff7d2f永久生效:\r^ffffff攻击力+20\r暴击+5\r直接伤害抗性+2\r治疗点数+40\r间接伤害抗性+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号排行榜1'] = {id = 7449 , note = "^fff962【商会大当家】" , desc = "0^fff962永久生效:\r^ffffff生命值+5%\r体质+200\r防御力+20" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号排行榜2-10'] = {id = 7450 , note = "^ff7d2f【商会长老】" , desc = "0^ff7d2f永久生效:\r^ffffff生命值+3%\r体质+100\r防御力+10" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片商会称号排行榜11-30'] = {id = 7451 , note = "^a800ff【商会执事】" , desc = "0^a800ff永久生效:\r^ffffff生命值+1%\r体质+50" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战1'] = {id = 7452 , note = "^72fe00【赤壁桨手】" , desc = "0^72fe00永久生效:\r^ffffff攻击力+2\r暴击抗性+1\r防御力+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战2'] = {id = 7453 , note = "^0184ff【赤壁弓手】" , desc = "0^0184ff永久生效:\r^ffffff攻击力+5\r暴击抗性+2\r防御力+2" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战3'] = {id = 7454 , note = "^0184ff【赤壁炮兵】" , desc = "0^0184ff永久生效:\r^ffffff攻击力+10\r暴击抗性+3\r防御力+5" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战4'] = {id = 7455 , note = "^a800ff【赤壁船长】" , desc = "0^a800ff永久生效:\r^ffffff攻击力+15\r暴击抗性+4\r防御力+10\r刺破+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战5'] = {id = 7456 , note = "^a800ff【赤壁提督】" , desc = "0^a800ff永久生效:\r^ffffff攻击力+20\r暴击抗性+5\r防御力+15\r刺破+2\r暴击附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片赤壁之战6'] = {id = 7457 , note = "^ff7d2f【赤壁霸主】" , desc = "0^ff7d2f永久生效:\r^ffffff攻击力+30\r暴击抗性+5\r防御力+20\r刺破+2\r暴击附加伤害+20\r穿透+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动探宝称号1'] = {id = 7458 , note = "^72fe00【探宝歌·宝山空回】" , desc = "0^72fe00寻宝界的初出茅庐者\r^72fe00永久生效:\r^ffffff攻击力+5\r闪避+1" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动探宝称号2'] = {id = 7459 , note = "^0184ff【探宝歌·不贪为宝】" , desc = "0^0184ff不可贪心他人之宝，你已经摸到了探宝的门道\r^0184ff永久生效:\r^ffffff攻击力+10\r闪避+2\r防御力+5" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动探宝称号3'] = {id = 7460 , note = "^a800ff【探宝歌·抱宝怀珍】" , desc = "0^a800ff踏遍群山，寻得众多宝物，你已然精于此道\r^a800ff永久生效:\r^ffffff攻击力+20\r闪避+3\r防御力+10\r体质+50" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片活动探宝称号5'] = {id = 7461 , note = "^ff7d2f【探宝歌·财神爷】" , desc = "0^ff7d2f财神爷降临！财源滚进，幸福美满！\r^ff7d2f永久生效:\r^ffffff攻击力+30\r闪避+4\r防御力+15\r体质+200" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南1'] = {id = 7462 , note = "^72fe00【顺天之勇士】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +1\r防御力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南2'] = {id = 7463 , note = "^72fe00【逆天之巫者】" , desc = "0^72fe00永久生效:\r^ffffff攻击力 +1\r防御力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南3'] = {id = 7464 , note = "^72fe00【青春山神】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +15\r攻击力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南6'] = {id = 7465 , note = "^a800ff【赤壁达人】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['2010AMD新手卡称号'] = {id = 7466 , note = "^ff4ca4【赤壁·新视觉】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南4'] = {id = 7467 , note = "^72fe00【路漫漫其修远兮】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +30\r攻击力 +2" , desc_1 = "" , desc_2 = ""}
title_definition['称号_剧情川南5'] = {id = 7468 , note = "^a800ff【吾将上下而求索】" , desc = "0^72fe00永久生效:\r^ffffff生命上限 +80\r攻击力 +2\r防御力 +1" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号01'] = {id = 7469 , note = "^a800ff【新三国贤士】" , desc = "0^ff7d2f拥有此称号在7月22-8月8日间\r每晚19：30-21：30，在线即可获得“赤壁之战备战物资”奖励\r周日晚还有万元大奖等着你哦，不要错过！" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号02'] = {id = 7470 , note = "^ff7d2f【魏国天下第一主公】" , desc = "0^ff7d2f魏国主公排名第一，荣耀之称！" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号03'] = {id = 7471 , note = "^ff7d2f【蜀国天下第一主公】" , desc = "0^ff7d2f蜀国主公排名第一，荣耀之称！" , desc_1 = "" , desc_2 = ""}
title_definition['产品2010活动称号04'] = {id = 7472 , note = "^ff7d2f【吴国天下第一主公】" , desc = "0^ff7d2f吴国主公排名第一，荣耀之称！" , desc_1 = "" , desc_2 = ""}
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
title_definition['称号_濮阳之战英雄级低'] = {id = 7484 , note = "^0184ff【冷血精兵】" ,desc = "0^72fe00永久生效:\r^ffffff生命上限 +120" , desc_1 = "" , desc_2 = ""}
title_definition['称号_濮阳之战英雄级高'] = {id = 7485 , note = "^a800ff【逆天改命】" ,desc = "0^72fe00永久生效:\r^ffffff生命上限 +200\r暴击抗性 +1" , desc_1 = "" , desc_2 = ""}
title_definition['称号_2010跨服PK赛3'] = {id = 7486 , note = "^ff7d2f【2010全国竞技赛季军】" ,desc = "0^ff7d2f2010全国竞技赛的季军得主" , desc_1 = "" , desc_2 = ""}
title_definition['称号_2010跨服PK赛2'] = {id = 7487 , note = "^ff7d2f【2010全国竞技赛亚军】" ,desc = "0^ff7d2f2010全国竞技赛的亚军得主" , desc_1 = "" , desc_2 = ""}
title_definition['称号_2010跨服PK赛1'] = {id = 7488 , note = "^ff7d2f【2010全国竞技赛冠军】" ,desc = "0^ff7d2f2010全国竞技赛的冠军得主" , desc_1 = "" , desc_2 = ""}
title_definition['称号_校军场木人称号1'] = {id = 7489 , note = "【木人百姓】" ,desc = "0校军场木人认为你是他们中的普通一员。\r体质 +20" , desc_1 = "" , desc_2 = ""}
title_definition['称号_校军场木人称号2'] = {id = 7490 , note = "^72fe00【木人兵卒】" ,desc = "0^72fe00校军场木人普遍认为你比较能打。\r体质 +40" , desc_1 = "" , desc_2 = ""}
title_definition['称号_校军场木人称号3'] = {id = 7491 , note = "^0184ff【木人队长】" ,desc = "0^0184ff校军场木人感到你的战斗力相当不俗。\r体质 +80" , desc_1 = "" , desc_2 = ""}
title_definition['称号_校军场木人称号4'] = {id = 7492 , note = "^a800ff【木人大将】" ,desc = "0^a800ff校军场木人对你的崇敬达到了一个新的高度。\r体质 +160" , desc_1 = "" , desc_2 = ""}
title_definition['称号_校军场木人称号5'] = {id = 7493 , note = "^ff7d2f【木人皇帝】" ,desc = "0^ff7d2f校军场木人的眼中你就是神一般的存在！\r体质 +320" , desc_1 = "" , desc_2 = ""}
title_definition['称号_亲友卡称号1'] = {id = 7494 , note = "^ff6fb3【无兄弟不赤壁】" ,desc = "0^ff7d2f和你的兄弟朋友携手并肩，纵横赤壁吧！" , desc_1 = "" , desc_2 = ""}
title_definition['称号_亲友卡称号2'] = {id = 7495 , note = "^ff7d2f【新三国霸王】" ,desc = "0^ff7d2f亲友荣誉排行榜全服第一名，众星拱月傲视群雄的三国霸主。" , desc_1 = "" , desc_2 = ""}
title_definition['称号_亲友卡称号3'] = {id = 7496 , note = "^ff7d2f【新三国英雄】" ,desc = "0^ff7d2f亲友荣誉排行榜全服前十名，力挽狂澜定乾坤的三国英雄。" , desc_1 = "" , desc_2 = ""}
title_definition['称号_亲友卡称号4'] = {id = 7497 , note = "^ff7d2f【新三国豪杰】" ,desc = "0^ff7d2f亲友荣誉排行榜全服前一百名，力拔山兮气盖世的三国豪杰。" , desc_1 = "" , desc_2 = ""}
title_definition['称号_亲友卡称号5'] = {id = 7498 , note = "^ff7d2f【新三国名流】" ,desc = "0^ff7d2f亲友荣誉排行榜全服前五百名，声名闻达于诸侯的三国名流。" , desc_1 = "" , desc_2 = ""}
title_definition['产品十月回流1'] = {id = 7499 , note = "^ff7d2f【莫愁前路无知己】" ,desc = "0^ff7d2f老玩家回归专属称号！可在完美礼品童子处领取丰厚大礼！" , desc_1 = "" , desc_2 = ""}
title_definition['产品十月回流2'] = {id = 7500 , note = "^ff7d2f【似曾相识燕归来】" ,desc = "0^ff7d2f老玩家回归专属称号！可在完美礼品童子处领取丰厚大礼！" , desc_1 = "" , desc_2 = ""}
title_definition['产品十月回流3'] = {id = 7501 , note = "^ff7d2f【相逢何必曾相识】" ,desc = "0^ff7d2f老玩家回归专属称号！可在完美礼品童子处领取丰厚大礼！" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷周末1'] = {id = 7502 , note = "^72fe00【糖葫芦游侠】" ,desc = "0^72fe00用抢夺来的各种糖葫芦换来的称号。\r^72fe00永久生效:\r^ffffff生命值+10" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷周末2'] = {id = 7503 , note = "^72fe00【糖葫芦预备兵】" ,desc = "0^72fe00用抢夺来的一些糖葫芦换来的称号。\r离正式加入抢夺糖葫芦的大军不远了。\r^72fe00永久生效:\r^ffffff生命值+30\r攻击力+2" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷周末3'] = {id = 7504 , note = "^0184ff【糖葫芦小队长】" ,desc = "0^0184ff用抢夺来的大量糖葫芦换来的称号。\r恭喜已经成功升职为抢夺大军的小队长了。\r^72fe00永久生效:\r^ffffff生命值+80\r攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷周末4'] = {id = 7505 , note = "^a800ff【糖葫芦大将军】" ,desc = "0^a800ff用抢夺来的成堆的糖葫芦换来的称号。\r你已经为整个抢夺糖葫芦的军队做出了杰出的贡献。\r^72fe00永久生效:\r^ffffff生命值+200\r攻击力+10\r治疗效果+1%" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷周末5'] = {id = 7506 , note = "^ff7d2f【糖葫芦至尊糖主】" ,desc = "0^ff7d2f用抢夺来的海量的糖葫芦换来的称号。\r你在抢夺糖葫芦的军队里，已经所向披靡无人能及了。\r^72fe00永久生效:\r^ffffff生命值+400\r攻击力+20\r治疗效果+1%\r攻击强度+1%" , desc_1 = "" , desc_2 = ""}
title_definition['华容道过关称号1'] = {id = 7507 , note = "^00FF00【险过华容道】" ,desc = "0^00FF00面对华容道之险，依然成功闯越的军士。\r^72fe00永久生效:\r^ffffff体质+10" , desc_1 = "" , desc_2 = ""}
title_definition['华容道过关称号2'] = {id = 7508 , note = "^0066CC【悍勇破关将】" ,desc = "0^0066CC无畏无惧勇往直前的将士。\r^72fe00永久生效:\r^ffffff体质+30 攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['华容道过关称号3'] = {id = 7509 , note = "^6666CC【天险难困金蛟龙】" ,desc = "0^6666CC犹如蛟龙一般，轻松飞跃华容天险的豪杰。\r^72fe00永久生效:\r^ffffff体质+80 攻击力+10" , desc_1 = "" , desc_2 = ""}
title_definition['华容道过关称号4'] = {id = 7510 , note = "^FF6666【神挡杀神 佛挡杀佛】" ,desc = "0^FF6666不可忤逆其意志的神在华容道降临了。\r^72fe00永久生效:\r^ffffff体质+240 攻击力+20" , desc_1 = "" , desc_2 = ""}
title_definition['华容道挑战称号1'] = {id = 7511 , note = "^66FFFF【急速破敌】" ,desc = "0^66FFFF你成功的四十分钟内获得了华容道的胜利！\r^72fe00永久生效:\r^ffffff防御力+2" , desc_1 = "" , desc_2 = ""}
title_definition['华容道挑战称号2'] = {id = 7512 , note = "^996666【同袍之谊永不弃】" ,desc = "0^996666你成功的救出了华容道所有的将领和士兵。\r^72fe00永久生效:\r^ffffff治疗点数+10" , desc_1 = "" , desc_2 = ""}
title_definition['华容道挑战称号3'] = {id = 7513 , note = "^CC9900【铁鞋踏遍山河路】" ,desc = "0^CC9900你成功的护送步行的曹操闯过了华容道。\r^72fe00永久生效:\r^ffffff体力值+5" , desc_1 = "" , desc_2 = ""}
title_definition['华容道挑战称号4'] = {id = 7514 , note = "^FF00FF【火雷克星】" ,desc = "0^FF00FF你成功的没有让一个火雷罐在华容道里成功爆炸。\r^72fe00永久生效:\r^ffffff附加伤害+2" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷声望1'] = {id = 7515 , note = "^72fe00【用人不疑礼下士】" ,desc = "0^72fe00礼贤下士，用人不疑，这是一个好的统帅具有的基本素质。\r^72fe00永久生效:\r^ffffff治疗点数+10" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷声望2'] = {id = 7516 , note = "^72fe00【任人唯贤取众长】" ,desc = "0^72fe00所谓任人唯贤，胸怀大气，为能主之相。\r^72fe00永久生效:\r^ffffff治疗点数+10\r体质+10\r防御力+1" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷声望3'] = {id = 7517 , note = "^0184ff【慧眼识珠赛伯乐】" ,desc = "0^0184ff能够发掘人才，辨识人才，赛过伯乐啊。\r^72fe00永久生效:\r^ffffff治疗点数+10\r体质+30\r防御力+2" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷声望4'] = {id = 7518 , note = "^a800ff【重望高名人皆拜】" ,desc = "0^a800ff你已经达到了一个人人仰慕的境界了。\r^72fe00永久生效:\r^ffffff治疗点数+10\r体质+80\r防御力+5\r附加伤害+3" , desc_1 = "" , desc_2 = ""}
title_definition['聚贤谷声望5'] = {id = 7519 , note = "^ff7d2f【统帅天下齐归心】" ,desc = "0^ff7d2f周公吐哺，天下归心！\r^72fe00永久生效:\r^ffffff治疗点数+20\r体质+240\r防御力+10\r附加伤害+5" , desc_1 = "" , desc_2 = ""}
title_definition['2010资料片玩家回归称号'] = {id = 7520 , note = "^ff7d2f【虎将归来】" ,desc = "0^ff7d2f资料片虎卫传奇回归玩家专属称号！^72fe00\r2010年12月20日-2011年1月16日\r凭此称号每天可在完美礼品童子处领取专属任务:\r虎将归来^ffffff(全天领取)\r^72fe00虎将试炼令^ffffff（12：00-24：00）" , desc_1 = "" , desc_2 = ""}
title_definition['台湾9月更新专用称号'] = {id = 9500 , note = "^a800ff【东游玩子陪你玩赤壁】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['日本6月更新专用称号'] = {id = 9501 , note = "^a800ff【赤壁达人】" , desc = "" , desc_1 = "" , desc_2 = ""}
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
title_definition['三周年VIP专属称号'] = {id = 9515 , note = "^FF6666【烽烟起将士着铁衣 长征战英雄永不离】" , desc = "0^ff7d2f赤壁VIP三周年纪念!" , desc_1 = "" , desc_2 = ""}
title_definition['兔年3月老玩家回流称号'] = {id = 9516 , note = "^ff7d2f【当时明月在，缘是故人归】" , desc = "0^ff7d2f老玩家回归专属称号，^72fe00\r2011年3月14日—2011年4月17日\r凭此称号可在长安老玩家接待大使(146,328)处领取丰厚大礼！" , desc_1 = "" , desc_2 = ""}
title_definition['人气勋章兑换称号'] = {id = 9517 , note = "^a800ff【举世无双人见人爱花见花开开天辟地好少年】" , desc = "0^ff7d2f参加一生一世活动获得的珍稀称号，证明您人气很高！" , desc_1 = "" , desc_2 = ""}
title_definition['兔年劳动节VIP称号'] = {id = 9518 , note = "^a800ff【披星戴月日理万机劳动小标兵】" , desc = "0^ff7d2fVIP2011年劳动节纪念称号！" , desc_1 = "" , desc_2 = ""}
title_definition['11年4月新手卡'] = {id = 9519 , note = "^ff7d2f【武神传人】" , desc = "0^ff7d2f武神特权卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['兔年五月黄金积分1'] = {id = 9520 , note = "^ff7d2f【武圣衣钵传人】" , desc = "0^ff7d2f黄金积分排行榜荣耀之称！\r拥有此称号可在完美礼品童子处兑换丰厚奖励。\r请在本周内周一维护后到周日24点间兑换奖励\r过期作废" , desc_1 = "" , desc_2 = ""}
title_definition['兔年五月黄金积分2-3'] = {id = 9521 , note = "^ff7d2f【武圣门徒】" , desc = "0^ff7d2f黄金积分排行榜荣耀之称！\r拥有此称号可在完美礼品童子处兑换丰厚奖励。\r请在本周内周一维护后到周日24点间兑换奖励\r过期作废" , desc_1 = "" , desc_2 = ""}
title_definition['兔年五月黄金积分4-10'] = {id = 9522 , note = "^ff7d2f【武圣小徒】" , desc = "0^ff7d2f黄金积分排行榜荣耀之称！\r拥有此称号可在完美礼品童子处兑换丰厚奖励。\r请在本周内周一维护后到周日24点间兑换奖励\r过期作废" , desc_1 = "" , desc_2 = ""}
title_definition['兔年五月黄金积分11-100'] = {id = 9523 , note = "^ff7d2f【武圣小友】" , desc = "0^ff7d2f黄金积分排行榜荣耀之称！\r拥有此称号可在完美礼品童子处兑换丰厚奖励。\r请在本周内周一维护后到周日24点间兑换奖励\r过期作废" , desc_1 = "" , desc_2 = ""}
title_definition['兔年五月黄金积分101-500'] = {id = 9524 , note = "^ff7d2f【武圣崇拜者】" , desc = "0^ff7d2f黄金积分排行榜荣耀之称！\r拥有此称号可在完美礼品童子处兑换丰厚奖励。\r请在本周内周一维护后到周日24点间兑换奖励\r过期作废" , desc_1 = "" , desc_2 = ""}
title_definition['新服活动活跃新人奖称号80'] = {id = 9525 , note = "^ff7d2f【活跃新人小奖】" , desc = "0^ff7d2f新服开启的2周内，在线满80小时获得的荣誉称号。" , desc_1 = "" , desc_2 = ""}
title_definition['新服活动活跃新人奖称号120'] = {id = 9526 , note = "^ff7d2f【活跃新人大奖】" , desc = "0^ff7d2f新服开启的2周内，在线满120小时获得的荣誉称号。" , desc_1 = "" , desc_2 = ""}
title_definition['兵卒'] = {id = 9527 , note = "^72fe00兵卒" , desc = "^72fe00竞技场个人等级1所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['门吏'] = {id = 9528 , note = "^72fe00门吏" , desc = "^72fe00竞技场个人等级2所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['武卒'] = {id = 9529 , note = "^72fe00武卒" , desc = "^72fe00竞技场个人等级3所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['伍长'] = {id = 9530 , note = "^72fe00伍长" , desc = "^72fe00竞技场个人等级4所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['什长'] = {id = 9531 , note = "^72fe00什长" , desc = "^72fe00竞技场个人等级5所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['百夫长'] = {id = 9532 , note = "^0184ff百夫长" , desc = "^72fe00竞技场个人等级6所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['千夫长'] = {id = 9533 , note = "^0184ff千夫长" , desc = "^72fe00竞技场个人等级7所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['军侯'] = {id = 9534 , note = "^0184ff军侯" , desc = "^72fe00竞技场个人等级8所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['军司马'] = {id = 9535 , note = "^0184ff军司马" , desc = "^72fe00竞技场个人等级9所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['都尉'] = {id = 9536 , note = "^0184ff都尉" , desc = "^72fe00竞技场个人等级10所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['校尉'] = {id = 9537 , note = "^a800ff校尉" , desc = "^72fe00竞技场个人等级11所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['中郎将'] = {id = 9538 , note = "^a800ff中郎将" , desc = "^72fe00竞技场个人等级12所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['裨将军'] = {id = 9539 , note = "^a800ff裨将军" , desc = "^72fe00竞技场个人等级13所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['偏将军'] = {id = 9540 , note = "^a800ff偏将军" , desc = "^72fe00竞技场个人等级14所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['卫将军'] = {id = 9541 , note = "^a800ff卫将军" , desc = "^72fe00竞技场个人等级15所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['车骑将军'] = {id = 9542 , note = "^ff7d2f车骑将军" , desc = "^72fe00竞技场个人等级16所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['骠骑将军'] = {id = 9543 , note = "^ff7d2f骠骑将军" , desc = "^72fe00竞技场个人等级17所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['大将军'] = {id = 9544 , note = "^ff7d2f大将军" , desc = "^72fe00竞技场个人等级18所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['大司马'] = {id = 9545 , note = "^ff7d2f大司马" , desc = "^72fe00竞技场个人等级19所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['兵马大都督'] = {id = 9546 , note = "^ff7d2f兵马大都督" , desc = "^72fe00竞技场个人等级20所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['行伍'] = {id = 9547 , note = "^72fe00【行伍】" , desc = "^72fe00竞技场队伍等级1所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['铁伍'] = {id = 9548 , note = "^72fe00【铁伍】" , desc = "^72fe00竞技场队伍等级2所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['烈伍'] = {id = 9549 , note = "^72fe00【烈伍】" , desc = "^72fe00竞技场队伍等级3所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['燎伍'] = {id = 9550 , note = "^72fe00【燎伍】" , desc = "^72fe00竞技场队伍等级4所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['鬼伍'] = {id = 9551 , note = "^72fe00【鬼伍】" , desc = "^72fe00竞技场队伍等级5所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['锐步营'] = {id = 9552 , note = "^0184ff【锐步营】" , desc = "^72fe00竞技场队伍等级6所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['破虏营'] = {id = 9553 , note = "^0184ff【破虏营】" , desc = "^72fe00竞技场队伍等级7所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['神火营'] = {id = 9554 , note = "^0184ff【神火营】" , desc = "^72fe00竞技场队伍等级8所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['龙锋营'] = {id = 9555 , note = "^0184ff【龙锋营】" , desc = "^72fe00竞技场队伍等级9所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['神武营'] = {id = 9556 , note = "^0184ff【神武营】" , desc = "^72fe00竞技场队伍等级10所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['横野军'] = {id = 9557 , note = "^a800ff【横野军】" , desc = "^72fe00竞技场队伍等级11所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['折冲军'] = {id = 9558 , note = "^a800ff【折冲军】" , desc = "^72fe00竞技场队伍等级12所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['镇威军'] = {id = 9559 , note = "^a800ff【镇威军】" , desc = "^72fe00竞技场队伍等级13所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['车骑军'] = {id = 9560 , note = "^a800ff【车骑军】" , desc = "^72fe00竞技场队伍等级14所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['骠骑军'] = {id = 9561 , note = "^a800ff【骠骑军】" , desc = "^72fe00竞技场队伍等级15所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['两仪极渊'] = {id = 9562 , note = "^ff7d2f【两仪极渊】" , desc = "^72fe00竞技场队伍等级16所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['四象均尘'] = {id = 9563 , note = "^ff7d2f【四象均尘】" , desc = "^72fe00竞技场队伍等级17所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['八阵苍穹'] = {id = 9564 , note = "^ff7d2f【八阵苍穹】" , desc = "^72fe00竞技场队伍等级18所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['九方星野'] = {id = 9565 , note = "^ff7d2f【九方星野】" , desc = "^72fe00竞技场队伍等级19所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['泰军否极'] = {id = 9566 , note = "^ff7d2f【泰军否极】" , desc = "^72fe00竞技场队伍等级20所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['11年6月新手卡1'] = {id = 9567 , note = "^ff7d2f【新浪旷世英雄】" , desc = "0^ff7d2fsina旷世英雄卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['11年6月新手卡2'] = {id = 9568 , note = "^ff7d2f【爱游戏，爱17173】" , desc = "0^ff7d2f17173群英特权卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['11年6月新手卡3'] = {id = 9569 , note = "^ff7d2f【爱多玩，爱YY】" , desc = "0^ff7d2f多玩YY战神卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['11年6月新手卡4'] = {id = 9570 , note = "^ff7d2f【网易达人，更懂游戏】" , desc = "0^ff7d2f唯我独尊卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['11年6月新手卡5'] = {id = 9571 , note = "^ff7d2f【小企鹅陪我战三国】" , desc = "0^ff7d2f群雄征战卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['竞技场个人排行榜1'] = {id = 9572 , note = "^ff0000【五虎将·义薄云天荡九州】" , desc = "0^a800ff战神象征\r^ff7d2f个人竞技经验排行榜第一名专属称号。\r生命值+1000" , desc_1 = "" , desc_2 = ""}
title_definition['竞技场个人排行榜2'] = {id = 9573 , note = "^ff0000【五虎将·阵前一喝破人胆】" , desc = "0^a800ff战神象征\r^ff7d2f个人竞技经验排行榜第二名专属称号。\r生命值+800" , desc_1 = "" , desc_2 = ""}
title_definition['竞技场个人排行榜3'] = {id = 9574 , note = "^ff0000【五虎将·龙吟虎啸贯千秋】" , desc = "0^a800ff战神象征\r^ff7d2f个人竞技经验排行榜第三名专属称号。\r生命值+600" , desc_1 = "" , desc_2 = ""}
title_definition['竞技场个人排行榜4'] = {id = 9575 , note = "^ff0000【五虎将·狮盔银铠冠三军】" , desc = "0^a800ff战神象征\r^ff7d2f个人竞技经验排行榜第四名专属称号。\r生命值+600" , desc_1 = "" , desc_2 = ""}
title_definition['竞技场个人排行榜5'] = {id = 9576 , note = "^ff0000【五虎将·长弓满月惊风雷】" , desc = "0^a800ff战神象征\r^ff7d2f个人竞技经验排行榜第五名专属称号。\r生命值+600" , desc_1 = "" , desc_2 = ""}
title_definition['VIP称号等级1'] = {id = 9577 , note = "^ff4ca4★小财主★" , desc = "0^a800ffVIP1级象征\r等级越高，特权越多！" , desc_1 = "" , desc_2 = ""}
title_definition['VIP称号等级2'] = {id = 9578 , note = "^ff4ca4★多金善贾★" , desc = "0^a800ffVIP2级象征\r等级越高，特权越多！" , desc_1 = "" , desc_2 = ""}
title_definition['VIP称号等级3'] = {id = 9579 , note = "^ff4ca4★富甲一方★" , desc = "0^a800ffVIP3级象征\r等级越高，特权越多！" , desc_1 = "" , desc_2 = ""}
title_definition['VIP称号等级4'] = {id = 9580 , note = "^ff4ca4★知名大富翁★" , desc = "0^a800ffVIP4级象征\r等级越高，特权越多！" , desc_1 = "" , desc_2 = ""}
title_definition['VIP称号等级5'] = {id = 9581 , note = "^ff4ca4★三国大富豪★" , desc = "0^a800ffVIP5级象征\r等级越高，特权越多！" , desc_1 = "" , desc_2 = ""}
title_definition['2011跨服PK赛冠军'] = {id = 9582 , note = "^ff7d2f【天下为尊·跨服PK赛冠军】" , desc = "0^ff7d2f跨服PK赛冠军证明。" , desc_1 = "" , desc_2 = ""}
title_definition['2011跨服PK赛亚军'] = {id = 9583 , note = "^ff7d2f【杀戮征伐·跨服PK赛亚军】" , desc = "0^ff7d2f跨服PK赛亚军证明。" , desc_1 = "" , desc_2 = ""}
title_definition['2011跨服PK赛季军'] = {id = 9584 , note = "^ff7d2f【战无不胜·跨服PK赛季军】" , desc = "0^ff7d2f跨服PK赛季军证明。" , desc_1 = "" , desc_2 = ""}
title_definition['11年9月新手卡'] = {id = 9585 , note = "^ff7d2f【新浪旷世英雄】" , desc = "0^ff7d2fsina英雄招募卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['合肥之战（英雄级）1'] = {id = 9586 , note = "^ffffff【一身布衣从军行】" , desc = "0^ffffff生命值+100" , desc_1 = "" , desc_2 = ""}
title_definition['合肥之战（英雄级）2'] = {id = 9587 , note = "^72fe00【鞍前马后护将军】" , desc = "0^72fe00生命值+300" , desc_1 = "" , desc_2 = ""}
title_definition['合肥之战（英雄级）3'] = {id = 9588 , note = "^0184ff【怒战沙场碎铁衣】" , desc = "0^0184ff生命值+600" , desc_1 = "" , desc_2 = ""}
title_definition['合肥之战（英雄级）4'] = {id = 9589 , note = "^a800ff【黄沙百战穿金甲】" , desc = "0^a800ff生命值+1000" , desc_1 = "" , desc_2 = ""}
title_definition['虎牢关群英会英雄级1'] = {id = 9590 , note = "^ffffff【草莽捐躯赴国难】" , desc = "0^72fe00永久生效:\r^ffffff生命值+50" , desc_1 = "" , desc_2 = ""}
title_definition['虎牢关群英会英雄级2'] = {id = 9591 , note = "^72fe00【十八诸侯会东都】" , desc = "0^72fe00永久生效:\r^ffffff生命值+100" , desc_1 = "" , desc_2 = ""}
title_definition['虎牢关群英会英雄级3'] = {id = 9592 , note = "^0184ff【前路猛将谁人敌】" , desc = "0^72fe00永久生效:\r^ffffff生命值+200，攻击力+2" , desc_1 = "" , desc_2 = ""}
title_definition['虎牢关群英会英雄级4'] = {id = 9593 , note = "^a800ff【单枪匹马战温侯】" , desc = "0^72fe00永久生效:\r^ffffff生命值+400，攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['虎牢关群英会英雄级5'] = {id = 9594 , note = "^ff7d2f【虎牢关下称英雄】" , desc = "0^72fe00永久生效:\r^ffffff生命值+800，攻击力+10" , desc_1 = "" , desc_2 = ""}
title_definition['金秋活动英雄会'] = {id = 9595 , note = "^ff4ca4【甲百万车千万骑乘万匹叱咤风云所向披靡】" , desc = "0^ff4ca4英雄会金秋活动中获得的珍稀荣誉称号" , desc_1 = "" , desc_2 = ""}
title_definition['201117173特权卡'] = {id = 9596 , note = "^ff4ca4【17173VIP试驾英雄】" , desc = "0^ff4ca417173VIP卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['2011新浪特权卡'] = {id = 9597 , note = "^ff4ca4【sina特权试驾英雄】" , desc = "0^ff4ca4新浪特权卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['2011多玩YY特权卡'] = {id = 9598 , note = "^ff4ca4【Y仔特权试驾英雄】" , desc = "0^ff4ca4多玩YY特权卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['2011多玩YY普通卡'] = {id = 9599 , note = "^ff4ca4【Y仔试驾先锋】" , desc = "0^ff4ca4多玩YY普通卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['2011腾讯特权卡'] = {id = 9600 , note = "^ff4ca4【腾讯特权试驾英雄】" , desc = "0^ff4ca4腾讯特权卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['2011媒体普通卡'] = {id = 9601 , note = "^ff4ca4【三国试驾先锋】" , desc = "0^ff4ca4媒体普通卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['2011公会卡'] = {id = 9602 , note = "^ff4ca4【结义天下，所向披靡 】" , desc = "0^ff4ca4公会卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['赵云补偿礼包称号'] = {id = 9603 , note = "^ff4ca4【赵云的主公】" , desc = "0^ff4ca4运营专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['A级机动车驾驶员'] = {id = 9604 , note = "^ff4ca4【A级机动车驾驶员】" , desc = "0^ff4ca4A级机动车驾驶员凭证" , desc_1 = "" , desc_2 = ""}
title_definition['B级机动车驾驶员'] = {id = 9605 , note = "^ff4ca4【B级机动车驾驶员】" , desc = "0^ff4ca4B级机动车驾驶员凭证" , desc_1 = "" , desc_2 = ""}
title_definition['C级机动车驾驶员'] = {id = 9606 , note = "^ff4ca4【C级机动车驾驶员】" , desc = "0^ff4ca4C级机动车驾驶员凭证" , desc_1 = "" , desc_2 = ""}
title_definition['马来中GMPK称号1'] = {id = 9607 , note = "^ff4ca4【比GM还牛逼的人】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['马来中GMPK称号2'] = {id = 9608 , note = "^ff4ca4【输给GM的笨蛋】" , desc = "" , desc_1 = "" , desc_2 = ""}
title_definition['英雄回归银特权'] = {id = 9609 , note = "^ffffff【英雄回归银特权】" , desc = "0^ff4ca4满80级凭称号可以领取一个秘文·冥（专属）；\r满英雄15级凭称号可以领取一个秘文·兵（专属）；\r满英雄30级凭称号可以领取20个星之仙华。" , desc_1 = "" , desc_2 = ""}
title_definition['英雄回归金特权'] = {id = 9610 , note = "^ffffff【英雄回归金特权】" , desc = "0^ff4ca4满80级凭称号可以领取一个秘文·冥（专属）；\r满英雄15级凭称号可以领取一个秘文·兵（专属）；\r满英雄30级凭称号可以领取30个星之仙华。" , desc_1 = "" , desc_2 = ""}
title_definition['化蝶去寻花，夜夜栖芳草'] = {id = 9611 , note = "^ff7d2f【化蝶去寻花，夜夜栖芳草】" , desc = "0^72fe00情缘值排行榜第一名所获得称号。\r防御力+20\r治疗效果+1%" , desc_1 = "" , desc_2 = ""}
title_definition['执子之手，与子偕老'] = {id = 9612 , note = "^ff7d2f【执子之手，与子偕老】" , desc = "0^72fe00情缘值排行榜第二名至第五名所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['青青子衿，悠悠我心'] = {id = 9613 , note = "^ff7d2f【青青子衿，悠悠我心】" , desc = "0^72fe00情缘值排行榜第六名至第十名所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['天下有情人终成眷属'] = {id = 9614 , note = "^ff7d2f【天下有情人终成眷属】" , desc = "0^72fe00情缘值达到520点所获得称号。" , desc_1 = "" , desc_2 = ""}
title_definition['官渡称号士兵'] = {id = 9615 , note = "^ffffff【士兵】" , desc = "0^ffffff官渡之战所获得军衔" , desc_1 = "" , desc_2 = ""}
title_definition['官渡称号校尉'] = {id = 9616 , note = "^72fe00【校尉】" , desc = "0^72fe00官渡之战所获得军衔\r^ffffff攻击力+30" , desc_1 = "" , desc_2 = ""}
title_definition['官渡称号统领'] = {id = 9617 , note = "^0184ff【统领】" , desc = "0^0184ff官渡之战所获得军衔\r^ffffff攻击力+60\r生命值+200" , desc_1 = "" , desc_2 = ""}
title_definition['官渡称号副将'] = {id = 9618 , note = "^a800ff【副将】" , desc = "0^a800ff官渡之战所获得军衔\r^ffffff攻击力+100\r防御力+30\r生命值+400" , desc_1 = "" , desc_2 = ""}
title_definition['官渡称号大将'] = {id = 9619 , note = "^ff7d2f【大将】" , desc = "0^ff7d2f官渡之战所获得军衔\r^ffffff攻击力+150\r防御力+60\r生命值+600" , desc_1 = "" , desc_2 = ""}
title_definition['官渡称号元帅'] = {id = 9620 , note = "^fff962【元帅】" , desc = "0^fff962官渡之战所获得军衔\r^ffffff攻击力+200\r防御力+100\r生命值+1000" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号09'] = {id = 9621 , note = "^fff962【初级大师】" , desc = "0^fff962师徒奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号10'] = {id = 9622 , note = "^fff962【中级大师】" , desc = "0^fff962师徒奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['徒弟奖励称号11'] = {id = 9623 , note = "^fff962【高级大师】" , desc = "0^fff962师徒奖励称号" , desc_1 = "" , desc_2 = ""}
title_definition['腾讯百变英雄'] = {id = 9624 , note = "^ff4ca4【腾讯百变英雄】" , desc = "0^ff4ca4腾讯百变英雄卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['新浪百变英雄'] = {id = 9625 , note = "^ff4ca4【新浪百变英雄】" , desc = "0^ff4ca4新浪百变英雄卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['多玩百变英雄'] = {id = 9626 , note = "^ff4ca4【多玩百变英雄】" , desc = "0^ff4ca4多玩百变英雄卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['17173百变英雄'] = {id = 9627 , note = "^ff4ca4【17173百变英雄】" , desc = "0^ff4ca417173百变英雄卡专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['双重★身份'] = {id = 9628 , note = "^ff4ca4【双重★身份】" , desc = "0^ff4ca4永久生效:\r^ffffff生命值+50" , desc_1 = "" , desc_2 = ""}
title_definition['执着的追寻者'] = {id = 9629 , note = "^ff4ca4【执着的追寻者】" , desc = "0^ff4ca4运营活动奖励" , desc_1 = "" , desc_2 = ""}
title_definition['七夕情缘值奖励称号'] = {id = 9630 , note = "^ff4ca4【柔情似水，佳期如梦】" , desc = "0^ff4ca4永久生效:\r^ffffff攻击力+10\r防御力+10\r生命值+100" , desc_1 = "" , desc_2 = ""}
title_definition['葭萌关称号1'] = {id = 9631 , note = "^ffffff【葭萌关士兵】" , desc = "0^ffffff葭萌关奖励称号\r^ffffff攻击力+3\r防御力+1\r生命值+100" , desc_1 = "" , desc_2 = ""}
title_definition['葭萌关称号2'] = {id = 9632 , note = "^72fe00【葭萌关兵长】" , desc = "0^72fe00葭萌关奖励称号\r^ffffff攻击力+6\r防御力+2\r生命值+200" , desc_1 = "" , desc_2 = ""}
title_definition['葭萌关称号3'] = {id = 9633 , note = "^0184ff【葭萌关校尉】" , desc = "0^0184ff葭萌关奖励称号\r^ffffff攻击力+9\r防御力+4\r生命值+300" , desc_1 = "" , desc_2 = ""}
title_definition['葭萌关称号4'] = {id = 9634 , note = "^a800ff【葭萌关统领】" , desc = "0^a800ff葭萌关奖励称号\r^ffffff攻击力+12\r防御力+6\r生命值+400" , desc_1 = "" , desc_2 = ""}
title_definition['葭萌关称号5'] = {id = 9635 , note = "^ff7d2f【葭萌关副将】" , desc = "0^ff7d2f葭萌关奖励称号\r^ffffff攻击力+15\r防御力+8\r生命值+500" , desc_1 = "" , desc_2 = ""}
title_definition['葭萌关称号6'] = {id = 9636 , note = "^fff962【葭萌关大将】" , desc = "0^fff962葭萌关奖励称号\r^ffffff攻击力+20\r防御力+10\r生命值+700" , desc_1 = "" , desc_2 = ""}
title_definition['葭萌关称号7'] = {id = 9637 , note = "^ff0000【葭萌关元帅】" , desc = "0^ff0000葭萌关奖励称号\r^ffffff攻击力+25\r防御力+12\r生命值+1000" , desc_1 = "" , desc_2 = ""}
title_definition['七星阵称号1'] = {id = 9638 , note = "^0184ff【冲破天璇星】" , desc = "0^ff0000七星阵成就称号\r^ffffff防御力+5" , desc_1 = "" , desc_2 = ""}
title_definition['七星阵称号2'] = {id = 9639 , note = "^0184ff【冲破天玑星】" , desc = "0^ff0000七星阵成就称号\r^ffffff攻击力+10" , desc_1 = "" , desc_2 = ""}
title_definition['七星阵称号3'] = {id = 9640 , note = "^0184ff【冲破天权星】" , desc = "0^ff0000七星阵成就称号\r^ffffff治疗点数+5" , desc_1 = "" , desc_2 = ""}
title_definition['七星阵称号4'] = {id = 9641 , note = "^0184ff【冲破玉衡星】" , desc = "0^ff0000七星阵成就称号\r^ffffff生命值+100" , desc_1 = "" , desc_2 = ""}
title_definition['七星阵称号5'] = {id = 9642 , note = "^0184ff【冲破开阳星】" , desc = "0^ff0000七星阵成就称号\r^ffffff暴击附加伤害+20" , desc_1 = "" , desc_2 = ""}
title_definition['七星阵称号6'] = {id = 9643 , note = "^a800ff【冲斗七星大将军】" , desc = "0^ff0000七星阵成就称号\r^ffffff攻击力+20\r防御力+10\r生命值+200\r治疗点数+10\r暴击附加伤害+30\r攻击强度+1%" , desc_1 = "" , desc_2 = ""}
title_definition['战天下资料片称号'] = {id = 9644 , note = "^a800ff【英雄露颖在今朝，重回赤壁战天下】" , desc = "0^ff0000战天下英雄回归称号" , desc_1 = "" , desc_2 = ""}
title_definition['群英会称号1'] = {id = 9645 , note = "^0184ff【初立擂台试高低】" , desc = "0^0184ff群英会奖励称号\r^ffffff攻击力+10\r防御力+5\r生命值+250" , desc_1 = "" , desc_2 = ""}
title_definition['群英会称号2'] = {id = 9646 , note = "^a800ff【众人群中立杆影】" , desc = "0^a800ff群英会奖励称号\r^ffffff攻击力+16\r防御力+8\r生命值+400" , desc_1 = "" , desc_2 = ""}
title_definition['群英会称号3'] = {id = 9647 , note = "^ff7d2f【十八武艺展绝学】" , desc = "0^ff7d2f群英会奖励称号\r^ffffff攻击力+22\r防御力+11\r生命值+550" , desc_1 = "" , desc_2 = ""}
title_definition['群英会称号4'] = {id = 9648 , note = "^fff962【万夫莫敌针锋对】" , desc = "0^fff962群英会奖励称号\r^ffffff攻击力+30\r防御力+15\r生命值+750" , desc_1 = "" , desc_2 = ""}
title_definition['群英会称号5'] = {id = 9649 , note = "^ff0000【鏖战天下傲群英】" , desc = "0^ff0000群英会奖励称号\r^ffffff攻击力+40\r防御力+20\r生命值+1000" , desc_1 = "" , desc_2 = ""}
title_definition['官网签到活动'] = {id = 9650 , note = "^a800ff【战天下签到达人】" , desc = "0^ff0000战天下官网签到活动称号" , desc_1 = "" , desc_2 = ""}
title_definition['17173战天下礼包'] = {id = 9651 , note = "^a800ff【17173激斗战天下】" , desc = "0^ff0000运营新手卡称号" , desc_1 = "" , desc_2 = ""}
title_definition['新浪战天下礼包'] = {id = 9652 , note = "^a800ff【新浪激斗战天下】" , desc = "0^ff0000运营新手卡称号" , desc_1 = "" , desc_2 = ""}
title_definition['网易战天下礼包'] = {id = 9653 , note = "^a800ff【网易激斗战天下】" , desc = "0^ff0000运营新手卡称号" , desc_1 = "" , desc_2 = ""}
title_definition['腾讯战天下礼包'] = {id = 9654 , note = "^a800ff【腾讯激斗战天下】" , desc = "0^ff0000运营新手卡称号" , desc_1 = "" , desc_2 = ""}
title_definition['电玩巴士战天下礼包'] = {id = 9655 , note = "^a800ff【电玩巴士激斗战天下】" , desc = "0^ff0000运营新手卡称号" , desc_1 = "" , desc_2 = ""}
title_definition['YY皇室冲级大礼包'] = {id = 9656 , note = "^a800ff【多玩激斗战天下】" , desc = "0^ff0000运营新手卡称号" , desc_1 = "" , desc_2 = ""}
title_definition['公会特权新手大礼包'] = {id = 9657 , note = "^a800ff【公会群英聚,天下战火燃】" , desc = "0^ff0000运营新手卡称号" , desc_1 = "" , desc_2 = ""}
title_definition['三星至尊新手大礼包'] = {id = 9658 , note = "^a800ff【爱生活爱三星】" , desc = "0^ff0000运营新手卡称号" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号1'] = {id = 9659 , note = "^72fe00【角木蛟·角宿一】" , desc = "0^72fe00青龙\r^ffffff生命值+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号2'] = {id = 9660 , note = "^72fe00【角木蛟·角宿二】" , desc = "0^72fe00青龙\r^ffffff攻击力+1\r附加伤害+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号3'] = {id = 9661 , note = "^72fe00【亢金龙·亢宿一】" , desc = "0^72fe00青龙\r^ffffff生命值+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号4'] = {id = 9662 , note = "^72fe00【亢金龙·亢宿二】" , desc = "0^72fe00青龙\r^ffffff攻击力+1\r附加伤害+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号5'] = {id = 9663 , note = "^72fe00【亢金龙·亢宿三】" , desc = "0^72fe00青龙\r^ffffff防御力+1\r生命值+20\r强韧+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号6'] = {id = 9664 , note = "^72fe00【亢金龙·亢宿四】" , desc = "0^72fe00青龙\r^ffffff攻击力+1\r命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号7'] = {id = 9665 , note = "^72fe00【氐土貉·氐宿一】" , desc = "0^72fe00青龙\r^ffffff生命值+20\r强韧+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号8'] = {id = 9666 , note = "^72fe00【氐土貉·氐宿二】" , desc = "0^72fe00青龙\r^ffffff攻击力+1\r附加伤害+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号9'] = {id = 9667 , note = "^72fe00【氐土貉·氐宿三】" , desc = "0^72fe00青龙\r^ffffff防御力+1\r生命值+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号10'] = {id = 9668 , note = "^72fe00【氐土貉·氐宿四】" , desc = "0^72fe00青龙\r^ffffff攻击力+1\r治疗点数+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号11'] = {id = 9669 , note = "^72fe00【房日兔·房宿一】" , desc = "0^72fe00青龙\r^ffffff生命值+20\r强韧+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号12'] = {id = 9670 , note = "^72fe00【房日兔·房宿二】" , desc = "0^72fe00青龙\r^ffffff攻击力+1\r附加伤害+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号13'] = {id = 9671 , note = "^72fe00【房日兔·房宿三】" , desc = "0^72fe00青龙\r^ffffff防御力+1\r生命值+30" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号14'] = {id = 9672 , note = "^72fe00【房日兔·房宿四】" , desc = "0^72fe00青龙\r^ffffff攻击力+1\r闪避+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号15'] = {id = 9673 , note = "^72fe00【心月狐·心宿一】" , desc = "0^72fe00青龙\r^ffffff攻击力+1\r附加伤害+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号16'] = {id = 9674 , note = "^72fe00【心月狐·心宿二】" , desc = "0^72fe00青龙\r^ffffff防御力+1\r强韧+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号17'] = {id = 9675 , note = "^72fe00【心月狐·心宿三】" , desc = "0^72fe00青龙\r^ffffff攻击力+1\r治疗点数+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号18'] = {id = 9676 , note = "^72fe00【尾火虎·尾宿一】" , desc = "0^72fe00青龙\r^ffffff攻击力+1\r附加伤害+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号19'] = {id = 9677 , note = "^72fe00【尾火虎·尾宿二】" , desc = "0^72fe00青龙\r^ffffff防御力+1\r生命值+30\r强韧+3" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号20'] = {id = 9678 , note = "^72fe00【尾火虎·尾宿三】" , desc = "0^72fe00青龙\r^ffffff攻击力+1\r附加伤害+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号21'] = {id = 9679 , note = "^72fe00【尾火虎·尾宿四】" , desc = "0^72fe00青龙\r^ffffff防御力+1\r生命值+30\r强韧+3" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号22'] = {id = 9680 , note = "^72fe00【尾火虎·尾宿五】" , desc = "0^72fe00青龙\r^ffffff攻击力+1\r附加伤害+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号23'] = {id = 9681 , note = "^72fe00【尾火虎·尾宿六】" , desc = "0^72fe00青龙\r^ffffff防御力+2\r生命值+40\r强韧+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号24'] = {id = 9682 , note = "^72fe00【尾火虎·尾宿七】" , desc = "0^72fe00青龙\r^ffffff攻击力+2\r直接伤害抗性+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号25'] = {id = 9683 , note = "^72fe00【箕水豹·箕宿一】" , desc = "0^72fe00青龙\r^ffffff攻击力+2\r附加伤害+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号26'] = {id = 9684 , note = "^72fe00【箕水豹·箕宿二】" , desc = "0^72fe00青龙\r^ffffff防御力+2\r生命值+50" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号27'] = {id = 9685 , note = "^72fe00【箕水豹·箕宿三】" , desc = "0^72fe00青龙\r^ffffff攻击力+2\r附加伤害+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号28'] = {id = 9686 , note = "^72fe00【箕水豹·箕宿四】" , desc = "0^72fe00青龙\r^ffffff攻击力+2\r攻击强度+1%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号29'] = {id = 9687 , note = "^0184ff【斗木獬·斗宿一】" , desc = "0^0184ff玄武\r^ffffff生命值+100\r强韧+6" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号30'] = {id = 9688 , note = "^0184ff【斗木獬·斗宿二】" , desc = "0^0184ff玄武\r^ffffff攻击力+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号31'] = {id = 9689 , note = "^0184ff【斗木獬·斗宿三】" , desc = "0^0184ff玄武\r^ffffff防御力+1\r附加伤害+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号32'] = {id = 9690 , note = "^0184ff【斗木獬·斗宿四】" , desc = "0^0184ff玄武\r^ffffff生命值+100" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号33'] = {id = 9691 , note = "^0184ff【斗木獬·斗宿五】" , desc = "0^0184ff玄武\r^ffffff攻击力+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号34'] = {id = 9692 , note = "^0184ff【斗木獬·斗宿六】" , desc = "0^0184ff玄武\r^ffffff攻击力+3\r穿透+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号35'] = {id = 9693 , note = "^0184ff【牛金牛·牛宿一】" , desc = "0^0184ff玄武\r^ffffff攻击力+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号36'] = {id = 9694 , note = "^0184ff【牛金牛·牛宿二】" , desc = "0^0184ff玄武\r^ffffff生命值+100\r强韧+6" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号37'] = {id = 9695 , note = "^0184ff【牛金牛·牛宿三】" , desc = "0^0184ff玄武\r^ffffff攻击力+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号38'] = {id = 9696 , note = "^0184ff【牛金牛·牛宿四】" , desc = "0^0184ff玄武\r^ffffff防御力+2\r附加伤害+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号39'] = {id = 9697 , note = "^0184ff【牛金牛·牛宿五】" , desc = "0^0184ff玄武\r^ffffff攻击力+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号40'] = {id = 9698 , note = "^0184ff【牛金牛·牛宿六】" , desc = "0^0184ff玄武\r^ffffff附加伤害+10\r命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号41'] = {id = 9699 , note = "^0184ff【女土蝠·女宿一】" , desc = "0^0184ff玄武\r^ffffff攻击力+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号42'] = {id = 9700 , note = "^0184ff【女土蝠·女宿二】" , desc = "0^0184ff玄武\r^ffffff生命值+100\r强韧+6" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号43'] = {id = 9701 , note = "^0184ff【女土蝠·女宿三】" , desc = "0^0184ff玄武\r^ffffff攻击力+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号44'] = {id = 9702 , note = "^0184ff【女土蝠·女宿四】" , desc = "0^0184ff玄武\r^ffffff强韧+10\r闪避+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号45'] = {id = 9703 , note = "^0184ff【虚日鼠·虚宿一】" , desc = "0^0184ff玄武\r^ffffff防御力+2\r附加伤害+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号46'] = {id = 9704 , note = "^0184ff【虚日鼠·虚宿二】" , desc = "0^0184ff玄武\r^ffffff防御力+3\r治疗点数+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号47'] = {id = 9705 , note = "^0184ff【危月燕·危宿一】" , desc = "0^0184ff玄武\r^ffffff攻击力+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号48'] = {id = 9706 , note = "^0184ff【危月燕·危宿二】" , desc = "0^0184ff玄武\r^ffffff防御力+2\r附加伤害+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号49'] = {id = 9707 , note = "^0184ff【危月燕·危宿三】" , desc = "0^0184ff玄武\r^ffffff攻击力+4\r刺破+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号50'] = {id = 9708 , note = "^0184ff【室火猪·室宿一】" , desc = "0^0184ff玄武\r^ffffff攻击力+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号51'] = {id = 9709 , note = "^0184ff【室火猪·室宿二】" , desc = "0^0184ff玄武\r^ffffff防御力+2\r附加伤害+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号52'] = {id = 9710 , note = "^0184ff【室火猪·室宿三】" , desc = "0^0184ff玄武\r^ffffff攻击力+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号53'] = {id = 9711 , note = "^0184ff【室火猪·室宿四】" , desc = "0^0184ff玄武\r^ffffff生命值+100\r强韧+6" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号54'] = {id = 9712 , note = "^0184ff【室火猪·室宿五】" , desc = "0^0184ff玄武\r^ffffff攻击力+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号55'] = {id = 9713 , note = "^0184ff【室火猪·室宿六】" , desc = "0^0184ff玄武\r^ffffff防御力+3\r附加伤害+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号56'] = {id = 9714 , note = "^0184ff【室火猪·室宿七】" , desc = "0^0184ff玄武\r^ffffff攻击力+3" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号57'] = {id = 9715 , note = "^0184ff【室火猪·室宿八】" , desc = "0^0184ff玄武\r^ffffff生命值+100\r强韧+6" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号58'] = {id = 9716 , note = "^0184ff【室火猪·室宿九】" , desc = "0^0184ff玄武\r^ffffff攻击力+5\r间接伤害抗性+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号59'] = {id = 9717 , note = "^0184ff【壁水畜·壁宿一】" , desc = "0^0184ff玄武\r^ffffff攻击力+3" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号60'] = {id = 9718 , note = "^0184ff【壁水畜·壁宿二】" , desc = "0^0184ff玄武\r^ffffff暴击+1\r防御力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号61'] = {id = 9719 , note = "^a800ff【奎木狼·奎宿一】" , desc = "0^a800ff白虎\r^ffffff生命值+200\r强韧+12" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号62'] = {id = 9720 , note = "^a800ff【奎木狼·奎宿二】" , desc = "0^a800ff白虎\r^ffffff攻击力+3" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号63'] = {id = 9721 , note = "^a800ff【奎木狼·奎宿三】" , desc = "0^a800ff白虎\r^ffffff防御力+3\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号64'] = {id = 9722 , note = "^a800ff【奎木狼·奎宿四】" , desc = "0^a800ff白虎\r^ffffff攻击力+3" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号65'] = {id = 9723 , note = "^a800ff【奎木狼·奎宿五】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号66'] = {id = 9724 , note = "^a800ff【奎木狼·奎宿六】" , desc = "0^a800ff白虎\r^ffffff防御力+3\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号67'] = {id = 9725 , note = "^a800ff【奎木狼·奎宿七】" , desc = "0^a800ff白虎\r^ffffff生命值+200\r强韧+12" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号68'] = {id = 9726 , note = "^a800ff【奎木狼·奎宿八】" , desc = "0^a800ff白虎\r^ffffff攻击力+4\r命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号69'] = {id = 9727 , note = "^a800ff【奎木狼·奎宿九】" , desc = "0^a800ff白虎\r^ffffff防御力+3\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号70'] = {id = 9728 , note = "^a800ff【奎木狼·奎宿十】" , desc = "0^a800ff白虎\r^ffffff生命值+200\r强韧+12" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号71'] = {id = 9729 , note = "^a800ff【奎木狼·奎宿十一】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号72'] = {id = 9730 , note = "^a800ff【奎木狼·奎宿十二】" , desc = "0^a800ff白虎\r^ffffff防御力+3\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号73'] = {id = 9731 , note = "^a800ff【奎木狼·奎宿十三】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号74'] = {id = 9732 , note = "^a800ff【奎木狼·奎宿十四】" , desc = "0^a800ff白虎\r^ffffff生命值+200\r强韧+12" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号75'] = {id = 9733 , note = "^a800ff【奎木狼·奎宿十五】" , desc = "0^a800ff白虎\r^ffffff防御力+5\r攻击强度+1%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号76'] = {id = 9734 , note = "^a800ff【娄金狗·娄宿一】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号77'] = {id = 9735 , note = "^a800ff【娄金狗·娄宿二】" , desc = "0^a800ff白虎\r^ffffff防御力+3\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号78'] = {id = 9736 , note = "^a800ff【娄金狗·娄宿三】" , desc = "0^a800ff白虎\r^ffffff攻击力+10\r暴击抗性+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号79'] = {id = 9737 , note = "^a800ff【胃土雉·胃宿一】" , desc = "0^a800ff白虎\r^ffffff生命值+200\r强韧+12" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号80'] = {id = 9738 , note = "^a800ff【胃土雉·胃宿二】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号81'] = {id = 9739 , note = "^a800ff【胃土雉·胃宿三】" , desc = "0^a800ff白虎\r^ffffff防御力+5\r治疗点数+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号82'] = {id = 9740 , note = "^a800ff【昴日鸡·昴宿一】" , desc = "0^a800ff白虎\r^ffffff防御力+3\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号83'] = {id = 9741 , note = "^a800ff【昴日鸡·昴宿二】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号84'] = {id = 9742 , note = "^a800ff【昴日鸡·昴宿三】" , desc = "0^a800ff白虎\r^ffffff生命值+200\r强韧+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号85'] = {id = 9743 , note = "^a800ff【昴日鸡·昴宿四】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号86'] = {id = 9744 , note = "^a800ff【昴日鸡·昴宿五】" , desc = "0^a800ff白虎\r^ffffff防御力+3\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号87'] = {id = 9745 , note = "^a800ff【昴日鸡·昴宿六】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号88'] = {id = 9746 , note = "^a800ff【昴日鸡·昴宿七】" , desc = "0^a800ff白虎\r^ffffff攻击力+10\r命中+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号89'] = {id = 9747 , note = "^a800ff【毕月乌·毕宿一】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号90'] = {id = 9748 , note = "^a800ff【毕月乌·毕宿二】" , desc = "0^a800ff白虎\r^ffffff防御力+3\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号91'] = {id = 9749 , note = "^a800ff【毕月乌·毕宿三】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号92'] = {id = 9750 , note = "^a800ff【毕月乌·毕宿四】" , desc = "0^a800ff白虎\r^ffffff防御力+3\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号93'] = {id = 9751 , note = "^a800ff【毕月乌·毕宿五】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号94'] = {id = 9752 , note = "^a800ff【毕月乌·毕宿六】" , desc = "0^a800ff白虎\r^ffffff生命值+200\r强韧+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号95'] = {id = 9753 , note = "^a800ff【毕月乌·毕宿七】" , desc = "0^a800ff白虎\r^ffffff攻击力+10\r闪避+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号96'] = {id = 9754 , note = "^a800ff【觜火猴·觜宿一】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号97'] = {id = 9755 , note = "^a800ff【觜火猴·觜宿二】" , desc = "0^a800ff白虎\r^ffffff防御力+4\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号98'] = {id = 9756 , note = "^a800ff【觜火猴·觜宿三】" , desc = "0^a800ff白虎\r^ffffff防御力+10\r直接伤害抗性+1\r间接伤害抗性+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号99'] = {id = 9757 , note = "^a800ff【参水猿·参宿一】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号100'] = {id = 9758 , note = "^a800ff【参水猿·参宿二】" , desc = "0^a800ff白虎\r^ffffff防御力+4\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号101'] = {id = 9759 , note = "^a800ff【参水猿·参宿三】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号102'] = {id = 9760 , note = "^a800ff【参水猿·参宿四】" , desc = "0^a800ff白虎\r^ffffff生命值+200\r强韧+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号103'] = {id = 9761 , note = "^a800ff【参水猿·参宿五】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号104'] = {id = 9762 , note = "^a800ff【参水猿·参宿六】" , desc = "0^a800ff白虎\r^ffffff生命值+200\r强韧+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号105'] = {id = 9763 , note = "^a800ff【参水猿·参宿七】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号106'] = {id = 9764 , note = "^a800ff【参水猿·参宿八】" , desc = "0^a800ff白虎\r^ffffff防御力+5\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号107'] = {id = 9765 , note = "^a800ff【参水猿·参宿九】" , desc = "0^a800ff白虎\r^ffffff攻击力+4" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号108'] = {id = 9766 , note = "^a800ff【参水猿·参宿十】" , desc = "0^a800ff白虎\r^ffffff攻击力+12\r刺破+1\r穿透+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号109'] = {id = 9767 , note = "^ff7d2f【井木犴·井宿一】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号110'] = {id = 9768 , note = "^ff7d2f【井木犴·井宿二】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号111'] = {id = 9769 , note = "^ff7d2f【井木犴·井宿三】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号112'] = {id = 9770 , note = "^ff7d2f【井木犴·井宿四】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+300\r强韧+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号113'] = {id = 9771 , note = "^ff7d2f【井木犴·井宿五】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号114'] = {id = 9772 , note = "^ff7d2f【井木犴·井宿六】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号115'] = {id = 9773 , note = "^ff7d2f【井木犴·井宿七】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号116'] = {id = 9774 , note = "^ff7d2f【井木犴·井宿八】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+10\r直接伤害抗性+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号117'] = {id = 9775 , note = "^ff7d2f【鬼金羊·鬼宿一】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号118'] = {id = 9776 , note = "^ff7d2f【鬼金羊·鬼宿二】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号119'] = {id = 9777 , note = "^ff7d2f【鬼金羊·鬼宿三】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+300\r强韧+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号120'] = {id = 9778 , note = "^ff7d2f【鬼金羊·鬼宿四】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号121'] = {id = 9779 , note = "^ff7d2f【鬼金羊·鬼宿五】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+10\r间接伤害抗性+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号122'] = {id = 9780 , note = "^ff7d2f【柳土獐·柳宿一】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号123'] = {id = 9781 , note = "^ff7d2f【柳土獐·柳宿二】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号124'] = {id = 9782 , note = "^ff7d2f【柳土獐·柳宿三】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号125'] = {id = 9783 , note = "^ff7d2f【柳土獐·柳宿四】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号126'] = {id = 9784 , note = "^ff7d2f【柳土獐·柳宿五】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+300\r强韧+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号127'] = {id = 9785 , note = "^ff7d2f【柳土獐·柳宿六】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号128'] = {id = 9786 , note = "^ff7d2f【柳土獐·柳宿七】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+300\r强韧+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号129'] = {id = 9787 , note = "^ff7d2f【柳土獐·柳宿八】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+10\r暴击+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号130'] = {id = 9788 , note = "^ff7d2f【星日马·星宿一】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号131'] = {id = 9789 , note = "^ff7d2f【星日马·星宿二】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号132'] = {id = 9790 , note = "^ff7d2f【星日马·星宿三】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+300\r强韧+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号133'] = {id = 9791 , note = "^ff7d2f【星日马·星宿四】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号134'] = {id = 9792 , note = "^ff7d2f【星日马·星宿五】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号135'] = {id = 9793 , note = "^ff7d2f【星日马·星宿六】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号136'] = {id = 9794 , note = "^ff7d2f【星日马·星宿七】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+10\r暴击抗性+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号137'] = {id = 9795 , note = "^ff7d2f【张月鹿·张宿一】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+300\r强韧+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号138'] = {id = 9796 , note = "^ff7d2f【张月鹿·张宿二】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号139'] = {id = 9797 , note = "^ff7d2f【张月鹿·张宿三】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号140'] = {id = 9798 , note = "^ff7d2f【张月鹿·张宿四】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+300\r强韧+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号141'] = {id = 9799 , note = "^ff7d2f【张月鹿·张宿五】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号142'] = {id = 9800 , note = "^ff7d2f【张月鹿·张宿六】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+20\r攻击强度+2%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号143'] = {id = 9801 , note = "^ff7d2f【翼火蛇·翼宿一】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+300\r强韧+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号144'] = {id = 9802 , note = "^ff7d2f【翼火蛇·翼宿二】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号145'] = {id = 9803 , note = "^ff7d2f【翼火蛇·翼宿三】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号146'] = {id = 9804 , note = "^ff7d2f【翼火蛇·翼宿四】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+300\r强韧+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号147'] = {id = 9805 , note = "^ff7d2f【翼火蛇·翼宿五】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号148'] = {id = 9806 , note = "^ff7d2f【翼火蛇·翼宿六】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5\r闪避+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号149'] = {id = 9807 , note = "^ff7d2f【翼火蛇·翼宿七】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号150'] = {id = 9808 , note = "^ff7d2f【翼火蛇·翼宿八】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号151'] = {id = 9809 , note = "^ff7d2f【翼火蛇·翼宿九】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号152'] = {id = 9810 , note = "^ff7d2f【翼火蛇·翼宿十】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+300\r强韧+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号153'] = {id = 9811 , note = "^ff7d2f【翼火蛇·翼宿十一】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号154'] = {id = 9812 , note = "^ff7d2f【翼火蛇·翼宿十二】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号155'] = {id = 9813 , note = "^ff7d2f【翼火蛇·翼宿十三】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+300\r强韧+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号156'] = {id = 9814 , note = "^ff7d2f【翼火蛇·翼宿十四】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5\r攻击强度+1%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号157'] = {id = 9815 , note = "^ff7d2f【翼火蛇·翼宿十五】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号158'] = {id = 9816 , note = "^ff7d2f【翼火蛇·翼宿十六】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号159'] = {id = 9817 , note = "^ff7d2f【翼火蛇·翼宿十七】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号160'] = {id = 9818 , note = "^ff7d2f【翼火蛇·翼宿十八】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号161'] = {id = 9819 , note = "^ff7d2f【翼火蛇·翼宿十九】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号162'] = {id = 9820 , note = "^ff7d2f【翼火蛇·翼宿二十】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号163'] = {id = 9821 , note = "^ff7d2f【翼火蛇·翼宿二十一】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号164'] = {id = 9822 , note = "^ff7d2f【翼火蛇·翼宿二十二】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+20\r治疗效果+3%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号165'] = {id = 9823 , note = "^ff7d2f【轸水蚓·轸宿一】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+5" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号166'] = {id = 9824 , note = "^ff7d2f【轸水蚓·轸宿二】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号167'] = {id = 9825 , note = "^ff7d2f【轸水蚓·轸宿三】" , desc = "0^ff7d2f朱雀\r^ffffff防御力+5\r附加伤害+15" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号168'] = {id = 9826 , note = "^ff7d2f【轸水蚓·轸宿四】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号169'] = {id = 9827 , note = "^ff7d2f【轸水蚓·轸宿五】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+30\r刺破+2\r穿透+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号170'] = {id = 9828 , note = "^72fe00【角木蛟】" , desc = "0^72fe00青龙\r^ffffff生命值+20\r攻击力+1\r附加伤害+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号171'] = {id = 9829 , note = "^72fe00【亢金龙】" , desc = "0^72fe00青龙\r^ffffff生命值+40\r攻击力+2\r防御力+1\r附加伤害+2\r强韧+2\r命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号172'] = {id = 9830 , note = "^72fe00【氐土貉】" , desc = "0^72fe00青龙\r^ffffff生命值+40\r攻击力+2\r防御力+1\r附加伤害+2\r强韧+2\r治疗点数+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号173'] = {id = 9831 , note = "^72fe00【房日兔】" , desc = "0^72fe00青龙\r^ffffff生命值+50\r攻击力+2\r防御力+1\r附加伤害+2\r强韧+4\r闪避+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号174'] = {id = 9832 , note = "^72fe00【心月狐】" , desc = "0^72fe00青龙\r^ffffff攻击力+2\r防御力+1\r附加伤害+2\r强韧+2\r治疗点数+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号175'] = {id = 9833 , note = "^72fe00【尾火虎】" , desc = "0^72fe00青龙\r^ffffff生命值+100\r攻击力+5\r防御力+4\r附加伤害+6\r强韧+10\r直接伤害抗性+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号176'] = {id = 9834 , note = "^72fe00【箕水豹】" , desc = "0^72fe00青龙\r^ffffff生命值+50\r攻击力+6\r防御力+2\r附加伤害+4\r攻击强度+1%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号177'] = {id = 9835 , note = "^0184ff【斗木獬】" , desc = "0^0184ff玄武\r^ffffff生命值+200\r攻击力+7\r防御力+1\r附加伤害+5\r强韧+6\r穿透+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号178'] = {id = 9836 , note = "^0184ff【牛金牛】" , desc = "0^0184ff玄武\r^ffffff生命值+100\r攻击力+6\r防御力+2\r附加伤害+16\r强韧+6\r命中+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号179'] = {id = 9837 , note = "^0184ff【女土蝠】" , desc = "0^0184ff玄武\r^ffffff生命值+100\r攻击力+4\r强韧+16\r闪避+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号180'] = {id = 9838 , note = "^0184ff【虚日鼠】" , desc = "0^0184ff玄武\r^ffffff防御力+5\r附加伤害+5\r治疗点数+10" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号181'] = {id = 9839 , note = "^0184ff【危月燕】" , desc = "0^0184ff玄武\r^ffffff攻击力+6\r防御力+2\r附加伤害+5\r刺破+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号182'] = {id = 9840 , note = "^0184ff【室火猪】" , desc = "0^0184ff玄武\r^ffffff生命值+200\r攻击力+14\r防御力+5\r附加伤害+10\r强韧+12\r间接伤害抗性+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号183'] = {id = 9841 , note = "^0184ff【壁水畜】" , desc = "0^0184ff玄武\r^ffffff攻击力+3\r防御力+5\r暴击+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号184'] = {id = 9842 , note = "^a800ff【奎木狼】" , desc = "0^a800ff白虎\r^ffffff生命值+800\r攻击力+22\r防御力+17\r附加伤害+40\r强韧+48\r命中+1\r攻击强度+1%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号185'] = {id = 9843 , note = "^a800ff【娄金狗】" , desc = "0^a800ff白虎\r^ffffff攻击力+14\r防御力+3\r附加伤害+10\r暴击抗性+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号186'] = {id = 9844 , note = "^a800ff【胃土雉】" , desc = "0^a800ff白虎\r^ffffff生命值+200\r攻击力+4\r防御力+5\r强韧+12\r治疗点数+20" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号187'] = {id = 9845 , note = "^a800ff【昴日鸡】" , desc = "0^a800ff白虎\r^ffffff生命值+200\r攻击力+22\r防御力+6\r附加伤害+20\r强韧+15\r命中+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号188'] = {id = 9846 , note = "^a800ff【毕月乌】" , desc = "0^a800ff白虎\r^ffffff生命值+200\r攻击力+22\r防御力+6\r附加伤害+20\r强韧+15\r闪避+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号189'] = {id = 9847 , note = "^a800ff【觜火猴】" , desc = "0^a800ff白虎\r^ffffff攻击力+4\r防御力+14\r附加伤害+10\r直接伤害抗性+1\r间接伤害抗性+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号190'] = {id = 9848 , note = "^a800ff【参水猿】" , desc = "0^a800ff白虎\r^ffffff生命值+400\r攻击力+32\r防御力+9\r附加伤害+20\r强韧+30\r刺破+1\r穿透+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号191'] = {id = 9849 , note = "^ff7d2f【井木犴】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+300\r攻击力+20\r防御力+20\r附加伤害+20\r强韧+20\r直接伤害抗性+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号192'] = {id = 9850 , note = "^ff7d2f【鬼金羊】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+300\r攻击力+10\r防御力+15\r附加伤害+10\r强韧+20\r间接伤害抗性+2" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号193'] = {id = 9851 , note = "^ff7d2f【柳土獐】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+600\r攻击力+25\r防御力+10\r附加伤害+20\r强韧+40\r暴击+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号194'] = {id = 9852 , note = "^ff7d2f【星日马】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+300\r攻击力+25\r防御力+10\r附加伤害+20\r强韧+20\r暴击抗性+1" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号195'] = {id = 9853 , note = "^ff7d2f【张月鹿】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+600\r攻击力+30\r防御力+5\r附加伤害+10\r强韧+40\r攻击强度+2%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号196'] = {id = 9854 , note = "^ff7d2f【翼火蛇】" , desc = "0^ff7d2f朱雀\r^ffffff生命值+1200\r攻击力+65\r防御力+40\r附加伤害+110\r强韧+80\r攻击强度+1%\r闪避+1\r治疗效果+3%" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号197'] = {id = 9855 , note = "^ff7d2f【轸水蚓】" , desc = "0^ff7d2f朱雀\r^ffffff攻击力+45\r防御力+10\r附加伤害+30\r刺破+2\r穿透+2" , desc_1 = "" , desc_2 = ""}
title_definition['17173斗群英礼包'] = {id = 9856 , note = "^a800ff【17173斗群英】" , desc = "0^ff0000运营新手卡称号" , desc_1 = "" , desc_2 = ""}
title_definition['新浪斗群英礼包'] = {id = 9857, note = "^a800ff【新浪斗群英】" , desc = "0^ff0000运营新手卡称号" , desc_1 = "" , desc_2 = ""}
title_definition['太平洋斗群英礼包'] = {id = 9858 , note = "^a800ff【太平洋斗群英】" , desc = "0^ff0000运营新手卡称号" , desc_1 = "" , desc_2 = ""}
title_definition['联通斗群英礼包'] = {id = 9859 , note = "^a800ff【联通斗群英】" , desc = "0^ff0000运营新手卡称号" , desc_1 = "" , desc_2 = ""}
title_definition['YY皇室斗群英大礼包'] = {id = 9860, note = "^a800ff【YY皇室斗群英】" , desc = "0^ff0000运营新手卡称号" , desc_1 = "" , desc_2 = ""}
title_definition['公会特权斗群英大礼包'] = {id = 9861 , note = "^a800ff【公会斗群英,天下战火燃】" , desc = "0^ff0000运营新手卡称号" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号198'] = {id = 9862 , note = "^fff962【青龙之主】" , desc = "0^fff962青龙\r^ffffff万众瞩目,豪气冲天!" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号199'] = {id = 9863 , note = "^fff962【玄武之主】" , desc = "0^fff962玄武\r^ffffff万众瞩目,豪气冲天!" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号200'] = {id = 9864 , note = "^fff962【白虎之主】" , desc = "0^fff962白虎\r^ffffff万众瞩目,豪气冲天!" , desc_1 = "" , desc_2 = ""}
title_definition['星盘称号201'] = {id = 9865 , note = "^fff962【朱雀之主】" , desc = "0^fff962朱雀\r^ffffff万众瞩目,豪气冲天!" , desc_1 = "" , desc_2 = ""}
title_definition['2013单身节结婚称号'] = {id = 9866 , note = "^fff962【彻底脱光】" , desc = "0^fff962光棍节里彻底脱光!\r^ffffff攻击力+1\r防御力+1" , desc_1 = "" , desc_2 = ""}
title_definition['2013单身节夫妻活动称号'] = {id = 9867 , note = "^fff962【一心一意一双人】" , desc = "0^fff962千山万水，一路相随!\r^ffffff生命值+100" , desc_1 = "" , desc_2 = ""}
title_definition['新国战称号1'] = {id = 9868 , note = "^72fe00【国战大兵】" , desc = "0^72fe00总有一天我会当将军的!\r^ffffff攻击力+10" , desc_1 = "" , desc_2 = ""}
title_definition['新国战称号2'] = {id = 9869 , note = "^0184ff【国战小将】" , desc = "0^0184ff跟我冲,取敌人首级!\r^ffffff攻击力+20\r防御力+10" , desc_1 = "" , desc_2 = ""}
title_definition['新国战称号3'] = {id = 9870 , note = "^a800ff【国战英豪】" , desc = "0^a800ff哈哈哈,尔等可敢一战!\r^ffffff攻击力+30\r防御力+15\r生命值+300" , desc_1 = "" , desc_2 = ""}
title_definition['新国战称号4'] = {id = 9871 , note = "^ff7d2f【国战枭雄】" , desc = "0^ff7d2f天下皆唾手可得!\r^ffffff攻击力+40\r防御力+20\r生命值+500" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_刀'] = {id = 9872, note = "^ff7d2f【傲群英·刀猛胜云长】" , desc = "0^ff0000在群英会比赛中获得刀兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_枪'] = {id = 9873, note = "^ff7d2f【傲群英·枪快如子龙】" , desc = "0^ff0000在群英会比赛中获得枪兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_戟'] = {id = 9874, note = "^ff7d2f【傲群英·戟画过吕布】" , desc = "0^ff0000在群英会比赛中获得戟兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_钺'] = {id = 9875, note = "^ff7d2f【傲群英·钺狠斗魏延】" , desc = "0^ff0000在群英会比赛中获得钺兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_叉'] = {id = 9876, note = "^ff7d2f【傲群英·叉疾战张辽】" , desc = "0^ff0000在群英会比赛中获得叉兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_棍'] = {id = 9877, note = "^ff7d2f【傲群英·棍风似程普】" , desc = "0^ff0000在群英会比赛中获得棍兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_剑'] = {id = 9878, note = "^ff7d2f【傲群英·剑舞美周郎】" , desc = "0^ff0000在群英会比赛中获得剑兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_斧'] = {id = 9879, note = "^ff7d2f【傲群英·斧威敌徐晃】" , desc = "0^ff0000在群英会比赛中获得斧兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_钩'] = {id = 9880, note = "^ff7d2f【傲群英·钩意赫司马】" , desc = "0^ff0000在群英会比赛中获得钩兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_锏'] = {id = 9881, note = "^ff7d2f【傲群英·锏胜太史慈】" , desc = "0^ff0000在群英会比赛中获得锏兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_锤'] = {id = 9882, note = "^ff7d2f【傲群英·锤动撼典韦】" , desc = "0^ff0000在群英会比赛中获得锤兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_爪'] = {id = 9883, note = "^ff7d2f【傲群英·爪袭甘兴霸】" , desc = "0^ff0000在群英会比赛中获得爪兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_盾'] = {id = 9884, note = "^ff7d2f【傲群英·盾挡痴许褚】" , desc = "0^ff0000在群英会比赛中获得盾兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_环'] = {id = 9885, note = "^ff7d2f【傲群英·环巧孙尚香】" , desc = "0^ff0000在群英会比赛中获得环兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_杖'] = {id = 9886, note = "^ff7d2f【傲群英·杖仙师左慈】" , desc = "0^ff0000在群英会比赛中获得杖兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_舞'] = {id = 9887, note = "^ff7d2f【傲群英·舞妙过貂蝉】" , desc = "0^ff0000在群英会比赛中获得舞兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_扇'] = {id = 9888, note = "^ff7d2f【傲群英·扇谋赛诸葛】" , desc = "0^ff0000在群英会比赛中获得扇兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_弓'] = {id = 9889, note = "^ff7d2f【傲群英·弓准比黄忠】" , desc = "0^ff0000在群英会比赛中获得弓兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_鞭'] = {id = 9890, note = "^ff7d2f【傲群英·鞭乱如甄姬】" , desc = "0^ff0000在群英会比赛中获得鞭兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['兵种冠军限时称号_弩'] = {id = 9891, note = "^ff7d2f【傲群英·弩灵超张颌】" , desc = "0^ff0000在群英会比赛中获得弩兵种的第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['跨服军团战冠军'] = {id = 9892, note = "^ff7d2f【冠军·天下第一团】" , desc = "0^ff0000在上周的跨服军团战中获得第一名！" , desc_1 = "" , desc_2 = ""}
title_definition['国战限时称号_魏'] = {id = 9893, note = "^ff7d2f【国战枭雄·魏】" , desc = "0^ff0000在国战中获得胜利！" , desc_1 = "" , desc_2 = ""}
title_definition['国战限时称号_蜀'] = {id = 9894, note = "^ff7d2f【国战枭雄·蜀】" , desc = "0^ff0000在国战中获得胜利！" , desc_1 = "" , desc_2 = ""}
title_definition['国战限时称号_吴'] = {id = 9895, note = "^ff7d2f【国战枭雄·吴】" , desc = "0^ff0000在国战中获得胜利！" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励1'] = {id = 9896, note = "^fff962【一等护国大将军】" , desc = "0^fff962万众瞩目,豪气冲天!\r^ffffff攻击力+45\r防御力+22\r生命值+1000" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励2'] = {id = 9897, note = "^fff962【二等护国大将军】" , desc = "0^fff962万众瞩目,豪气冲天!\r^ffffff攻击力+39\r防御力+19\r生命值+750" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励3'] = {id = 9898, note = "^fff962【三等护国大将军】" , desc = "0^fff962万众瞩目,豪气冲天!\r^ffffff攻击力+36\r防御力+18\r生命值+700" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励4'] = {id = 9899, note = "^fff962【四等护国大将军】" , desc = "0^fff962万众瞩目,豪气冲天!\r^ffffff攻击力+33\r防御力+16\r生命值+650" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励5'] = {id = 9900, note = "^fff962【一等骠骑将军】" , desc = "0^fff962万众瞩目,豪气冲天!\r^ffffff攻击力+30\r防御力+15\r生命值+600" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励6'] = {id = 9901, note = "^fff962【二等骠骑将军】" , desc = "0^fff962万众瞩目,豪气冲天!\r^ffffff攻击力+24\r防御力+12\r生命值+450" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励7'] = {id = 9902, note = "^fff962【三等骠骑将军】" , desc = "0^fff962万众瞩目,豪气冲天!\r^ffffff攻击力+21\r防御力+10\r生命值+400" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励8'] = {id = 9903, note = "^fff962【四等骠骑将军】" , desc = "0^fff962万众瞩目,豪气冲天!\r^ffffff攻击力+18\r防御力+9\r生命值+350" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励9'] = {id = 9904, note = "^fff962【一等车骑将军】" , desc = "0^fff962万众瞩目,豪气冲天!\r^ffffff攻击力+15\r防御力+7\r生命值+300" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励10'] = {id = 9905, note = "^fff962【二等车骑将军】" , desc = "0^fff962万众瞩目,豪气冲天!\r^ffffff攻击力+11\r防御力+5\r生命值+200" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励11'] = {id = 9906, note = "^fff962【三等车骑将军】" , desc = "0^fff962万众瞩目,豪气冲天!\r^ffffff攻击力+8\r防御力+4\r生命值+150" , desc_1 = "" , desc_2 = ""}
title_definition['13年11月排行榜奖励12'] = {id = 9907, note = "^fff962【四等车骑将军】" , desc = "0^fff962万众瞩目,豪气冲天!\r^ffffff攻击力+5\r防御力+2\r生命值+100" , desc_1 = "" , desc_2 = ""}
title_definition['2013圣诞节称号'] = {id = 9908 , note = "^fff962【圣诞老人小助手】" , desc = "0^fff962比驯鹿更灵活，比精灵更聪敏!" , desc_1 = "" , desc_2 = ""}
title_definition['2013圣诞节称号1'] = {id = 9909 , note = "^fff962【圣诞小夜曲】" , desc = "0^fff962欢度圣诞!\r^ffffff攻击力+30\r防御力+15" , desc_1 = "" , desc_2 = ""}
title_definition['2013圣诞节称号2'] = {id = 9910 , note = "^fff962【圣诞圆舞曲】" , desc = "0^fff962欢度圣诞!\r^ffffff攻击力+10\r防御力+5" , desc_1 = "" , desc_2 = ""}
title_definition['2013运营称号1'] = {id = 9911 , note = "^fff962【2013·斗群英军团争霸赛冠军】" , desc = "0^fff962斗群英军团争霸赛称号" , desc_1 = "" , desc_2 = ""}
title_definition['2013运营称号2'] = {id = 9912 , note = "^fff962【2013·斗群英军团争霸赛亚军】" , desc = "0^fff962斗群英军团争霸赛称号" , desc_1 = "" , desc_2 = ""}
title_definition['2013运营称号3'] = {id = 9913 , note = "^fff962【2013·斗群英军团争霸赛季军】" , desc = "0^fff962斗群英军团争霸赛称号" , desc_1 = "" , desc_2 = ""}
title_definition['2013运营称号4'] = {id = 9914 , note = "^fff962【2013·斗群英个人争霸赛冠军】" , desc = "0^fff962斗群英个人争霸赛称号" , desc_1 = "" , desc_2 = ""}
title_definition['2013运营称号5'] = {id = 9915 , note = "^fff962【2013·斗群英个人争霸赛亚军】" , desc = "0^fff962斗群英个人争霸赛称号" , desc_1 = "" , desc_2 = ""}
title_definition['2013运营称号6'] = {id = 9916 , note = "^fff962【2013·斗群英个人争霸赛季军】" , desc = "0^fff962斗群英个人争霸赛称号" , desc_1 = "" , desc_2 = ""}
title_definition['2014六周年称号'] = {id = 9917 , note = "^fff962【英雄六载峥嵘,赤壁唯我独霸】" , desc = "0^fff962赤壁六周年运营活动称号" , desc_1 = "" , desc_2 = ""}
title_definition['2014六周年称号1'] = {id = 9918 , note = "^fff962【六载热血赤壁情,三国激情永不休】" , desc = "0^fff962赤壁六周年活动称号" , desc_1 = "" , desc_2 = ""}
title_definition['2014挑战塔称号1'] = {id = 9919 , note = "^a800ff【挑战塔·闯过青铜殿】" , desc = "0^ffffff凭借此称号可以找挑战塔战场中的左慈进行选关操作。" , desc_1 = "" , desc_2 = ""}
title_definition['2014挑战塔称号2'] = {id = 9920 , note = "^ff7d2f【挑战塔·闯过白银殿】" , desc = "0^ffffff凭借此称号可以找挑战塔战场中的左慈进行选关操作。" , desc_1 = "" , desc_2 = ""}
title_definition['2014挑战塔称号3'] = {id = 9921 , note = "^fff962【挑战塔·闯过黄金殿】" , desc = "0^ffffff凭借此称号可以找挑战塔战场中的左慈进行选关操作。" , desc_1 = "" , desc_2 = ""}
title_definition['2014新服活动称号1'] = {id = 9922 , note = "^fff962【一马当先乱世枭雄】" , desc = "0^ffffff新服活动称号。" , desc_1 = "" , desc_2 = ""}
title_definition['2014新服活动称号2'] = {id = 9923 , note = "^fff962【一马当先群雄并起】" , desc = "0^ffffff新服活动称号。" , desc_1 = "" , desc_2 = ""}
title_definition['2014新服活动称号3'] = {id = 9924 , note = "^fff962【一马当先诸侯纷争】" , desc = "0^ffffff新服活动称号。" , desc_1 = "" , desc_2 = ""}
title_definition['2014新服活动称号4'] = {id = 9925 , note = "^fff962【一马当先天下无双】" , desc = "0^ffffff新服活动称号。" , desc_1 = "" , desc_2 = ""}
title_definition['2014新服活动称号4'] = {id = 9926 , note = "^fff962【专坑小马】" , desc = "0^ffffff运营活动称号。" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_1'] = {id = 9927 , note = "^ffbc3c【天佑·魏战群僚一人勇】" , desc = "1^ffbc3c每周生效:\r阵营：魏\r来源：上周五丈原贡献度排行榜第一名。\r可佩戴勋章：天佑勋章(魏)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_2'] = {id = 9928 , note = "^ffbc3c【魏·精锐将臣】" , desc = "1^ffbc3c每周生效:\r^ffffff阵营：魏\r来源：上周五丈原贡献度排行榜前五十名。" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_3'] = {id = 9929 , note = "^ffbc3c【天佑·蜀战群僚一人勇】" , desc = "2^ffbc3c每周生效:\r阵营：蜀\r来源：上周五丈原贡献度排行榜第一名。\r可佩戴勋章：天佑勋章(蜀)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_4'] = {id = 9930 , note = "^ffbc3c【蜀·精锐将臣】" , desc = "2^ffbc3c每周生效:\r^ffffff阵营：蜀\r来源：上周阵五丈原献度排行榜前五十名。" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_5'] = {id = 9931 , note = "^ffbc3c【天佑·吴战群僚一人勇】" , desc = "3^ffbc3c每周生效:\r阵营：吴\r来源：上周五丈原贡献度排行榜第一名。\r可佩勋章：天佑勋章(吴)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_6'] = {id = 9932 , note = "^ffbc3c【吴·精锐将臣】" , desc = "3^ffbc3c每周生效:\r^ffffff阵营：吴\r来源：上周五丈原贡献度排行榜前五十名。" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_7'] = {id = 9933 , note = "^ffbc3c【罡魂·魏战群僚一人勇】" , desc = "1^ffbc3c每周生效:\r阵营：魏\r来源：上周五丈原贡献度排行榜第二名。\r可佩戴勋章：罡魂勋章(魏)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_8'] = {id = 9934 , note = "^ffbc3c【铭印·魏战群僚一人勇】" , desc = "1^ffbc3c每周生效:\r阵营：魏\r来源：上周五丈原献度排行榜第三名。\r可佩勋章：铭印勋章(魏)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_9'] = {id = 9935 , note = "^ffbc3c【罡魂·蜀战群僚一人勇】" , desc = "2^ffbc3c每周生效:\r阵营：蜀\r来源：上周五丈原贡献度排行榜第二名。\r可佩勋章：罡魂勋章(蜀)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_10'] = {id = 9936 , note = "^ffbc3c【铭印·蜀战群僚一人勇】" , desc = "2^ffbc3c每周生效:\r阵营：蜀\r来源：上周五丈原贡献度排行榜第三名。\r可佩勋章：铭印勋章(蜀)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_11'] = {id = 9937 , note = "^ffbc3c【罡魂·吴战群僚一人勇】" , desc = "3^ffbc3c每周生效:\r阵营：吴\r来源：上周五丈原贡献度排行榜第二名。\r可佩勋章：罡魂勋章(吴)" , desc_1 = "" , desc_2 = ""}
title_definition['2014野外争夺贡献称号_12'] = {id = 9938 , note = "^ffbc3c【铭印·吴战群僚一人勇】" , desc = "3^ffbc3c每周生效:\r阵营：吴\r来源：上周五丈原贡献度排行榜第三名。\r可佩勋章：铭印勋章(吴)" , desc_1 = "" , desc_2 = ""}
--title_definition['2014襄阳之战_1'] = {id = 9939 , note = "^ffbc3c【跨服雄兵连·魏国大将】" , desc = "1^ffbc3c每月生效:\r阵营：魏\r来源：上月襄阳之战魏国积分排行榜前十八位。\r获得该荣誉的玩家请于本周六参与跨服襄阳之战，过期不候。" , desc_1 = "" , desc_2 = ""}
--title_definition['2014襄阳之战_2'] = {id = 9940 , note = "^ffbc3c【跨服雄兵连·蜀国大将】" , desc = "2^ffbc3c每月生效:\r阵营：蜀\r来源：上月襄阳之战蜀国积分排行榜前十八位。\r获得该荣誉的玩家请于本周六参与跨服襄阳之战，过期不候。" , desc_1 = "" , desc_2 = ""}
--title_definition['2014襄阳之战_3'] = {id = 9941 , note = "^ffbc3c【跨服雄兵连·吴国大将】" , desc = "3^ffbc3c每月生效:\r阵营：吴\r来源：上月襄阳之战吴国积分排行榜前十八位。\r获得该荣誉的玩家请于本周六参与跨服襄阳之战，过期不候。" , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号1'] = {id = 9942 , note = "^fff962【勇斗三国·霸王降临】" , desc = "0^ffffff全国队伍竞技团队冠军奖励！\r他们是一方霸主，翻手为云，覆手为雨！" , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号2'] = {id = 9943 , note = "^fff962【勇斗三国·唯我称雄】" , desc = "0^ffffff全国队伍竞技团队亚军奖励！\r他们是一方霸主，拥有占地为王的权利！" , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号3'] = {id = 9944 , note = "^fff962【勇斗三国·乱世英豪】" , desc = "0^ffffff全国队伍竞技团队季军奖励！\r勇猛过人，以一当百！" , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号4'] = {id = 9945 , note = "^fff962【勇斗三国·举世无双】" , desc = "0^ffffff跨服个人竞技赛冠军专属称号。" , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号5'] = {id = 9946 , note = "^fff962【勇斗三国·所向披靡】" , desc = "0^ffffff跨服个人竞技赛亚军专属称号。" , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号6'] = {id = 9947 , note = "^fff962【勇斗三国·英勇无敌】" , desc = "0^ffffff跨服个人竞技赛季军专属称号。" , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号7'] = {id = 9948 , note = "^fff962【勇斗三国·万人莫敌】" , desc = "0^ffffff跨服个人竞技赛四至六名专属称号。" , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号8'] = {id = 9949 , note = "^fff962【勇斗三国·独霸一方】" , desc = "0^ffffff跨服个人竞技赛七至十名专属称号。" , desc_1 = "" , desc_2 = ""}
title_definition['2014七月称号9'] = {id = 9950 , note = "^fff962【勇斗三国·单兵之王】" , desc = "0^ffffff跨服个人竞技赛兵种第一专属称号。" , desc_1 = "" , desc_2 = ""}
title_definition['2014七夕称号1'] = {id = 9951 , note = "^ff4ca4【星语寥寥月伶仃】" , desc = "0^ffbc3c2014年七夕活动专属称号。\r愿天下有情人终成眷属。\r^ffffff体质+120\r攻击力+10\r防御力+5" , desc_1 = "" , desc_2 = ""}
title_definition['2014七夕称号2'] = {id = 9952 , note = "^ff4ca4【灵桥漫漫鹊相迎】" , desc = "0^ffbc3c2014年七夕活动专属称号。\r愿天下有情人终成眷属。\r^ffffff体质+250\r攻击力+15\r防御力+10\r附加伤害+5" , desc_1 = "" , desc_2 = ""}
title_definition['2014七夕称号3'] = {id = 9953 , note = "^ff4ca4【相望无期方相见】" , desc = "0^ffbc3c2014年七夕活动专属称号。\r愿天下有情人终成眷属。\r^ffffff体质+400\r攻击力+20\r防御力+15\r附加伤害+10\r暴击附加伤害+10\r暴击伤害+3%" , desc_1 = "" , desc_2 = ""}
title_definition['2014七夕称号4'] = {id = 9954 , note = "^ff4ca4【一夕相守千载情】" , desc = "0^ffbc3c2014年七夕活动专属称号。\r愿天下有情人终成眷属。\r^ffffff体质+600\r攻击力+30\r防御力+20\r附加伤害+20\r暴击附加伤害+20\r暴击伤害+3%\r暴击+1" , desc_1 = "" , desc_2 = ""}
title_definition['2014七月自制称号1'] = {id = 9955 , note = "^fff962【战神降临丶大魏军魂】" , desc = "0^ffffff跨服个人竞技赛兵种第一专属称号。" , desc_1 = "" , desc_2 = ""}
title_definition['2014七月自制称号2'] = {id = 9956 , note = "^fff962【倾国倾城丶大魏佳人】" , desc = "0^ffffff2014年七夕活动独享称号。" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号1'] = {id = 9957 , note = "^fff962【一骑当千·唯我独尊】" , desc = "0^ff0000赤壁7周年庆典天榜至尊称号\r^fff962生命值+1000\r攻击+50\r防御+25\r攻击强度+3%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号2'] = {id = 9958 , note = "^fff962【一骑当千·天下无双】" , desc = "0^ff0000赤壁7周年庆典天榜无双称号\r^fff962生命值+800\r攻击+40\r防御+20\r攻击强度+3%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号3'] = {id = 9959 , note = "^fff962【一骑当千·龙吟九霄】" , desc = "0^ff0000赤壁7周年庆典天榜王者称号\r^fff962生命值+650\r攻击+30\r防御+15\r攻击强度+3%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号4'] = {id = 9960 , note = "^fff962【一骑当千·纵横天下】" , desc = "0^ff0000赤壁7周年庆典天榜豪杰称号\r^fff962生命值+500\r攻击+20\r防御+10\r攻击强度+3%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号5'] = {id = 9961 , note = "^fff962【一骑当千·神威天成】" , desc = "0^ff0000赤壁7周年庆典地榜至尊称号\r^fff962生命值+500\r攻击+40\r攻击强度+1%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号6'] = {id = 9962 , note = "^fff962【一骑当千·运筹帷幄】" , desc = "0^ff0000赤壁7周年庆典地榜无双称号\r^fff962生命值+450\r攻击+30\r攻击强度+1%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号7'] = {id = 9963 , note = "^fff962【一骑当千·功成名就】" , desc = "0^ff0000赤壁7周年庆典地榜王者称号\r^fff962生命值+400\r攻击+20\r攻击强度+1%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号8'] = {id = 9964 , note = "^fff962【一骑当千·威震四野】" , desc = "0^ff0000赤壁7周年庆典地榜豪杰称号\r^fff962生命值+350\r攻击+15\r攻击强度+1%" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号9'] = {id = 9965 , note = "^fff962【一骑当千·盖世英豪】" , desc = "0^ff0000赤壁7周年庆典人榜至尊称号\r^fff962生命值+300\r攻击+10\r防御+5" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号10'] = {id = 9966 , note = "^fff962【一骑当千·绝世奇才】" , desc = "0^ff0000赤壁7周年庆典人榜无双称号\r^fff962生命值+200\r攻击+8\r防御+4" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号11'] = {id = 9967 , note = "^fff962【一骑当千·武林高手】" , desc = "0^ff0000赤壁7周年庆典人榜王者称号\r^fff962生命值+150\r攻击+6\r防御+3" , desc_1 = "" , desc_2 = ""}
title_definition['2014十二月自制称号12'] = {id = 9968 , note = "^fff962【一骑当千·初露锋芒】" , desc = "0^ff0000赤壁7周年庆典地榜豪杰称号\r^fff962生命值+120\r攻击+5\r防御+2" , desc_1 = "" , desc_2 = ""}
title_definition['2015年赤壁新年专属称号'] = {id = 9969 , note = "^ff0000【赤壁第一大人妖】" , desc = "0^ff0000羊年春节专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['羊年春节专属称号1'] = {id = 9970 , note = "^ff0000【※春风习习带头羊又登泰山顶】" , desc = "0^ff0000羊年春节专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['羊年春节专属称号2'] = {id = 9971 , note = "^ff0000【凯歌阵阵千里马早过玉门关※】" , desc = "0^ff0000羊年春节专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['羊年春节专属称号3'] = {id = 9972 , note = "^ffbc3c【※羊笔如椽描山绘水书春意】" , desc = "0^ff0000羊年春节专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['羊年春节专属称号4'] = {id = 9973 , note = "^ffbc3c【马蹄腾雪步韵留香报福音※】" , desc = "0^ff0000羊年春节专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['15年520活动称号1'] = {id = 9974 , note = "^ff0000【喋血狼烟起·琴瑟惊锦衣】" , desc = "0^ffbc3c2015年520活动专属称号。\r愿天下有情人终成眷属。\r^ffffff生命值+1000\r攻击力+50\r防御力+10\r暴击附加伤害+30\r暴击+1\r暴击伤害+3%" , desc_1 = "" , desc_2 = ""}
title_definition['15年520活动称号2'] = {id = 9975 , note = "^ff0000【枭雄谱传奇·长空共比翼】" , desc = "0^ffbc3c2015年520活动专属称号。\r愿天下有情人终成眷属。\r^ffffff生命值+1000\r攻击力+25\r防御力+20\r强韧+30\r暴击抗性+2" , desc_1 = "" , desc_2 = ""}
title_definition['15年520活动称号3'] = {id = 9976 , note = "^ff0000【戎马啸天下·河山为卿嫁】" , desc = "0^ffbc3c2015年520活动专属称号。\r愿天下有情人终成眷属。\r^ffffff生命值+1000\r攻击力+50\r防御力+10\r暴击附加伤害+30\r刺破+1\r攻击强度+3%" , desc_1 = "" , desc_2 = ""}
title_definition['15年520活动称号4'] = {id = 9977 , note = "^ff0000【乱世战群雄·执手留英名】" , desc = "0^ffbc3c2015年520活动专属称号。\r愿天下有情人终成眷属。\r^ffffff生命值+1000\r攻击力+25\r防御力+20\r强韧+30\r直接抗性+1\r间接抗性+1" , desc_1 = "" , desc_2 = ""}
title_definition['15年720老玩家回归称号'] = {id = 9978 , note = "^ff0000【王者归来·乱世英豪战三国】" , desc = "0^ffbc3c2015年老玩家回归专属称号。" , desc_1 = "" , desc_2 = ""}
title_definition['15年720王者称号'] = {id = 9979 , note = "^ff0000【三千功名尘与土】" , desc = "0^ffbc3c王者归来限量称号。\r^ffffff攻击力+30\r防御力+15\r附加伤害+20\r命中+1\r强韧+20" , desc_1 = "" , desc_2 = ""}
title_definition['15年七夕活动称号'] = {id = 9980 , note = "^FF00FF【心近情归千里相思难成苦白首相依愿成真】" , desc = "0^FF00FF愿得一心人白首不相离。" , desc_1 = "" , desc_2 = ""}
title_definition['2015全国竞技称号1'] = {id = 9981 , note = "^fff962【战倾天下·勇冠三军】" , desc = "0^ffffff2015年度全国竞技赛冠军奖励！" , desc_1 = "" , desc_2 = ""}
title_definition['2015全国竞技称号2'] = {id = 9982 , note = "^fff962【战倾天下·一骑绝尘】" , desc = "0^ffffff2015年度全国竞技赛亚军奖励！" , desc_1 = "" , desc_2 = ""}
title_definition['2015全国竞技称号3'] = {id = 9983 , note = "^fff962【战倾天下·势不可挡】" , desc = "0^ffffff2015年度全国竞技赛季军奖励！" , desc_1 = "" , desc_2 = ""}
title_definition['2015全国群英会称号1'] = {id = 9984 , note = "^fff962【战倾天下·君临天下】" , desc = "0^ffffff2015年度全国群英会冠军专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['2015全国群英会称号2'] = {id = 9985 , note = "^fff962【战倾天下·孤峰绝顶】" , desc = "0^ffffff2015年度全国群英会亚军专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['2015全国群英会称号3'] = {id = 9986 , note = "^fff962【战倾天下·战无不胜】" , desc = "0^ffffff2015年度全国群英会季军专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['2015全国群英会称号4'] = {id = 9987 , note = "^fff962【战倾天下·霸气无双】" , desc = "0^ffffff2015年度全国群英会四至十名专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['2015全国群英会称号5'] = {id = 9988 , note = "^fff962【战倾天下·天降战神】" , desc = "0^ffffff2015年度全国群英会单兵之王专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['新阵营官职-魏王'] = {id = 9989 , note = "^fff962【魏王】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = "" , icon = "魏王.dds"}
title_definition['新阵营官职-魏国夫人'] = {id = 9990 , note = "^fff962【魏国夫人】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = "" , icon = "魏国夫人.dds"}
title_definition['新阵营官职-魏国公'] = {id = 9991 , note = "^fff962【魏国公】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = "" , icon = "魏国公.dds"}
title_definition['新阵营官职-蜀王'] = {id = 9992 , note = "^fff962【蜀王】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = "" , icon = "蜀王.dds"}
title_definition['新阵营官职-蜀国夫人'] = {id = 9993 , note = "^fff962【蜀国夫人】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = "" , icon = "蜀国夫人.dds"}
title_definition['新阵营官职-蜀国公'] = {id = 9994 , note = "^fff962【蜀国公】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = "" , icon = "蜀国公.dds"}
title_definition['新阵营官职-吴王'] = {id = 9995 , note = "^fff962【吴王】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = "" , icon = "吴王.dds"}
title_definition['新阵营官职-吴国夫人'] = {id = 9996 , note = "^fff962【吴国夫人】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = "" , icon = "吴国夫人.dds"}
title_definition['新阵营官职-吴国公'] = {id = 9997 , note = "^fff962【吴国公】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = "" , icon = "吴国公.dds"}
title_definition['新阵营官职-大将军'] = {id = 9998 , note = "^fff962【大将军】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = "" , icon = "大将军.dds"}
title_definition['新阵营官职-大丞相'] = {id = 9999 , note = "^fff962【大丞相】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = "" , icon = "大丞相.dds"}
title_definition['新阵营官职-大司空'] = {id = 10000 , note = "^fff962【大司空】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = "" , icon = "大司空.dds"}
title_definition['新阵营官职-大司马'] = {id = 10001 , note = "^fff962【大司马】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = "" , icon = "大司马.dds"}
title_definition['新阵营官职-大司徒'] = {id = 10002 , note = "^fff962【大司徒】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = "" , icon = "大司徒.dds"}
title_definition['新阵营官职-羽林郎将'] = {id = 10003 , note = "^fff962【羽林郎将】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = "" , icon = "羽林郎将.dds"}
title_definition['新阵营官职-阵营指挥官'] = {id = 10004 , note = "^fff962【阵营指挥官】" , desc = "0^ffffff官职称号，权利与地位的象征。" , desc_1 = "" , desc_2 = ""}
title_definition['2015资料片称号'] = {id = 10005 , note = "^ff4ca4【我是阵营一块砖·哪里需要哪里搬】" , desc = "0^ffffff《三分天下》资料片专属称号。" , desc_1 = "" , desc_2 = ""}
title_definition['私人订制1'] = {id = 10006 , note = "^ff0000【脚踏双星，刀劈阿斗】" , desc = "0^ffffff玩家^ff7d2f绝铯惑℃☆帝^ffffff私人订制称号。" , desc_1 = "" , desc_2 = ""}
title_definition['私人订制2'] = {id = 10007 , note = "^ff0000【锦瑟无端五十弦，一弦一柱思华年】" , desc = "0^ffffff玩家^ff7d2f王者归来※品三国^ffffff私人订制称号。" , desc_1 = "" , desc_2 = ""}
title_definition['私人订制3'] = {id = 10008 , note = "^fff962【战神降临，平定三国】" , desc = "0^ffffff玩家^ff7d2f竹海子龙^ffffff私人订制称号。" , desc_1 = "" , desc_2 = ""}
title_definition['私人订制4'] = {id = 10009 , note = "^66FFFF【许一世柔情为浅笑】" , desc = "0^ffffff玩家^ff7d2f丿☆堇色素颜`丶^ffffff私人订制称号。" , desc_1 = "" , desc_2 = ""}
title_definition['私人订制5'] = {id = 10010 , note = "^ff0000【战罢沙场月色寒，醉若沉梦桂兰香】" , desc = "0^ffffff玩家^ff7d2f灬婉风若曦灬^ffffff私人订制称号。" , desc_1 = "" , desc_2 = ""}
title_definition['私人订制6'] = {id = 10011 , note = "^ff4ca4【原来是美男啊】" , desc = "0^ffffff玩家^ff7d2fξ天降男神^ffffff私人订制称号。" , desc_1 = "" , desc_2 = ""}
title_definition['赤壁终身成就奖'] = {id = 10012 , note = "^ff4ca4【赤壁百晓生】" , desc = "0^ffffff赤壁终身荣誉贡献奖。\r玩家^ff7d2f单刀战侣布^ffffff专属称号。" , desc_1 = "" , desc_2 = ""}
title_definition['私人订制7'] = {id = 10013 , note = "^fff962【菩提落叶化泥尘·几度轮回几度人】" , desc = "0^ffffff玩家^ff7d2f跳大神的黄半仙^ffffff私人订制称号。" , desc_1 = "" , desc_2 = ""}
title_definition['20151202双12活动1'] = {id = 10014 , note = "^ffc556【三分天下·天关破军】" , desc = "0^ffc556永久生效:\r^ffffff生命值 +1000\r攻击力 +30\r防御力 +10\r刺破 +1\r穿透 +1\r攻击强度 +2%\r暴击附加伤害 +50\r^ffc5562015年英雄令活动专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['20151202双12活动2'] = {id = 10015 , note = "^ffc556【三分天下·玄冥文曲】" , desc = "0^ffc556永久生效:\r^ffffff生命值 +1000\r攻击力 +20\r防御力 +20\r暴击抗性 +2\r法术抗性 +2\r治疗效果 +3%\r强韧 +30\r^ffc5562015年英雄令活动专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['20151202双12活动3'] = {id = 10016 , note = "^ffc556【三分天下·丹元廉贞】" , desc = "0^ffc556永久生效:\r^ffffff生命值 +1000\r攻击力 +30\r防御力 +10\r直接伤害抗性 +1\r间接伤害抗性 +1\r体质 +500\r强韧 +20\r^ffc5562015年英雄令活动专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['2015烟花称号1'] = {id = 10017 , note = "^72fe00【楼兰烟花使童】" , desc = "0^ffc556永久生效:\r^ffffff生命值 +100\r攻击力 +4\r防御力 +2\r^ffc5562015年烟花活动专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['2015烟花称号2'] = {id = 10018 , note = "^0184ff【楼兰烟花使节】" , desc = "0^ffc556永久生效:\r^ffffff生命值 +200\r攻击力 +10\r防御力 +5\r^ffc5562015年烟花活动专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['2015烟花称号3'] = {id = 10019 , note = "^a800ff【楼兰烟花大使】" , desc = "0^ffc556永久生效:\r^ffffff生命值 +500\r攻击力 +20\r防御力 +10\r暴击附加伤害 +25\r^ffc5562015年烟花活动专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['2015烟花称号4'] = {id = 10020 , note = "^fff962【楼兰烟花圣使】" , desc = "0^ffc556永久生效:\r^ffffff生命值 +500\r攻击力 +30\r防御力 +15\r暴击附加伤害 +30\r治疗效果 +1%\r法术抗性 +1\r^ffc5562015年烟花活动专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['2015烟花称号5'] = {id = 10021 , note = "^fff962【楼兰烟花圣使】" , desc = "0^ffc556永久生效:\r^ffffff生命值 +500\r攻击力 +30\r防御力 +15\r暴击附加伤害 +30\r治疗效果 +1%\r法术抗性 +1\r^ffc5562015年烟花活动专属称号！" , desc_1 = "" , desc_2 = ""}
title_definition['2016至尊VIP开年称号'] = {id = 10022 , note = "^fff962【丙申金猴抱新喜，春满大地福满人】" , desc = "^fff962赤壁VIP玩家专属称号" , desc_1 = "" , desc_2 = ""}
title_definition['2025至尊启动称号'] = {id = 20001 , note = "^fff962【赤壁·夺魄之刃】" , desc = "^fff962赤壁玩家专属称号\r^00FFFFQQ交流群：902662692\r^FFFF00生命值+2000\r体质+3000\r攻击+10%\r防御+10%\r攻强+30%\r攻速+10%\r暴击+20\r爆伤+50%\r刺破+20\r穿透+15\r直抗+10\r间抗+10" , desc_1 = "" , desc_2 = ""}

function title_definition:GetTitleDef()
	return self;
end

---title_dir部分为称号分类，
---如果一个{}中前面是字符串，后面是id，表明该为一组次级分类称号 ---如果一个{}中前面是id，后面是字符串，表明该为一个可升级称号

title_dir =
	{
		{
			"赤壁活动",
			20001,
		},
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
				"阵营官职" ,
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
				"仕官",
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
				9927,
				9928,
				9933,
				9934,
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
				9929,
				9930,
				9935,
				9936,
			},
			{
				"吴国",
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
			"官职",
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
				"文官",
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
				"军职",
				4103,
				4102,
				4101,
				4104,
				7288
			}
		},
		{
			"剧情",
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
				"巴蜀硝烟",
				{2304,2303,2302,2301},
				2305,
				2306,
				2307,
				2308,
				2309,
			},
			{
				"南中踏破",
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
				"东海扬波",
				7430,
				7431,
				7432,
				7433,
				7434,
				7435,
			},
			{
				"川南运命",
				7462,
				7463,
				7464,
				7467,
				7468,
				7475,
			}
		},
		{
			"地区",
			{
				"河北",
				3105,
				3106,
				3107,
				3108,
				3109,
				3110,
				{3115,3114,3113,3104,3112,3103,3111,3102,3101},
			},
			{
				"西凉",
				3205,
				3206,
				3207,
				3208,
				3209,
				3210,
				{3215,3214,3213,3204,3212,3203,3211,3202,3201},
			},
			{
				"巴蜀",
				3305,
				3306,
				3307,
				3308,
				3309,
				3310,
				{3315,3314,3313,3304,3312,3303,3311,3302,3301},
			},
			{
				"南蛮",
				3405,
				3406,
				3407,
				3408,
				3409,
				3410,
				{3415,3414,3413,3404,3412,3403,3411,3402,3401},
			},
			{
				"江南",
				3505,
				3506,
				3507,
				3508,
				3509,
				3510,
				{3515,3514,3513,3504,3512,3503,3511,3502,3501},
			},
			{
				"荆襄",
				3605,
				3606,
				3607,
				3608,
				3609,
				3610,
				{3615,3614,3613,3604,3612,3603,3611,3602,3601},
			},
			{
				"关中",
				3705,
				3706,
				3707,
				3708,
				3709,
				3710,
				{3715,3714,3713,3704,3712,3703,3711,3702,3701},
			},
			{
				"川南",
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
			"族系",
			{3009,3008,3007,3006,3005,3004,3003,3002,3001},
			{3019,3018,3017,3016,3015,3014,3013,3012,3011},
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
			"商会",
			7444,
			7445,
			7446,
			7447,
			7448,
		},
		{
			"传奇",
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
			"活动",
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
			"姻缘",
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
    		"排行榜",
    		{
			    "消费积分",
			    7366,
			    7367,
			},
			{
			    "竞技场",
			    9572,
			    9573,
			    9574,
			    9575,
			    9576,
				
			},
			{
        		"仁义值",
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
        		"商会",
        		7449,
				7450,
				7451,
    		},
		},
		{
			"师徒",
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
		"星盘",
			{
				"青龙",
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
				"玄武",
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
				"白虎",
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
				"朱雀",
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
