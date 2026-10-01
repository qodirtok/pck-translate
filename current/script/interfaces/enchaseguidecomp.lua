local PLUN = function (v) return v or true end
--~ local PLUN = loadfile "test/plun.lua" "script/interfaces/EnchaseGuideComp.lua"

local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

local Win_EnchaseGuideComp = DlgTemplate:new({this = "Win_EnchaseGuideComp"})

--秘文表
EnchaseAll = {n=75}
EnchaseAll[0] = {name = "全部" , shortname = "全部" , id = 0,mask = {0}}
EnchaseAll[1] = {name = "^72fe00秘文·心" , shortname = "^72fe00心" , id = 9630,mask = {1,3,5,4,7,12}}
EnchaseAll[2] = {name = "^72fe00秘文·盾" , shortname = "^72fe00盾" , id = 9631,mask = {1,3,5,8,6,12}}
EnchaseAll[3] = {name = "^72fe00秘文·力" , shortname = "^72fe00力" , id = 9632,mask = {1,3,4,8,6}}
EnchaseAll[4] = {name = "^72fe00秘文·秘" , shortname = "^72fe00秘" , id = 9633,mask = {5,4,7,6,12}}
EnchaseAll[5] = {name = "^72fe00秘文·怒" , shortname = "^72fe00怒" , id = 9634,mask = {1,8,7,12}}
EnchaseAll[6] = {name = "^0184ff秘文·灵" , shortname = "^0184ff灵" , id = 9635,mask = {1,3,5,4,7}}
EnchaseAll[7] = {name = "^0184ff秘文·壁" , shortname = "^0184ff壁" , id = 9636,mask = {3,5,8,6}}
EnchaseAll[8] = {name = "^0184ff秘文·斩" , shortname = "^0184ff斩" , id = 9637,mask = {1,3,4,8,6}}
EnchaseAll[9] = {name = "^0184ff秘文·影" , shortname = "^0184ff影" , id = 9638,mask = {5,4,7,6,12}}
EnchaseAll[10] = {name = "^0184ff秘文·豪" , shortname = "^0184ff豪" , id = 9639,mask = {1,3,8,7,6}}
EnchaseAll[11] = {name = "^a800ff秘文·冥" , shortname = "^a800ff冥" , id = 9640,mask = {1,3,5,4,7,6}}
EnchaseAll[12] = {name = "^a800ff秘文·兵" , shortname = "^a800ff兵" , id = 9641,mask = {3,5,8,6}}
EnchaseAll[13] = {name = "^a800ff秘文·斗" , shortname = "^a800ff斗" , id = 9642,mask = {1,3,4,8,6,12}}
EnchaseAll[14] = {name = "^a800ff秘文·闪" , shortname = "^a800ff闪" , id = 9643,mask = {5,4,7,6}}
EnchaseAll[15] = {name = "^a800ff秘文·狂" , shortname = "^a800ff狂" , id = 9644,mask = {1,4,8,7}}
EnchaseAll[16] = {name = "^a800ff秘文·魂" , shortname = "^a800ff魂" , id = 9645,mask = {3,5,6,12}}
--~ EnchaseAll[18] = {name = "^a800ff秘文·轰" , shortname = "^a800ff轰" , id = 25557,mask = {1,3,4,8,6}}
--~ EnchaseAll[19] = {name = "^a800ff秘文·遁" , shortname = "^a800ff遁" , id = 25557,mask = {5,4,7,6}}
--~ EnchaseAll[20] = {name = "^a800ff秘文·霸" , shortname = "^a800ff霸" , id = 25557,mask = {1,8,7}}
--~ EnchaseAll[21] = {name = "^a800ff秘文·地" , shortname = "^a800ff地" , id = 25557,mask = {1,3,5,4,8,7,6}}
--~ EnchaseAll[22] = {name = "^a800ff秘文·天" , shortname = "^a800ff天" , id = 25557,mask = {1,3,5,4,8,7,6}}
EnchaseAll[23] = {name = "^0184ff秘文·忍" , shortname = "^0184ff忍" , id = 54847,mask = {1,3,5,4,7}}
EnchaseAll[24] = {name = "^0184ff秘文·甲" , shortname = "^0184ff甲" , id = 54848,mask = {3,5,8,6}}
EnchaseAll[25] = {name = "^0184ff秘文·罗" , shortname = "^0184ff罗" , id = 54849,mask = {1,3,4,8,6}}
EnchaseAll[26] = {name = "^0184ff秘文·刑" , shortname = "^0184ff刑" , id = 54850,mask = {5,4,7,6,12}}
EnchaseAll[27] = {name = "^0184ff秘文·羲" , shortname = "^0184ff羲" , id = 54851,mask = {1,3,8,7,6}}
EnchaseAll[28] = {name = "^a800ff秘文·泽" , shortname = "^a800ff泽" , id = 54852,mask = {1,3,5,4,7,6}}
EnchaseAll[29] = {name = "^a800ff秘文·刹" , shortname = "^a800ff刹" , id = 54853,mask = {3,5,8,6}}
EnchaseAll[30] = {name = "^a800ff秘文·灭" , shortname = "^a800ff灭" , id = 54854,mask = {1,3,4,8,6,12}}
EnchaseAll[31] = {name = "^a800ff秘文·岩" , shortname = "^a800ff岩" , id = 56729,mask = {5,4,7,6}}
EnchaseAll[32] = {name = "^a800ff秘文·御" , shortname = "^a800ff御" , id = 56730,mask = {1,4,8,7}}
EnchaseAll[33] = {name = "^a800ff秘文·山" , shortname = "^a800ff山" , id = 9646,mask = {3,5,6,12}}
EnchaseAll[34] = {name = "^72fe00秘文·心(专属)" , shortname = "^72fe00心" , id = 25556,mask = {1,3,5,4,7,12}}
EnchaseAll[35] = {name = "^72fe00秘文·盾(专属)" , shortname = "^72fe00盾" , id = 25557,mask = {1,3,5,8,6,12}}
EnchaseAll[36] = {name = "^72fe00秘文·力(专属)" , shortname = "^72fe00力" , id = 25558,mask = {1,3,4,8,6}}
EnchaseAll[37] = {name = "^72fe00秘文·秘(专属)" , shortname = "^72fe00秘" , id = 25559,mask = {5,4,7,6,12}}
EnchaseAll[38] = {name = "^72fe00秘文·怒(专属)" , shortname = "^72fe00怒" , id = 25560,mask = {1,8,7,12}}
EnchaseAll[39] = {name = "^0184ff秘文·灵(专属)" , shortname = "^0184ff灵" , id = 25561,mask = {1,3,5,4,7}}
EnchaseAll[40] = {name = "^0184ff秘文·壁(专属)" , shortname = "^0184ff壁" , id = 25562,mask = {3,5,8,6}}
EnchaseAll[41] = {name = "^0184ff秘文·斩(专属)" , shortname = "^0184ff斩" , id = 25563,mask = {1,3,4,8,6}}
EnchaseAll[42] = {name = "^0184ff秘文·影(专属)" , shortname = "^0184ff影" , id = 25564,mask = {5,4,7,6,12}}
EnchaseAll[43] = {name = "^0184ff秘文·豪(专属)" , shortname = "^0184ff豪" , id = 25565,mask = {1,3,8,7,6}}
EnchaseAll[44] = {name = "^a800ff秘文·冥(专属)" , shortname = "^a800ff冥" , id = 25566,mask = {1,3,5,4,7,6}}
EnchaseAll[45] = {name = "^a800ff秘文·兵(专属)" , shortname = "^a800ff兵" , id = 25567,mask = {3,5,8,6}}
EnchaseAll[46] = {name = "^a800ff秘文·斗(专属)" , shortname = "^a800ff斗" , id = 25568,mask = {1,3,4,8,6,12}}
EnchaseAll[47] = {name = "^a800ff秘文·闪(专属)" , shortname = "^a800ff闪" , id = 25569,mask = {5,4,7,6}}
EnchaseAll[48] = {name = "^a800ff秘文·狂(专属)" , shortname = "^a800ff狂" , id = 25570,mask = {1,4,8,7}}
EnchaseAll[49] = {name = "^a800ff秘文·魂(专属)" , shortname = "^a800ff魂" , id = 25571,mask = {3,5,6,12}}
--~ EnchaseAll[50] = {name = "^a800ff秘文·轰" , shortname = "^a800ff轰" , id = 25557,mask = {1,3,4,8,6}}
--~ EnchaseAll[51] = {name = "^a800ff秘文·遁" , shortname = "^a800ff遁" , id = 25557,mask = {5,4,7,6}}
--~ EnchaseAll[52] = {name = "^a800ff秘文·霸" , shortname = "^a800ff霸" , id = 25557,mask = {1,8,7}}
--~ EnchaseAll[53] = {name = "^a800ff秘文·地" , shortname = "^a800ff地" , id = 25557,mask = {1,3,5,4,8,7,6}}
--~ EnchaseAll[54] = {name = "^a800ff秘文·天" , shortname = "^a800ff天" , id = 25557,mask = {1,3,5,4,8,7,6}}
EnchaseAll[55] = {name = "^0184ff秘文·忍(专属)" , shortname = "^0184ff忍" , id = 63724,mask = {1,3,5,4,7}}
EnchaseAll[56] = {name = "^0184ff秘文·甲(专属)" , shortname = "^0184ff甲" , id = 63725,mask = {3,5,8,6}}
EnchaseAll[57] = {name = "^0184ff秘文·罗(专属)" , shortname = "^0184ff罗" , id = 63726,mask = {1,3,4,8,6}}
EnchaseAll[58] = {name = "^0184ff秘文·刑(专属)" , shortname = "^0184ff刑" , id = 63727,mask = {5,4,7,6,12}}
EnchaseAll[59] = {name = "^0184ff秘文·羲(专属)" , shortname = "^0184ff羲" , id = 63728,mask = {1,3,8,7,6}}
EnchaseAll[60] = {name = "^a800ff秘文·泽(专属)" , shortname = "^a800ff泽" , id = 63729,mask = {1,3,5,4,7,6}}
EnchaseAll[61] = {name = "^a800ff秘文·刹(专属)" , shortname = "^a800ff刹" , id = 63730,mask = {3,5,8,6}}
EnchaseAll[62] = {name = "^a800ff秘文·灭(专属)" , shortname = "^a800ff灭" , id = 63731,mask = {1,3,4,8,6,12}}
EnchaseAll[63] = {name = "^a800ff秘文·岩(专属)" , shortname = "^a800ff岩" , id = 63732,mask = {5,4,7,6}}
EnchaseAll[64] = {name = "^a800ff秘文·御(专属)" , shortname = "^a800ff御" , id = 63733,mask = {1,4,8,7}}
EnchaseAll[65] = {name = "^a800ff秘文·山(专属)" , shortname = "^a800ff山" , id = 25572,mask = {3,5,6,12}}
EnchaseAll[66] = {name = "^ff7d2f秘文·春莺啭" , shortname = "^ff7d2f春莺啭" , id = 76664,mask = {14}}
EnchaseAll[67] = {name = "^ff7d2f秘文·碧波旋" , shortname = "^ff7d2f碧波旋" , id = 76665,mask = {14}}
EnchaseAll[68] = {name = "^ff7d2f秘文·彩蝶飞" , shortname = "^ff7d2f彩蝶飞" , id = 76666,mask = {14}}
EnchaseAll[69] = {name = "^ff7d2f秘文·雪莲散" , shortname = "^ff7d2f雪莲散" , id = 76667,mask = {14}}
EnchaseAll[70] = {name = "^ff7d2f秘文·破阵舞" , shortname = "^ff7d2f破阵舞" , id = 76668,mask = {14}}
EnchaseAll[71] = {name = "^ff7d2f秘文·春莺啭(专属)" , shortname = "^ff7d2f春莺啭(专属)" , id = 79722,mask = {14}}
EnchaseAll[72] = {name = "^ff7d2f秘文·碧波旋(专属)" , shortname = "^ff7d2f碧波旋(专属)" , id = 79723,mask = {14}}
EnchaseAll[73] = {name = "^ff7d2f秘文·彩蝶飞(专属)" , shortname = "^ff7d2f彩蝶飞(专属)" , id = 79724,mask = {14}}
EnchaseAll[74] = {name = "^ff7d2f秘文·雪莲散(专属)" , shortname = "^ff7d2f雪莲散(专属)" , id = 79725,mask = {14}}
EnchaseAll[75] = {name = "^ff7d2f秘文·破阵舞(专属)" , shortname = "^ff7d2f破阵舞(专属)" , id = 79726,mask = {14}}
--可装部位
local EnchaseParts = "NSCRWPFH" --1,兵器weapoN 2,肩部Shoulder 3,上衣Chest 4,腕部wRist 5,腰部Waist 6,裤子Pants 7,足部Foot 8,马鞭Horsewhip
local EnchasePartsString = {"兵器","肩部","上衣","腕部","腰部","裤子","足部","马鞭"}

