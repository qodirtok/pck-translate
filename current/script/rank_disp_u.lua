---排行榜定义表
-----------------------------------------------
-- 个人41~100号声望线对应排行榜id 561~620
-- 军团41~100号声望线对应排行榜id 621~680
-----------------------------------------------

RANK_TYPE_PERSON = 1
RANK_TYPE_MAFIA = 2
RANK_TYPE_LEGION = 3
RANK_TYPE_FACTION = 4
RANK_TYPE_ARENA = 5
RANK_TYPE_GANG = 6

RANK_TYPE_WORDNULL = ""
RANK_TYPE_WORDLEVEL = "级"
RANK_TYPE_WORDGOLD = "金"
RANK_TYPE_WORDPOPULATION = "人"

rank_list = {}
rank_list[1] = {id = 1 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDLEVEL}--个人等级
rank_list[2] = {id = 2 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDGOLD}--个人财富
rank_list[3] = {id = 3 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定

rank_list[7] = {id = 7 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[11] = {id = 11 , type = RANK_TYPE_FACTION , word = RANK_TYPE_WORDNULL}--魏国：魏国声望

rank_list[12] = {id = 12 , type = RANK_TYPE_FACTION , word = RANK_TYPE_WORDNULL}--魏国：武勋

rank_list[13] = {id = 13 , type = RANK_TYPE_FACTION , word = RANK_TYPE_WORDNULL}--魏国：文勋

rank_list[14] = {id = 14 , type = RANK_TYPE_FACTION , word = RANK_TYPE_WORDNULL}--蜀国：蜀国声望

rank_list[15] = {id = 15 , type = RANK_TYPE_FACTION , word = RANK_TYPE_WORDNULL}--蜀国：武勋
rank_list[16] = {id = 16 , type = RANK_TYPE_FACTION , word = RANK_TYPE_WORDNULL}--蜀国：文勋
rank_list[17] = {id = 17 , type = RANK_TYPE_FACTION , word = RANK_TYPE_WORDNULL}--吴国：吴国声望

rank_list[18] = {id = 18 , type = RANK_TYPE_FACTION , word = RANK_TYPE_WORDNULL}--吴国：武勋

rank_list[19] = {id = 19 , type = RANK_TYPE_FACTION , word = RANK_TYPE_WORDNULL}--吴国：文勋

rank_list[20] = {id = 20 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望01
rank_list[21] = {id = 21 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望02：帮派贡献度
rank_list[22] = {id = 22 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望03：家族贡献度
rank_list[23] = {id = 23 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望04：功勋值

rank_list[24] = {id = 24 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望05：仁义值（老带新）
rank_list[25] = {id = 25 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望06：河北声望

rank_list[26] = {id = 26 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望07：西凉声望

rank_list[27] = {id = 27 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望08：巴蜀声望
rank_list[28] = {id = 28 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望09：南蛮声望

rank_list[29] = {id = 29 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望10：江南声望

rank_list[30] = {id = 30 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望11：荆襄声望

rank_list[31] = {id = 31 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望12：中原声望

rank_list[32] = {id = 32 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望13：魏国声望

rank_list[33] = {id = 33 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望14：蜀国声望

rank_list[34] = {id = 34 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望15：吴国声望

rank_list[35] = {id = 35 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望16：武勋

rank_list[36] = {id = 36 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望17：文勋

rank_list[37] = {id = 37 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望18：斗志值

rank_list[38] = {id = 38 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望19：东汉军声望
rank_list[39] = {id = 39 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望20：黄巾军声望
rank_list[40] = {id = 40 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望21：军功

rank_list[41] = {id = 41 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望22：烛龙派声望
rank_list[42] = {id = 42 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望23：征战点数

rank_list[43] = {id = 43 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望24：演义点数

rank_list[44] = {id = 44 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望25：无双点数

rank_list[45] = {id = 45 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望26：行动力
rank_list[46] = {id = 46 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望27：战功值

rank_list[47] = {id = 47 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望28：博学值

rank_list[48] = {id = 48 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望29：三国古币（赠点商城系统专用）

rank_list[49] = {id = 49 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望30：在线计时（赠点商城系统专用）

rank_list[50] = {id = 50 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望31：竞技积分
rank_list[51] = {id = 51 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人声望32：活力值

rank_list[52] = {id = 52 , type = 0 , word = RANK_TYPE_WORDNULL}--个人声望33：（文武倾向）

rank_list[53] = {id = 53 , type = 0 , word = RANK_TYPE_WORDNULL}--个人声望34：故土声望

rank_list[54] = {id = 54 , type = 0 , word = RANK_TYPE_WORDNULL}--个人声望35：师徒友好度
rank_list[55] = {id = 55 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[56] = {id = 56 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[57] = {id = 57 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[58] = {id = 58 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[59] = {id = 59 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[60] = {id = 60 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[61] = {id = 61 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDLEVEL}--军团等级
rank_list[62] = {id = 62 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDGOLD}--军团财富
rank_list[63] = {id = 63 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDPOPULATION}--军团人口
rank_list[64] = {id = 64 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团繁荣度

rank_list[65] = {id = 65 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团灵气
rank_list[66] = {id = 66 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[67] = {id = 67 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[68] = {id = 68 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[69] = {id = 69 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[70] = {id = 70 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[71] = {id = 71 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[72] = {id = 72 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[73] = {id = 73 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[74] = {id = 74 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[75] = {id = 75 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[76] = {id = 76 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[77] = {id = 77 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[78] = {id = 78 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[79] = {id = 79 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[80] = {id = 80 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望01
rank_list[81] = {id = 81 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望02：帮派贡献度
rank_list[82] = {id = 82 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望03：家族贡献度
rank_list[83] = {id = 83 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望04：功勋值

rank_list[84] = {id = 84 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望05：仁义值（老带新）
rank_list[85] = {id = 85 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望06：河北声望

rank_list[86] = {id = 86 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望07：西凉声望

rank_list[87] = {id = 87 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望08：巴蜀声望
rank_list[88] = {id = 88 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望09：南蛮声望

rank_list[89] = {id = 89 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望10：江南声望

rank_list[90] = {id = 90 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望11：荆襄声望

rank_list[91] = {id = 91 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望12：中原声望

rank_list[92] = {id = 92 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望13：魏国声望

rank_list[93] = {id = 93 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望14：蜀国声望

rank_list[94] = {id = 94 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望15：吴国声望

rank_list[95] = {id = 95 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望16：武勋

rank_list[96] = {id = 96 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望17：文勋

rank_list[97] = {id = 97 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望18：斗志值

rank_list[98] = {id = 98 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望19：东汉军声望
rank_list[99] = {id = 99 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望20：黄巾军声望
rank_list[100] = {id = 100 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望21：军功

rank_list[101] = {id = 101 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望22：烛龙派声望
rank_list[102] = {id = 102 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望23：征战点数

rank_list[103] = {id = 103 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望24：演义点数

rank_list[104] = {id = 104 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望25：无双点数

rank_list[105] = {id = 105 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望26：行动力
rank_list[106] = {id = 106 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望27：战功值

rank_list[107] = {id = 107 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望28：博学值

rank_list[108] = {id = 108 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望29：三国古币（赠点商城系统专用）

rank_list[109] = {id = 109 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望30：在线计时（赠点商城系统专用）

rank_list[110] = {id = 110 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望31：竞技积分
rank_list[111] = {id = 111 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团声望32：活力值

rank_list[112] = {id = 112 , type = 0 , word = RANK_TYPE_WORDNULL}--军团声望33：（文武倾向）

rank_list[113] = {id = 113 , type = 0 , word = RANK_TYPE_WORDNULL}--军团声望34：故土声望

rank_list[114] = {id = 114 , type = 0 , word = RANK_TYPE_WORDNULL}--军团声望35：师徒友好度
rank_list[115] = {id = 115 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[116] = {id = 116 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[117] = {id = 117 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[118] = {id = 118 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[119] = {id = 119 , type = 0 , word = RANK_TYPE_WORDNULL}--暂定
rank_list[120] = {id = 120 , type = RANK_TYPE_MAFIA , word = RANK_TYPE_WORDNULL}--家族挑战任务01
rank_list[121] = {id = 121 , type = RANK_TYPE_MAFIA , word = RANK_TYPE_WORDNULL}--家族挑战任务02
rank_list[122] = {id = 122 , type = RANK_TYPE_MAFIA , word = RANK_TYPE_WORDNULL}--家族挑战任务03
rank_list[123] = {id = 123 , type = RANK_TYPE_MAFIA , word = RANK_TYPE_WORDNULL}--家族挑战任务04
rank_list[124] = {id = 124 , type = RANK_TYPE_MAFIA , word = RANK_TYPE_WORDNULL}--家族挑战任务05
rank_list[125] = {id = 125 , type = RANK_TYPE_MAFIA , word = RANK_TYPE_WORDNULL}--家族挑战任务06
rank_list[126] = {id = 126 , type = RANK_TYPE_MAFIA , word = RANK_TYPE_WORDNULL}--家族挑战任务07
rank_list[127] = {id = 127 , type = RANK_TYPE_MAFIA , word = RANK_TYPE_WORDNULL}--家族挑战任务08
rank_list[128] = {id = 128 , type = RANK_TYPE_MAFIA , word = RANK_TYPE_WORDNULL}--家族挑战任务09
rank_list[129] = {id = 129 , type = RANK_TYPE_MAFIA , word = RANK_TYPE_WORDNULL}--家族挑战任务10
rank_list[130] = {id = 130 , type = RANK_TYPE_MAFIA , word = RANK_TYPE_WORDNULL}--结义总贡献排行榜
rank_list[131] = {id = 131 , type = RANK_TYPE_MAFIA , word = RANK_TYPE_WORDNULL}--结义上周总贡献增量榜
rank_list[132] = {id = 132 , type = RANK_TYPE_MAFIA , word = RANK_TYPE_WORDNULL}--结义草船借箭上周积分榜
rank_list[133] = {id = 133 , type = RANK_TYPE_MAFIA , word = RANK_TYPE_WORDNULL}--结义草船借箭上月积分榜

rank_list[200] = {id = 200 , type = RANK_TYPE_PERSON, word = RANK_TYPE_WORDNULL}--魏国个人名望本周增量
rank_list[201] = {id = 201 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--蜀国个人名望本周增量

rank_list[202] = {id = 202 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--吴国个人名望本周增量

rank_list[203] = {id = 203 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--暂定
rank_list[204] = {id = 204 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--本周获得师德排行
rank_list[205] = {id = 205 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--本周欢乐积分排行

rank_list[250] = {id = 250 , type = RANK_TYPE_PERSON, word = RANK_TYPE_WORDNULL}--魏国个人名望上周增量
rank_list[251] = {id = 251 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--蜀国个人名望上周增量

rank_list[252] = {id = 252 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--吴国个人名望上周增量

rank_list[253] = {id = 253 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--暂定
rank_list[254] = {id = 254 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--上月获得师德排行
rank_list[255] = {id = 255 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--上周欢乐积分排行

rank_list[300] = {id = 300 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--魏国个人名望本月增量
rank_list[301] = {id = 301 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--蜀国个人名望本月增量

rank_list[302] = {id = 302 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--吴国个人名望本月增量
rank_list[350] = {id = 350 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--魏国个人名望上月增量
rank_list[351] = {id = 351 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--蜀国个人名望上月增量

rank_list[352] = {id = 352 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--吴国个人名望上月增量


rank_list[303] = {id = 303 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--魏国文官个人名望本月增量
rank_list[304] = {id = 304 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--蜀国文官个人名望本月增量

rank_list[305] = {id = 305 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--吴国文官个人名望本月增量
rank_list[353] = {id = 353 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--魏国文官个人名望上月增量
rank_list[354] = {id = 354 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--蜀国文官个人名望上月增量

rank_list[355] = {id = 355 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--吴国文官个人名望上月增量

rank_list[722] = {id = 722 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--魏国军团资金获得
rank_list[723] = {id = 723 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--蜀国军团资金获得
rank_list[724] = {id = 724 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--吴国军团资金获得
rank_list[725] = {id = 725 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--魏国玩家资金获得
rank_list[726] = {id = 726 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--蜀国玩家资金获得
rank_list[727] = {id = 727 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--吴国玩家资金获得

rank_list[306] = {id = 306 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--魏国武官个人名望本月增量
rank_list[307] = {id = 307 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--蜀国武官个人名望本月增量

rank_list[308] = {id = 308 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--吴国武官个人名望本月增量

rank_list[309] = {id = 309 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--本月获得消费积分排行
rank_list[310] = {id = 310 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--本月获得师德排行

rank_list[356] = {id = 356 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--魏国武官个人名望上月增量
rank_list[357] = {id = 357 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--蜀国武官个人名望上月增量

rank_list[358] = {id = 358 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--吴国武官个人名望上月增量

rank_list[359] = {id = 359 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--上月获得消费积分排行
rank_list[360] = {id = 360 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--上周获得师德排行

rank_list[400] = {id = 400 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--魏国军团名望本周增量
rank_list[401] = {id = 401 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--蜀国军团名望本周增量

rank_list[402] = {id = 402 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--吴国军团名望本周增量

rank_list[403] = {id = 403 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--魏国军团活跃度本周增量

rank_list[404] = {id = 404 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--蜀国军团活跃度本周增量
rank_list[405] = {id = 405 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--吴国军团活跃度本周增量

rank_list[406] = {id = 406 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团活跃度本周增量阵营全榜


rank_list[450] = {id = 450 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--魏国军团名望上周增量
rank_list[451] = {id = 451 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--蜀国军团名望上周增量

rank_list[452] = {id = 452 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--吴国军团名望上周增量

rank_list[453] = {id = 453 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--魏国军团活跃度上周增量

rank_list[454] = {id = 454 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--蜀国军团活跃度上周增量
rank_list[455] = {id = 455 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--吴国军团活跃度上周增量

rank_list[456] = {id = 456 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--军团活跃度上周增量阵营全榜


rank_list[500] = {id = 500 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--魏国军团名望本月增量
rank_list[501] = {id = 501 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--蜀国军团名望本月增量

rank_list[502] = {id = 502 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--吴国军团名望本月增量
rank_list[550] = {id = 550 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--魏国军团名望上月增量
rank_list[551] = {id = 551 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--蜀国军团名望上月增量

rank_list[552] = {id = 552 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--吴国军团名望上月增量

rank_list[561] = {id = 561 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--川南声望个人总量排行
rank_list[562] = {id = 562 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--商会声望个人总量排行，每周刷新

rank_list[563] = {id = 563 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--中原个人声望排行
rank_list[564] = {id = 564 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--巫南个人声望排行

rank_list[621] = {id = 621 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--川南声望军团总量排行

rank_list[681] = {id = 681 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--护卫攻击力排行榜
rank_list[682] = {id = 682 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--护卫计谋排行榜
rank_list[683] = {id = 683 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--护卫生命值排行榜
rank_list[684] = {id = 684 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--护卫综合排行榜

rank_list[572] = {id = 572 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--个人竞技经验排行榜
rank_list[577] = {id = 577 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--情缘值
rank_list[578] = {id = 578 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--荣誉值（成就点数）

rank_list[361] = {id = 361 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--上月个人竞技经验排行榜
rank_list[9] = {id = 9 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--竞技场个人装备等级排行榜
rank_list[4] = {id = 4 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--竞技场个人战斗力评分排行榜
rank_list[5] = {id = 5 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--竞技场个人防御排行榜
rank_list[6] = {id = 6 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--竞技场个人治疗排行榜
rank_list[8] = {id = 8 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--竞技场个人战魂评分排行榜
rank_list[10] = {id = 10 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--竞技场个人等级排行榜
rank_list[570] = {id = 570 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--竞技场斩杀总数排行榜
rank_list[701] = {id = 701 , type = RANK_TYPE_ARENA , word = RANK_TYPE_WORDNULL}--竞技队等级排行榜
rank_list[702] = {id = 702 , type = RANK_TYPE_ARENA , word = RANK_TYPE_WORDNULL}--竞技队评分排行榜
rank_list[703] = {id = 703 , type = RANK_TYPE_ARENA , word = RANK_TYPE_WORDNULL}--跨服pk声望

rank_list[206] = {id = 206 , type = RANK_TYPE_ARENA , word = RANK_TYPE_WORDNULL}--PK杀人计数总榜
rank_list[207] = {id = 207 , type = RANK_TYPE_ARENA , word = RANK_TYPE_WORDNULL}--PK杀人计数魏国总榜
rank_list[208] = {id = 208 , type = RANK_TYPE_ARENA , word = RANK_TYPE_WORDNULL}--PK杀人计数蜀国总榜
rank_list[209] = {id = 209 , type = RANK_TYPE_ARENA , word = RANK_TYPE_WORDNULL}--PK杀人计数吴国总榜
rank_list[256] = {id = 256 , type = RANK_TYPE_ARENA , word = RANK_TYPE_WORDNULL}--PK杀人计数上周榜
rank_list[257] = {id = 257 , type = RANK_TYPE_ARENA , word = RANK_TYPE_WORDNULL}--PK杀人计数魏国上周榜
rank_list[258] = {id = 258 , type = RANK_TYPE_ARENA , word = RANK_TYPE_WORDNULL}--PK杀人计数蜀国上周榜
rank_list[259] = {id = 259 , type = RANK_TYPE_ARENA , word = RANK_TYPE_WORDNULL}--PK杀人计数蜀国上周榜

rank_list[50000] = {id = 50000 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--测试用总量排行
rank_list[50001] = {id = 50001 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--测试用望军团总量排行
rank_list[50002] = {id = 50002 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--测试用望军团总量排行
rank_list[50003] = {id = 50003 , type = RANK_TYPE_LEGION , word = RANK_TYPE_WORDNULL}--我的竞技排行

rank_list[170] = {id = 170 , type = RANK_TYPE_GANG , word = RANK_TYPE_WORDNULL}--竞技军团等级排名
rank_list[171] = {id = 171 , type = RANK_TYPE_GANG , word = RANK_TYPE_WORDNULL}--竞技军团上周贡献度

rank_list[595] = {id = 595 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--图鉴收藏品质排行，每日刷新
--rank_list[596] = {id = 595 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--襄阳之战个人实力榜
rank_list[362] = {id = 362 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--魏国上周日常贡献榜
rank_list[363] = {id = 363 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--蜀国上周日常贡献榜
rank_list[364] = {id = 364 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--吴国上周日常贡献榜
--rank_list[368] = {id = 368 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--魏国襄阳之战积分榜
--rank_list[369] = {id = 369 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--蜀国襄阳之战积分榜
--rank_list[370] = {id = 370 , type = RANK_TYPE_PERSON , word = RANK_TYPE_WORDNULL}--吴国襄阳之战积分榜

---传入参数：排行榜类型，本次排名，上次排名，名字（玩家、家族、帮派），职业（不要），排名值

---传出参数：5个值用\t分开

local award_Alltitle = {}
award_Alltitle[353] = {
				[1] = {Rank = "正一品 大丞相", high = 1, low = 0},
				[2] = {Rank = "从一品 司空", high = 2, low = 0},
				[3] = {Rank = "从一品 司徒", high = 3, low = 0},
				[4] = {Rank = "从一品 太尉", high = 4, low = 0},
				[5] = {Rank = "正二品 太仆", high = 5, low = 0},
				[6] = {Rank = "正二品 太常", high = 6, low = 0},
				[7] = {Rank = "正二品 卫尉", high = 7, low = 0},
				[8] = {Rank = "正二品 大鸿胪", high = 8, low = 0},
				[9] = {Rank = "正二品 大司农", high = 9, low = 0},
				[10] = {Rank = "从二品 左冯翊", high = 10, low = 0},
				[11] = {Rank = "从二品 右扶风", high = 11, low = 0},
				[12] = {Rank = "从二品 京兆尹", high = 12, low = 0},
				[13] = {Rank = "从二品 大长秋", high = 13, low = 0},
				[14] = {Rank = "从二品 宗正", high = 14, low = 0},
				[15] = {Rank = "从二品 廷尉", high = 15, low = 0},
				[16] = {Rank = "从二品 光禄勋", high = 16, low = 0},
				[17] = {Rank = "从二品 少府", high = 17, low = 0},
				[18] = {Rank = "从二品 前监军", high = 18, low = 30},
				[19] = {Rank = "从二品 后监军", high = 31, low = 50},
				[20] = {Rank = "从二品 左监军", high = 51, low = 100},
				[21] = {Rank = "从二品 右监军", high = 101, low = 1000},
					  }
award_Alltitle[356] = {
				[1] = {Rank = "正一品 大将军", high = 1, low = 0},
				[2] = {Rank = "从一品 卫将军", high = 2, low = 0},
				[3] = {Rank = "从一品 车骑将军", high = 3, low = 0},
				[4] = {Rank = "从一品 骠骑将军", high = 4, low = 0},
				[5] = {Rank = "正二品 抚军大将军", high = 5, low = 0},
				[6] = {Rank = "正二品 镇军大将军", high = 6, low = 0},
				[7] = {Rank = "正二品 辅国大将军", high = 7, low = 0},
				[8] = {Rank = "正二品 中军大将军", high = 8, low = 0},
				[9] = {Rank = "正二品 上军大将军", high = 9, low = 0},
				[10] = {Rank = "从二品 镇北将军", high = 10, low = 0},
				[11] = {Rank = "从二品 镇西将军", high = 11, low = 0},
				[12] = {Rank = "从二品 镇南将军", high = 12, low = 0},
				[13] = {Rank = "从二品 镇东将军", high = 13, low = 0},
				[14] = {Rank = "从二品 征北将军", high = 14, low = 0},
				[15] = {Rank = "从二品 征西将军", high = 15, low = 0},
				[16] = {Rank = "从二品 征南将军", high = 16, low = 0},
				[17] = {Rank = "从二品 征东将军", high = 17, low = 0},
				[18] = {Rank = "从二品 前领军将军", high = 18, low = 30},
				[19] = {Rank = "从二品 后领军将军", high = 31, low = 50},
				[20] = {Rank = "从二品 左领军将军", high = 51, low = 100},
				[21] = {Rank = "从二品 右领军将军", high = 101, low = 1000},
					  }
award_Alltitle[354] = {
				[1] = {Rank = "正一品 大丞相", high = 1, low = 0},
				[2] = {Rank = "从一品 司空", high = 2, low = 0},
				[3] = {Rank = "从一品 司徒", high = 3, low = 0},
				[4] = {Rank = "从一品 太尉", high = 4, low = 0},
				[5] = {Rank = "正二品 太仆", high = 5, low = 0},
				[6] = {Rank = "正二品 太常", high = 6, low = 0},
				[7] = {Rank = "正二品 卫尉", high = 7, low = 0},
				[8] = {Rank = "正二品 大鸿胪", high = 8, low = 0},
				[9] = {Rank = "正二品 大司农", high = 9, low = 0},
				[10] = {Rank = "从二品 左冯翊", high = 10, low = 0},
				[11] = {Rank = "从二品 右扶风", high = 11, low = 0},
				[12] = {Rank = "从二品 京兆尹", high = 12, low = 0},
				[13] = {Rank = "从二品 大长秋", high = 13, low = 0},
				[14] = {Rank = "从二品 宗正", high = 14, low = 0},
				[15] = {Rank = "从二品 廷尉", high = 15, low = 0},
				[16] = {Rank = "从二品 光禄勋", high = 16, low = 0},
				[17] = {Rank = "从二品 少府", high = 17, low = 0},
				[18] = {Rank = "从二品 前监军", high = 18, low = 30},
				[19] = {Rank = "从二品 后监军", high = 31, low = 50},
				[20] = {Rank = "从二品 左监军", high = 51, low = 100},
				[21] = {Rank = "从二品 右监军", high = 101, low = 1000},
					  }
award_Alltitle[357] = {
				[1] = {Rank = "正一品 大将军", high = 1, low = 0},
				[2] = {Rank = "从一品 卫将军", high = 2, low = 0},
				[3] = {Rank = "从一品 车骑将军", high = 3, low = 0},
				[4] = {Rank = "从一品 骠骑将军", high = 4, low = 0},
				[5] = {Rank = "正二品 抚军大将军", high = 5, low = 0},
				[6] = {Rank = "正二品 镇军大将军", high = 6, low = 0},
				[7] = {Rank = "正二品 右车骑将军", high = 7, low = 0},
				[8] = {Rank = "正二品 右骠骑将军", high = 8, low = 0},
				[9] = {Rank = "正二品 右大将军", high = 9, low = 0},
				[10] = {Rank = "从二品 镇北将军", high = 10, low = 0},
				[11] = {Rank = "从二品 镇西将军", high = 11, low = 0},
				[12] = {Rank = "从二品 镇南将军", high = 12, low = 0},
				[13] = {Rank = "从二品 镇东将军", high = 13, low = 0},
				[14] = {Rank = "从二品 征北将军", high = 14, low = 0},
				[15] = {Rank = "从二品 征西将军", high = 15, low = 0},
				[16] = {Rank = "从二品 征南将军", high = 16, low = 0},
				[17] = {Rank = "从二品 征东将军", high = 17, low = 0},
				[18] = {Rank = "从二品 前领军将军", high =18, low = 30},
				[19] = {Rank = "从二品 后领军将军", high = 31, low = 50},
				[20] = {Rank = "从二品 左领军将军", high = 51, low = 100},
				[21] = {Rank = "从二品 右领军将军", high = 101, low = 1000},
					  }
award_Alltitle[355] = {
				[1] = {Rank = "正一品 大丞相", high = 1, low = 0},
				[2] = {Rank = "从一品 司空", high = 2, low = 0},
				[3] = {Rank = "从一品 司徒", high = 3, low = 0},
				[4] = {Rank = "从一品 太尉", high = 4, low = 0},
				[5] = {Rank = "正二品 太仆", high = 5, low = 0},
				[6] = {Rank = "正二品 太常", high = 6, low = 0},
				[7] = {Rank = "正二品 卫尉", high = 7, low = 0},
				[8] = {Rank = "正二品 大鸿胪", high = 8, low = 0},
				[9] = {Rank = "正二品 大司农", high = 9, low = 0},
				[10] = {Rank = "从二品 左冯翊", high = 10, low = 0},
				[11] = {Rank = "从二品 右扶风", high = 11, low = 0},
				[12] = {Rank = "从二品 京兆尹", high = 12, low = 0},
				[13] = {Rank = "从二品 大长秋", high = 13, low = 0},
				[14] = {Rank = "从二品 宗正", high = 14, low = 0},
				[15] = {Rank = "从二品 廷尉", high = 15, low = 0},
				[16] = {Rank = "从二品 光禄勋", high = 16, low = 0},
				[17] = {Rank = "从二品 少府", high = 17, low = 0},
				[18] = {Rank = "从二品 前监军", high = 18, low = 30},
				[19] = {Rank = "从二品 后监军", high = 31, low = 50},
				[20] = {Rank = "从二品 左监军", high = 51, low = 100},
				[21] = {Rank = "从二品 右监军", high = 101, low = 1000},
					  }
award_Alltitle[358] = {
				[1] = {Rank = "正一品 大都督", high = 1, low = 0},
				[2] = {Rank = "从一品 卫将军", high = 2, low = 0},
				[3] = {Rank = "从一品 车骑将军", high = 3, low = 0},
				[4] = {Rank = "从一品 骠骑将军", high = 4, low = 0},
				[5] = {Rank = "正二品 抚军大将军", high = 5, low = 0},
				[6] = {Rank = "正二品 镇军大将军", high = 6, low = 0},
				[7] = {Rank = "正二品 辅国大将军", high = 7, low = 0},
				[8] = {Rank = "正二品 右都护", high = 8, low = 0},
				[9] = {Rank = "正二品 左都护", high = 9, low = 0},
				[10] = {Rank = "从二品 镇北将军", high = 10, low = 0},
				[11] = {Rank = "从二品 镇西将军", high = 11, low = 0},
				[12] = {Rank = "从二品 镇南将军", high = 12, low = 0},
				[13] = {Rank = "从二品 镇东将军", high = 13, low = 0},
				[14] = {Rank = "从二品 征北将军", high = 14, low = 0},
				[15] = {Rank = "从二品 征西将军", high = 15, low = 0},
				[16] = {Rank = "从二品 征南将军", high = 16, low = 0},
				[17] = {Rank = "从二品 征东将军", high = 17, low = 0},
				[18] = {Rank = "从二品 前领军将军", high = 18, low = 30},
				[19] = {Rank = "从二品 后领军将军", high = 31, low = 50},
				[20] = {Rank = "从二品 左领军将军", high = 51, low = 100},
				[21] = {Rank = "从二品 右领军将军", high = 101, low = 1000},
					  }
award_Alltitle[50] = {
				[1] = {Rank = "一骑当千", high = 1, low = 30},
				[2] = {Rank = "武艺大师", high = 31, low = 100},
				[3] = {Rank = "武艺高手", high = 101, low = 200},
				[4] = {Rank = "习武之人", high = 201, low = 500},
					  }
award_Alltitle[24] = {
				[1] = {Rank = "天下第一仁君", high = 1, low = 0},
				[2] = {Rank = "三君贤师", high = 2, low = 4},
				[3] = {Rank = "八骏名士", high = 5, low = 12},
				[4] = {Rank = "八顾名士", high = 13, low = 20},
				[5] = {Rank = "八及君子", high = 21, low = 28},
				[6] = {Rank = "八厨君子", high = 29, low = 36},
					  }
award_Alltitle[450] = {
				[1] = {Rank = "大魏霸主", high = 1, low = 0},
				[2] = {Rank = "大魏英主", high = 2, low = 0},
				[3] = {Rank = "大魏明主", high = 3, low = 0},
				[4] = {Rank = "大魏雄主", high = 4, low = 0},
				[5] = {Rank = "大魏强主", high = 5, low = 0},
					  }
award_Alltitle[451] = {
				[1] = {Rank = "大蜀霸主", high = 1, low = 0},
				[2] = {Rank = "大蜀英主", high = 2, low = 0},
				[3] = {Rank = "大蜀明主", high = 3, low = 0},
				[4] = {Rank = "大蜀雄主", high = 4, low = 0},
				[5] = {Rank = "大蜀强主", high = 5, low = 0},
					  }
award_Alltitle[452] = {
				[1] = {Rank = "大吴霸主", high = 1, low = 0},
				[2] = {Rank = "大吴英主", high = 2, low = 0},
				[3] = {Rank = "大吴明主", high = 3, low = 0},
				[4] = {Rank = "大吴雄主", high = 4, low = 0},
				[5] = {Rank = "大吴强主", high = 5, low = 0},
					  }
award_Alltitle[360] = {
				[1] = {Rank = "天朝良师", high = 1, low = 100},
					  }
award_Alltitle[562] = {
				[1] = {Rank = "商会大当家", high = 1, low = 0},
				[2] = {Rank = "商会长老", high = 2, low = 10},
				[3] = {Rank = "商会执事", high = 11, low = 30},
					  }
award_Alltitle[359] = {
				[1] = {Rank = "^FFFD44天禄小福神", high = 1, low = 0},
				[2] = {Rank = "^FF9C00天禄小福星", high = 2, low = 10},
					  }
award_Alltitle[255] = {
				[1] = {Rank = "^FF7D2F武圣衣钵传人", high = 1, low = 0},
				[2] = {Rank = "^FF7D2F武圣门徒", high = 2, low = 3},
				[3] = {Rank = "^FF7D2F武圣小徒", high = 4, low = 10},
				[4] = {Rank = "^FF7D2F武圣小友", high = 11, low = 100},
				[5] = {Rank = "^FF7D2F武圣崇拜者", high = 101, low = 500},
					  }
award_Alltitle[361] = {
				[1] = {Rank = "义薄云天荡九州", high = 1, low = 0},
				[2] = {Rank = "阵前一喝破人胆", high = 2, low = 0},
				[3] = {Rank = "龙吟虎啸贯千秋", high = 3, low = 0},
				[4] = {Rank = "狮盔银铠冠三军", high = 4, low = 0},
				[5] = {Rank = "长弓满月惊风雷", high = 5, low = 0},
					  }
award_Alltitle[362] = {
				[1] = {Rank = "战群僚一人勇", high = 1, low = 3},
				[2] = {Rank = "精锐将臣", high = 4, low = 50},
					  }
award_Alltitle[363] = {
				[1] = {Rank = "战群僚一人勇", high = 1, low = 3},
				[2] = {Rank = "精锐将臣", high = 4, low = 50},
					  }
award_Alltitle[364] = {
				[1] = {Rank = "战群僚一人勇", high = 1, low = 3},
				[2] = {Rank = "精锐将臣", high = 4, low = 50},
					  }
					  
rank_disp = {};

function rank_disp:GetDescription(id, rank, last_rank, name, prof, val)
--军团等级数值是从0开始，需要加1后显示

    local now_val = 0
    if id == 61 then
    	now_val = val + 1
    else
    	now_val = val
    end

	local trend , ranktext , value = "" , "" , 0
	local award_title = ""
--仁义值排行榜发称号

	for rankid, rankinfo in pairs(award_Alltitle) do
		if id == rankid then
			for k,v in pairs(rankinfo) do
				if  v.low == 0 then
					if rank == v.high then
						award_title = v.Rank
					end
				else
					if rank >= v.high and rank <= v.low then
						award_title = v.Rank
					end
				end
			end
		end
		if award_Alltitle == nil then
			award_title = ""
		end
	end

--整理并返回排行版显示内容ranktext
	if last_rank <= 0 and last_rank ~= -1 then
		trend = "^FFFD44新"
	elseif last_rank == -1 then
		trend = "^8eb9ff--"
	else
		if rank < last_rank then
			trend = string.format("%s%d" , "^FF765C↑" , last_rank-rank)
		elseif rank > last_rank then
			trend = string.format("%s%d" , "^12ff00↓" , rank-last_rank)
		else
			trend = "^8eb9ff--"
		end
	end
--转生后排行榜等级显示
	if id == 1 then
		if val > 80 then
			now_val = string.format("%s%s", "英雄", val - 80)
		else
			now_val = val
		end
	end
	value = string.format("%s%s" , now_val , rank_list[id].word)
	ranktext = string.format("%s%s%s%s%s%s%s%s%s" , rank , "\t" , trend , "\t" , name , "\t" , value , "\t" , award_title)
	if now_val == 0 then
		ranktext = ""
	end
	return ranktext
end

--------------------------------------------------------
--排行榜个人排名显示

--------------------------------------------------------
myranklist = {}
myranklist[3] = {rank1 = 11, rank2 = 500}
myranklist[203] = {rank1 = 11, rank2 = 500}
myranklist[253] = {rank1 = 11, rank2 = 500}
myranklist[309] = {rank1 = 11, rank2 = 500}
myranklist[359] = {rank1 = 11, rank2 = 500}

function rank_disp:SendSelfRank(tableid, selfrank, famerange, before)
	-- 区间排名
	if selfrank == 0 and famerange > 0 then
		if before == true then
			for k, v in pairs(myranklist) do
				if tableid == k then
					myrank = tostring(v.rank1) .. "-" .. tostring(v.rank2)
					break
				else
					myrank = tostring(famerange + 1) .. "-" .. tostring(famerange + 500)
				end
			end
		else
			for k, v in pairs(myranklist) do
				if tableid == k then
					myrank = tostring(v.rank2) .. "+"
					break
				else
					myrank = tostring(famerange + 500) .. "+"
				end
			end
		end
	-- 其他
	elseif selfrank > 0 and famerange == 0 then
		for k, v in pairs(myranklist) do
			if tableid == k then
				if selfrank < v.rank1 then
					myrank = tostring(selfrank)
				end
				break
			else
				myrank = tostring(selfrank)
			end
		end
	elseif  selfrank == 0 and famerange == 0 then
		myrank = "0"
	else
		myrank = tostring(selfrank)
	end
	return myrank
end

---测试排行榜输出是否正确

--local id, rank, last_rank, name, prof, val = 0 , 0 , 0 , "" , 0 , 0
--
--StdPrint("a\t")
--id=io.read("*number")
--StdPrint("a\t")
--rank=io.read("*number")
--StdPrint("a\t")
--last_rank=io.read("*number")
--StdPrint("a\t")
--name=io.read("*number")
--StdPrint("a\t")
--prof=io.read("*number")
--StdPrint("a\t")
--val=io.read("*number")
--
--local rt = rank_disp:GetDescription(id, rank, last_rank, name, prof, val)
--
--StdPrint(rt)
