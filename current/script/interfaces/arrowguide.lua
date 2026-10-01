local GameApi = GameApi

--condition type for ArrowGuide			--引导类型
--GUIDE_USE_EQUIPMENT					--使用道具/穿装备
--GUIDE_RIDING							--上坐骑
--GUIDE_PLAYER_LEVEL_UP					--角色升级
--GUIDE_PROFESSION_LEVEL_UP				--兵种升级
--GUIDE_LIST_POSITION					--查看官职
--GUIDE_SET_TITLE						--装备称号
--GUIDE_GROW_UP							--装备成长
--GUIDE_LEARN_SKILL						--学习技能

--type for task state					--引导的触发方式
TASK_ACCEPTED					=	1	--接受任务（暂时只有这个）
LEARN_SKILL						=	2	--学习技能

--endWithTask = true	是引导的关闭规则，是否随任务完成而关闭，true就是随任务完成而关闭，什么都不填就是执行默认关闭规则（完成所有操作步骤/下一个引导出现）

arrow_guide_condition = {}

--引导玩家穿上装备（锤）	OK              父任务ID：30350  子任务ID：30826
arrow_guide_condition[10] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52096}
arrow_guide_condition[11] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52096}

-- 引导玩家穿上装备（刀）	OK
arrow_guide_condition[20] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52097}
arrow_guide_condition[21] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52097}

-- 引导玩家穿上装备（盾）	OK
arrow_guide_condition[30] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52098}
arrow_guide_condition[31] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52098}

-- 引导玩家穿上装备（斧）	OK
arrow_guide_condition[40] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52099}
arrow_guide_condition[41] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52099}

-- 引导玩家穿上装备（弓）	ok
arrow_guide_condition[50] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52100}
arrow_guide_condition[51] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52100}

-- 引导玩家穿上装备（钩）	OK
arrow_guide_condition[60] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52101}
arrow_guide_condition[61] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52101}

-- 引导玩家穿上装备（棍）	OK
arrow_guide_condition[70] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52102}
arrow_guide_condition[71] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52102}

-- 引导玩家穿上装备（环）	OK
arrow_guide_condition[80] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52103}
arrow_guide_condition[81] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52103}

--引导玩家穿上装备（戟）	OK
arrow_guide_condition[90] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52104}
arrow_guide_condition[91] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52104}

--引导玩家穿上装备（锏）	OK
arrow_guide_condition[100] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52105}
arrow_guide_condition[101] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52105}

--引导玩家穿上装备（剑）	OK
arrow_guide_condition[110] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52106}
arrow_guide_condition[111] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52106}

--引导玩家穿上装备（枪）	OK
arrow_guide_condition[120] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52107}
arrow_guide_condition[121] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52107}

--引导玩家穿上装备（扇）	OK
arrow_guide_condition[130] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52108}
arrow_guide_condition[131] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52108}

--引导玩家穿上装备（镗，也叫叉）	OK
arrow_guide_condition[140] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52109}
arrow_guide_condition[141] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52109}

--引导玩家穿上装备（舞）	OK
arrow_guide_condition[150] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52110}
arrow_guide_condition[151] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52110}

--引导玩家穿上装备（钺）	OK
arrow_guide_condition[160] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52111}
arrow_guide_condition[161] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52111}

--引导玩家穿上装备（杖）	OK
arrow_guide_condition[170] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52112}
arrow_guide_condition[171] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52112}

--引导玩家穿上装备（爪）	OK
arrow_guide_condition[180] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 52113}
arrow_guide_condition[181] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 52113}

--引导玩家穿上装备（鞭）	OK
arrow_guide_condition[190] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 84694}
arrow_guide_condition[191] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 84694}

--引导玩家穿上装备（弩）	OK
arrow_guide_condition[200] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, equipment = 87254}
arrow_guide_condition[201] = {type = GUIDE_USE_EQUIPMENT, taskID = 30826, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 87254}