--秘咒表
EnchaseComp = {}
EnchaseComp[1] ={name = "秘咒·阴阳", parts = ".S..WP.H", e1 =4, e2 = 4, e3 = 1, e4 = 37, e5 = 37, e6 = 34, effect = "生命值+30 体力值+10 攻击力+5"}
EnchaseComp[2] ={name = "秘咒·日月", parts = "N..R....", e1 =5, e2 = 3, e3 = 2, e4 = 38, e5 = 36, e6 = 35, effect = "生命值+40 攻击力+7 命中+1"}
EnchaseComp[3] ={name = "秘咒·伏魔", parts = ".....P..", e1 =6, e2 = 4, e3 = 2, e4 = 39, e5 = 37, e6 = 35, effect = "生命值+50 防御力+3 体力值+5"}
EnchaseComp[4] ={name = "秘咒·连云", parts = ".S......", e1 =6, e2 = 4, e3 = 3, e4 = 39, e5 = 37, e6 = 36, effect = "生命值+70 体力值+10 攻击力+7"}
EnchaseComp[5] ={name = "秘咒·霸王", parts = "N.......", e1 =6, e2 = 5, e3 = 3, e4 = 39, e5 = 38, e6 = 36, effect = "攻击力+10 命中+2 生命值+1%"}
EnchaseComp[6] ={name = "秘咒·天刑", parts = "....W...", e1 =6, e2 = 5, e3 = 4, e4 = 39, e5 = 38, e6 = 37, effect = "生命值+30 体力值+20 攻击力+10"}
EnchaseComp[7] ={name = "秘咒·九凤", parts = "......F.", e1 =7, e2 = 4, e3 = 3, e4 = 40, e5 = 37, e6 = 36, effect = "攻击力+5 直接伤害抗性+2 间接伤害抗性+2"}
EnchaseComp[8] ={name = "秘咒·奇门", parts = "..C..P..", e1 =7, e2 = 6, e3 = 2, e4 = 40, e5 = 39, e6 = 35, effect = "生命值+100 防御力+5 直接伤害抗性+2"}
EnchaseComp[9] ={name = "秘咒·天魔", parts = ".....P..", e1 =23, e2 = 4, e3 = 2, e4 = 55, e5 = 37, e6 = 35, effect = "生命值+50 防御力+3 体力值+5 体质+100"}
EnchaseComp[10] ={name = "秘咒·纯阳", parts = "N.......", e1 =8, e2 = 5, e3 = 1, e4 = 41, e5 = 38, e6 = 34, effect = "攻击力+10 命中+2 治疗效果+5%"}
EnchaseComp[11] ={name = "秘咒·红丝", parts = ".S......", e1 =23, e2 = 4, e3 = 3, e4 = 55, e5 = 37, e6 = 36, effect = "生命值+70 体力值+10 体质+100 攻击力+7"}
EnchaseComp[12] ={name = "秘咒·七修", parts = "N.......", e1 =23, e2 = 5, e3 = 3, e4 = 55, e5 = 38, e6 = 36, effect = "命中+2 生命值+1% 体质+100 攻击力+10"}
EnchaseComp[13] ={name = "秘咒·天辛", parts = "....W...", e1 =23, e2 = 5, e3 = 4, e4 = 55, e5 = 38, e6 = 37, effect = "生命值+30 体力值+20 体质+100 攻击力+10"}
EnchaseComp[14] ={name = "秘咒·太乙", parts = "N..R....", e1 =8, e2 = 5, e3 = 3, e4 = 41, e5 = 38, e6 = 36, effect = "附加伤害+10 暴击+1 生命值+1%"}
EnchaseComp[15] ={name = "秘咒·聚奎", parts = "......F.", e1 =24, e2 = 4, e3 = 3, e4 = 56, e5 = 37, e6 = 36, effect = "直接伤害抗性+2 间接伤害抗性+2 防御力+10 攻击力+5"}
EnchaseComp[16] ={name = "秘咒·青牛", parts = "..C..P..", e1 =24, e2 = 6, e3 = 2, e4 = 56, e5 = 39, e6 = 35, effect = "生命值+100 防御力+15 直接伤害抗性+2"}
EnchaseComp[17] ={name = "秘咒·摩柯", parts = "....W..H", e1 =9, e2 = 5, e3 = 4, e4 = 42, e5 = 38, e6 = 37, effect = "体力值+30 附加伤害+15 暴击伤害+5%"}
EnchaseComp[18] ={name = "秘咒·落英", parts = ".S......", e1 =9, e2 = 6, e3 = 3, e4 = 42, e5 = 39, e6 = 36, effect = "生命值+3% 生命恢复速度+2 附加伤害+10"}
EnchaseComp[19] ={name = "秘咒·六合", parts = ".....PF.", e1 =9, e2 = 7, e3 = 2, e4 = 42, e5 = 40, e6 = 35, effect = "生命值+3% 直接伤害抗性+5 间接伤害抗性+5"}
EnchaseComp[20] ={name = "秘咒·神婴", parts = "N.......", e1 =25, e2 = 5, e3 = 1, e4 = 57, e5 = 38, e6 = 34, effect = "命中+2 治疗效果+5% 治疗点数+20 攻击力+10"}
EnchaseComp[21] ={name = "秘咒·南明", parts = "N..R....", e1 =25, e2 = 5, e3 = 3, e4 = 57, e5 = 38, e6 = 36, effect = "附加伤害+10 暴击+1 生命值+1% 暴击附加伤害+10"}
EnchaseComp[22] ={name = "秘咒·无相", parts = "...R....", e1 =10, e2 = 7, e3 = 5, e4 = 43, e5 = 40, e6 = 38, effect = "体力值+50 命中+2 生命值+2%"}
EnchaseComp[23] ={name = "秘咒·般若", parts = "N.C.....", e1 =10, e2 = 8, e3 = 6, e4 = 43, e5 = 41, e6 = 39, effect = "攻击力+15 攻击强度+2% 生命值+2%"}
EnchaseComp[24] ={name = "秘咒·无量", parts = "....W..H", e1 =26, e2 = 5, e3 = 4, e4 = 58, e5 = 38, e6 = 37, effect = "体力值+30 附加伤害+15 暴击伤害+5% 暴击附加伤害+20"}
EnchaseComp[25] ={name = "秘咒·虹霓", parts = ".S......", e1 =26, e2 = 6, e3 = 3, e4 = 58, e5 = 39, e6 = 36, effect = "生命值+3% 生命恢复速度+2 附加伤害+10 体质+200"}
EnchaseComp[26] ={name = "秘咒·霜谭", parts = ".....PF.", e1 =26, e2 = 7, e3 = 2, e4 = 58, e5 = 40, e6 = 35, effect = "生命值+3% 直接伤害抗性+5 间接伤害抗性+5 体质+200"}
EnchaseComp[27] ={name = "秘咒·幻丝", parts = ".S......", e1 =26, e2 = 23, e3 = 3, e4 = 58, e5 = 55, e6 = 36, effect = "生命值+3% 生命恢复速度+2 附加伤害+20 体质+200"}
EnchaseComp[28] ={name = "秘咒·龙象", parts = ".S..WP..", e1 =11, e2 = 6, e3 = 4, e4 = 44, e5 = 39, e6 = 37, effect = "生命值+200 附加伤害+15 体力恢复速度+1"}
EnchaseComp[29] ={name = "秘咒·雾冰", parts = ".....PF.", e1 =26, e2 = 24, e3 = 2, e4 = 58, e5 = 56, e6 = 35, effect = "生命值+3% 直接伤害抗性+6 间接伤害抗性+5 体质+200"}
EnchaseComp[30] ={name = "秘咒·玉女", parts = "N.......", e1 =11, e2 = 8, e3 = 5, e4 = 44, e5 = 41, e6 = 38, effect = "体力值+20 治疗效果+8% 生命值+2%"}
EnchaseComp[31] ={name = "秘咒·青蛇", parts = "N.......", e1 =11, e2 = 25, e3 = 5, e4 = 44, e5 = 57, e6 = 38, effect = "体力值+20 治疗效果+8% 生命值+2% 治疗点数+20"}
EnchaseComp[32] ={name = "秘咒·离火", parts = "N.C...F.", e1 =11, e2 = 10, e3 = 8, e4 = 44, e5 = 43, e6 = 41, effect = "攻击力+25 攻击强度+4% 限制抗性+5"}
EnchaseComp[33] ={name = "秘咒·三元", parts = "...R....", e1 =27, e2 = 7, e3 = 5, e4 = 59, e5 = 40, e6 = 38, effect = "体力值+50 命中+2 生命值+2% 防御力+15"}
EnchaseComp[34] ={name = "秘咒·少阳", parts = "N.C.....", e1 =27, e2 = 8, e3 = 6, e4 = 59, e5 = 41, e6 = 39, effect = "攻击强度+2% 生命值+2% 防御力+15 攻击力+15"}
EnchaseComp[35] ={name = "秘咒·夜叉", parts = "N...W...", e1 =11, e2 = 11, e3 = 5, e4 = 44, e5 = 44, e6 = 38, effect = "攻击强度+3% 生命恢复速度+5 附加伤害+15"}
EnchaseComp[36] ={name = "秘咒·四圣", parts = "...R....", e1 =27, e2 = 24, e3 = 5, e4 = 59, e5 = 56, e6 = 38, effect = "体力值+50 命中+2 生命值+2% 防御力+20"}
EnchaseComp[37] ={name = "秘咒·中兴", parts = "N.C.....", e1 =27, e2 = 25, e3 = 23, e4 = 59, e5 = 57, e6 = 55, effect = "攻击强度+2% 生命值+2% 防御力+20 攻击力+20 暴击附加伤害+10"}
EnchaseComp[38] ={name = "秘咒·鹰蛇", parts = "...R....", e1 =12, e2 = 5, e3 = 5, e4 = 45, e5 = 38, e6 = 38, effect = "体力值+30 附加伤害+15 生命值+3%"}
EnchaseComp[39] ={name = "秘咒·八卦", parts = ".....P..", e1 =12, e2 = 9, e3 = 1, e4 = 45, e5 = 42, e6 = 34, effect = "体力值+34 生命值+5% 间接伤害抗性+10"}
EnchaseComp[40] ={name = "秘咒·青罡", parts = "N.C...F.", e1 =11, e2 = 27, e3 = 8, e4 = 44, e5 = 59, e6 = 41, effect = "攻击强度+4% 限制抗性+5 暴击附加伤害+30 攻击力+25"}
EnchaseComp[41] ={name = "秘咒·金乌", parts = ".S..WP..", e1 =28, e2 = 23, e3 = 4, e4 = 60, e5 = 55, e6 = 37, effect = "生命值+200 附加伤害+15 体力恢复速度+1 体质+300"}
EnchaseComp[42] ={name = "秘咒·绛雪", parts = "N.......", e1 =28, e2 = 25, e3 = 5, e4 = 60, e5 = 57, e6 = 38, effect = "体力值+40 治疗效果+8% 生命值+3% 治疗点数+80"}
EnchaseComp[43] ={name = "秘咒·地煞", parts = "N..R...H", e1 =13, e2 = 5, e3 = 2, e4 = 46, e5 = 38, e6 = 35, effect = "体力值+50 攻击强度+3% 暴击+2"}
EnchaseComp[44] ={name = "秘咒·金光", parts = ".S......", e1 =13, e2 = 6, e3 = 4, e4 = 46, e5 = 39, e6 = 37, effect = "攻击力+30 暴击+5 生命值+2%"}
EnchaseComp[45] ={name = "秘咒·璎珞", parts = ".S......", e1 =13, e2 = 23, e3 = 4, e4 = 46, e5 = 55, e6 = 37, effect = "攻击力+30 暴击+5 生命值+2% 治疗点数+10"}
EnchaseComp[46] ={name = "秘咒·丧门", parts = "N...W...", e1 =28, e2 = 11, e3 = 5, e4 = 60, e5 = 44, e6 = 38, effect = "攻击强度+3% 生命恢复速度+5 附加伤害+15 暴击附加伤害+40"}
EnchaseComp[47] ={name = "秘咒·天羽", parts = "N.......", e1 =13, e2 = 11, e3 = 5, e4 = 46, e5 = 44, e6 = 38, effect = "攻击力+40 治疗效果+12% 生命值+2%"}
EnchaseComp[48] ={name = "秘咒·玄霜", parts = "N.C...F.", e1 =28, e2 = 27, e3 = 8, e4 = 60, e5 = 59, e6 = 41, effect = "攻击强度+4% 限制抗性+5 暴击附加伤害+40 攻击力+35"}
EnchaseComp[49] ={name = "秘咒·见性", parts = "N.C...F.", e1 =28, e2 = 27, e3 = 25, e4 = 60, e5 = 59, e6 = 57, effect = "攻击强度+4% 限制抗性+5 治疗效果+2% 攻击力+35"}
EnchaseComp[50] ={name = "秘咒·佛门", parts = "..C..P..", e1 =12, e2 = 28, e3 = 1, e4 = 45, e5 = 60, e6 = 34, effect = "体力值+34 生命值+5% 间接伤害抗性+10 刺破+1"}
EnchaseComp[51] ={name = "秘咒·乾坤", parts = "N.C...F.", e1 =13, e2 = 11, e3 = 10, e4 = 46, e5 = 44, e6 = 43, effect = "攻击力+40 攻击强度+5% 生命值+5%"}
EnchaseComp[52] ={name = "秘咒·锁心", parts = "...R....", e1 =13, e2 = 12, e3 = 5, e4 = 46, e5 = 45, e6 = 38, effect = "攻击力+30 暴击+2 生命值+3%"}
EnchaseComp[53] ={name = "秘咒·万魔", parts = "N...W...", e1 =28, e2 = 28, e3 = 5, e4 = 60, e5 = 60, e6 = 38, effect = "攻击强度+3% 生命恢复速度+5 附加伤害+15 暴击附加伤害+40 体质+200"}
EnchaseComp[54] ={name = "秘咒·玄英", parts = "N.......", e1 =13, e2 = 28, e3 = 5, e4 = 46, e5 = 60, e6 = 38, effect = "治疗效果+12% 生命值+2% 治疗点数+40 攻击力+40"}
EnchaseComp[55] ={name = "秘咒·九宫", parts = "N.C...F.", e1 =13, e2 = 28, e3 = 10, e4 = 46, e5 = 60, e6 = 43, effect = "攻击强度+5% 生命值+5% 暴击附加伤害+40 攻击力+40"}
EnchaseComp[56] ={name = "秘咒·霜蛟", parts = "...R....", e1 =29, e2 = 5, e3 = 5, e4 = 61, e5 = 38, e6 = 38, effect = "体力值+30 附加伤害+15 生命值+3% 体质+450"}
EnchaseComp[57] ={name = "秘咒·天琴", parts = "....W...", e1 =14, e2 = 9, e3 = 5, e4 = 47, e5 = 42, e6 = 38, effect = "攻击强度+5% 体力恢复速度+1 附加伤害+30"}
EnchaseComp[58] ={name = "秘咒·天罡", parts = ".....PF.", e1 =14, e2 = 9, e3 = 7, e4 = 47, e5 = 42, e6 = 40, effect = "生命值+8% 速度+0.1米/秒 直接伤害抗性+12"}
EnchaseComp[59] ={name = "秘咒·天音", parts = "....W...", e1 =14, e2 = 26, e3 = 5, e4 = 47, e5 = 58, e6 = 38, effect = "攻击强度+5% 体力恢复速度+1 附加伤害+30 暴击附加伤害+20"}
EnchaseComp[60] ={name = "秘咒·乾明", parts = ".....PF.", e1 =14, e2 = 26, e3 = 7, e4 = 47, e5 = 58, e6 = 40, effect = "生命值+8% 速度+0.1米/秒 直接伤害抗性+12 暴击附加伤害+20"}
EnchaseComp[61] ={name = "秘咒·紫郢", parts = "..C..P..", e1 =29, e2 = 28, e3 = 1, e4 = 61, e5 = 60, e6 = 34, effect = "体力值+34 生命值+5% 间接伤害抗性+10 刺破+3"}
EnchaseComp[62] ={name = "秘咒·修罗", parts = ".....PF.", e1 =14, e2 = 12, e3 = 11, e4 = 47, e5 = 45, e6 = 44, effect = "攻击强度+8% 暴击抗性+5 生命值+8%"}
EnchaseComp[63] ={name = "秘咒·摄魂", parts = "...R....", e1 =13, e2 = 29, e3 = 5, e4 = 46, e5 = 61, e6 = 38, effect = "暴击+2 生命值+3% 暴击附加伤害+50 攻击力+30"}
EnchaseComp[64] ={name = "秘咒·龙雀", parts = ".S......", e1 =14, e2 = 13, e3 = 6, e4 = 47, e5 = 46, e6 = 39, effect = "攻击力+35 生命值+5% 暴击伤害+5%"}
EnchaseComp[65] ={name = "秘咒·天龙", parts = "N..R...H", e1 =30, e2 = 5, e3 = 2, e4 = 62, e5 = 38, e6 = 35, effect = "体力值+50 攻击强度+3% 暴击+2 暴击附加伤害+60"}
EnchaseComp[66] ={name = "秘咒·雷泽", parts = ".....PF.", e1 =14, e2 = 29, e3 = 11, e4 = 47, e5 = 61, e6 = 44, effect = "攻击强度+8% 暴击抗性+5 生命值+8% 体质+450"}
EnchaseComp[67] ={name = "秘咒·玉虎", parts = ".S......", e1 =30, e2 = 23, e3 = 4, e4 = 62, e5 = 55, e6 = 37, effect = "暴击+5 生命值+2% 暴击附加伤害+60 攻击力+40"}
EnchaseComp[68] ={name = "秘咒·金蟾", parts = "N.......", e1 =30, e2 = 28, e3 = 5, e4 = 62, e5 = 60, e6 = 38, effect = "治疗效果+12% 生命值+4% 治疗点数+150 攻击力+40 体质+300"}
EnchaseComp[69] ={name = "秘咒·无形", parts = "N.C...F.", e1 =30, e2 = 28, e3 = 10, e4 = 62, e5 = 60, e6 = 43, effect = "攻击强度+5% 生命值+5% 暴击附加伤害+60 攻击力+55"}
EnchaseComp[70] ={name = "秘咒·五禽", parts = "N.......", e1 =15, e2 = 2, e3 = 1, e4 = 48, e5 = 35, e6 = 34, effect = "攻击强度+5% 治疗效果+20% 生命值+3%"}
EnchaseComp[71] ={name = "秘咒·九转", parts = "N...W...", e1 =15, e2 = 10, e3 = 1, e4 = 48, e5 = 43, e6 = 34, effect = "攻击强度+8% 暴击+5 速度+0.1米/秒"}
EnchaseComp[72] ={name = "秘咒·葵花", parts = "N.......", e1 =15, e2 = 11, e3 = 2, e4 = 48, e5 = 44, e6 = 35, effect = "体力值+50 附加伤害+50 吟唱速度+5%"}
EnchaseComp[73] ={name = "秘咒·定慧", parts = "N.C...F.", e1 =30, e2 = 28, e3 = 27, e4 = 62, e5 = 60, e6 = 59, effect = "攻击强度+5% 攻击力+55 生命值+5% 治疗效果+4% 治疗点数+20"}
EnchaseComp[74] ={name = "秘咒·不死", parts = "N...W...", e1 =15, e2 = 27, e3 = 1, e4 = 48, e5 = 59, e6 = 34, effect = "攻击强度+8% 暴击+5 速度+0.1米/秒 暴击附加伤害+30"}
EnchaseComp[75] ={name = "秘咒·太极", parts = "...R....", e1 =15, e2 = 12, e3 = 8, e4 = 48, e5 = 45, e6 = 41, effect = "攻击力+50 暴击伤害+10% 生命值+8%"}
EnchaseComp[76] ={name = "秘咒·冰魄", parts = "N.......", e1 =15, e2 = 28, e3 = 2, e4 = 48, e5 = 60, e6 = 35, effect = "体力值+50 附加伤害+50 吟唱速度+5% 暴击附加伤害+40"}
EnchaseComp[77] ={name = "秘咒·夜明", parts = ".......H", e1 =16, e2 = 13, e3 = 5, e4 = 49, e5 = 46, e6 = 38, effect = "附加伤害+30 攻击力+40 暴击+3"}
EnchaseComp[78] ={name = "秘咒·断玉", parts = "..C.....", e1 =16, e2 = 13, e3 = 6, e4 = 49, e5 = 46, e6 = 39, effect = "攻击力+50 受伤抗性+10 生命值+8%"}
EnchaseComp[79] ={name = "秘咒·如心", parts = "...R....", e1 =30, e2 = 29, e3 = 5, e4 = 62, e5 = 61, e6 = 38, effect = "暴击+2 生命值+3% 暴击附加伤害+70 攻击力+30 体质+200"}
EnchaseComp[80] ={name = "秘咒·赤苏", parts = ".S......", e1 =14, e2 = 30, e3 = 6, e4 = 47, e5 = 62, e6 = 39, effect = "生命值+5% 暴击伤害+5% 刺破+3 攻击力+35"}
EnchaseComp[81] ={name = "秘咒·两仪", parts = "...R....", e1 =15, e2 = 29, e3 = 8, e4 = 48, e5 = 61, e6 = 41, effect = "暴击伤害+10% 生命值+8% 暴击附加伤害+50 攻击力+50"}
EnchaseComp[82] ={name = "秘咒·九天", parts = ".....P..", e1 =16, e2 = 14, e3 = 1, e4 = 49, e5 = 47, e6 = 34, effect = "攻击力+60 生命值+10% 间接伤害抗性+10"}
EnchaseComp[83] ={name = "秘咒·昆吾", parts = ".S......", e1 =15, e2 = 14, e3 = 8, e4 = 48, e5 = 47, e6 = 41, effect = "生命值+10% 体力恢复速度+1 附加伤害+50"}
EnchaseComp[84] ={name = "秘咒·开山", parts = "....W...", e1 =15, e2 = 14, e3 = 10, e4 = 48, e5 = 47, e6 = 43, effect = "攻击力+50 附加伤害+20 暴击+5"}
EnchaseComp[85] ={name = "秘咒·凝海", parts = "....W...", e1 =15, e2 = 14, e3 = 27, e4 = 48, e5 = 47, e6 = 59, effect = "附加伤害+20 暴击+5 暴击附加伤害+30 攻击力+50"}
EnchaseComp[86] ={name = "秘咒·混沌", parts = "......F.", e1 =16, e2 = 14, e3 = 13, e4 = 49, e5 = 47, e6 = 46, effect = "攻击力+60 直接伤害抗性+12 生命值+10%"}
EnchaseComp[87] ={name = "秘咒·玄天", parts = ".S......", e1 =15, e2 = 14, e3 = 13, e4 = 48, e5 = 47, e6 = 46, effect = "命中+20 暴击+12 生命值+10%"}
EnchaseComp[88] ={name = "秘咒·青冥", parts = ".......H", e1 =16, e2 = 30, e3 = 5, e4 = 49, e5 = 62, e6 = 38, effect = "附加伤害+30 暴击+3 暴击附加伤害+60 攻击力+40"}
EnchaseComp[89] ={name = "秘咒·璇光", parts = "..C.....", e1 =16, e2 = 30, e3 = 23, e4 = 49, e5 = 62, e6 = 55, effect = "受伤抗性+10 生命值+8% 刺破+3 攻击力+50 体质+200"}
EnchaseComp[90] ={name = "秘咒·旃檀", parts = "....W...", e1 =31, e2 = 26, e3 = 5, e4 = 63, e5 = 58, e6 = 38, effect = "攻击强度+5% 体力恢复速度+1 附加伤害+30 暴击附加伤害+70 体质+400"}
EnchaseComp[91] ={name = "秘咒·雷音", parts = ".....PF.", e1 =31, e2 = 26, e3 = 7, e4 = 63, e5 = 58, e6 = 40, effect = "生命值+8% 速度+0.1米/秒 直接伤害抗性+12 暴击附加伤害+70 体质+400"}
EnchaseComp[92] ={name = "秘咒·阿罗", parts = ".....PF.", e1 =31, e2 = 26, e3 = 24, e4 = 63, e5 = 58, e6 = 56, effect = "生命值+8% 速度+0.1米/秒 直接伤害抗性+12 治疗点数+20 体质+800"}
EnchaseComp[93] ={name = "秘咒·破颜", parts = ".......H", e1 =16, e2 = 16, e3 = 5, e4 = 49, e5 = 49, e6 = 38, effect = "体力值+50 攻击力+40 生命值+4% 治疗点数+30"}
EnchaseComp[94] ={name = "秘咒·降龙", parts = "...R....", e1 =15, e2 = 15, e3 = 12, e4 = 48, e5 = 48, e6 = 45, effect = "攻击力+60 暴击伤害+6% 附加伤害+60"}
EnchaseComp[95] ={name = "秘咒·追魂", parts = ".....PF.", e1 =31, e2 = 29, e3 = 11, e4 = 63, e5 = 61, e6 = 44, effect = "攻击强度+8% 暴击抗性+8 生命值+8% 体质+450"}
EnchaseComp[96] ={name = "秘咒·须弥", parts = "......F.", e1 =16, e2 = 14, e3 = 30, e4 = 49, e5 = 47, e6 = 62, effect = "直接伤害抗性+12 生命值+10% 体质+600 攻击力+60"}
EnchaseComp[97] ={name = "秘咒·皇天", parts = ".S......", e1 =15, e2 = 14, e3 = 30, e4 = 48, e5 = 47, e6 = 62, effect = "命中+20 暴击+12 生命值+10% 攻击力+30"}
EnchaseComp[98] ={name = "秘咒·拈花", parts = ".....PF.", e1 =31, e2 = 29, e3 = 28, e4 = 63, e5 = 61, e6 = 60, effect = "攻击强度+8% 暴击抗性+8 生命值+8% 体质+500 治疗点数+20"}
EnchaseComp[99] ={name = "秘咒·弑神", parts = "...R....", e1 =15, e2 = 15, e3 = 29, e4 = 48, e5 = 48, e6 = 61, effect = "暴击伤害+6% 附加伤害+60 暴击附加伤害+50 攻击力+60"}
EnchaseComp[100] ={name = "秘咒·神光",parts = ".S......", e1 =31, e2 = 30, e3 = 6, e4 = 63, e5 = 62, e6 = 39, effect = "生命值+5% 暴击伤害+5% 刺破+5 攻击力+65"}
EnchaseComp[101] ={name = "秘咒·九子",parts = ".....P..", e1 =16, e2 = 31, e3 = 1, e4 = 49, e5 = 63, e6 = 34, effect = "生命值+10% 间接伤害抗性+10 刺破+5 攻击力+60"}
EnchaseComp[102] ={name = "秘咒·昆仑",parts = ".S......", e1 =15, e2 = 31, e3 = 8, e4 = 48, e5 = 63, e6 = 41, effect = "生命值+10% 体力恢复速度+1 附加伤害+50 穿透+2"}
EnchaseComp[103] ={name = "秘咒·辟地",parts = "....W...", e1 =15, e2 = 31, e3 = 27, e4 = 48, e5 = 63, e6 = 59, effect = "附加伤害+20 暴击+5 暴击附加伤害+70 攻击力+70"}
EnchaseComp[104] ={name = "秘咒·须陀",parts = "....W...", e1 =31, e2 = 31, e3 = 5, e4 = 63, e5 = 63, e6 = 38, effect = "附加伤害+20 暴击+5 暴击附加伤害+70 攻击力+75 治疗点数+10"}
EnchaseComp[105] ={name = "秘咒·盘古",parts = "......F.", e1 =16, e2 = 31, e3 = 30, e4 = 49, e5 = 63, e6 = 62, effect = "直接伤害抗性+12 生命值+10% 体质+600 攻击力+60 刺破+5"}
EnchaseComp[106] ={name = "秘咒·九幽",parts = ".S......", e1 =15, e2 = 31, e3 = 30, e4 = 48, e5 = 63, e6 = 62, effect = "命中+20 暴击+12 生命值+10% 攻击力+60 穿透+2"}
EnchaseComp[107] ={name = "秘咒·玄龟",parts = "N.......", e1 =32, e2 = 2, e3 = 1, e4 = 64, e5 = 35, e6 = 34, effect = "秘攻击强度+5% 治疗效果+20% 生命值+6% 治疗点数+240"}
EnchaseComp[108] ={name = "秘咒·玄都",parts = "N...W...", e1 =32, e2 = 27, e3 = 1, e4 = 64, e5 = 59, e6 = 34, effect = "攻击强度+8% 暴击+5 速度+0.1米/秒 暴击附加伤害+80 攻击力+25"}
EnchaseComp[109] ={name = "秘咒·天象",parts = "N.......", e1 =32, e2 = 28, e3 = 2, e4 = 64, e5 = 60, e6 = 35, effect = "体力值+50 附加伤害+50 吟唱速度+5% 暴击附加伤害+80 暴击+3"}
EnchaseComp[110] ={name = "秘咒·五方",parts = "...R....", e1 =32, e2 = 29, e3 = 8, e4 = 64, e5 = 61, e6 = 41, effect = "暴击伤害+10% 生命值+8% 暴击附加伤害+80 攻击力+50 体质+800"}
EnchaseComp[111] ={name = "秘咒·藏识",parts = "....W...", e1 =32, e2 = 14, e3 = 27, e4 = 64, e5 = 47, e6 = 59, effect = "附加伤害+20 暴击+5 暴击附加伤害+80 攻击力+80"}
EnchaseComp[112] ={name = "秘咒·本觉",parts = ".S......", e1 =32, e2 = 14, e3 = 13, e4 = 64, e5 = 47, e6 = 46, effect = "命中+20 暴击+12 生命值+10% 攻击力+40 治疗效果+2% 治疗点数+30"}
EnchaseComp[113] ={name = "秘咒·无念",parts = "...R....", e1 =15, e2 = 32, e3 = 12, e4 = 48, e5 = 64, e6 = 45, effect = "生命值+5% 治疗点数+20 附加伤害+60 攻击力+90"}
EnchaseComp[114] ={name = "秘咒·五停",parts = ".S......", e1 =32, e2 = 14, e3 = 30, e4 = 64, e5 = 47, e6 = 62, effect = "命中+20 暴击+12 生命值+10% 攻击力+50 穿透+3"}
EnchaseComp[115] ={name = "秘咒·天啸",parts = "...R....", e1 =15, e2 = 32, e3 = 29, e4 = 48, e5 = 64, e6 = 61, effect = "暴击伤害+6% 附加伤害+60 暴击附加伤害+80 攻击力+90"}
EnchaseComp[116] ={name = "秘咒·混元",parts = ".S......", e1 =32, e2 = 31, e3 = 8, e4 = 64, e5 = 63, e6 = 41, effect = "生命值+10% 体力恢复速度+1 附加伤害+50 穿透+4 攻击力+40"}
EnchaseComp[117] ={name = "秘咒·阿那",parts = "....W...", e1 =32, e2 = 31, e3 = 10, e4 = 64, e5 = 63, e6 = 43, effect = "附加伤害+20 攻击力+100 暴击抗性+3 生命值+400 治疗点数+20"}
EnchaseComp[118] ={name = "秘咒·开天",parts = "....W...", e1 =32, e2 = 31, e3 = 27, e4 = 64, e5 = 63, e6 = 59, effect = "附加伤害+20 暴击+5 暴击附加伤害+80 攻击力+100"}
EnchaseComp[119] ={name = "秘咒·印心",parts = ".S......", e1 =32, e2 = 31, e3 = 13, e4 = 64, e5 = 63, e6 = 46, effect = "命中+20 暴击+12 生命值+10% 攻击力+50 治疗效果+4% 治疗点数+50"}
EnchaseComp[120] ={name = "秘咒·太白",parts = ".S......", e1 =32, e2 = 31, e3 = 30, e4 = 64, e5 = 63, e6 = 62, effect = "命中+20 暴击+12 生命值+10% 攻击力+60 穿透+4"}
EnchaseComp[121] ={name = "秘咒·神秀",parts = "...R....", e1 =32, e2 = 32, e3 = 12, e4 = 64, e5 = 64, e6 = 45, effect = "生命值+6% 治疗点数+50 附加伤害+60 攻击力+90 刺破+5"}
EnchaseComp[122] ={name = "秘咒·诛仙",parts = "...R....", e1 =32, e2 = 32, e3 = 29, e4 = 64, e5 = 64, e6 = 61, effect = "暴击伤害+6% 附加伤害+60 暴击附加伤害+100 攻击力+90 刺破+5"}