--引导玩家上马（中原）	OK
arrow_guide_condition[300] = {type = GUIDE_RIDING, taskID = 30460, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, horse = 74832}
arrow_guide_condition[301] = {type = GUIDE_RIDING, taskID = 30460, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, horse = 74832}
arrow_guide_condition[302] = {type = GUIDE_RIDING, taskID = 30460, taskState = TASK_ACCEPTED, step = 3, arrowType = "l6", offsetX = 95, offsetY = -125, horse = 74832}

--引导玩家上马（巫南）	OK
arrow_guide_condition[310] = {type = GUIDE_RIDING, taskID = 30460, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, horse = 66207}
arrow_guide_condition[311] = {type = GUIDE_RIDING, taskID = 30460, taskState = TASK_ACCEPTED, step = 2, arrowType = "r1", offsetX = -90, offsetY = 40, horse = 66207}
arrow_guide_condition[312] = {type = GUIDE_RIDING, taskID = 30460, taskState = TASK_ACCEPTED, step = 3, arrowType = "l6", offsetX = 95, offsetY = -125, horse = 66207}

--引导查看官职信息
arrow_guide_condition[330] = {type = GUIDE_LIST_POSITION, taskID = 30733, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, endWithTask = true}
arrow_guide_condition[331] = {type = GUIDE_LIST_POSITION, taskID = 30733, taskState = TASK_ACCEPTED, step = 2, arrowType = "l5", offsetX = -42, offsetY = -140, endWithTask = true}
arrow_guide_condition[332] = {type = GUIDE_LIST_POSITION, taskID = 30733, taskState = TASK_ACCEPTED, step = 3, arrowType = "l1", offsetX = -15, offsetY = 100, endWithTask = true}

--引导装备称号
arrow_guide_condition[340] = {type = GUIDE_SET_TITLE, taskID = 30449, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -200, offsetY = -110, endWithTask = true}
arrow_guide_condition[341] = {type = GUIDE_SET_TITLE, taskID = 30449, taskState = TASK_ACCEPTED, step = 2, arrowType = "l5", offsetX = -42, offsetY = -150, endWithTask = true}
arrow_guide_condition[342] = {type = GUIDE_SET_TITLE, taskID = 30449, taskState = TASK_ACCEPTED, step = 3, arrowType = "l7", offsetX = 120, offsetY = -28, endWithTask = true}
arrow_guide_condition[343] = {type = GUIDE_SET_TITLE, taskID = 30449, taskState = TASK_ACCEPTED, step = 4, arrowType = "l5", offsetX = -15, offsetY = -150, endWithTask = true}

--引导装备成长_男（做的时候跟奚世尧要任务ID，跟王禹要装备ID）
arrow_guide_condition[350] = {type = GUIDE_GROW_UP, taskID = 30394, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -195, offsetY = -110, equipment = 72697}
arrow_guide_condition[351] = {type = GUIDE_GROW_UP, taskID = 30394, taskState = TASK_ACCEPTED, step = 2, arrowType = "l6", offsetX = 90, offsetY = -110, equipment = 72697}
arrow_guide_condition[352] = {type = GUIDE_GROW_UP, taskID = 30394, taskState = TASK_ACCEPTED, step = 3, arrowType = "l6", offsetX = 90, offsetY = -90, equipment = 72697}
arrow_guide_condition[353] = {type = GUIDE_GROW_UP, taskID = 30394, taskState = TASK_ACCEPTED, step = 4, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 72697}
arrow_guide_condition[354] = {type = GUIDE_GROW_UP, taskID = 30394, taskState = TASK_ACCEPTED, step = 5, arrowType = "l5", offsetX = -40, offsetY = -150, equipment = 72697}