EnchaseComp[123] ={name = "秘咒·三青",parts = ".......H", e1 =33, e2 = 30, e3 = 5, e4 = 65, e5 = 62, e6 = 38, effect = "攻击力+60 暴击+3 附加伤害+30 暴击附加伤害+60"}
EnchaseComp[124] ={name = "秘咒·灭蒙",parts = "..C.....", e1 =33, e2 = 30, e3 = 23, e4 = 65, e5 = 62, e6 = 55, effect = "攻击力+60 攻击强度+4% 刺破+3 生命值+8% 暴击附加伤害+40"}
EnchaseComp[125] ={name = "秘咒·九尾",parts = "..C.....", e1 =33, e2 = 30, e3 = 6, e4 = 65, e5 = 62, e6 = 39, effect = "攻击力+60 攻击强度+5% 生命值+8% 治疗效果+4% 治疗点数+50"}
EnchaseComp[126] ={name = "秘咒·比翼",parts = ".......H", e1 =33, e2 = 16, e3 = 5, e4 = 65, e5 = 49, e6 = 38, effect = "攻击力+60 体力值+50 生命值+4% 治疗点数+40"}
EnchaseComp[127] ={name = "秘咒·羲和",parts = ".......H", e1 =33, e2 = 33, e3 = 5, e4 = 65, e5 = 65, e6 = 38, effect = "攻击力+80 暴击+3 攻击强度+3% 生命值+5% 治疗点数+50"}
EnchaseComp[128] ={name = "秘咒·刑天",parts = ".....P..", e1 =33, e2 = 31, e3 = 1, e4 = 65, e5 = 63, e6 = 34, effect = "攻击力+90 刺破+5 生命值+10% 间接伤害抗性+10"}
EnchaseComp[129] ={name = "秘咒·太岁",parts = "......F.", e1 =33, e2 = 31, e3 = 30, e4 = 65, e5 = 63, e6 = 62, effect = "攻击力+90 刺破+5 生命值+10% 直接伤害抗性+12 体质+900"}