--引导装备成长_女（做的时候跟奚世尧要任务ID，跟王禹要装备ID）
arrow_guide_condition[355] = {type = GUIDE_GROW_UP, taskID = 30394, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -195, offsetY = -110, equipment = 72698}
arrow_guide_condition[356] = {type = GUIDE_GROW_UP, taskID = 30394, taskState = TASK_ACCEPTED, step = 2, arrowType = "l6", offsetX = 90, offsetY = -110, equipment = 72698}
arrow_guide_condition[357] = {type = GUIDE_GROW_UP, taskID = 30394, taskState = TASK_ACCEPTED, step = 3, arrowType = "l6", offsetX = 90, offsetY = -90, equipment = 72698}
arrow_guide_condition[358] = {type = GUIDE_GROW_UP, taskID = 30394, taskState = TASK_ACCEPTED, step = 4, arrowType = "r1", offsetX = -90, offsetY = 40, equipment = 72698}
arrow_guide_condition[359] = {type = GUIDE_GROW_UP, taskID = 30394, taskState = TASK_ACCEPTED, step = 5, arrowType = "l5", offsetX = -40, offsetY = -150, equipment = 72698}

--引导玩家学习技能（鞭）  技能在第1个	OK
arrow_guide_condition[360] = {type = GUIDE_LEARN_SKILL, taskID = 30349, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 5070}
arrow_guide_condition[361] = {type = GUIDE_LEARN_SKILL, taskID = 30349, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 105, npc = 3346, skill = 5070}

--引导玩家学习技能（镗，也是叉） 技能在第1个	OK
arrow_guide_condition[370] = {type = GUIDE_LEARN_SKILL, taskID = 30333, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 100}
arrow_guide_condition[371] = {type = GUIDE_LEARN_SKILL, taskID = 30333, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 105, npc = 3346, skill = 100}

--引导玩家学习技能（锤） 技能在第3个	OK
arrow_guide_condition[380] = {type = GUIDE_LEARN_SKILL, taskID = 30339, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 208}
arrow_guide_condition[381] = {type = GUIDE_LEARN_SKILL, taskID = 30339, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 110, npc = 3346, skill = 208}

--引导玩家学习技能（刀）	技能在第3个	OK
arrow_guide_condition[390] = {type = GUIDE_LEARN_SKILL, taskID = 30328, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 16}
arrow_guide_condition[391] = {type = GUIDE_LEARN_SKILL, taskID = 30328, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 110, npc = 3346, skill = 16}

--引导玩家学习技能（盾）	技能在第1个	OK
arrow_guide_condition[400] = {type = GUIDE_LEARN_SKILL, taskID = 30341, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 246}
arrow_guide_condition[401] = {type = GUIDE_LEARN_SKILL, taskID = 30341, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 105, npc = 3346, skill = 246}

--引导玩家学习技能（斧）	技能在第3个	OK
arrow_guide_condition[410] = {type = GUIDE_LEARN_SKILL, taskID = 30336, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 156}
arrow_guide_condition[411] = {type = GUIDE_LEARN_SKILL, taskID = 30336, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 110, npc = 3346, skill = 156}

--引导玩家学习技能（弓）	技能在第3个	OK
arrow_guide_condition[420] = {type = GUIDE_LEARN_SKILL, taskID = 30346, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 356}
arrow_guide_condition[421] = {type = GUIDE_LEARN_SKILL, taskID = 30346, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 110, npc = 3346, skill = 356}

--引导玩家学习技能（钩）	技能在第1个	OK
arrow_guide_condition[430] = {type = GUIDE_LEARN_SKILL, taskID = 30337, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 166}
arrow_guide_condition[431] = {type = GUIDE_LEARN_SKILL, taskID = 30337, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 105, npc = 3346, skill = 166}

--引导玩家学习技能（棍）	技能在第3个	OK
arrow_guide_condition[440] = {type = GUIDE_LEARN_SKILL, taskID = 30334, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 116}
arrow_guide_condition[441] = {type = GUIDE_LEARN_SKILL, taskID = 30334, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 110, npc = 3346, skill = 116}

--引导玩家学习技能（环）	技能在第2个	OK
arrow_guide_condition[450] = {type = GUIDE_LEARN_SKILL, taskID = 30342, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 276}
arrow_guide_condition[451] = {type = GUIDE_LEARN_SKILL, taskID = 30342, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 107, npc = 3346, skill = 276}