function Win_EnchaseGuideComp:Init()
	self:RegisterEvent(WM_LBUTTONUP, self.OnLButtonDown)
	for i = 1 , 9 do
		self:RegisterEvent("Rdo_"..i , self.OnSelectParts)
	end
	DlgApi.CheckRadioButton (self.this, 1 , 9)   --默认显示全部可装备部位。9：全部
	local EnchaseList = {}
	self.m_EnchaseTable = {}
	for i = 0 , EnchaseAll.n do
		if EnchaseAll[i] ~= nil then
			local iListItem = #EnchaseList
			self.m_EnchaseTable[iListItem] = i
			EnchaseList[iListItem+1] = EnchaseAll[i].name
		end
	end
	DlgApi.SetListText (self.this, "Combo_Enchase1", EnchaseList)
	DlgApi.SetListText (self.this, "Combo_Enchase2", EnchaseList)
	DlgApi.SetListText (self.this, "Combo_Enchase3", EnchaseList)
	DlgApi.SetListCurLine (self.this, "Combo_Enchase1", 0)
	DlgApi.SetListCurLine (self.this, "Combo_Enchase2", 0)
	DlgApi.SetListCurLine (self.this, "Combo_Enchase3", 0)
end

function Win_EnchaseGuideComp:OnSelectParts()
--~ 	local partID = DlgApi.GetCheckedRadioButton (self.this, 1)
--~ 	self.m_partID = partID
	self:Refresh()