--引导玩家学习技能（戟）	技能在第1个	OK
arrow_guide_condition[460] = {type = GUIDE_LEARN_SKILL, taskID = 30331, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 43}
arrow_guide_condition[461] = {type = GUIDE_LEARN_SKILL, taskID = 30331, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 105, npc = 3346, skill = 43}

--引导玩家学习技能（锏）	技能在第1个	OK
arrow_guide_condition[470] = {type = GUIDE_LEARN_SKILL, taskID = 30338, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 183}
arrow_guide_condition[471] = {type = GUIDE_LEARN_SKILL, taskID = 30338, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 105, npc = 3346, skill = 183}

--引导玩家学习技能（剑）	技能在第3个	OK
arrow_guide_condition[480] = {type = GUIDE_LEARN_SKILL, taskID = 30335, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 136}
arrow_guide_condition[481] = {type = GUIDE_LEARN_SKILL, taskID = 30335, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 110, npc = 3346, skill = 136}

--引导玩家学习技能（弩）	技能在第1个	OK
arrow_guide_condition[490] = {type = GUIDE_LEARN_SKILL, taskID = 30348, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 5278}
arrow_guide_condition[491] = {type = GUIDE_LEARN_SKILL, taskID = 30348, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 105, npc = 3346, skill = 5278}

--引导玩家学习技能（枪）	技能在第3个	OK
arrow_guide_condition[500] = {type = GUIDE_LEARN_SKILL, taskID = 30330, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 36}
arrow_guide_condition[501] = {type = GUIDE_LEARN_SKILL, taskID = 30330, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 110, npc = 3346, skill = 36}

--引导玩家学习技能（扇）	技能在第4个	OK
arrow_guide_condition[510] = {type = GUIDE_LEARN_SKILL, taskID = 30345, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 324}
arrow_guide_condition[511] = {type = GUIDE_LEARN_SKILL, taskID = 30345, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 112, npc = 3346, skill = 324}

--引导玩家学习技能（舞）	技能在第2个	OK
arrow_guide_condition[520] = {type = GUIDE_LEARN_SKILL, taskID = 30344, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 316}
arrow_guide_condition[521] = {type = GUIDE_LEARN_SKILL, taskID = 30344, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 107, npc = 3346, skill = 316}

--引导玩家学习技能（钺）	技能在第3个	OK
arrow_guide_condition[530] = {type = GUIDE_LEARN_SKILL, taskID = 30332, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 67}
arrow_guide_condition[531] = {type = GUIDE_LEARN_SKILL, taskID = 30332, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 110, npc = 3346, skill = 67}

--引导玩家学习技能（杖）	技能在第4个	OK
arrow_guide_condition[540] = {type = GUIDE_LEARN_SKILL, taskID = 30343, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 284}
arrow_guide_condition[541] = {type = GUIDE_LEARN_SKILL, taskID = 30343, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 112, npc = 3346, skill = 284}

--引导玩家学习技能（爪）	技能在第3个	OK
arrow_guide_condition[550] = {type = GUIDE_LEARN_SKILL, taskID = 30340, taskState = LEARN_SKILL, step = 1, arrowType = "l7", offsetX = 120, offsetY = -72, npc = 3346, skill = 223}
arrow_guide_condition[551] = {type = GUIDE_LEARN_SKILL, taskID = 30340, taskState = LEARN_SKILL, step = 2, arrowType = "l1", offsetX = -52, offsetY = 110, npc = 3346, skill = 223}

Win_ArrowGuide = DlgTemplate:new({this = "Win_ArrowGuide"})

arrow_guide = {}

function arrow_guide:CheckArrowGuide(taskState, taskID, step)
	for i, condition in pairs(arrow_guide_condition) do

		if not condition.endWithTask or GameApi.IsTaskActived(condition.taskID) then

			if condition.type == GUIDE_USE_EQUIPMENT and condition.taskState == taskState and condition.taskID == taskID
				and condition.step == step and (GameApi.IsInPack(condition.equipment) or GameApi.FindInEquipmentPack(condition.equipment))then
				return condition.type, condition.step, condition.arrowType, condition.offsetX, condition.offsetY, condition.equipment
			end

			if condition.type == GUIDE_RIDING and condition.taskState == taskState and condition.taskID == taskID
				and condition.step == step and (GameApi.IsInPack(condition.horse) or GameApi.FindInEquipmentPack(condition.horse) ~= false) then
				return condition.type, condition.step, condition.arrowType, condition.offsetX, condition.offsetY, condition.horse
			end

			if condition.type == GUIDE_PLAYER_LEVEL_UP and condition.taskState == taskState and condition.taskID == taskID and condition.step == step then
				return condition.type, condition.step, condition.arrowType, condition.offsetX, condition.offsetY
			end

			if condition.type == GUIDE_PROFESSION_LEVEL_UP and condition.taskState == taskState and condition.taskID == taskID and condition.step == step then
				return condition.type, condition.step, condition.arrowType, condition.offsetX, condition.offsetY, condition.skill
			end

			if condition.type == GUIDE_LIST_POSITION and condition.taskState == taskState and condition.taskID == taskID and condition.step == step then
				return condition.type, condition.step, condition.arrowType, condition.offsetX, condition.offsetY
			end

			if condition.type == GUIDE_SET_TITLE and condition.taskState == taskState and condition.taskID == taskID and condition.step == step then
				return condition.type, condition.step, condition.arrowType, condition.offsetX, condition.offsetY
			end

			if condition.type == GUIDE_GROW_UP and condition.taskState == taskState and condition.taskID == taskID
				and condition.step == step and GameApi.IsInPack(condition.equipment) then
				return condition.type, condition.step, condition.arrowType, condition.offsetX, condition.offsetY, condition.equipment
			end

		end

	end
end

function arrow_guide:CheckArrowGuideForNPC(taskState, npcID, step)
	for i, condition in pairs(arrow_guide_condition) do

		if condition.type == GUIDE_LEARN_SKILL and condition.npc == npcID and condition.step == step
			and GameApi.IsTaskActived(condition.taskID) and GameApi.GetSKillLevelByID(condition.skill) == 0 then
			return condition.type, condition.step, condition.arrowType, condition.offsetX, condition.offsetY, condition.npc, condition.skill
		end

	end
end

--去掉的引导

--引导角色手动升级（准备做支线，做的时候跟奚世尧要任务ID）
-- arrow_guide_condition[320] = {type = GUIDE_PLAYER_LEVELUP, taskID = ？？？, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -150, offsetY = 0}
-- arrow_guide_condition[321] = {type = GUIDE_PLAYER_LEVELUP, taskID = ？？？, taskState = TASK_ACCEPTED, step = 2, arrowType = "l2", offsetX = -150, offsetY = 0}

--引导角色升级兵种然后升级专精	刀
-- arrow_guide_condition[320] = {type = GUIDE_PROFESSION_LEVELUP, taskID = 30369, taskState = TASK_ACCEPTED, step = 1, arrowType = "l4", offsetX = -120, offsetY = -50}
-- arrow_guide_condition[321] = {type = GUIDE_PROFESSION_LEVELUP, taskID = 30369, taskState = TASK_ACCEPTED, step = 2, arrowType = "l2", offsetX = -122, offsetY = 8}
-- arrow_guide_condition[322] = {type = GUIDE_PROFESSION_LEVELUP, taskID = 30369, taskState = TASK_ACCEPTED, step = 3, arrowType = "l4", offsetX = -120, offsetY = -50, profession = 1, skill = 415}
-- arrow_guide_condition[323] = {type = GUIDE_PROFESSION_LEVELUP, taskID = 30369, taskState = TASK_ACCEPTED, step = 4, arrowType = "l2", offsetX = -122, offsetY = 8, profession = 1, skill = 415}
-- arrow_guide_condition[324] = {type = GUIDE_PROFESSION_LEVELUP, taskID = 30369, taskState = TASK_ACCEPTED, step = 5, arrowType = "l4", offsetX = -120, offsetY = -50, profession = 1, skill = 415}