end

function Win_EnchaseGuideComp:OnLButtonDown(objName)
	if objName == "Lst_Enchase1" or objName == "Lst_Enchase2" or objName == "Lst_Enchase3" then
		self:Refresh()
	end
end

function Win_EnchaseGuideComp:ShowDialog()
	self:Refresh()
end

------------------------
--拼可装备部位字符串
------------------------
local function ConvertPartStr (parts)
	local partString = ""
	local bFirst = true
	for i = 1 , 8 do
		if parts:sub (i, i) == EnchaseParts:sub (i, i) then
			if not bFirst then
				partString = partString .."，"
			end
			partString = partString .. EnchasePartsString[i]
			bFirst = false
		end
	end
	return partString
end

------------------------
--主要模块
------------------------
local function IsMatch (enchaseIDs, es)	-- es: 会被改写
	for iID = 1, 3 do
		if enchaseIDs[iID] ~= 0 then
			local bHas = false
			for iE = 1, 3 do
				if enchaseIDs[iID] == es[iE] then
					es[iE] = nil
					bHas = true
					break
				end
			end
			if not bHas then
				return false
			end
		end
	end
	return true
end

function Win_EnchaseGuideComp:Refresh()
	local partID = DlgApi.GetCheckedRadioButton (self.this, 1)
	local enchaseID1 = self.m_EnchaseTable[DlgApi.GetListCurLine(self.this , "Combo_Enchase1")]
	local enchaseID2 = self.m_EnchaseTable[DlgApi.GetListCurLine(self.this , "Combo_Enchase2")]
	local enchaseID3 = self.m_EnchaseTable[DlgApi.GetListCurLine(self.this , "Combo_Enchase3")]
	local enchaseIDs = {enchaseID1, enchaseID2, enchaseID3}
	local EnchaseCompList = {}
	local EnchaseCompHint = {}
	for i , enchase in ipairs (EnchaseComp) do
		if IsMatch(enchaseIDs, {enchase.e1, enchase.e2, enchase.e3}) or IsMatch(enchaseIDs, {enchase.e4, enchase.e2, enchase.e3}) or IsMatch(enchaseIDs, {enchase.e1, enchase.e5, enchase.e3}) or IsMatch(enchaseIDs, {enchase.e1, enchase.e2, enchase.e6}) or IsMatch(enchaseIDs, {enchase.e4, enchase.e5, enchase.e3}) or IsMatch(enchaseIDs, {enchase.e4, enchase.e5, enchase.e6}) or IsMatch(enchaseIDs, {enchase.e4, enchase.e2, enchase.e6})or IsMatch(enchaseIDs, {enchase.e1, enchase.e5, enchase.e6}) then
			if partID == 9 or  EnchaseParts:sub(partID, partID) == enchase.parts:sub(partID, partID) then
				local Enchase1 = EnchaseAll[enchase.e1]
				local Enchase2 = EnchaseAll[enchase.e2]
				local Enchase3 = EnchaseAll[enchase.e3]
				local Enchase4 = EnchaseAll[enchase.e4]
				local Enchase5 = EnchaseAll[enchase.e5]
				local Enchase6 = EnchaseAll[enchase.e6]
				if Enchase1 and Enchase2 and Enchase3 then
					local EnchaseCompName = Enchase1.shortname .."^ffffff·".. Enchase2.shortname .."^ffffff·".. Enchase3.shortname
					local EnchaseName = enchase.name
					local EnchaseParts = ConvertPartStr (enchase.parts)
					local EnchaseEffect = enchase.effect
					EnchaseCompList[#EnchaseCompList+1] = EnchaseCompName .."\t".. EnchaseName .."\t".. "^ff8000".. EnchaseEffect
					EnchaseCompHint[#EnchaseCompHint+1] = "^e1e1e1" .. "秘咒效果：" .. EnchaseEffect .."\r".. "可镶嵌部位：" .. EnchaseParts
				end
			end
		end
	end
	DlgApi.SetListText (self.this , "Lst_EnchaseComp", EnchaseCompList)
	for i = 1, #EnchaseCompList do
		DlgApi.SetListItemHint (self.this, "Lst_EnchaseComp", i-1, EnchaseCompHint[i])
	end
end


_G.Win_EnchaseGuideComp = PLUN(Win_EnchaseGuideComp, "Win_EnchaseGuideComp")
