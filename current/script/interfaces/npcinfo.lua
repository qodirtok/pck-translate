local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

-- type 1 代表功能Npc
-- type 2 代表任务Npc
-- type 3 代表功能Monster
NpcInfo = {}
NpcInfo[1] = {MapId = 1, Id = 9, Type = 3, pLv ="1", Note = ""}
NpcInfo[2] = {MapId = 1, Id = 10, Type = 3, pLv ="3", Note = ""}
NpcInfo[3] = {MapId = 1, Id = 11, Type = 3, pLv ="2", Note = ""}
NpcInfo[4] = {MapId = 1, Id = 12, Type = 3, pLv ="4", Note = ""}
NpcInfo[5] = {MapId = 1, Id = 13, Type = 3, pLv ="5", Note = ""}
NpcInfo[6] = {MapId = 1, Id = 14, Type = 3, pLv ="6", Note = ""}
NpcInfo[7] = {MapId = 1, Id = 15, Type = 3, pLv ="7", Note = ""}
NpcInfo[8] = {MapId = 1, Id = 16, Type = 3, pLv ="8", Note = ""}
NpcInfo[9] = {MapId = 1, Id = 17, Type = 3, pLv ="8", Note = ""}
NpcInfo[10] = {MapId = 1, Id = 18, Type = 3, pLv ="9", Note = ""}
NpcInfo[11] = {MapId = 1, Id = 19, Type = 3, pLv ="10", Note = ""}
NpcInfo[12] = {MapId = 1, Id = 21, Type = 3, pLv ="10", Note = ""}
NpcInfo[13] = {MapId = 1, Id = 22, Type = 3, pLv ="11", Note = ""}
NpcInfo[14] = {MapId = 1, Id = 20, Type = 3, pLv ="11", Note = ""}
NpcInfo[15] = {MapId = 1, Id = 24, Type = 3, pLv ="12", Note = ""}
NpcInfo[16] = {MapId = 1, Id = 23, Type = 3, pLv ="11", Note = ""}
NpcInfo[17] = {MapId = 1, Id = 25, Type = 3, pLv ="12", Note = ""}
NpcInfo[18] = {MapId = 1, Id = 26, Type = 3, pLv ="13", Note = ""}
NpcInfo[19] = {MapId = 1, Id = 1818, Type = 3, pLv ="13", Note = ""}
NpcInfo[20] = {MapId = 1, Id = 27, Type = 3, pLv ="13", Note = ""}
NpcInfo[21] = {MapId = 1, Id = 31, Type = 3, pLv ="14", Note = ""}
NpcInfo[22] = {MapId = 1, Id = 30, Type = 3, pLv ="13", Note = ""}
NpcInfo[23] = {MapId = 1, Id = 32, Type = 3, pLv ="60", Note = ""}
NpcInfo[24] = {MapId = 1, Id = 33, Type = 3, pLv ="61", Note = ""}
NpcInfo[25] = {MapId = 1, Id = 28, Type = 3, pLv ="14", Note = ""}
NpcInfo[26] = {MapId = 1, Id = 29, Type = 3, pLv ="14", Note = ""}
NpcInfo[27] = {MapId = 1, Id = 1749, Type = 3, pLv ="15", Note = ""}
NpcInfo[28] = {MapId = 1, Id = 1748, Type = 3, pLv ="15", Note = ""}
NpcInfo[29] = {MapId = 1, Id = 1747, Type = 3, pLv ="11", Note = ""}
NpcInfo[30] = {MapId = 1, Id = 1821, Type = 3, pLv ="15", Note = ""}
NpcInfo[31] = {MapId = 1, Id = 1819, Type = 3, pLv ="14", Note = ""}
NpcInfo[32] = {MapId = 1, Id = 3514, Type = 3, pLv ="13", Note = ""}
NpcInfo[33] = {MapId = 1, Id = 3515, Type = 3, pLv ="13", Note = ""}
NpcInfo[34] = {MapId = 1, Id = 8016, Type = 3, pLv ="62", Note = ""}
NpcInfo[35] = {MapId = 1, Id = 8013, Type = 3, pLv ="61", Note = ""}
NpcInfo[36] = {MapId = 1, Id = 8014, Type = 3, pLv ="61", Note = ""}
NpcInfo[37] = {MapId = 1, Id = 8015, Type = 3, pLv ="60", Note = ""}
NpcInfo[38] = {MapId = 1, Id = 13384, Type = 3, pLv ="20", Note = ""}
NpcInfo[39] = {MapId = 1, Id = 21070, Type = 3, pLv ="17", Note = ""}
NpcInfo[40] = {MapId = 1, Id = 1875, Type = 2, SubType = 3, pLv ="20", Note = "驿站老板"}
NpcInfo[41] = {MapId = 1, Id = 1877, Type = 2, SubType = 0, pLv ="21", Note = "兵器商"}
NpcInfo[42] = {MapId = 1, Id = 1879, Type = 2, SubType = 0, pLv ="27", Note = "饰品商"}
NpcInfo[43] = {MapId = 1, Id = 1878, Type = 2, SubType = 0, pLv ="27", Note = "护具商"}
NpcInfo[44] = {MapId = 1, Id = 1880, Type = 2, SubType = 0, pLv ="61", Note = "食品商"}
NpcInfo[45] = {MapId = 1, Id = 1884, Type = 2, SubType = 10, pLv ="60", Note = "仓库老板"}
NpcInfo[46] = {MapId = 1, Id = 1921, Type = 2, SubType = 0, pLv ="61", Note = "采集师"}
NpcInfo[47] = {MapId = 1, Id = 1923, Type = 2, SubType = 0, pLv ="16", Note = "烹饪师"}
NpcInfo[48] = {MapId = 1, Id = 1917, Type = 2, SubType = 0, pLv ="17", Note = "兵器师"}
NpcInfo[49] = {MapId = 1, Id = 1919, Type = 2, SubType = 0, pLv ="21", Note = "护具师"}
NpcInfo[50] = {MapId = 1, Id = 3346, Type = 2, SubType = 0, pLv ="26", Note = "桃园武师"}
NpcInfo[51] = {MapId = 1, Id = 3385, Type = 2, SubType = 0, pLv ="27", Note = "酒馆伙计"}
NpcInfo[52] = {MapId = 1, Id = 1882, Type = 2, SubType = 0, pLv ="18", Note = "三军教习"}
NpcInfo[53] = {MapId = 1, Id = 1929, Type = 2, SubType = 0, pLv ="17", Note = "医师"}
NpcInfo[54] = {MapId = 1, Id = 5075, Type = 2, SubType = 0, pLv ="19", Note = "武师"}
NpcInfo[55] = {MapId = 1, Id = 3348, Type = 2, SubType = 0, pLv ="25", Note = "清凉驿武师"}
NpcInfo[56] = {MapId = 1, Id = 5435, Type = 2, SubType = 4, pLv ="22", Note = "杂货商"}
NpcInfo[57] = {MapId = 1, Id = 8618, Type = 2, SubType = 0, pLv ="23", Note = "军令官"}
NpcInfo[58] = {MapId = 1, Id = 8683, Type = 2, SubType = 0, pLv ="24", Note = "邮件管理员"}
NpcInfo[59] = {MapId = 1, Id = 1648, Type = 1, pLv ="27", Note = "桃园村长"}
NpcInfo[60] = {MapId = 1, Id = 1651, Type = 1, pLv ="20", Note = "相师"}
NpcInfo[61] = {MapId = 1, Id = 1653, Type = 1, pLv ="21", Note = "桃园村民"}
NpcInfo[62] = {MapId = 1, Id = 1659, Type = 1, pLv ="25", Note = "隐士"}
NpcInfo[63] = {MapId = 1, Id = 1658, Type = 1, pLv ="24", Note = "河北名将"}
NpcInfo[64] = {MapId = 1, Id = 1662, Type = 1, pLv ="20", Note = "草莽英雄"}
NpcInfo[65] = {MapId = 1, Id = 1735, Type = 1, pLv ="27", Note = "农场主夫人"}
NpcInfo[66] = {MapId = 1, Id = 1736, Type = 1, pLv ="22", Note = "农场主之子"}
NpcInfo[67] = {MapId = 1, Id = 1663, Type = 1, pLv ="23", Note = "草莽英雄"}
NpcInfo[68] = {MapId = 1, Id = 3152, Type = 1, pLv ="61", Note = "农田主"}
NpcInfo[69] = {MapId = 1, Id = 2484, Type = 1, pLv ="62", Note = "冀州都尉"}
NpcInfo[70] = {MapId = 1, Id = 1657, Type = 1, pLv ="17", Note = "燕赵酒徒"}
NpcInfo[71] = {MapId = 1, Id = 1656, Type = 1, pLv ="28", Note = "桃园秀才"}
NpcInfo[72] = {MapId = 1, Id = 3255, Type = 1, pLv ="28", Note = "桃园村民"}
NpcInfo[73] = {MapId = 1, Id = 3258, Type = 1, pLv ="29", Note = "桃园村民"}
NpcInfo[74] = {MapId = 1, Id = 3264, Type = 1, pLv ="29", Note = "农夫"}
NpcInfo[75] = {MapId = 1, Id = 3267, Type = 1, pLv ="29", Note = "桃园村民"}
NpcInfo[76] = {MapId = 1, Id = 3270, Type = 1, pLv ="30", Note = "冀州太守"}
NpcInfo[77] = {MapId = 1, Id = 3285, Type = 1, pLv ="30", Note = "常山居民"}
NpcInfo[78] = {MapId = 1, Id = 3288, Type = 1, pLv ="30", Note = "常山居民"}
NpcInfo[79] = {MapId = 1, Id = 3273, Type = 1, pLv ="31", Note = "冀州治中"}
NpcInfo[80] = {MapId = 1, Id = 3276, Type = 1, pLv ="31", Note = "河北谋士"}
NpcInfo[81] = {MapId = 1, Id = 3279, Type = 1, pLv ="31", Note = "冀州典军"}
NpcInfo[82] = {MapId = 1, Id = 3282, Type = 1, pLv ="32", Note = "河北谋士"}
NpcInfo[83] = {MapId = 1, Id = 3308, Type = 1, pLv ="32", Note = "广川县尉"}
NpcInfo[84] = {MapId = 1, Id = 3326, Type = 1, pLv ="32", Note = ""}
NpcInfo[85] = {MapId = 1, Id = 3307, Type = 1, pLv ="33", Note = "河北隐士"}
NpcInfo[86] = {MapId = 1, Id = 1654, Type = 1, pLv ="32", Note = "桃园村民"}
NpcInfo[87] = {MapId = 1, Id = 1652, Type = 1, pLv ="33", Note = "桃园村民"}
NpcInfo[88] = {MapId = 1, Id = 3252, Type = 1, pLv ="34", Note = "桃园长者"}
NpcInfo[89] = {MapId = 1, Id = 3882, Type = 1, pLv ="34", Note = "渔夫"}
NpcInfo[90] = {MapId = 1, Id = 1661, Type = 1, pLv ="35", Note = "建安七子"}
NpcInfo[91] = {MapId = 1, Id = 1660, Type = 1, pLv ="34", Note = "经学大师"}
NpcInfo[92] = {MapId = 1, Id = 3996, Type = 1, pLv ="35", Note = "苏氏古宅主人"}
NpcInfo[93] = {MapId = 1, Id = 4030, Type = 1, pLv ="35", Note = "冀州居民"}
NpcInfo[94] = {MapId = 1, Id = 6686, Type = 1, pLv ="36", Note = "捕快"}
NpcInfo[95] = {MapId = 1, Id = 3165, Type = 1, pLv ="37", Note = "仙人"}
NpcInfo[96] = {MapId = 1, Id = 23353, Type = 1, pLv ="36", Note = "流浪的画师"}
NpcInfo[97] = {MapId = 2, Id = 53, Type = 3, pLv ="60", Note = ""}
NpcInfo[98] = {MapId = 2, Id = 37, Type = 3, pLv ="16", Note = ""}
NpcInfo[99] = {MapId = 2, Id = 38, Type = 3, pLv ="17", Note = ""}
NpcInfo[100] = {MapId = 2, Id = 42, Type = 3, pLv ="20", Note = ""}
NpcInfo[101] = {MapId = 2, Id = 1826, Type = 3, pLv ="20", Note = ""}
NpcInfo[102] = {MapId = 2, Id = 1825, Type = 3, pLv ="21", Note = ""}
NpcInfo[103] = {MapId = 2, Id = 1824, Type = 3, pLv ="20", Note = ""}
NpcInfo[104] = {MapId = 2, Id = 1831, Type = 3, pLv ="27", Note = ""}
NpcInfo[105] = {MapId = 2, Id = 1830, Type = 3, pLv ="27", Note = ""}
NpcInfo[106] = {MapId = 2, Id = 4029, Type = 3, pLv ="61", Note = ""}
NpcInfo[107] = {MapId = 2, Id = 35, Type = 3, pLv ="16", Note = ""}
NpcInfo[108] = {MapId = 2, Id = 2610, Type = 3, pLv ="17", Note = ""}
NpcInfo[109] = {MapId = 2, Id = 43, Type = 3, pLv ="21", Note = ""}
NpcInfo[110] = {MapId = 2, Id = 46, Type = 3, pLv ="26", Note = ""}
NpcInfo[111] = {MapId = 2, Id = 47, Type = 3, pLv ="26", Note = ""}
NpcInfo[112] = {MapId = 2, Id = 1829, Type = 3, pLv ="27", Note = ""}
NpcInfo[113] = {MapId = 2, Id = 1822, Type = 3, pLv ="18", Note = ""}
NpcInfo[114] = {MapId = 2, Id = 36, Type = 3, pLv ="17", Note = ""}
NpcInfo[115] = {MapId = 2, Id = 40, Type = 3, pLv ="19", Note = ""}
NpcInfo[116] = {MapId = 2, Id = 39, Type = 3, pLv ="19", Note = ""}
NpcInfo[117] = {MapId = 2, Id = 1823, Type = 3, pLv ="18", Note = ""}
NpcInfo[118] = {MapId = 2, Id = 52, Type = 3, pLv ="25", Note = ""}
NpcInfo[119] = {MapId = 2, Id = 44, Type = 3, pLv ="23", Note = ""}
NpcInfo[120] = {MapId = 2, Id = 45, Type = 3, pLv ="22", Note = ""}
NpcInfo[121] = {MapId = 2, Id = 50, Type = 3, pLv ="23", Note = ""}
NpcInfo[122] = {MapId = 2, Id = 1828, Type = 3, pLv ="24", Note = ""}
NpcInfo[123] = {MapId = 2, Id = 2435, Type = 3, pLv ="25", Note = ""}
NpcInfo[124] = {MapId = 2, Id = 49, Type = 3, pLv ="25", Note = ""}
NpcInfo[125] = {MapId = 2, Id = 48, Type = 3, pLv ="26", Note = ""}
NpcInfo[126] = {MapId = 2, Id = 1827, Type = 3, pLv ="22", Note = ""}
NpcInfo[127] = {MapId = 2, Id = 2613, Type = 3, pLv ="27", Note = ""}
NpcInfo[128] = {MapId = 2, Id = 2611, Type = 3, pLv ="20", Note = ""}
NpcInfo[129] = {MapId = 2, Id = 3208, Type = 3, pLv ="21", Note = ""}
NpcInfo[130] = {MapId = 2, Id = 3211, Type = 3, pLv ="25", Note = ""}
NpcInfo[131] = {MapId = 2, Id = 2612, Type = 3, pLv ="24", Note = ""}
NpcInfo[132] = {MapId = 2, Id = 4145, Type = 3, pLv ="20", Note = ""}
NpcInfo[133] = {MapId = 2, Id = 4823, Type = 3, pLv ="27", Note = ""}
NpcInfo[134] = {MapId = 2, Id = 3209, Type = 3, pLv ="22", Note = ""}
NpcInfo[135] = {MapId = 2, Id = 3210, Type = 3, pLv ="23", Note = ""}
NpcInfo[136] = {MapId = 2, Id = 8125, Type = 3, pLv ="17", Note = ""}
NpcInfo[137] = {MapId = 2, Id = 8126, Type = 3, pLv ="22", Note = ""}
NpcInfo[138] = {MapId = 2, Id = 8127, Type = 3, pLv ="27", Note = ""}
NpcInfo[139] = {MapId = 2, Id = 8650, Type = 3, pLv ="60", Note = ""}
NpcInfo[140] = {MapId = 2, Id = 8651, Type = 3, pLv ="61", Note = ""}
NpcInfo[141] = {MapId = 2, Id = 8652, Type = 3, pLv ="61", Note = ""}
NpcInfo[142] = {MapId = 2, Id = 8653, Type = 3, pLv ="62", Note = ""}
NpcInfo[143] = {MapId = 2, Id = 21071, Type = 3, pLv ="17", Note = ""}
NpcInfo[144] = {MapId = 2, Id = 2797, Type = 2, SubType = 0, pLv ="60", Note = "旅行商"}
NpcInfo[145] = {MapId = 2, Id = 2689, Type = 2, SubType = 0, pLv ="61", Note = "安息商人"}
NpcInfo[146] = {MapId = 2, Id = 1885, Type = 2, SubType = 3, pLv ="61", Note = "驿站老板"}
NpcInfo[147] = {MapId = 2, Id = 1886, Type = 2, SubType = 0, pLv ="62", Note = "杂货商"}
NpcInfo[148] = {MapId = 2, Id = 2485, Type = 2, SubType = 0, pLv ="43", Note = "凉州都尉"}
NpcInfo[149] = {MapId = 2, Id = 1891, Type = 2, SubType = 3, pLv ="44", Note = "驿站老板"}
NpcInfo[150] = {MapId = 2, Id = 1890, Type = 2, SubType = 0, pLv ="39", Note = "食品商"}
NpcInfo[151] = {MapId = 2, Id = 1927, Type = 2, SubType = 0, pLv ="41", Note = "巧匠"}
NpcInfo[152] = {MapId = 2, Id = 1925, Type = 2, SubType = 0, pLv ="41", Note = "药师"}
NpcInfo[153] = {MapId = 2, Id = 3388, Type = 2, SubType = 0, pLv ="43", Note = "酒馆伙计"}
NpcInfo[154] = {MapId = 2, Id = 5436, Type = 2, SubType = 4, pLv ="43", Note = "杂货商"}
NpcInfo[155] = {MapId = 2, Id = 3352, Type = 2, SubType = 0, pLv ="45", Note = "马术师"}
NpcInfo[156] = {MapId = 2, Id = 16975, Type = 2, SubType = 3, pLv ="44", Note = "驿站老板"}
NpcInfo[157] = {MapId = 2, Id = 2676, Type = 1, pLv ="42", Note = "牧人"}
NpcInfo[158] = {MapId = 2, Id = 2678, Type = 1, pLv ="40", Note = "葡萄园主妻子"}
NpcInfo[159] = {MapId = 2, Id = 2680, Type = 1, pLv ="40", Note = "西凉名将"}
NpcInfo[160] = {MapId = 2, Id = 2681, Type = 1, pLv ="40", Note = "西凉名将"}
NpcInfo[161] = {MapId = 2, Id = 2682, Type = 1, pLv ="43", Note = "西凉线人"}
NpcInfo[162] = {MapId = 2, Id = 2683, Type = 1, pLv ="43", Note = "太守千金"}
NpcInfo[163] = {MapId = 2, Id = 2685, Type = 1, pLv ="62", Note = "赤墨墨者"}
NpcInfo[164] = {MapId = 2, Id = 2690, Type = 1, pLv ="42", Note = "安息传教士"}
NpcInfo[165] = {MapId = 2, Id = 2692, Type = 1, pLv ="46", Note = "醉汉"}
NpcInfo[166] = {MapId = 2, Id = 2693, Type = 1, pLv ="47", Note = "凉州居民"}
NpcInfo[167] = {MapId = 2, Id = 2694, Type = 1, pLv ="47", Note = "凉州参军"}
NpcInfo[168] = {MapId = 2, Id = 2695, Type = 1, pLv ="49", Note = "杨氏族人"}
NpcInfo[169] = {MapId = 2, Id = 2696, Type = 1, pLv ="49", Note = "西凉名士"}
NpcInfo[170] = {MapId = 2, Id = 2697, Type = 1, pLv ="47", Note = "书生"}
NpcInfo[171] = {MapId = 2, Id = 2698, Type = 1, pLv ="48", Note = "高平伤兵"}
NpcInfo[172] = {MapId = 2, Id = 2699, Type = 1, pLv ="48", Note = "西凉舞师坊主"}
NpcInfo[173] = {MapId = 2, Id = 2784, Type = 1, pLv ="48", Note = "乐师"}
NpcInfo[174] = {MapId = 2, Id = 2787, Type = 1, pLv ="48", Note = "赌鬼"}
NpcInfo[175] = {MapId = 2, Id = 2700, Type = 1, pLv ="49", Note = "西域舞姬"}
NpcInfo[176] = {MapId = 2, Id = 2701, Type = 1, pLv ="49", Note = "西域琴师"}
NpcInfo[177] = {MapId = 2, Id = 2702, Type = 1, pLv ="50", Note = ""}
NpcInfo[178] = {MapId = 2, Id = 2704, Type = 1, pLv ="51", Note = "冀城员外"}
NpcInfo[179] = {MapId = 2, Id = 2703, Type = 1, pLv ="50", Note = "员外千金"}
NpcInfo[180] = {MapId = 2, Id = 2706, Type = 1, pLv ="51", Note = ""}
NpcInfo[181] = {MapId = 2, Id = 2705, Type = 1, pLv ="51", Note = ""}
NpcInfo[182] = {MapId = 2, Id = 2707, Type = 1, pLv ="52", Note = "青年富商"}
NpcInfo[183] = {MapId = 2, Id = 2708, Type = 1, pLv ="52", Note = "仙人"}
NpcInfo[184] = {MapId = 2, Id = 2709, Type = 1, pLv ="52", Note = ""}
NpcInfo[185] = {MapId = 2, Id = 2710, Type = 1, pLv ="52", Note = ""}
NpcInfo[186] = {MapId = 2, Id = 2803, Type = 1, pLv ="51", Note = "西凉太守"}
NpcInfo[187] = {MapId = 2, Id = 2711, Type = 1, pLv ="60", Note = ""}
NpcInfo[188] = {MapId = 2, Id = 3927, Type = 1, pLv ="61", Note = "西凉名将"}
NpcInfo[189] = {MapId = 2, Id = 3924, Type = 1, pLv ="61", Note = "西凉枭雄"}
NpcInfo[190] = {MapId = 2, Id = 3921, Type = 1, pLv ="62", Note = "神医弟子"}
NpcInfo[191] = {MapId = 2, Id = 4117, Type = 1, pLv ="51", Note = "驿站托运商"}
NpcInfo[192] = {MapId = 2, Id = 4805, Type = 1, pLv ="49", Note = "方士"}
NpcInfo[193] = {MapId = 2, Id = 5382, Type = 1, pLv ="48", Note = "凉州小贼"}
NpcInfo[194] = {MapId = 2, Id = 6158, Type = 1, pLv ="48", Note = "出关道督邮"}
NpcInfo[195] = {MapId = 2, Id = 6159, Type = 1, pLv ="51", Note = "东城寨督邮"}
NpcInfo[196] = {MapId = 2, Id = 6160, Type = 1, pLv ="52", Note = "凉州督邮"}
NpcInfo[197] = {MapId = 2, Id = 6161, Type = 1, pLv ="53", Note = "冀城镇督邮"}
NpcInfo[198] = {MapId = 2, Id = 6162, Type = 1, pLv ="52", Note = "长宁驿督邮"}
NpcInfo[199] = {MapId = 3, Id = 56, Type = 3, pLv ="28", Note = ""}
NpcInfo[200] = {MapId = 3, Id = 57, Type = 3, pLv ="28", Note = ""}
NpcInfo[201] = {MapId = 3, Id = 64, Type = 3, pLv ="29", Note = ""}
NpcInfo[202] = {MapId = 3, Id = 1851, Type = 3, pLv ="29", Note = ""}
NpcInfo[203] = {MapId = 3, Id = 1852, Type = 3, pLv ="29", Note = ""}
NpcInfo[204] = {MapId = 3, Id = 60, Type = 3, pLv ="30", Note = ""}
NpcInfo[205] = {MapId = 3, Id = 62, Type = 3, pLv ="30", Note = ""}
NpcInfo[206] = {MapId = 3, Id = 1853, Type = 3, pLv ="30", Note = ""}
NpcInfo[207] = {MapId = 3, Id = 63, Type = 3, pLv ="31", Note = ""}
NpcInfo[208] = {MapId = 3, Id = 61, Type = 3, pLv ="31", Note = ""}
NpcInfo[209] = {MapId = 3, Id = 1854, Type = 3, pLv ="31", Note = ""}
NpcInfo[210] = {MapId = 3, Id = 1855, Type = 3, pLv ="32", Note = ""}
NpcInfo[211] = {MapId = 3, Id = 1864, Type = 3, pLv ="32", Note = ""}
NpcInfo[212] = {MapId = 3, Id = 58, Type = 3, pLv ="32", Note = ""}
NpcInfo[213] = {MapId = 3, Id = 1857, Type = 3, pLv ="33", Note = ""}
NpcInfo[214] = {MapId = 3, Id = 1856, Type = 3, pLv ="32", Note = ""}
NpcInfo[215] = {MapId = 3, Id = 65, Type = 3, pLv ="33", Note = ""}
NpcInfo[216] = {MapId = 3, Id = 67, Type = 3, pLv ="34", Note = ""}
NpcInfo[217] = {MapId = 3, Id = 1859, Type = 3, pLv ="34", Note = ""}
NpcInfo[218] = {MapId = 3, Id = 68, Type = 3, pLv ="35", Note = ""}
NpcInfo[219] = {MapId = 3, Id = 66, Type = 3, pLv ="34", Note = ""}
NpcInfo[220] = {MapId = 3, Id = 71, Type = 3, pLv ="35", Note = ""}
NpcInfo[221] = {MapId = 3, Id = 72, Type = 3, pLv ="35", Note = ""}
NpcInfo[222] = {MapId = 3, Id = 73, Type = 3, pLv ="36", Note = ""}
NpcInfo[223] = {MapId = 3, Id = 1860, Type = 3, pLv ="36", Note = ""}
NpcInfo[224] = {MapId = 3, Id = 69, Type = 3, pLv ="37", Note = ""}
NpcInfo[225] = {MapId = 3, Id = 70, Type = 3, pLv ="37", Note = ""}
NpcInfo[226] = {MapId = 3, Id = 1861, Type = 3, pLv ="36", Note = ""}
NpcInfo[227] = {MapId = 3, Id = 1862, Type = 3, pLv ="37", Note = ""}
NpcInfo[228] = {MapId = 3, Id = 1863, Type = 3, pLv ="37", Note = ""}
NpcInfo[229] = {MapId = 3, Id = 74, Type = 3, pLv ="60", Note = ""}
NpcInfo[230] = {MapId = 3, Id = 75, Type = 3, pLv ="61", Note = ""}
NpcInfo[231] = {MapId = 3, Id = 76, Type = 3, pLv ="61", Note = ""}
NpcInfo[232] = {MapId = 3, Id = 2422, Type = 3, pLv ="30", Note = ""}
NpcInfo[233] = {MapId = 3, Id = 2424, Type = 3, pLv ="30", Note = ""}
NpcInfo[234] = {MapId = 3, Id = 2425, Type = 3, pLv ="32", Note = ""}
NpcInfo[235] = {MapId = 3, Id = 2426, Type = 3, pLv ="31", Note = ""}
NpcInfo[236] = {MapId = 3, Id = 2427, Type = 3, pLv ="33", Note = ""}
NpcInfo[237] = {MapId = 3, Id = 2428, Type = 3, pLv ="31", Note = ""}
NpcInfo[238] = {MapId = 3, Id = 2429, Type = 3, pLv ="33", Note = ""}
NpcInfo[239] = {MapId = 3, Id = 2430, Type = 3, pLv ="34", Note = ""}
NpcInfo[240] = {MapId = 3, Id = 2433, Type = 3, pLv ="34", Note = ""}
NpcInfo[241] = {MapId = 3, Id = 2434, Type = 3, pLv ="38", Note = ""}
NpcInfo[242] = {MapId = 3, Id = 3245, Type = 3, pLv ="37", Note = ""}
NpcInfo[243] = {MapId = 3, Id = 1858, Type = 3, pLv ="36", Note = ""}
NpcInfo[244] = {MapId = 3, Id = 4146, Type = 3, pLv ="30", Note = ""}
NpcInfo[245] = {MapId = 3, Id = 2432, Type = 3, pLv ="37", Note = ""}
NpcInfo[246] = {MapId = 3, Id = 8128, Type = 3, pLv ="32", Note = ""}
NpcInfo[247] = {MapId = 3, Id = 8129, Type = 3, pLv ="37", Note = ""}
NpcInfo[248] = {MapId = 3, Id = 8654, Type = 3, pLv ="60", Note = ""}
NpcInfo[249] = {MapId = 3, Id = 8655, Type = 3, pLv ="61", Note = ""}
NpcInfo[250] = {MapId = 3, Id = 8656, Type = 3, pLv ="61", Note = ""}
NpcInfo[251] = {MapId = 3, Id = 8657, Type = 3, pLv ="62", Note = ""}
NpcInfo[252] = {MapId = 3, Id = 21072, Type = 3, pLv ="32", Note = ""}
NpcInfo[253] = {MapId = 3, Id = 2201, Type = 2, SubType = 0, pLv ="60", Note = "巴蜀名将"}
NpcInfo[254] = {MapId = 3, Id = 1900, Type = 2, SubType = 0, pLv ="60", Note = "食品商"}
NpcInfo[255] = {MapId = 3, Id = 1901, Type = 2, SubType = 3, pLv ="62", Note = "驿站老板"}
NpcInfo[256] = {MapId = 3, Id = 2487, Type = 2, SubType = 0, pLv ="59", Note = "益州都尉"}
NpcInfo[257] = {MapId = 3, Id = 1895, Type = 2, SubType = 3, pLv ="58", Note = "驿站老板"}
NpcInfo[258] = {MapId = 3, Id = 4814, Type = 2, SubType = 0, pLv ="61", Note = "茶亭老板"}
NpcInfo[259] = {MapId = 3, Id = 5082, Type = 2, SubType = 0, pLv ="62", Note = "酒馆伙计"}
NpcInfo[260] = {MapId = 3, Id = 2488, Type = 2, SubType = 0, pLv ="60", Note = "官职介绍人"}
NpcInfo[261] = {MapId = 3, Id = 2203, Type = 1, pLv ="59", Note = "书生"}
NpcInfo[262] = {MapId = 3, Id = 2202, Type = 1, pLv ="60", Note = "白水军督"}
NpcInfo[263] = {MapId = 3, Id = 2204, Type = 1, pLv ="60", Note = "巴蜀名士"}
NpcInfo[264] = {MapId = 3, Id = 2460, Type = 1, pLv ="60", Note = "赤墨墨者"}
NpcInfo[265] = {MapId = 3, Id = 2461, Type = 1, pLv ="40", Note = "白墨墨者"}
NpcInfo[266] = {MapId = 3, Id = 2213, Type = 1, pLv ="62", Note = "五丁部落卫队长"}
NpcInfo[267] = {MapId = 3, Id = 2207, Type = 1, pLv ="60", Note = "五丁部落智囊"}
NpcInfo[268] = {MapId = 3, Id = 2208, Type = 1, pLv ="60", Note = "五丁部落猎手"}
NpcInfo[269] = {MapId = 3, Id = 2209, Type = 1, pLv ="60", Note = "五丁部落宗帅"}
NpcInfo[270] = {MapId = 3, Id = 2214, Type = 1, pLv ="63", Note = "五丁部落勇士"}
NpcInfo[271] = {MapId = 3, Id = 2218, Type = 1, pLv ="63", Note = "月溪谷巡山队长"}
NpcInfo[272] = {MapId = 3, Id = 2220, Type = 1, pLv ="63", Note = "采石场矿工"}
NpcInfo[273] = {MapId = 3, Id = 2219, Type = 1, pLv ="63", Note = "讨逆校尉"}
NpcInfo[274] = {MapId = 3, Id = 2221, Type = 1, pLv ="64", Note = "石匠"}
NpcInfo[275] = {MapId = 3, Id = 2223, Type = 1, pLv ="64", Note = "猎户"}
NpcInfo[276] = {MapId = 3, Id = 2222, Type = 1, pLv ="64", Note = ""}
NpcInfo[277] = {MapId = 3, Id = 2228, Type = 1, pLv ="64", Note = "仙人"}
NpcInfo[278] = {MapId = 3, Id = 2229, Type = 1, pLv ="65", Note = "仙人"}
NpcInfo[279] = {MapId = 3, Id = 2230, Type = 1, pLv ="65", Note = "仙童"}
NpcInfo[280] = {MapId = 3, Id = 2224, Type = 1, pLv ="65", Note = "益州别驾"}
NpcInfo[281] = {MapId = 3, Id = 2227, Type = 1, pLv ="65", Note = "风水相师"}
NpcInfo[282] = {MapId = 3, Id = 2234, Type = 1, pLv ="66", Note = "绵竹太守"}
NpcInfo[283] = {MapId = 3, Id = 2232, Type = 1, pLv ="66", Note = "益州从事"}
NpcInfo[284] = {MapId = 3, Id = 2245, Type = 1, pLv ="62", Note = "渡口船夫"}
NpcInfo[285] = {MapId = 3, Id = 2239, Type = 1, pLv ="64", Note = "成都护军"}
NpcInfo[286] = {MapId = 3, Id = 2240, Type = 1, pLv ="66", Note = "巴蜀名将"}
NpcInfo[287] = {MapId = 3, Id = 2238, Type = 1, pLv ="62", Note = "成都太守"}
NpcInfo[288] = {MapId = 3, Id = 2231, Type = 1, pLv ="66", Note = "军议校尉"}
NpcInfo[289] = {MapId = 3, Id = 2242, Type = 1, pLv ="61", Note = "挖笋人"}
NpcInfo[290] = {MapId = 3, Id = 2233, Type = 1, pLv ="66", Note = "成都居民"}
NpcInfo[291] = {MapId = 3, Id = 2244, Type = 1, pLv ="67", Note = "画师"}
NpcInfo[292] = {MapId = 3, Id = 2237, Type = 1, pLv ="72", Note = "成都居民"}
NpcInfo[293] = {MapId = 3, Id = 2440, Type = 1, pLv ="150", Note = "汉嘉伤兵"}
NpcInfo[294] = {MapId = 3, Id = 2241, Type = 1, pLv ="150", Note = ""}
NpcInfo[295] = {MapId = 3, Id = 2243, Type = 1, pLv ="150", Note = "杜宇山土著"}
NpcInfo[296] = {MapId = 3, Id = 2379, Type = 1, pLv ="150", Note = "五丁部落少女"}
NpcInfo[297] = {MapId = 3, Id = 2246, Type = 1, pLv ="65", Note = "秘境指路者"}
NpcInfo[298] = {MapId = 3, Id = 2247, Type = 1, pLv ="150", Note = "秘境指路者"}
NpcInfo[299] = {MapId = 3, Id = 2248, Type = 1, pLv ="150", Note = "秘境指路者"}
NpcInfo[300] = {MapId = 3, Id = 2249, Type = 1, pLv ="67", Note = "秘境指路者"}
NpcInfo[301] = {MapId = 3, Id = 2250, Type = 1, pLv ="67", Note = "秘境指路者"}
NpcInfo[302] = {MapId = 3, Id = 2226, Type = 1, pLv ="67", Note = "鲍家庄村民"}
NpcInfo[303] = {MapId = 3, Id = 2225, Type = 1, pLv ="68", Note = "鲍家庄村民"}
NpcInfo[304] = {MapId = 3, Id = 3382, Type = 1, pLv ="68", Note = ""}
NpcInfo[305] = {MapId = 3, Id = 6163, Type = 1, pLv ="68", Note = "落凤坡督邮"}
NpcInfo[306] = {MapId = 3, Id = 6164, Type = 1, pLv ="68", Note = "五丁壮士冢督邮"}
NpcInfo[307] = {MapId = 3, Id = 6165, Type = 1, pLv ="69", Note = "太平驿督邮"}
NpcInfo[308] = {MapId = 3, Id = 6166, Type = 1, pLv ="69", Note = "绵竹关督邮"}
NpcInfo[309] = {MapId = 3, Id = 6167, Type = 1, pLv ="69", Note = "成都督邮"}
NpcInfo[310] = {MapId = 3, Id = 6168, Type = 1, pLv ="69", Note = "卢津关督邮"}
NpcInfo[311] = {MapId = 3, Id = 26171, Type = 1, pLv ="70", Note = "修仙者"}
NpcInfo[312] = {MapId = 4, Id = 5449, Type = 3, pLv ="39", Note = ""}
NpcInfo[313] = {MapId = 4, Id = 6039, Type = 3, pLv ="39", Note = ""}
NpcInfo[314] = {MapId = 4, Id = 5450, Type = 3, pLv ="39", Note = ""}
NpcInfo[315] = {MapId = 4, Id = 6041, Type = 3, pLv ="40", Note = ""}
NpcInfo[316] = {MapId = 4, Id = 6040, Type = 3, pLv ="40", Note = ""}
NpcInfo[317] = {MapId = 4, Id = 6042, Type = 3, pLv ="40", Note = ""}
NpcInfo[318] = {MapId = 4, Id = 6044, Type = 3, pLv ="41", Note = ""}
NpcInfo[319] = {MapId = 4, Id = 6043, Type = 3, pLv ="41", Note = ""}
NpcInfo[320] = {MapId = 4, Id = 6046, Type = 3, pLv ="42", Note = ""}
NpcInfo[321] = {MapId = 4, Id = 6045, Type = 3, pLv ="42", Note = ""}
NpcInfo[322] = {MapId = 4, Id = 6055, Type = 3, pLv ="43", Note = ""}
NpcInfo[323] = {MapId = 4, Id = 6047, Type = 3, pLv ="42", Note = ""}
NpcInfo[324] = {MapId = 4, Id = 6048, Type = 3, pLv ="42", Note = ""}
NpcInfo[325] = {MapId = 4, Id = 6049, Type = 3, pLv ="43", Note = ""}
NpcInfo[326] = {MapId = 4, Id = 6050, Type = 3, pLv ="43", Note = ""}
NpcInfo[327] = {MapId = 4, Id = 6051, Type = 3, pLv ="44", Note = ""}
NpcInfo[328] = {MapId = 4, Id = 6059, Type = 3, pLv ="45", Note = ""}
NpcInfo[329] = {MapId = 4, Id = 6053, Type = 3, pLv ="44", Note = ""}
NpcInfo[330] = {MapId = 4, Id = 6052, Type = 3, pLv ="44", Note = ""}
NpcInfo[331] = {MapId = 4, Id = 6056, Type = 3, pLv ="45", Note = ""}
NpcInfo[332] = {MapId = 4, Id = 6057, Type = 3, pLv ="45", Note = ""}
NpcInfo[333] = {MapId = 4, Id = 6058, Type = 3, pLv ="45", Note = ""}
NpcInfo[334] = {MapId = 4, Id = 6063, Type = 3, pLv ="60", Note = ""}
NpcInfo[335] = {MapId = 4, Id = 6062, Type = 3, pLv ="61", Note = ""}
NpcInfo[336] = {MapId = 4, Id = 6061, Type = 3, pLv ="61", Note = ""}
NpcInfo[337] = {MapId = 4, Id = 6060, Type = 3, pLv ="62", Note = ""}
NpcInfo[338] = {MapId = 4, Id = 6742, Type = 3, pLv ="43", Note = ""}
NpcInfo[339] = {MapId = 4, Id = 6743, Type = 3, pLv ="44", Note = ""}
NpcInfo[340] = {MapId = 4, Id = 6741, Type = 3, pLv ="42", Note = ""}
NpcInfo[341] = {MapId = 4, Id = 6619, Type = 3, pLv ="38", Note = ""}
NpcInfo[342] = {MapId = 4, Id = 6620, Type = 3, pLv ="39", Note = ""}
NpcInfo[343] = {MapId = 4, Id = 6649, Type = 3, pLv ="41", Note = ""}
NpcInfo[344] = {MapId = 4, Id = 6656, Type = 3, pLv ="41", Note = ""}
NpcInfo[345] = {MapId = 4, Id = 6659, Type = 3, pLv ="41", Note = ""}
NpcInfo[346] = {MapId = 4, Id = 6666, Type = 3, pLv ="41", Note = ""}
NpcInfo[347] = {MapId = 4, Id = 6676, Type = 3, pLv ="43", Note = ""}
NpcInfo[348] = {MapId = 4, Id = 6679, Type = 3, pLv ="43", Note = ""}
NpcInfo[349] = {MapId = 4, Id = 6680, Type = 3, pLv ="45", Note = ""}
NpcInfo[350] = {MapId = 4, Id = 6054, Type = 3, pLv ="44", Note = ""}
NpcInfo[351] = {MapId = 4, Id = 7338, Type = 3, pLv ="45", Note = ""}
NpcInfo[352] = {MapId = 4, Id = 7214, Type = 3, pLv ="44", Note = ""}
NpcInfo[353] = {MapId = 4, Id = 7215, Type = 3, pLv ="44", Note = ""}
NpcInfo[354] = {MapId = 4, Id = 7216, Type = 3, pLv ="44", Note = ""}
NpcInfo[355] = {MapId = 4, Id = 8130, Type = 3, pLv ="42", Note = ""}
NpcInfo[356] = {MapId = 4, Id = 8142, Type = 3, pLv ="40", Note = ""}
NpcInfo[357] = {MapId = 4, Id = 8143, Type = 3, pLv ="40", Note = ""}
NpcInfo[358] = {MapId = 4, Id = 8144, Type = 3, pLv ="40", Note = ""}
NpcInfo[359] = {MapId = 4, Id = 8145, Type = 3, pLv ="40", Note = ""}
NpcInfo[360] = {MapId = 4, Id = 12447, Type = 3, pLv ="43", Note = ""}
NpcInfo[361] = {MapId = 4, Id = 12359, Type = 3, pLv ="43", Note = ""}
NpcInfo[362] = {MapId = 4, Id = 13235, Type = 3, pLv ="62", Note = ""}
NpcInfo[363] = {MapId = 4, Id = 13377, Type = 3, pLv ="45", Note = ""}
NpcInfo[364] = {MapId = 4, Id = 21073, Type = 3, pLv ="42", Note = ""}
NpcInfo[365] = {MapId = 4, Id = 3401, Type = 2, SubType = 0, pLv ="80", Note = "食品商"}
NpcInfo[366] = {MapId = 4, Id = 5438, Type = 2, SubType = 4, pLv ="80", Note = "杂货商"}
NpcInfo[367] = {MapId = 4, Id = 6708, Type = 2, SubType = 0, pLv ="80", Note = "酒馆伙计"}
NpcInfo[368] = {MapId = 4, Id = 7223, Type = 2, SubType = 0, pLv ="80", Note = "南中商人"}
NpcInfo[369] = {MapId = 4, Id = 13512, Type = 2, SubType = 0, pLv ="80", Note = "兵马传送使"}
NpcInfo[370] = {MapId = 4, Id = 6421, Type = 1, pLv ="150", Note = "南中隐士"}
NpcInfo[371] = {MapId = 4, Id = 6422, Type = 1, pLv ="150", Note = "守庙老人"}
NpcInfo[372] = {MapId = 4, Id = 6423, Type = 1, pLv ="150", Note = "神医弟子"}
NpcInfo[373] = {MapId = 4, Id = 6424, Type = 1, pLv ="150", Note = ""}
NpcInfo[374] = {MapId = 4, Id = 6425, Type = 1, pLv ="150", Note = "南中渔夫"}
NpcInfo[375] = {MapId = 4, Id = 6426, Type = 1, pLv ="150", Note = "渔家少女"}
NpcInfo[376] = {MapId = 4, Id = 6427, Type = 1, pLv ="150", Note = ""}
NpcInfo[377] = {MapId = 4, Id = 6428, Type = 1, pLv ="150", Note = "行商人"}
NpcInfo[378] = {MapId = 4, Id = 6429, Type = 1, pLv ="150", Note = "南蛮长老"}
NpcInfo[379] = {MapId = 4, Id = 6430, Type = 1, pLv ="150", Note = "南蛮村民"}
NpcInfo[380] = {MapId = 4, Id = 6431, Type = 1, pLv ="150", Note = "南蛮猎手"}
NpcInfo[381] = {MapId = 4, Id = 6432, Type = 1, pLv ="150", Note = "南蛮村女"}
NpcInfo[382] = {MapId = 4, Id = 6433, Type = 1, pLv ="150", Note = "蛮王"}
NpcInfo[383] = {MapId = 4, Id = 6434, Type = 1, pLv ="150", Note = "蛮王夫人"}
NpcInfo[384] = {MapId = 4, Id = 6435, Type = 1, pLv ="150", Note = ""}
NpcInfo[385] = {MapId = 4, Id = 6436, Type = 1, pLv ="150", Note = "炼蛊少女"}
NpcInfo[386] = {MapId = 4, Id = 6437, Type = 1, pLv ="150", Note = ""}
NpcInfo[387] = {MapId = 4, Id = 6439, Type = 1, pLv ="150", Note = "蛮将"}
NpcInfo[388] = {MapId = 4, Id = 6440, Type = 1, pLv ="150", Note = "南蛮郡主"}
NpcInfo[389] = {MapId = 4, Id = 6441, Type = 1, pLv ="150", Note = "八纳洞主"}
NpcInfo[390] = {MapId = 4, Id = 6442, Type = 1, pLv ="150", Note = "蛮将"}
NpcInfo[391] = {MapId = 4, Id = 6444, Type = 1, pLv ="150", Note = "荆州商人"}
NpcInfo[392] = {MapId = 4, Id = 6443, Type = 1, pLv ="150", Note = "蛮族壮汉"}
NpcInfo[393] = {MapId = 4, Id = 6445, Type = 1, pLv ="150", Note = "南蛮老者"}
NpcInfo[394] = {MapId = 4, Id = 6446, Type = 1, pLv ="150", Note = ""}
NpcInfo[395] = {MapId = 4, Id = 6447, Type = 1, pLv ="150", Note = ""}
NpcInfo[396] = {MapId = 4, Id = 6448, Type = 1, pLv ="150", Note = ""}
NpcInfo[397] = {MapId = 4, Id = 7199, Type = 1, pLv ="150", Note = "蛮人俘虏"}
NpcInfo[398] = {MapId = 4, Id = 7221, Type = 1, pLv ="150", Note = "南中居民"}
NpcInfo[399] = {MapId = 4, Id = 7222, Type = 1, pLv ="150", Note = "南中居民"}
NpcInfo[400] = {MapId = 4, Id = 7225, Type = 1, pLv ="150", Note = "南中居民"}
NpcInfo[401] = {MapId = 4, Id = 7226, Type = 1, pLv ="150", Note = "中原官宦"}
--NpcInfo[402] = {MapId = 4, Id = 7326, Type = 1, pLv ="150", Note = "马援庙督邮"}
--NpcInfo[403] = {MapId = 4, Id = 7327, Type = 1, pLv ="150", Note = "南中城督邮"}
--NpcInfo[404] = {MapId = 4, Id = 7328, Type = 1, pLv ="150", Note = "八纳洞督邮"}
--NpcInfo[405] = {MapId = 4, Id = 7329, Type = 1, pLv ="150", Note = "三江驿督邮"}
--NpcInfo[406] = {MapId = 4, Id = 7339, Type = 1, pLv ="150", Note = "中原官宦"}
--NpcInfo[407] = {MapId = 4, Id = 7340, Type = 1, pLv ="", Note = "中原官宦"}
NpcInfo[408] = {MapId = 4, Id = 12450, Type = 1, pLv ="", Note = "南中采诗官"}
NpcInfo[409] = {MapId = 5, Id = 6064, Type = 3, pLv ="46", Note = ""}
NpcInfo[410] = {MapId = 5, Id = 6065, Type = 3, pLv ="46", Note = ""}
NpcInfo[411] = {MapId = 5, Id = 6066, Type = 3, pLv ="47", Note = ""}
NpcInfo[412] = {MapId = 5, Id = 6068, Type = 3, pLv ="47", Note = ""}
NpcInfo[413] = {MapId = 5, Id = 6074, Type = 3, pLv ="49", Note = ""}
NpcInfo[414] = {MapId = 5, Id = 6073, Type = 3, pLv ="49", Note = ""}
NpcInfo[415] = {MapId = 5, Id = 6067, Type = 3, pLv ="47", Note = ""}
NpcInfo[416] = {MapId = 5, Id = 6069, Type = 3, pLv ="48", Note = ""}
NpcInfo[417] = {MapId = 5, Id = 6071, Type = 3, pLv ="48", Note = ""}
NpcInfo[418] = {MapId = 5, Id = 6070, Type = 3, pLv ="48", Note = ""}
NpcInfo[419] = {MapId = 5, Id = 6072, Type = 3, pLv ="48", Note = ""}
NpcInfo[420] = {MapId = 5, Id = 6075, Type = 3, pLv ="49", Note = ""}
NpcInfo[421] = {MapId = 5, Id = 6076, Type = 3, pLv ="49", Note = ""}
NpcInfo[422] = {MapId = 5, Id = 6078, Type = 3, pLv ="50", Note = ""}
NpcInfo[423] = {MapId = 5, Id = 6082, Type = 3, pLv ="51", Note = ""}
NpcInfo[424] = {MapId = 5, Id = 6079, Type = 3, pLv ="50", Note = ""}
NpcInfo[425] = {MapId = 5, Id = 6083, Type = 3, pLv ="51", Note = ""}
NpcInfo[426] = {MapId = 5, Id = 6081, Type = 3, pLv ="51", Note = ""}
NpcInfo[427] = {MapId = 5, Id = 6085, Type = 3, pLv ="52", Note = ""}
NpcInfo[428] = {MapId = 5, Id = 6087, Type = 3, pLv ="52", Note = ""}
NpcInfo[429] = {MapId = 5, Id = 6088, Type = 3, pLv ="52", Note = ""}
NpcInfo[430] = {MapId = 5, Id = 6086, Type = 3, pLv ="52", Note = ""}
NpcInfo[431] = {MapId = 5, Id = 6084, Type = 3, pLv ="51", Note = ""}
NpcInfo[432] = {MapId = 5, Id = 6089, Type = 3, pLv ="60", Note = ""}
NpcInfo[433] = {MapId = 5, Id = 6090, Type = 3, pLv ="61", Note = ""}
NpcInfo[434] = {MapId = 5, Id = 6091, Type = 3, pLv ="61", Note = ""}
NpcInfo[435] = {MapId = 5, Id = 6092, Type = 3, pLv ="62", Note = ""}
NpcInfo[436] = {MapId = 5, Id = 7541, Type = 3, pLv ="51", Note = ""}
NpcInfo[437] = {MapId = 5, Id = 7595, Type = 3, pLv ="49", Note = ""}
NpcInfo[438] = {MapId = 5, Id = 7592, Type = 3, pLv ="48", Note = ""}
NpcInfo[439] = {MapId = 5, Id = 7593, Type = 3, pLv ="48", Note = ""}
NpcInfo[440] = {MapId = 5, Id = 7594, Type = 3, pLv ="48", Note = ""}
NpcInfo[441] = {MapId = 5, Id = 7597, Type = 3, pLv ="51", Note = ""}
NpcInfo[442] = {MapId = 5, Id = 7596, Type = 3, pLv ="52", Note = ""}
NpcInfo[443] = {MapId = 5, Id = 7600, Type = 3, pLv ="53", Note = ""}
NpcInfo[444] = {MapId = 5, Id = 7598, Type = 3, pLv ="52", Note = ""}
NpcInfo[445] = {MapId = 5, Id = 7599, Type = 3, pLv ="52", Note = ""}
NpcInfo[446] = {MapId = 5, Id = 8131, Type = 3, pLv ="47", Note = ""}
NpcInfo[447] = {MapId = 5, Id = 8132, Type = 3, pLv ="52", Note = ""}
NpcInfo[448] = {MapId = 5, Id = 12448, Type = 3, pLv ="50", Note = ""}
NpcInfo[449] = {MapId = 5, Id = 12360, Type = 3, pLv ="50", Note = ""}
NpcInfo[450] = {MapId = 5, Id = 13378, Type = 3, pLv ="45", Note = ""}
NpcInfo[451] = {MapId = 5, Id = 21074, Type = 3, pLv ="47", Note = ""}
NpcInfo[452] = {MapId = 5, Id = 5439, Type = 2, SubType = 4, pLv ="40", Note = "杂货商"}
NpcInfo[453] = {MapId = 5, Id = 3410, Type = 2, SubType = 0, pLv ="40", Note = "食品商"}
NpcInfo[454] = {MapId = 5, Id = 6712, Type = 2, SubType = 0, pLv ="40", Note = "酒馆伙计"}
NpcInfo[455] = {MapId = 5, Id = 6711, Type = 2, SubType = 0, pLv ="42", Note = "酒馆伙计"}
NpcInfo[456] = {MapId = 5, Id = 7512, Type = 2, SubType = 0, pLv ="", Note = "旅行商人"}
NpcInfo[457] = {MapId = 5, Id = 13511, Type = 2, SubType = 0, pLv ="", Note = "兵马传送使"}
NpcInfo[458] = {MapId = 5, Id = 7508, Type = 1, pLv ="", Note = "诗人"}
NpcInfo[459] = {MapId = 5, Id = 7510, Type = 1, pLv ="", Note = "柴桑居民"}
NpcInfo[460] = {MapId = 5, Id = 7511, Type = 1, pLv ="", Note = "华佗弟子"}
NpcInfo[461] = {MapId = 5, Id = 7509, Type = 1, pLv ="", Note = "柴桑护卫队长"}
NpcInfo[462] = {MapId = 5, Id = 7115, Type = 1, pLv ="", Note = "异乡客"}
NpcInfo[463] = {MapId = 5, Id = 7113, Type = 1, pLv ="", Note = "柴桑居民"}
NpcInfo[464] = {MapId = 5, Id = 7114, Type = 1, pLv ="", Note = "柴桑居民"}
NpcInfo[465] = {MapId = 5, Id = 7117, Type = 1, pLv ="", Note = "山越长老"}
NpcInfo[466] = {MapId = 5, Id = 7118, Type = 1, pLv ="", Note = "柴桑太守"}
NpcInfo[467] = {MapId = 5, Id = 7119, Type = 1, pLv ="", Note = "定威校尉"}
NpcInfo[468] = {MapId = 5, Id = 7120, Type = 1, pLv ="", Note = "中司马"}
NpcInfo[469] = {MapId = 5, Id = 7121, Type = 1, pLv ="", Note = "柴桑居民"}
NpcInfo[470] = {MapId = 5, Id = 7122, Type = 1, pLv ="", Note = "征虏中郎将"}
NpcInfo[471] = {MapId = 5, Id = 7134, Type = 1, pLv ="", Note = ""}
NpcInfo[472] = {MapId = 5, Id = 7135, Type = 1, pLv ="", Note = "小乔侍女"}
NpcInfo[473] = {MapId = 5, Id = 7129, Type = 1, pLv ="", Note = "长史"}
NpcInfo[474] = {MapId = 5, Id = 7130, Type = 1, pLv ="", Note = "张家仆人"}
NpcInfo[475] = {MapId = 5, Id = 7132, Type = 1, pLv ="", Note = "骑都尉"}
NpcInfo[476] = {MapId = 5, Id = 7138, Type = 1, pLv ="", Note = "治中从事"}
NpcInfo[477] = {MapId = 5, Id = 7124, Type = 1, pLv ="", Note = "折冲中郎将"}
NpcInfo[478] = {MapId = 5, Id = 7478, Type = 1, pLv ="", Note = "尚书"}
NpcInfo[479] = {MapId = 5, Id = 7126, Type = 1, pLv ="", Note = "横野中郎将"}
NpcInfo[480] = {MapId = 5, Id = 7128, Type = 1, pLv ="", Note = "大都督"}
NpcInfo[481] = {MapId = 5, Id = 7131, Type = 1, pLv ="", Note = "承烈都尉"}
NpcInfo[482] = {MapId = 5, Id = 7140, Type = 1, pLv ="", Note = "荆襄商贾"}
NpcInfo[483] = {MapId = 5, Id = 7133, Type = 1, pLv ="", Note = "折冲校尉"}
NpcInfo[484] = {MapId = 5, Id = 7137, Type = 1, pLv ="", Note = ""}
NpcInfo[485] = {MapId = 5, Id = 7714, Type = 1, pLv ="", Note = "夷光小筑督邮"}
NpcInfo[486] = {MapId = 5, Id = 7713, Type = 1, pLv ="", Note = "琴韵水榭督邮"}
NpcInfo[487] = {MapId = 5, Id = 7715, Type = 1, pLv ="", Note = "鄱阳驿督邮"}
NpcInfo[488] = {MapId = 5, Id = 12451, Type = 1, pLv ="", Note = "江南采诗官"}
NpcInfo[489] = {MapId = 5, Id = 13214, Type = 1, pLv ="", Note = "曹操密探"}
NpcInfo[490] = {MapId = 5, Id = 15844, Type = 1, pLv ="", Note = "三江口船夫"}
NpcInfo[491] = {MapId = 6, Id = 6513, Type = 3, pLv ="53", Note = ""}
NpcInfo[492] = {MapId = 6, Id = 6517, Type = 3, pLv ="53", Note = ""}
NpcInfo[493] = {MapId = 6, Id = 6518, Type = 3, pLv ="53", Note = ""}
NpcInfo[494] = {MapId = 6, Id = 6503, Type = 3, pLv ="54", Note = ""}
NpcInfo[495] = {MapId = 6, Id = 6519, Type = 3, pLv ="54", Note = ""}
NpcInfo[496] = {MapId = 6, Id = 6520, Type = 3, pLv ="54", Note = ""}
NpcInfo[497] = {MapId = 6, Id = 6523, Type = 3, pLv ="55", Note = ""}
NpcInfo[498] = {MapId = 6, Id = 6522, Type = 3, pLv ="55", Note = ""}
NpcInfo[499] = {MapId = 6, Id = 6521, Type = 3, pLv ="55", Note = ""}
NpcInfo[500] = {MapId = 6, Id = 6524, Type = 3, pLv ="56", Note = ""}
NpcInfo[501] = {MapId = 6, Id = 6525, Type = 3, pLv ="56", Note = ""}
NpcInfo[502] = {MapId = 6, Id = 6526, Type = 3, pLv ="56", Note = ""}
NpcInfo[503] = {MapId = 6, Id = 6527, Type = 3, pLv ="57", Note = ""}
NpcInfo[504] = {MapId = 6, Id = 6529, Type = 3, pLv ="57", Note = ""}
NpcInfo[505] = {MapId = 6, Id = 6530, Type = 3, pLv ="57", Note = ""}
NpcInfo[506] = {MapId = 6, Id = 6532, Type = 3, pLv ="58", Note = ""}
NpcInfo[507] = {MapId = 6, Id = 6534, Type = 3, pLv ="58", Note = ""}
NpcInfo[508] = {MapId = 6, Id = 6531, Type = 3, pLv ="58", Note = ""}
NpcInfo[509] = {MapId = 6, Id = 6535, Type = 3, pLv ="57", Note = ""}
NpcInfo[510] = {MapId = 6, Id = 6536, Type = 3, pLv ="58", Note = ""}
NpcInfo[511] = {MapId = 6, Id = 6537, Type = 3, pLv ="60", Note = ""}
NpcInfo[512] = {MapId = 6, Id = 6538, Type = 3, pLv ="61", Note = ""}
NpcInfo[513] = {MapId = 6, Id = 6539, Type = 3, pLv ="61", Note = ""}
NpcInfo[514] = {MapId = 6, Id = 6540, Type = 3, pLv ="62", Note = ""}
NpcInfo[515] = {MapId = 6, Id = 7605, Type = 3, pLv ="58", Note = ""}
NpcInfo[516] = {MapId = 6, Id = 7601, Type = 3, pLv ="53", Note = ""}
NpcInfo[517] = {MapId = 6, Id = 7602, Type = 3, pLv ="54", Note = ""}
NpcInfo[518] = {MapId = 6, Id = 7603, Type = 3, pLv ="56", Note = ""}
NpcInfo[519] = {MapId = 6, Id = 7604, Type = 3, pLv ="58", Note = ""}
NpcInfo[520] = {MapId = 6, Id = 7606, Type = 3, pLv ="55", Note = ""}
NpcInfo[521] = {MapId = 6, Id = 8133, Type = 3, pLv ="57", Note = ""}
NpcInfo[522] = {MapId = 6, Id = 6528, Type = 3, pLv ="57", Note = ""}
NpcInfo[523] = {MapId = 6, Id = 12449, Type = 3, pLv ="58", Note = ""}
NpcInfo[524] = {MapId = 6, Id = 12361, Type = 3, pLv ="56", Note = ""}
NpcInfo[525] = {MapId = 6, Id = 13237, Type = 3, pLv ="61", Note = ""}
NpcInfo[526] = {MapId = 6, Id = 13379, Type = 3, pLv ="45", Note = ""}
NpcInfo[527] = {MapId = 6, Id = 20062, Type = 3, pLv ="70", Note = ""}
NpcInfo[528] = {MapId = 6, Id = 21075, Type = 3, pLv ="57", Note = ""}
NpcInfo[529] = {MapId = 6, Id = 6832, Type = 2, SubType = 0, pLv ="", Note = "襄阳舞师坊主"}
NpcInfo[530] = {MapId = 6, Id = 6714, Type = 2, SubType = 0, pLv ="", Note = "酒馆伙计"}
NpcInfo[531] = {MapId = 6, Id = 3419, Type = 2, SubType = 0, pLv ="", Note = "食品商"}
NpcInfo[532] = {MapId = 6, Id = 5440, Type = 2, SubType = 4, pLv ="", Note = "杂货商"}
NpcInfo[533] = {MapId = 6, Id = 6808, Type = 1, pLv ="", Note = ""}
NpcInfo[534] = {MapId = 6, Id = 6804, Type = 1, pLv ="", Note = ""}
NpcInfo[535] = {MapId = 6, Id = 6809, Type = 1, pLv ="", Note = ""}
NpcInfo[536] = {MapId = 6, Id = 6841, Type = 1, pLv ="", Note = ""}
NpcInfo[537] = {MapId = 6, Id = 6833, Type = 1, pLv ="", Note = "水镜先生"}
NpcInfo[538] = {MapId = 6, Id = 3163, Type = 1, pLv ="", Note = "狂生"}
NpcInfo[539] = {MapId = 6, Id = 6802, Type = 1, pLv ="", Note = "江夏太守"}
NpcInfo[540] = {MapId = 6, Id = 6803, Type = 1, pLv ="", Note = "章陵太守"}
NpcInfo[541] = {MapId = 6, Id = 7136, Type = 1, pLv ="", Note = ""}
NpcInfo[542] = {MapId = 6, Id = 6810, Type = 1, pLv ="", Note = ""}
NpcInfo[543] = {MapId = 6, Id = 6811, Type = 1, pLv ="", Note = "卧龙"}
NpcInfo[544] = {MapId = 6, Id = 6820, Type = 1, pLv ="", Note = "白马银枪"}
NpcInfo[545] = {MapId = 6, Id = 6822, Type = 1, pLv ="", Note = "豫州牧"}
NpcInfo[546] = {MapId = 6, Id = 6812, Type = 1, pLv ="", Note = "州牧公子"}
NpcInfo[547] = {MapId = 6, Id = 6813, Type = 1, pLv ="", Note = "水军都督"}
NpcInfo[548] = {MapId = 6, Id = 6815, Type = 1, pLv ="", Note = "襄阳太守"}
NpcInfo[549] = {MapId = 6, Id = 7614, Type = 1, pLv ="", Note = ""}
NpcInfo[550] = {MapId = 6, Id = 7613, Type = 1, pLv ="", Note = ""}
NpcInfo[551] = {MapId = 6, Id = 6814, Type = 1, pLv ="", Note = "落魄校尉"}
NpcInfo[552] = {MapId = 6, Id = 6816, Type = 1, pLv ="", Note = "才女"}
NpcInfo[553] = {MapId = 6, Id = 6817, Type = 1, pLv ="", Note = ""}
NpcInfo[554] = {MapId = 6, Id = 6818, Type = 1, pLv ="", Note = "卧龙岗童子"}
NpcInfo[555] = {MapId = 6, Id = 6821, Type = 1, pLv ="", Note = ""}
NpcInfo[556] = {MapId = 6, Id = 6823, Type = 1, pLv ="", Note = "荆州农夫"}
NpcInfo[557] = {MapId = 6, Id = 6824, Type = 1, pLv ="", Note = "荆州樵夫"}
NpcInfo[558] = {MapId = 6, Id = 6825, Type = 1, pLv ="", Note = "医圣"}
NpcInfo[559] = {MapId = 6, Id = 6826, Type = 1, pLv ="", Note = "临江村长"}
NpcInfo[560] = {MapId = 6, Id = 6828, Type = 1, pLv ="", Note = "临江村少女"}
NpcInfo[561] = {MapId = 6, Id = 6829, Type = 1, pLv ="", Note = "白墨队主"}
NpcInfo[562] = {MapId = 6, Id = 6837, Type = 1, pLv ="", Note = "征南将军"}
NpcInfo[563] = {MapId = 6, Id = 6830, Type = 1, pLv ="", Note = "赤墨队主"}
NpcInfo[564] = {MapId = 6, Id = 6831, Type = 1, pLv ="", Note = "赤墨仙道士"}
NpcInfo[565] = {MapId = 6, Id = 6836, Type = 1, pLv ="", Note = "水镜村民"}
NpcInfo[566] = {MapId = 6, Id = 6838, Type = 1, pLv ="", Note = "荆州住民"}
NpcInfo[567] = {MapId = 6, Id = 6839, Type = 1, pLv ="", Note = "仙人"}
NpcInfo[568] = {MapId = 6, Id = 6840, Type = 1, pLv ="", Note = "仙人"}
NpcInfo[569] = {MapId = 6, Id = 7242, Type = 1, pLv ="", Note = ""}
NpcInfo[570] = {MapId = 6, Id = 7241, Type = 1, pLv ="", Note = "游方僧人"}
NpcInfo[571] = {MapId = 6, Id = 7542, Type = 1, pLv ="", Note = ""}
NpcInfo[572] = {MapId = 6, Id = 7239, Type = 1, pLv ="", Note = "荆州乡民"}
NpcInfo[573] = {MapId = 6, Id = 7716, Type = 1, pLv ="", Note = "襄阳督邮"}
NpcInfo[574] = {MapId = 6, Id = 7717, Type = 1, pLv ="", Note = "当阳驿督邮"}
NpcInfo[575] = {MapId = 6, Id = 7652, Type = 1, pLv ="", Note = "襄阳护卫队长"}
NpcInfo[576] = {MapId = 6, Id = 7653, Type = 1, pLv ="", Note = "木匠"}
NpcInfo[577] = {MapId = 6, Id = 7655, Type = 1, pLv ="", Note = "商人"}
NpcInfo[578] = {MapId = 6, Id = 7654, Type = 1, pLv ="", Note = "饕餮客"}
NpcInfo[579] = {MapId = 6, Id = 7656, Type = 1, pLv ="", Note = "巫师"}
NpcInfo[580] = {MapId = 6, Id = 12452, Type = 1, pLv ="", Note = "荆襄采诗官"}
NpcInfo[581] = {MapId = 6, Id = 20500, Type = 1, pLv ="", Note = ""}
NpcInfo[582] = {MapId = 7, Id = 77, Type = 3, pLv ="8", Note = ""}
NpcInfo[583] = {MapId = 7, Id = 78, Type = 3, pLv ="9", Note = ""}
NpcInfo[584] = {MapId = 7, Id = 1850, Type = 3, pLv ="18", Note = ""}
NpcInfo[585] = {MapId = 7, Id = 80, Type = 3, pLv ="19", Note = ""}
NpcInfo[586] = {MapId = 7, Id = 81, Type = 3, pLv ="20", Note = ""}
NpcInfo[587] = {MapId = 7, Id = 6591, Type = 3, pLv ="59", Note = ""}
NpcInfo[588] = {MapId = 7, Id = 6590, Type = 3, pLv ="59", Note = ""}
NpcInfo[589] = {MapId = 7, Id = 6589, Type = 3, pLv ="59", Note = ""}
NpcInfo[590] = {MapId = 7, Id = 6597, Type = 3, pLv ="59", Note = ""}
NpcInfo[591] = {MapId = 7, Id = 6593, Type = 3, pLv ="60", Note = ""}
NpcInfo[592] = {MapId = 7, Id = 6596, Type = 3, pLv ="60", Note = ""}
NpcInfo[593] = {MapId = 7, Id = 6595, Type = 3, pLv ="60", Note = ""}
NpcInfo[594] = {MapId = 7, Id = 6599, Type = 3, pLv ="60", Note = ""}
NpcInfo[595] = {MapId = 7, Id = 6600, Type = 3, pLv ="60", Note = ""}
NpcInfo[596] = {MapId = 7, Id = 7472, Type = 3, pLv ="60", Note = ""}
NpcInfo[597] = {MapId = 7, Id = 7473, Type = 3, pLv ="62", Note = ""}
NpcInfo[598] = {MapId = 7, Id = 7776, Type = 3, pLv ="59", Note = ""}
NpcInfo[599] = {MapId = 7, Id = 7778, Type = 3, pLv ="58", Note = ""}
NpcInfo[600] = {MapId = 7, Id = 7777, Type = 3, pLv ="58", Note = ""}
NpcInfo[601] = {MapId = 7, Id = 7779, Type = 3, pLv ="61", Note = ""}
NpcInfo[602] = {MapId = 7, Id = 7780, Type = 3, pLv ="62", Note = ""}
NpcInfo[603] = {MapId = 7, Id = 11850, Type = 3, pLv ="59", Note = ""}
NpcInfo[604] = {MapId = 7, Id = 12362, Type = 3, pLv ="60", Note = ""}
NpcInfo[605] = {MapId = 7, Id = 12817, Type = 3, pLv ="60", Note = ""}
NpcInfo[606] = {MapId = 7, Id = 13957, Type = 3, pLv ="60", Note = ""}
NpcInfo[607] = {MapId = 7, Id = 14387, Type = 3, pLv ="40", Note = ""}
NpcInfo[608] = {MapId = 7, Id = 21076, Type = 3, pLv ="62", Note = ""}
NpcInfo[609] = {MapId = 7, Id = 28367, Type = 3, pLv ="62", Note = ""}
NpcInfo[610] = {MapId = 7, Id = 1906, Type = 2, SubType = 0, pLv ="", Note = "护具商"}
NpcInfo[611] = {MapId = 7, Id = 1908, Type = 2, SubType = 0, pLv ="", Note = "食品商"}
NpcInfo[612] = {MapId = 7, Id = 1910, Type = 2, SubType = 0, pLv ="", Note = "京兆刀武师"}
NpcInfo[613] = {MapId = 7, Id = 1912, Type = 2, SubType = 0, pLv ="", Note = "酒馆老板"}
NpcInfo[614] = {MapId = 7, Id = 1905, Type = 2, SubType = 0, pLv ="", Note = "兵器商"}
NpcInfo[615] = {MapId = 7, Id = 1907, Type = 2, SubType = 0, pLv ="", Note = "饰品商"}
NpcInfo[616] = {MapId = 7, Id = 1918, Type = 2, SubType = 0, pLv ="", Note = "兵器师"}
NpcInfo[617] = {MapId = 7, Id = 1920, Type = 2, SubType = 0, pLv ="", Note = "护具师"}
NpcInfo[618] = {MapId = 7, Id = 1928, Type = 2, SubType = 0, pLv ="", Note = "巧匠"}
NpcInfo[619] = {MapId = 7, Id = 1926, Type = 2, SubType = 0, pLv ="", Note = "药师"}
NpcInfo[620] = {MapId = 7, Id = 1924, Type = 2, SubType = 0, pLv ="", Note = "烹饪师"}
NpcInfo[621] = {MapId = 7, Id = 1922, Type = 2, SubType = 0, pLv ="", Note = "驯养师"}
NpcInfo[622] = {MapId = 7, Id = 1930, Type = 2, SubType = 0, pLv ="", Note = "医师"}
NpcInfo[623] = {MapId = 7, Id = 1932, Type = 2, SubType = 0, pLv ="", Note = "工匠"}
NpcInfo[624] = {MapId = 7, Id = 3166, Type = 2, SubType = 0, pLv ="", Note = "神医"}
NpcInfo[625] = {MapId = 7, Id = 3168, Type = 2, SubType = 0, pLv ="", Note = "神相"}
NpcInfo[626] = {MapId = 7, Id = 3365, Type = 2, SubType = 0, pLv ="", Note = "京兆枪武师"}
NpcInfo[627] = {MapId = 7, Id = 3366, Type = 2, SubType = 0, pLv ="", Note = "京兆戟武师"}
NpcInfo[628] = {MapId = 7, Id = 3367, Type = 2, SubType = 0, pLv ="", Note = "京兆钺武师"}
NpcInfo[629] = {MapId = 7, Id = 3368, Type = 2, SubType = 0, pLv ="", Note = "京兆镗武师"}
NpcInfo[630] = {MapId = 7, Id = 3369, Type = 2, SubType = 0, pLv ="", Note = "京兆棍武师"}
NpcInfo[631] = {MapId = 7, Id = 3371, Type = 2, SubType = 0, pLv ="", Note = "京兆斧武师"}
NpcInfo[632] = {MapId = 7, Id = 3373, Type = 2, SubType = 0, pLv ="", Note = "京兆锏武师"}
NpcInfo[633] = {MapId = 7, Id = 3374, Type = 2, SubType = 0, pLv ="", Note = "京兆锤武师"}
NpcInfo[634] = {MapId = 7, Id = 3370, Type = 2, SubType = 0, pLv ="", Note = "京兆剑武师"}
NpcInfo[635] = {MapId = 7, Id = 3372, Type = 2, SubType = 0, pLv ="", Note = "京兆钩武师"}
NpcInfo[636] = {MapId = 7, Id = 3375, Type = 2, SubType = 0, pLv ="", Note = "京兆爪武师"}
NpcInfo[637] = {MapId = 7, Id = 3376, Type = 2, SubType = 0, pLv ="", Note = "京兆盾武师"}
NpcInfo[638] = {MapId = 7, Id = 3377, Type = 2, SubType = 0, pLv ="", Note = "京兆环武师"}
NpcInfo[639] = {MapId = 7, Id = 3378, Type = 2, SubType = 0, pLv ="", Note = "京兆杖武师"}
NpcInfo[640] = {MapId = 7, Id = 3379, Type = 2, SubType = 0, pLv ="", Note = "京兆舞武师"}
NpcInfo[641] = {MapId = 7, Id = 3380, Type = 2, SubType = 0, pLv ="", Note = "京兆扇武师"}
NpcInfo[642] = {MapId = 7, Id = 3381, Type = 2, SubType = 0, pLv ="", Note = "京兆弓武师"}
NpcInfo[643] = {MapId = 7, Id = 2490, Type = 2, SubType = 0, pLv ="", Note = "文职委任官"}
NpcInfo[644] = {MapId = 7, Id = 2489, Type = 2, SubType = 0, pLv ="", Note = "武职委任官"}
NpcInfo[645] = {MapId = 7, Id = 1909, Type = 2, SubType = 3, pLv ="", Note = "驿站老板"}
NpcInfo[646] = {MapId = 7, Id = 2802, Type = 2, SubType = 0, pLv ="", Note = "长安舞师坊主"}
NpcInfo[647] = {MapId = 7, Id = 4135, Type = 2, SubType = 0, pLv ="", Note = "蜀·右中郎将"}
NpcInfo[648] = {MapId = 7, Id = 4138, Type = 2, SubType = 0, pLv ="", Note = "吴·御史大夫"}
NpcInfo[649] = {MapId = 7, Id = 4141, Type = 2, SubType = 0, pLv ="", Note = "魏·尚书仆射"}
NpcInfo[650] = {MapId = 7, Id = 4968, Type = 2, SubType = 0, pLv ="", Note = "武馆总教习"}
NpcInfo[651] = {MapId = 7, Id = 3354, Type = 2, SubType = 4, pLv ="", Note = "杂货商"}
NpcInfo[652] = {MapId = 7, Id = 6243, Type = 2, SubType = 0, pLv ="", Note = "结义管理员"}
NpcInfo[653] = {MapId = 7, Id = 9512, Type = 2, SubType = 0, pLv ="", Note = "东汉嘉奖官"}
NpcInfo[654] = {MapId = 7, Id = 9509, Type = 2, SubType = 0, pLv ="", Note = "军需官"}
NpcInfo[655] = {MapId = 7, Id = 9510, Type = 2, SubType = 0, pLv ="", Note = "军需官"}
NpcInfo[656] = {MapId = 7, Id = 13452, Type = 2, SubType = 0, pLv ="", Note = "皇榜嘉奖官"}
NpcInfo[657] = {MapId = 7, Id = 13477, Type = 2, SubType = 0, pLv ="", Note = "皇榜讨逆校尉"}
NpcInfo[658] = {MapId = 7, Id = 13528, Type = 2, SubType = 0, pLv ="", Note = "皇室宝物官员"}
NpcInfo[659] = {MapId = 7, Id = 14873, Type = 2, SubType = 0, pLv ="", Note = "仁义监督使者"}
NpcInfo[660] = {MapId = 7, Id = 20428, Type = 2, SubType = 0, pLv ="", Note = "神秘马商"}
NpcInfo[661] = {MapId = 7, Id = 2812, Type = 1, pLv ="", Note = "白墨长老"}
NpcInfo[662] = {MapId = 7, Id = 2809, Type = 1, pLv ="", Note = "赤墨长老"}
NpcInfo[663] = {MapId = 7, Id = 5209, Type = 1, pLv ="", Note = "谏议大夫"}
NpcInfo[664] = {MapId = 7, Id = 5191, Type = 1, pLv ="", Note = "民曹尚书"}
NpcInfo[665] = {MapId = 7, Id = 5202, Type = 1, pLv ="", Note = "匈奴使节"}
NpcInfo[666] = {MapId = 7, Id = 3355, Type = 1, pLv ="", Note = "太尉"}
NpcInfo[667] = {MapId = 7, Id = 2494, Type = 1, pLv ="", Note = "御前侍郎"}
NpcInfo[668] = {MapId = 7, Id = 6252, Type = 1, pLv ="", Note = "虎贲郎"}
NpcInfo[669] = {MapId = 7, Id = 6253, Type = 1, pLv ="", Note = "虎贲郎"}
NpcInfo[670] = {MapId = 7, Id = 6254, Type = 1, pLv ="", Note = "虎贲郎"}
NpcInfo[671] = {MapId = 7, Id = 6255, Type = 1, pLv ="", Note = "虎贲郎"}
NpcInfo[672] = {MapId = 7, Id = 6256, Type = 1, pLv ="", Note = "虎贲郎"}
NpcInfo[673] = {MapId = 7, Id = 6257, Type = 1, pLv ="", Note = "虎贲郎"}
NpcInfo[674] = {MapId = 7, Id = 6260, Type = 1, pLv ="", Note = "武锋将军"}
NpcInfo[675] = {MapId = 7, Id = 6263, Type = 1, pLv ="", Note = "屯骑校尉"}
NpcInfo[676] = {MapId = 7, Id = 6261, Type = 1, pLv ="", Note = "兴义将军"}
NpcInfo[677] = {MapId = 7, Id = 6264, Type = 1, pLv ="", Note = "射声校尉"}
NpcInfo[678] = {MapId = 7, Id = 6262, Type = 1, pLv ="", Note = "中坚将军"}
NpcInfo[679] = {MapId = 7, Id = 6265, Type = 1, pLv ="", Note = "虎贲校尉"}
NpcInfo[680] = {MapId = 7, Id = 6267, Type = 1, pLv ="", Note = "建安七子"}
NpcInfo[681] = {MapId = 7, Id = 6266, Type = 1, pLv ="", Note = "建安七子"}
NpcInfo[682] = {MapId = 7, Id = 6269, Type = 1, pLv ="", Note = "太祝令"}
NpcInfo[683] = {MapId = 7, Id = 6270, Type = 1, pLv ="", Note = "卫士令"}
NpcInfo[684] = {MapId = 7, Id = 6271, Type = 1, pLv ="", Note = "中护军"}
NpcInfo[685] = {MapId = 7, Id = 6272, Type = 1, pLv ="", Note = "卫尉"}
NpcInfo[686] = {MapId = 7, Id = 6438, Type = 1, pLv ="", Note = "关中书生"}
NpcInfo[687] = {MapId = 7, Id = 7629, Type = 1, pLv ="", Note = "关中行商"}
NpcInfo[688] = {MapId = 7, Id = 7630, Type = 1, pLv ="", Note = "关中乡民"}
NpcInfo[689] = {MapId = 7, Id = 7632, Type = 1, pLv ="", Note = "关中乡民"}
NpcInfo[690] = {MapId = 7, Id = 4962, Type = 1, pLv ="", Note = "吕布军部将"}
NpcInfo[691] = {MapId = 7, Id = 4959, Type = 1, pLv ="", Note = "吕布军部将"}
NpcInfo[692] = {MapId = 7, Id = 7636, Type = 1, pLv ="", Note = "随军商人"}
NpcInfo[693] = {MapId = 7, Id = 7500, Type = 1, pLv ="", Note = "奋武将军"}
NpcInfo[694] = {MapId = 7, Id = 5218, Type = 1, pLv ="", Note = "扬武中郎将"}
NpcInfo[695] = {MapId = 7, Id = 7718, Type = 1, pLv ="", Note = "子午驿督邮"}
NpcInfo[696] = {MapId = 7, Id = 7770, Type = 1, pLv ="", Note = "长安护卫队长"}
NpcInfo[697] = {MapId = 7, Id = 7771, Type = 1, pLv ="", Note = "孝子"}
NpcInfo[698] = {MapId = 7, Id = 7772, Type = 1, pLv ="", Note = "书生"}
NpcInfo[699] = {MapId = 7, Id = 3171, Type = 1, pLv ="", Note = "长安居民"}
NpcInfo[700] = {MapId = 7, Id = 6721, Type = 1, pLv ="", Note = "酒馆伙计"}
NpcInfo[701] = {MapId = 7, Id = 9163, Type = 1, pLv ="", Note = "钓鱼爱好者"}
NpcInfo[702] = {MapId = 7, Id = 9170, Type = 1, pLv ="", Note = "钓鱼大赛举办官"}
NpcInfo[703] = {MapId = 7, Id = 11918, Type = 1, pLv ="", Note = "弓腰姬"}
NpcInfo[704] = {MapId = 7, Id = 12453, Type = 1, pLv ="", Note = "关中采诗官"}
NpcInfo[705] = {MapId = 7, Id = 12710, Type = 1, pLv ="", Note = "婚礼主司仪"}
NpcInfo[706] = {MapId = 7, Id = 12713, Type = 1, pLv ="", Note = "散花童子"}
NpcInfo[707] = {MapId = 7, Id = 12820, Type = 1, pLv ="", Note = "婚礼使者"}
NpcInfo[708] = {MapId = 7, Id = 13215, Type = 1, pLv ="", Note = "摸金校尉"}
NpcInfo[709] = {MapId = 7, Id = 13251, Type = 1, pLv ="", Note = "镖局大掌柜"}
NpcInfo[710] = {MapId = 7, Id = 19398, Type = 1, pLv ="", Note = "赤壁说书人"}
NpcInfo[711] = {MapId = 7, Id = 21102, Type = 1, pLv ="", Note = "大禹庙庙祝"}
NpcInfo[712] = {MapId = 7, Id = 6268, Type = 1, pLv ="", Note = "建安七子"}
NpcInfo[713] = {MapId = 102, Id = 19756, Type = 3, pLv ="67", Note = ""}
NpcInfo[714] = {MapId = 102, Id = 19765, Type = 3, pLv ="67", Note = ""}
NpcInfo[715] = {MapId = 102, Id = 19766, Type = 3, pLv ="67", Note = ""}
NpcInfo[716] = {MapId = 102, Id = 19767, Type = 3, pLv ="68", Note = ""}
NpcInfo[717] = {MapId = 102, Id = 19768, Type = 3, pLv ="68", Note = ""}
NpcInfo[718] = {MapId = 102, Id = 19769, Type = 3, pLv ="68", Note = ""}
NpcInfo[719] = {MapId = 102, Id = 19770, Type = 3, pLv ="68", Note = ""}
NpcInfo[720] = {MapId = 102, Id = 19771, Type = 3, pLv ="69", Note = ""}
NpcInfo[721] = {MapId = 102, Id = 19773, Type = 3, pLv ="69", Note = ""}
NpcInfo[722] = {MapId = 102, Id = 19774, Type = 3, pLv ="69", Note = ""}
NpcInfo[723] = {MapId = 102, Id = 19772, Type = 3, pLv ="69", Note = ""}
NpcInfo[724] = {MapId = 102, Id = 19775, Type = 3, pLv ="70", Note = ""}
NpcInfo[725] = {MapId = 102, Id = 19776, Type = 3, pLv ="70", Note = ""}
NpcInfo[726] = {MapId = 102, Id = 19777, Type = 3, pLv ="70", Note = ""}
NpcInfo[727] = {MapId = 102, Id = 19778, Type = 3, pLv ="70", Note = ""}
NpcInfo[728] = {MapId = 102, Id = 19779, Type = 3, pLv ="70", Note = ""}
NpcInfo[729] = {MapId = 102, Id = 20063, Type = 3, pLv ="68", Note = ""}
NpcInfo[730] = {MapId = 102, Id = 20060, Type = 3, pLv ="68", Note = ""}
NpcInfo[731] = {MapId = 102, Id = 20772, Type = 3, pLv ="68", Note = ""}
NpcInfo[732] = {MapId = 102, Id = 20773, Type = 3, pLv ="70", Note = ""}
NpcInfo[733] = {MapId = 102, Id = 24772, Type = 3, pLv ="72", Note = ""}
NpcInfo[734] = {MapId = 102, Id = 20061, Type = 3, pLv ="70", Note = ""}
NpcInfo[735] = {MapId = 102, Id = 20064, Type = 3, pLv ="70", Note = ""}
NpcInfo[736] = {MapId = 102, Id = 27539, Type = 3, pLv ="70", Note = ""}
NpcInfo[737] = {MapId = 102, Id = 20027, Type = 1, pLv ="", Note = "棋痴"}
NpcInfo[738] = {MapId = 102, Id = 20031, Type = 1, pLv ="", Note = ""}
NpcInfo[739] = {MapId = 102, Id = 20025, Type = 1, pLv ="", Note = ""}
NpcInfo[740] = {MapId = 102, Id = 20032, Type = 1, pLv ="", Note = "留芳村村长"}
NpcInfo[741] = {MapId = 102, Id = 20034, Type = 1, pLv ="", Note = ""}
NpcInfo[742] = {MapId = 102, Id = 20035, Type = 1, pLv ="", Note = ""}
NpcInfo[743] = {MapId = 102, Id = 20028, Type = 1, pLv ="", Note = ""}
NpcInfo[744] = {MapId = 102, Id = 20030, Type = 1, pLv ="", Note = ""}
NpcInfo[745] = {MapId = 102, Id = 27350, Type = 1, pLv ="", Note = "讨逆中常侍"}
NpcInfo[746] = {MapId = 102, Id = 27352, Type = 1, pLv ="", Note = "讨逆中常侍"}
NpcInfo[747] = {MapId = 103, Id = 19784, Type = 3, pLv ="77", Note = ""}
NpcInfo[748] = {MapId = 103, Id = 19785, Type = 3, pLv ="77", Note = ""}
NpcInfo[749] = {MapId = 103, Id = 19786, Type = 3, pLv ="77", Note = ""}
NpcInfo[750] = {MapId = 103, Id = 19787, Type = 3, pLv ="77", Note = ""}
NpcInfo[751] = {MapId = 103, Id = 19788, Type = 3, pLv ="78", Note = ""}
NpcInfo[752] = {MapId = 103, Id = 19789, Type = 3, pLv ="78", Note = ""}
NpcInfo[753] = {MapId = 103, Id = 19792, Type = 3, pLv ="78", Note = ""}
NpcInfo[754] = {MapId = 103, Id = 19793, Type = 3, pLv ="78", Note = ""}
NpcInfo[755] = {MapId = 103, Id = 19795, Type = 3, pLv ="78", Note = ""}
NpcInfo[756] = {MapId = 103, Id = 19797, Type = 3, pLv ="79", Note = ""}
NpcInfo[757] = {MapId = 103, Id = 19800, Type = 3, pLv ="79", Note = ""}
NpcInfo[758] = {MapId = 103, Id = 19801, Type = 3, pLv ="79", Note = ""}
NpcInfo[759] = {MapId = 103, Id = 19803, Type = 3, pLv ="80", Note = ""}
NpcInfo[760] = {MapId = 103, Id = 19802, Type = 3, pLv ="79", Note = ""}
NpcInfo[761] = {MapId = 103, Id = 19804, Type = 3, pLv ="80", Note = ""}
NpcInfo[762] = {MapId = 103, Id = 19791, Type = 3, pLv ="80", Note = ""}
NpcInfo[763] = {MapId = 103, Id = 19790, Type = 3, pLv ="80", Note = ""}
NpcInfo[764] = {MapId = 103, Id = 20774, Type = 3, pLv ="78", Note = ""}
NpcInfo[765] = {MapId = 103, Id = 20775, Type = 3, pLv ="80", Note = ""}
NpcInfo[766] = {MapId = 103, Id = 20373, Type = 3, pLv ="80", Note = ""}
NpcInfo[767] = {MapId = 103, Id = 20370, Type = 3, pLv ="80", Note = ""}
NpcInfo[768] = {MapId = 103, Id = 20372, Type = 3, pLv ="79", Note = ""}
NpcInfo[769] = {MapId = 103, Id = 20371, Type = 3, pLv ="79", Note = ""}
NpcInfo[770] = {MapId = 103, Id = 25452, Type = 3, pLv ="87", Note = ""}
NpcInfo[771] = {MapId = 103, Id = 27757, Type = 3, pLv ="80", Note = ""}
NpcInfo[772] = {MapId = 103, Id = 20350, Type = 2, SubType = 0, pLv ="", Note = "行商"}
NpcInfo[773] = {MapId = 103, Id = 20208, Type = 1, pLv ="", Note = "怪人"}
NpcInfo[774] = {MapId = 103, Id = 20214, Type = 1, pLv ="", Note = "白墨墨者"}
NpcInfo[775] = {MapId = 103, Id = 20215, Type = 1, pLv ="", Note = "赤墨墨者"}
NpcInfo[776] = {MapId = 103, Id = 20210, Type = 1, pLv ="", Note = "巫族圣姑"}
NpcInfo[777] = {MapId = 103, Id = 20211, Type = 1, pLv ="", Note = ""}
NpcInfo[778] = {MapId = 103, Id = 20217, Type = 1, pLv ="", Note = ""}
NpcInfo[779] = {MapId = 103, Id = 20216, Type = 1, pLv ="", Note = ""}
NpcInfo[780] = {MapId = 103, Id = 20212, Type = 1, pLv ="", Note = ""}
NpcInfo[781] = {MapId = 103, Id = 20209, Type = 1, pLv ="", Note = ""}
NpcInfo[782] = {MapId = 103, Id = 20213, Type = 1, pLv ="", Note = ""}
--NpcInfo[783] = {MapId = 103, Id = 20352, Type = 1, pLv ="", Note = "传送使"}
NpcInfo[784] = {MapId = 103, Id = 20071, Type = 1, pLv ="", Note = "护民官"}
NpcInfo[785] = {MapId = 103, Id = 27356, Type = 1, pLv ="", Note = "讨逆中常侍"}
NpcInfo[786] = {MapId = 103, Id = 27357, Type = 1, pLv ="", Note = "讨逆中常侍"}
NpcInfo[787] = {MapId = 103, Id = 27358, Type = 1, pLv ="", Note = "讨逆中常侍"}
NpcInfo[788] = {MapId = 104, Id = 24038, Type = 3, pLv ="150", Note = ""}
NpcInfo[789] = {MapId = 104, Id = 24039, Type = 3, pLv ="150", Note = ""}
NpcInfo[790] = {MapId = 104, Id = 24040, Type = 3, pLv ="150", Note = ""}
NpcInfo[791] = {MapId = 104, Id = 24041, Type = 3, pLv ="150", Note = ""}
NpcInfo[792] = {MapId = 104, Id = 24043, Type = 3, pLv ="150", Note = ""}
NpcInfo[793] = {MapId = 104, Id = 24042, Type = 3, pLv ="150", Note = ""}
NpcInfo[794] = {MapId = 104, Id = 24045, Type = 3, pLv ="150", Note = ""}
NpcInfo[795] = {MapId = 104, Id = 24046, Type = 3, pLv ="150", Note = ""}
NpcInfo[796] = {MapId = 104, Id = 24047, Type = 3, pLv ="150", Note = ""}
NpcInfo[797] = {MapId = 104, Id = 24044, Type = 3, pLv ="150", Note = ""}
NpcInfo[798] = {MapId = 104, Id = 24048, Type = 3, pLv ="150", Note = ""}
NpcInfo[799] = {MapId = 104, Id = 24049, Type = 3, pLv ="150", Note = ""}
NpcInfo[800] = {MapId = 104, Id = 23985, Type = 1, pLv ="", Note = "魏·军师"}
NpcInfo[801] = {MapId = 104, Id = 24660, Type = 1, pLv ="", Note = ""}
NpcInfo[802] = {MapId = 104, Id = 24662, Type = 1, pLv ="", Note = "禁军统领"}
NpcInfo[803] = {MapId = 104, Id = 24954, Type = 1, pLv ="", Note = "魏·军师"}
NpcInfo[804] = {MapId = 104, Id = 26151, Type = 1, pLv ="", Note = ""}
NpcInfo[805] = {MapId = 104, Id = 26196, Type = 1, pLv ="", Note = ""}
NpcInfo[806] = {MapId = 105, Id = 24059, Type = 3, pLv ="150", Note = ""}
NpcInfo[807] = {MapId = 105, Id = 24055, Type = 3, pLv ="150", Note = ""}
NpcInfo[808] = {MapId = 105, Id = 24060, Type = 3, pLv ="150", Note = ""}
NpcInfo[809] = {MapId = 105, Id = 24062, Type = 3, pLv ="150", Note = ""}
NpcInfo[810] = {MapId = 105, Id = 24061, Type = 3, pLv ="150", Note = ""}
NpcInfo[811] = {MapId = 105, Id = 24052, Type = 3, pLv ="150", Note = ""}
NpcInfo[812] = {MapId = 105, Id = 24053, Type = 3, pLv ="150", Note = ""}
NpcInfo[813] = {MapId = 105, Id = 24054, Type = 3, pLv ="150", Note = ""}
NpcInfo[814] = {MapId = 105, Id = 24051, Type = 3, pLv ="150", Note = ""}
NpcInfo[815] = {MapId = 105, Id = 24057, Type = 3, pLv ="150", Note = ""}
NpcInfo[816] = {MapId = 105, Id = 24056, Type = 3, pLv ="150", Note = ""}
NpcInfo[817] = {MapId = 105, Id = 24058, Type = 3, pLv ="150", Note = ""}
NpcInfo[818] = {MapId = 105, Id = 23987, Type = 1, pLv ="", Note = "蜀·军师"}
NpcInfo[819] = {MapId = 105, Id = 24955, Type = 1, pLv ="", Note = "蜀·军师"}
NpcInfo[820] = {MapId = 105, Id = 25415, Type = 1, pLv ="", Note = ""}
NpcInfo[821] = {MapId = 105, Id = 25417, Type = 1, pLv ="", Note = ""}
NpcInfo[822] = {MapId = 105, Id = 25382, Type = 1, pLv ="", Note = "蜀国大将"}
NpcInfo[823] = {MapId = 105, Id = 25413, Type = 1, pLv ="", Note = ""}
NpcInfo[824] = {MapId = 105, Id = 25416, Type = 1, pLv ="", Note = ""}
NpcInfo[825] = {MapId = 105, Id = 25381, Type = 1, pLv ="", Note = "汉中居民"}
NpcInfo[826] = {MapId = 105, Id = 25383, Type = 1, pLv ="", Note = "巡逻士兵"}
NpcInfo[827] = {MapId = 106, Id = 24074, Type = 3, pLv ="150", Note = ""}
NpcInfo[828] = {MapId = 106, Id = 24075, Type = 3, pLv ="150", Note = ""}
NpcInfo[829] = {MapId = 106, Id = 24072, Type = 3, pLv ="150", Note = ""}
NpcInfo[830] = {MapId = 106, Id = 24073, Type = 3, pLv ="150", Note = ""}
NpcInfo[831] = {MapId = 106, Id = 24069, Type = 3, pLv ="150", Note = ""}
NpcInfo[832] = {MapId = 106, Id = 24070, Type = 3, pLv ="150", Note = ""}
NpcInfo[833] = {MapId = 106, Id = 24068, Type = 3, pLv ="150", Note = ""}
NpcInfo[834] = {MapId = 106, Id = 24071, Type = 3, pLv ="150", Note = ""}
NpcInfo[835] = {MapId = 106, Id = 24067, Type = 3, pLv ="150", Note = ""}
NpcInfo[836] = {MapId = 106, Id = 24063, Type = 3, pLv ="150", Note = ""}
NpcInfo[837] = {MapId = 106, Id = 24064, Type = 3, pLv ="150", Note = ""}
NpcInfo[838] = {MapId = 106, Id = 24065, Type = 3, pLv ="150", Note = ""}
NpcInfo[839] = {MapId = 106, Id = 24066, Type = 3, pLv ="150", Note = ""}
NpcInfo[840] = {MapId = 106, Id = 23989, Type = 1, pLv ="", Note = "吴·都督"}
NpcInfo[841] = {MapId = 106, Id = 24956, Type = 1, pLv ="", Note = "吴·军师"}
NpcInfo[842] = {MapId = 106, Id = 25376, Type = 1, pLv ="", Note = "建业居民"}
NpcInfo[843] = {MapId = 106, Id = 25378, Type = 1, pLv ="", Note = "建业居民"}
NpcInfo[844] = {MapId = 107, Id = 21419, Type = 3, pLv ="60", Note = ""}
NpcInfo[845] = {MapId = 107, Id = 21418, Type = 3, pLv ="60", Note = ""}
NpcInfo[846] = {MapId = 107, Id = 21420, Type = 3, pLv ="60", Note = ""}
NpcInfo[847] = {MapId = 107, Id = 21422, Type = 3, pLv ="61", Note = ""}
NpcInfo[848] = {MapId = 107, Id = 21423, Type = 3, pLv ="61", Note = ""}
NpcInfo[849] = {MapId = 107, Id = 21421, Type = 3, pLv ="61", Note = ""}
NpcInfo[850] = {MapId = 107, Id = 21425, Type = 3, pLv ="62", Note = ""}
NpcInfo[851] = {MapId = 107, Id = 21424, Type = 3, pLv ="62", Note = ""}
NpcInfo[852] = {MapId = 107, Id = 21426, Type = 3, pLv ="62", Note = ""}
NpcInfo[853] = {MapId = 107, Id = 21428, Type = 3, pLv ="63", Note = ""}
NpcInfo[854] = {MapId = 107, Id = 21427, Type = 3, pLv ="63", Note = ""}
NpcInfo[855] = {MapId = 107, Id = 21430, Type = 3, pLv ="63", Note = ""}
NpcInfo[856] = {MapId = 107, Id = 21429, Type = 3, pLv ="63", Note = ""}
NpcInfo[857] = {MapId = 107, Id = 21432, Type = 3, pLv ="64", Note = ""}
NpcInfo[858] = {MapId = 107, Id = 21433, Type = 3, pLv ="64", Note = ""}
NpcInfo[859] = {MapId = 107, Id = 21434, Type = 3, pLv ="64", Note = ""}
NpcInfo[860] = {MapId = 107, Id = 21431, Type = 3, pLv ="64", Note = ""}
NpcInfo[861] = {MapId = 107, Id = 21435, Type = 3, pLv ="65", Note = ""}
NpcInfo[862] = {MapId = 107, Id = 21436, Type = 3, pLv ="65", Note = ""}
NpcInfo[863] = {MapId = 107, Id = 21437, Type = 3, pLv ="65", Note = ""}
NpcInfo[864] = {MapId = 107, Id = 21438, Type = 3, pLv ="65", Note = ""}
NpcInfo[865] = {MapId = 107, Id = 21442, Type = 3, pLv ="66", Note = ""}
NpcInfo[866] = {MapId = 107, Id = 21439, Type = 3, pLv ="66", Note = ""}
NpcInfo[867] = {MapId = 107, Id = 21883, Type = 3, pLv ="62", Note = ""}
NpcInfo[868] = {MapId = 107, Id = 21884, Type = 3, pLv ="64", Note = ""}
NpcInfo[869] = {MapId = 107, Id = 21885, Type = 3, pLv ="66", Note = ""}
NpcInfo[870] = {MapId = 107, Id = 22972, Type = 3, pLv ="62", Note = ""}
NpcInfo[871] = {MapId = 107, Id = 22973, Type = 3, pLv ="66", Note = ""}
NpcInfo[872] = {MapId = 107, Id = 22974, Type = 3, pLv ="61", Note = ""}
NpcInfo[873] = {MapId = 107, Id = 22975, Type = 3, pLv ="66", Note = ""}
NpcInfo[874] = {MapId = 107, Id = 23204, Type = 3, pLv ="60", Note = ""}
NpcInfo[875] = {MapId = 107, Id = 24771, Type = 3, pLv ="67", Note = ""}
NpcInfo[876] = {MapId = 107, Id = 25448, Type = 3, pLv ="67", Note = ""}
NpcInfo[877] = {MapId = 107, Id = 25449, Type = 3, pLv ="72", Note = ""}
NpcInfo[878] = {MapId = 107, Id = 27759, Type = 3, pLv ="65", Note = ""}
NpcInfo[879] = {MapId = 107, Id = 27534, Type = 3, pLv ="150", Note = ""}
NpcInfo[880] = {MapId = 107, Id = 27535, Type = 3, pLv ="150", Note = ""}
NpcInfo[881] = {MapId = 107, Id = 27537, Type = 3, pLv ="150", Note = ""}
NpcInfo[882] = {MapId = 107, Id = 27538, Type = 3, pLv ="150", Note = ""}
NpcInfo[883] = {MapId = 107, Id = 27756, Type = 3, pLv ="150", Note = ""}
NpcInfo[884] = {MapId = 107, Id = 27758, Type = 3, pLv ="150", Note = ""}
NpcInfo[885] = {MapId = 107, Id = 31497, Type = 3, pLv ="150", Note = ""}
NpcInfo[886] = {MapId = 107, Id = 21921, Type = 1, pLv ="", Note = "异人"}
NpcInfo[887] = {MapId = 107, Id = 21944, Type = 1, pLv ="", Note = ""}
NpcInfo[888] = {MapId = 107, Id = 21945, Type = 1, pLv ="", Note = ""}
NpcInfo[889] = {MapId = 107, Id = 21946, Type = 1, pLv ="", Note = "商人"}
NpcInfo[890] = {MapId = 107, Id = 21947, Type = 1, pLv ="", Note = ""}
NpcInfo[891] = {MapId = 107, Id = 21948, Type = 1, pLv ="", Note = ""}
NpcInfo[892] = {MapId = 107, Id = 21949, Type = 1, pLv ="", Note = ""}
NpcInfo[893] = {MapId = 107, Id = 21950, Type = 1, pLv ="", Note = "居士"}
NpcInfo[894] = {MapId = 107, Id = 21951, Type = 1, pLv ="", Note = ""}
NpcInfo[895] = {MapId = 107, Id = 22644, Type = 1, pLv ="", Note = ""}
NpcInfo[896] = {MapId = 107, Id = 22646, Type = 1, pLv ="", Note = ""}
NpcInfo[897] = {MapId = 107, Id = 22645, Type = 1, pLv ="", Note = ""}
NpcInfo[898] = {MapId = 107, Id = 26444, Type = 1, pLv ="", Note = "玉京道人"}
NpcInfo[899] = {MapId = 107, Id = 27347, Type = 1, pLv ="", Note = "讨逆中常侍"}
NpcInfo[900] = {MapId = 107, Id = 27349, Type = 1, pLv ="", Note = "讨逆中常侍"}
NpcInfo[901] = {MapId = 107, Id = 27503, Type = 1, pLv ="", Note = ""}
NpcInfo[902] = {MapId = 108, Id = 21443, Type = 3, pLv ="71", Note = ""}
NpcInfo[903] = {MapId = 108, Id = 21444, Type = 3, pLv ="71", Note = ""}
NpcInfo[904] = {MapId = 108, Id = 21446, Type = 3, pLv ="71", Note = ""}
NpcInfo[905] = {MapId = 108, Id = 21445, Type = 3, pLv ="71", Note = ""}
NpcInfo[906] = {MapId = 108, Id = 21447, Type = 3, pLv ="72", Note = ""}
NpcInfo[907] = {MapId = 108, Id = 21448, Type = 3, pLv ="72", Note = ""}
NpcInfo[908] = {MapId = 108, Id = 21449, Type = 3, pLv ="72", Note = ""}
NpcInfo[909] = {MapId = 108, Id = 21450, Type = 3, pLv ="72", Note = ""}
NpcInfo[910] = {MapId = 108, Id = 21452, Type = 3, pLv ="73", Note = ""}
NpcInfo[911] = {MapId = 108, Id = 21453, Type = 3, pLv ="73", Note = ""}
NpcInfo[912] = {MapId = 108, Id = 21454, Type = 3, pLv ="73", Note = ""}
NpcInfo[913] = {MapId = 108, Id = 21451, Type = 3, pLv ="73", Note = ""}
NpcInfo[914] = {MapId = 108, Id = 21457, Type = 3, pLv ="74", Note = ""}
NpcInfo[915] = {MapId = 108, Id = 21458, Type = 3, pLv ="74", Note = ""}
NpcInfo[916] = {MapId = 108, Id = 21459, Type = 3, pLv ="75", Note = ""}
NpcInfo[917] = {MapId = 108, Id = 21460, Type = 3, pLv ="75", Note = ""}
NpcInfo[918] = {MapId = 108, Id = 21461, Type = 3, pLv ="75", Note = ""}
NpcInfo[919] = {MapId = 108, Id = 21462, Type = 3, pLv ="75", Note = ""}
NpcInfo[920] = {MapId = 108, Id = 21463, Type = 3, pLv ="76", Note = ""}
NpcInfo[921] = {MapId = 108, Id = 21464, Type = 3, pLv ="76", Note = ""}
NpcInfo[922] = {MapId = 108, Id = 21465, Type = 3, pLv ="76", Note = ""}
NpcInfo[923] = {MapId = 108, Id = 21466, Type = 3, pLv ="76", Note = ""}
NpcInfo[924] = {MapId = 108, Id = 21456, Type = 3, pLv ="74", Note = ""}
NpcInfo[925] = {MapId = 108, Id = 21455, Type = 3, pLv ="74", Note = ""}
NpcInfo[926] = {MapId = 108, Id = 21886, Type = 3, pLv ="72", Note = ""}
NpcInfo[927] = {MapId = 108, Id = 21887, Type = 3, pLv ="74", Note = ""}
NpcInfo[928] = {MapId = 108, Id = 21888, Type = 3, pLv ="76", Note = ""}
NpcInfo[929] = {MapId = 108, Id = 21990, Type = 3, pLv ="77", Note = ""}
NpcInfo[930] = {MapId = 108, Id = 21934, Type = 3, pLv ="76", Note = ""}
NpcInfo[931] = {MapId = 108, Id = 22987, Type = 3, pLv ="76", Note = ""}
NpcInfo[932] = {MapId = 108, Id = 22990, Type = 3, pLv ="74", Note = ""}
NpcInfo[933] = {MapId = 108, Id = 22988, Type = 3, pLv ="71", Note = ""}
NpcInfo[934] = {MapId = 108, Id = 22992, Type = 3, pLv ="76", Note = ""}
NpcInfo[935] = {MapId = 108, Id = 22986, Type = 3, pLv ="75", Note = ""}
NpcInfo[936] = {MapId = 108, Id = 24773, Type = 3, pLv ="77", Note = ""}
NpcInfo[937] = {MapId = 108, Id = 25450, Type = 3, pLv ="77", Note = ""}
NpcInfo[938] = {MapId = 108, Id = 25451, Type = 3, pLv ="82", Note = ""}
NpcInfo[939] = {MapId = 108, Id = 27536, Type = 3, pLv ="75", Note = ""}
NpcInfo[940] = {MapId = 108, Id = 21935, Type = 1, pLv ="", Note = "屯田校尉"}
NpcInfo[941] = {MapId = 108, Id = 21943, Type = 1, pLv ="", Note = "敦煌太守"}
NpcInfo[942] = {MapId = 108, Id = 21953, Type = 1, pLv ="", Note = "西域长史"}
NpcInfo[943] = {MapId = 108, Id = 21954, Type = 1, pLv ="", Note = ""}
NpcInfo[944] = {MapId = 108, Id = 21957, Type = 1, pLv ="", Note = ""}
NpcInfo[945] = {MapId = 108, Id = 21955, Type = 1, pLv ="", Note = ""}
NpcInfo[946] = {MapId = 108, Id = 21994, Type = 1, pLv ="", Note = ""}
NpcInfo[947] = {MapId = 108, Id = 22136, Type = 1, pLv ="", Note = "太守之女"}
NpcInfo[948] = {MapId = 108, Id = 22137, Type = 1, pLv ="", Note = "颠倒乾坤"}
NpcInfo[949] = {MapId = 108, Id = 22141, Type = 1, pLv ="", Note = "长史公子"}
NpcInfo[950] = {MapId = 108, Id = 22138, Type = 1, pLv ="", Note = "童叟无欺"}
NpcInfo[951] = {MapId = 108, Id = 22140, Type = 1, pLv ="", Note = "铁口直断"}
NpcInfo[952] = {MapId = 108, Id = 22139, Type = 1, pLv ="", Note = "风一样的男子"}
NpcInfo[953] = {MapId = 108, Id = 23024, Type = 1, pLv ="", Note = "老板娘"}
NpcInfo[954] = {MapId = 108, Id = 23029, Type = 1, pLv ="", Note = ""}
NpcInfo[955] = {MapId = 108, Id = 27355, Type = 1, pLv ="", Note = "讨逆中常侍"}
NpcInfo[956] = {MapId = 108, Id = 27353, Type = 1, pLv ="", Note = "讨逆中常侍"}
NpcInfo[957] = {MapId = 108, Id = 27354, Type = 1, pLv ="", Note = "讨逆中常侍"}
NpcInfo[958] = {MapId = 106, Id = 31118, Type = 2, pLv ="", Note = "驿站老板"}
NpcInfo[959] = {MapId = 106, Id = 31119, Type = 2, pLv ="", Note = "驿站老板"}
--[[
NpcInfo[960] = {MapId = 1301, Id = 48895, Type = 3, pLv ="81", Note = ""}
NpcInfo[961] = {MapId = 1301, Id = 48896, Type = 3, pLv ="81", Note = ""}
NpcInfo[962] = {MapId = 1301, Id = 48898, Type = 3, pLv ="82", Note = ""}
NpcInfo[963] = {MapId = 1301, Id = 48899, Type = 3, pLv ="82", Note = ""}
NpcInfo[964] = {MapId = 1301, Id = 48900, Type = 3, pLv ="83", Note = ""}
NpcInfo[965] = {MapId = 1301, Id = 48901, Type = 3, pLv ="83", Note = ""}
NpcInfo[966] = {MapId = 1301, Id = 48902, Type = 3, pLv ="84", Note = ""}
NpcInfo[967] = {MapId = 1301, Id = 48903, Type = 3, pLv ="84", Note = ""}
NpcInfo[968] = {MapId = 1301, Id = 48905, Type = 3, pLv ="84", Note = ""}
NpcInfo[969] = {MapId = 1301, Id = 48906, Type = 3, pLv ="84", Note = ""}
NpcInfo[970] = {MapId = 1301, Id = 48907, Type = 3, pLv ="85", Note = ""}
NpcInfo[971] = {MapId = 1301, Id = 48908, Type = 3, pLv ="85", Note = ""}
NpcInfo[972] = {MapId = 1301, Id = 48909, Type = 3, pLv ="85", Note = ""}
NpcInfo[973] = {MapId = 1301, Id = 48910, Type = 3, pLv ="86", Note = ""}
NpcInfo[974] = {MapId = 1301, Id = 48911, Type = 3, pLv ="86", Note = ""}
NpcInfo[975] = {MapId = 1301, Id = 48912, Type = 3, pLv ="86", Note = ""}
NpcInfo[976] = {MapId = 1301, Id = 48913, Type = 3, pLv ="87", Note = ""}
NpcInfo[977] = {MapId = 1301, Id = 48914, Type = 3, pLv ="87", Note = ""}
NpcInfo[978] = {MapId = 1301, Id = 48915, Type = 3, pLv ="87", Note = ""}
NpcInfo[979] = {MapId = 1301, Id = 48916, Type = 3, pLv ="88", Note = ""}
NpcInfo[980] = {MapId = 1301, Id = 48917, Type = 3, pLv ="88", Note = ""}
NpcInfo[981] = {MapId = 1301, Id = 48918, Type = 3, pLv ="88", Note = ""}
NpcInfo[982] = {MapId = 1301, Id = 48919, Type = 3, pLv ="89", Note = ""}
NpcInfo[983] = {MapId = 1301, Id = 48920, Type = 3, pLv ="89", Note = ""}
NpcInfo[984] = {MapId = 1301, Id = 48921, Type = 3, pLv ="89", Note = ""}
NpcInfo[985] = {MapId = 1301, Id = 48922, Type = 3, pLv ="89", Note = ""}
NpcInfo[986] = {MapId = 1301, Id = 48923, Type = 3, pLv ="90", Note = ""}
NpcInfo[987] = {MapId = 1301, Id = 48924, Type = 3, pLv ="90", Note = ""}
NpcInfo[988] = {MapId = 1301, Id = 48925, Type = 3, pLv ="90", Note = ""}
NpcInfo[989] = {MapId = 1301, Id = 48926, Type = 3, pLv ="91", Note = ""}
NpcInfo[990] = {MapId = 1301, Id = 48927, Type = 3, pLv ="91", Note = ""}
NpcInfo[991] = {MapId = 1301, Id = 48928, Type = 3, pLv ="91", Note = ""}
NpcInfo[992] = {MapId = 1301, Id = 48929, Type = 3, pLv ="92", Note = ""}
NpcInfo[993] = {MapId = 1301, Id = 48930, Type = 3, pLv ="92", Note = ""}
NpcInfo[994] = {MapId = 1301, Id = 48931, Type = 3, pLv ="92", Note = ""}
NpcInfo[995] = {MapId = 1301, Id = 48933, Type = 3, pLv ="93", Note = ""}
NpcInfo[996] = {MapId = 1301, Id = 48934, Type = 3, pLv ="93", Note = ""}
NpcInfo[997] = {MapId = 1301, Id = 48935, Type = 3, pLv ="93", Note = ""}
NpcInfo[998] = {MapId = 1301, Id = 48936, Type = 3, pLv ="94", Note = ""}
NpcInfo[999] = {MapId = 1301, Id = 48937, Type = 3, pLv ="94", Note = ""}
NpcInfo[1000] = {MapId = 1301, Id = 48938, Type = 3, pLv ="93", Note = ""}
NpcInfo[1001] = {MapId = 1301, Id = 48939, Type = 3, pLv ="93", Note = ""}
NpcInfo[1002] = {MapId = 1301, Id = 48940, Type = 3, pLv ="95", Note = ""}
NpcInfo[1003] = {MapId = 1301, Id = 48943, Type = 3, pLv ="95", Note = ""}
NpcInfo[1004] = {MapId = 1301, Id = 48948, Type = 3, pLv ="96", Note = ""}
NpcInfo[1005] = {MapId = 1301, Id = 48949, Type = 3, pLv ="96", Note = ""}
NpcInfo[1006] = {MapId = 1301, Id = 48952, Type = 3, pLv ="97", Note = ""}
NpcInfo[1007] = {MapId = 1301, Id = 48953, Type = 3, pLv ="97", Note = ""}
NpcInfo[1008] = {MapId = 1301, Id = 48954, Type = 3, pLv ="97", Note = ""}
NpcInfo[1009] = {MapId = 1301, Id = 48955, Type = 3, pLv ="97", Note = ""}
NpcInfo[1010] = {MapId = 1301, Id = 48956, Type = 3, pLv ="98", Note = ""}
NpcInfo[1011] = {MapId = 1301, Id = 48957, Type = 3, pLv ="98", Note = ""}
NpcInfo[1012] = {MapId = 1301, Id = 48958, Type = 3, pLv ="98", Note = ""}
NpcInfo[1013] = {MapId = 1301, Id = 48959, Type = 3, pLv ="98", Note = ""}
NpcInfo[1014] = {MapId = 1301, Id = 48960, Type = 3, pLv ="99", Note = ""}
NpcInfo[1015] = {MapId = 1301, Id = 48961, Type = 3, pLv ="99", Note = ""}
NpcInfo[1016] = {MapId = 1301, Id = 48962, Type = 3, pLv ="99", Note = ""}
NpcInfo[1017] = {MapId = 1301, Id = 48963, Type = 3, pLv ="99", Note = ""}
NpcInfo[1018] = {MapId = 1301, Id = 48964, Type = 3, pLv ="99", Note = ""}
NpcInfo[1019] = {MapId = 1301, Id = 48965, Type = 3, pLv ="99", Note = ""}
NpcInfo[1020] = {MapId = 1301, Id = 48966, Type = 3, pLv ="100", Note = ""}
NpcInfo[1021] = {MapId = 1301, Id = 48967, Type = 3, pLv ="100", Note = ""}
NpcInfo[1022] = {MapId = 1301, Id = 48968, Type = 3, pLv ="100", Note = ""}
NpcInfo[1023] = {MapId = 1301, Id = 50443, Type = 3, pLv ="95", Note = ""}
NpcInfo[1024] = {MapId = 1301, Id = 50592, Type = 3, pLv ="92", Note = ""}
NpcInfo[1025] = {MapId = 1301, Id = 50593, Type = 3, pLv ="92", Note = ""}
NpcInfo[1026] = {MapId = 1301, Id = 50594, Type = 3, pLv ="92", Note = ""}
NpcInfo[1027] = {MapId = 1301, Id = 50600, Type = 3, pLv ="92", Note = ""}
NpcInfo[1028] = {MapId = 1301, Id = 50645, Type = 3, pLv ="96", Note = ""}
NpcInfo[1029] = {MapId = 1301, Id = 51391, Type = 3, pLv ="90", Note = ""}
NpcInfo[1030] = {MapId = 1301, Id = 51393, Type = 3, pLv ="110", Note = ""}
NpcInfo[1031] = {MapId = 1301, Id = 65411, Type = 3, pLv ="81", Note = ""}
NpcInfo[1032] = {MapId = 1301, Id = 65443, Type = 3, pLv ="85", Note = ""}
NpcInfo[1033] = {MapId = 1301, Id = 65444, Type = 3, pLv ="95", Note = ""}
NpcInfo[1034] = {MapId = 1301, Id = 50440, Type = 1, pLv ="81", Note = ""}
NpcInfo[1035] = {MapId = 1301, Id = 49161, Type = 1, pLv ="81", Note = ""}
NpcInfo[1036] = {MapId = 1301, Id = 49163, Type = 1, pLv ="81", Note = ""}
NpcInfo[1037] = {MapId = 1301, Id = 49179, Type = 1, pLv ="81", Note = ""}
NpcInfo[1038] = {MapId = 1301, Id = 49168, Type = 1, pLv ="100", Note = ""}
NpcInfo[1039] = {MapId = 1301, Id = 49160, Type = 1, pLv ="81", Note = ""}
NpcInfo[1040] = {MapId = 1301, Id = 51468, Type = 1, pLv ="130", Note = ""}
NpcInfo[1041] = {MapId = 1301, Id = 49178, Type = 1, pLv ="81", Note = ""}
NpcInfo[1042] = {MapId = 1301, Id = 49159, Type = 1, pLv ="81", Note = ""}
NpcInfo[1043] = {MapId = 1301, Id = 49154, Type = 1, pLv ="81", Note = ""}
NpcInfo[1044] = {MapId = 1301, Id = 49182, Type = 1, pLv ="81", Note = ""}
NpcInfo[1045] = {MapId = 1301, Id = 49166, Type = 1, pLv ="100", Note = ""}
NpcInfo[1046] = {MapId = 1301, Id = 49152, Type = 1, pLv ="81", Note = ""}
NpcInfo[1047] = {MapId = 1301, Id = 49197, Type = 1, pLv ="81", Note = ""}
NpcInfo[1048] = {MapId = 1301, Id = 64878, Type = 1, pLv ="130", Note = ""}
NpcInfo[1049] = {MapId = 1301, Id = 49167, Type = 1, pLv ="100", Note = ""}
NpcInfo[1050] = {MapId = 1301, Id = 50582, Type = 1, pLv ="81", Note = ""}
NpcInfo[1051] = {MapId = 1301, Id = 51461, Type = 1, pLv ="130", Note = ""}
NpcInfo[1052] = {MapId = 1301, Id = 50637, Type = 1, pLv ="81", Note = ""}
NpcInfo[1053] = {MapId = 1301, Id = 49155, Type = 1, pLv ="81", Note = ""}
NpcInfo[1054] = {MapId = 1301, Id = 49156, Type = 1, pLv ="81", Note = ""}
NpcInfo[1055] = {MapId = 1301, Id = 49165, Type = 1, pLv ="81", Note = ""}
NpcInfo[1056] = {MapId = 1301, Id = 49148, Type = 1, pLv ="81", Note = ""}
NpcInfo[1057] = {MapId = 1301, Id = 49200, Type = 1, pLv ="81", Note = ""}
NpcInfo[1058] = {MapId = 1301, Id = 49172, Type = 1, pLv ="81", Note = ""}
NpcInfo[1059] = {MapId = 1301, Id = 51469, Type = 1, pLv ="130", Note = ""}
NpcInfo[1060] = {MapId = 1301, Id = 50612, Type = 1, pLv ="81", Note = ""}
NpcInfo[1061] = {MapId = 1301, Id = 49181, Type = 1, pLv ="81", Note = ""}
NpcInfo[1062] = {MapId = 1301, Id = 49174, Type = 1, pLv ="81", Note = ""}
NpcInfo[1063] = {MapId = 1301, Id = 49169, Type = 1, pLv ="100", Note = ""}
NpcInfo[1064] = {MapId = 1301, Id = 49151, Type = 1, pLv ="81", Note = ""}
NpcInfo[1065] = {MapId = 1301, Id = 49146, Type = 1, pLv ="81", Note = ""}
NpcInfo[1066] = {MapId = 1301, Id = 49150, Type = 1, pLv ="81", Note = ""}
NpcInfo[1067] = {MapId = 1301, Id = 49162, Type = 1, pLv ="81", Note = ""}
NpcInfo[1068] = {MapId = 1301, Id = 49201, Type = 1, pLv ="81", Note = ""}
NpcInfo[1069] = {MapId = 1301, Id = 49164, Type = 1, pLv ="81", Note = ""}
NpcInfo[1070] = {MapId = 1301, Id = 64753, Type = 1, pLv ="81", Note = ""}
NpcInfo[1071] = {MapId = 1301, Id = 49153, Type = 1, pLv ="81", Note = ""}
NpcInfo[1072] = {MapId = 1301, Id = 49171, Type = 1, pLv ="81", Note = ""}
NpcInfo[1073] = {MapId = 1301, Id = 64934, Type = 1, pLv ="130", Note = ""}
NpcInfo[1074] = {MapId = 1301, Id = 49198, Type = 1, pLv ="81", Note = ""}
NpcInfo[1075] = {MapId = 1301, Id = 49176, Type = 1, pLv ="81", Note = ""}
NpcInfo[1076] = {MapId = 1301, Id = 49177, Type = 1, pLv ="81", Note = ""}
NpcInfo[1077] = {MapId = 1301, Id = 51470, Type = 1, pLv ="130", Note = ""}
NpcInfo[1078] = {MapId = 1301, Id = 49157, Type = 1, pLv ="100", Note = ""}
NpcInfo[1079] = {MapId = 1301, Id = 49199, Type = 1, pLv ="81", Note = ""}
NpcInfo[1080] = {MapId = 1301, Id = 49183, Type = 1, pLv ="81", Note = ""}
NpcInfo[1081] = {MapId = 1301, Id = 49158, Type = 1, pLv ="81", Note = ""}
NpcInfo[1082] = {MapId = 1301, Id = 49196, Type = 1, pLv ="81", Note = ""}
NpcInfo[1083] = {MapId = 1301, Id = 51467, Type = 1, pLv ="130", Note = ""}
NpcInfo[1084] = {MapId = 1302, Id = 48974, Type = 3, pLv ="104", Note = ""}
NpcInfo[1085] = {MapId = 1302, Id = 48975, Type = 3, pLv ="108", Note = ""}
NpcInfo[1086] = {MapId = 1302, Id = 48980, Type = 3, pLv ="106", Note = ""}
NpcInfo[1087] = {MapId = 1302, Id = 48982, Type = 3, pLv ="101", Note = ""}
NpcInfo[1088] = {MapId = 1302, Id = 48983, Type = 3, pLv ="101", Note = ""}
NpcInfo[1089] = {MapId = 1302, Id = 48985, Type = 3, pLv ="101", Note = ""}
NpcInfo[1090] = {MapId = 1302, Id = 48986, Type = 3, pLv ="103", Note = ""}
NpcInfo[1091] = {MapId = 1302, Id = 48987, Type = 3, pLv ="103", Note = ""}
NpcInfo[1092] = {MapId = 1302, Id = 48988, Type = 3, pLv ="103", Note = ""}
NpcInfo[1093] = {MapId = 1302, Id = 48989, Type = 3, pLv ="104", Note = ""}
NpcInfo[1094] = {MapId = 1302, Id = 48990, Type = 3, pLv ="104", Note = ""}
NpcInfo[1095] = {MapId = 1302, Id = 48991, Type = 3, pLv ="105", Note = ""}
NpcInfo[1096] = {MapId = 1302, Id = 48995, Type = 3, pLv ="105", Note = ""}
NpcInfo[1097] = {MapId = 1302, Id = 48996, Type = 3, pLv ="106", Note = ""}
NpcInfo[1098] = {MapId = 1302, Id = 48997, Type = 3, pLv ="106", Note = ""}
NpcInfo[1099] = {MapId = 1302, Id = 48998, Type = 3, pLv ="107", Note = ""}
NpcInfo[1100] = {MapId = 1302, Id = 49001, Type = 3, pLv ="107", Note = ""}
NpcInfo[1101] = {MapId = 1302, Id = 49002, Type = 3, pLv ="108", Note = ""}
NpcInfo[1102] = {MapId = 1302, Id = 49004, Type = 3, pLv ="109", Note = ""}
NpcInfo[1103] = {MapId = 1302, Id = 49005, Type = 3, pLv ="109", Note = ""}
NpcInfo[1104] = {MapId = 1302, Id = 49006, Type = 3, pLv ="110", Note = ""}
NpcInfo[1105] = {MapId = 1302, Id = 49007, Type = 3, pLv ="110", Note = ""}
NpcInfo[1106] = {MapId = 1302, Id = 49008, Type = 3, pLv ="110", Note = ""}
NpcInfo[1107] = {MapId = 1302, Id = 49009, Type = 3, pLv ="110", Note = ""}
NpcInfo[1108] = {MapId = 1302, Id = 49010, Type = 3, pLv ="111", Note = ""}
NpcInfo[1109] = {MapId = 1302, Id = 49011, Type = 3, pLv ="111", Note = ""}
NpcInfo[1110] = {MapId = 1302, Id = 49012, Type = 3, pLv ="112", Note = ""}
NpcInfo[1111] = {MapId = 1302, Id = 49013, Type = 3, pLv ="112", Note = ""}
NpcInfo[1112] = {MapId = 1302, Id = 49015, Type = 3, pLv ="113", Note = ""}
NpcInfo[1113] = {MapId = 1302, Id = 49017, Type = 3, pLv ="113", Note = ""}
NpcInfo[1114] = {MapId = 1302, Id = 49018, Type = 3, pLv ="106", Note = ""}
NpcInfo[1115] = {MapId = 1302, Id = 49020, Type = 3, pLv ="114", Note = ""}
NpcInfo[1116] = {MapId = 1302, Id = 49021, Type = 3, pLv ="114", Note = ""}
NpcInfo[1117] = {MapId = 1302, Id = 49022, Type = 3, pLv ="115", Note = ""}
NpcInfo[1118] = {MapId = 1302, Id = 49023, Type = 3, pLv ="115", Note = ""}
NpcInfo[1119] = {MapId = 1302, Id = 49024, Type = 3, pLv ="115", Note = ""}
NpcInfo[1120] = {MapId = 1302, Id = 49025, Type = 3, pLv ="115", Note = ""}
NpcInfo[1121] = {MapId = 1302, Id = 49026, Type = 3, pLv ="115", Note = ""}
NpcInfo[1122] = {MapId = 1302, Id = 49027, Type = 3, pLv ="115", Note = ""}
NpcInfo[1123] = {MapId = 1302, Id = 49032, Type = 3, pLv ="101", Note = ""}
NpcInfo[1124] = {MapId = 1302, Id = 49033, Type = 3, pLv ="106", Note = ""}
NpcInfo[1125] = {MapId = 1302, Id = 49034, Type = 3, pLv ="103", Note = ""}
NpcInfo[1126] = {MapId = 1302, Id = 49035, Type = 3, pLv ="108", Note = ""}
NpcInfo[1127] = {MapId = 1302, Id = 49041, Type = 3, pLv ="105", Note = ""}
NpcInfo[1128] = {MapId = 1302, Id = 49042, Type = 3, pLv ="105", Note = ""}
NpcInfo[1129] = {MapId = 1302, Id = 49043, Type = 3, pLv ="105", Note = ""}
NpcInfo[1130] = {MapId = 1302, Id = 58449, Type = 3, pLv ="101", Note = ""}
NpcInfo[1131] = {MapId = 1302, Id = 65412, Type = 3, pLv ="101", Note = ""}
NpcInfo[1132] = {MapId = 1302, Id = 49261, Type = 1, pLv ="110", Note = ""}
NpcInfo[1133] = {MapId = 1302, Id = 49215, Type = 1, pLv ="110", Note = ""}
NpcInfo[1134] = {MapId = 1302, Id = 49216, Type = 1, pLv ="110", Note = ""}
NpcInfo[1135] = {MapId = 1302, Id = 49269, Type = 1, pLv ="110", Note = ""}
NpcInfo[1136] = {MapId = 1302, Id = 49232, Type = 1, pLv ="106", Note = ""}
NpcInfo[1137] = {MapId = 1302, Id = 49258, Type = 1, pLv ="81", Note = ""}
NpcInfo[1138] = {MapId = 1302, Id = 49233, Type = 1, pLv ="106", Note = ""}
NpcInfo[1139] = {MapId = 1302, Id = 49238, Type = 1, pLv ="110", Note = ""}
NpcInfo[1140] = {MapId = 1302, Id = 49257, Type = 1, pLv ="110", Note = ""}
NpcInfo[1141] = {MapId = 1302, Id = 65426, Type = 1, pLv ="110", Note = ""}
NpcInfo[1142] = {MapId = 1302, Id = 49241, Type = 1, pLv ="110", Note = ""}
NpcInfo[1143] = {MapId = 1302, Id = 49212, Type = 1, pLv ="110", Note = ""}
NpcInfo[1144] = {MapId = 1302, Id = 49267, Type = 1, pLv ="110", Note = ""}
NpcInfo[1145] = {MapId = 1302, Id = 49252, Type = 1, pLv ="110", Note = ""}
NpcInfo[1146] = {MapId = 1302, Id = 49247, Type = 1, pLv ="110", Note = ""}
NpcInfo[1147] = {MapId = 1302, Id = 49229, Type = 1, pLv ="110", Note = ""}
NpcInfo[1148] = {MapId = 1302, Id = 49271, Type = 1, pLv ="110", Note = ""}
NpcInfo[1149] = {MapId = 1302, Id = 49254, Type = 1, pLv ="110", Note = ""}
NpcInfo[1150] = {MapId = 1302, Id = 64935, Type = 1, pLv ="130", Note = ""}
NpcInfo[1151] = {MapId = 1302, Id = 49264, Type = 1, pLv ="110", Note = ""}
NpcInfo[1152] = {MapId = 1302, Id = 49253, Type = 1, pLv ="110", Note = ""}
NpcInfo[1153] = {MapId = 1302, Id = 49242, Type = 1, pLv ="110", Note = ""}
NpcInfo[1154] = {MapId = 1302, Id = 49211, Type = 1, pLv ="110", Note = ""}
NpcInfo[1155] = {MapId = 1302, Id = 64970, Type = 1, pLv ="110", Note = ""}
NpcInfo[1156] = {MapId = 1302, Id = 49234, Type = 1, pLv ="110", Note = ""}
NpcInfo[1157] = {MapId = 1302, Id = 49265, Type = 1, pLv ="110", Note = ""}
NpcInfo[1158] = {MapId = 1302, Id = 49226, Type = 1, pLv ="110", Note = ""}
NpcInfo[1159] = {MapId = 1302, Id = 49251, Type = 1, pLv ="110", Note = ""}
NpcInfo[1160] = {MapId = 1302, Id = 49255, Type = 1, pLv ="110", Note = ""}
NpcInfo[1161] = {MapId = 1302, Id = 49260, Type = 1, pLv ="110", Note = ""}
NpcInfo[1162] = {MapId = 1302, Id = 49274, Type = 1, pLv ="110", Note = ""}
NpcInfo[1163] = {MapId = 1302, Id = 49275, Type = 1, pLv ="110", Note = ""}
NpcInfo[1164] = {MapId = 1302, Id = 49263, Type = 1, pLv ="110", Note = ""}
NpcInfo[1165] = {MapId = 1302, Id = 65422, Type = 1, pLv ="110", Note = ""}
NpcInfo[1166] = {MapId = 1302, Id = 49230, Type = 1, pLv ="110", Note = ""}
NpcInfo[1167] = {MapId = 1302, Id = 49227, Type = 1, pLv ="110", Note = ""}
NpcInfo[1168] = {MapId = 1302, Id = 49270, Type = 1, pLv ="110", Note = ""}
NpcInfo[1169] = {MapId = 1302, Id = 49246, Type = 1, pLv ="110", Note = ""}
NpcInfo[1170] = {MapId = 1302, Id = 49250, Type = 1, pLv ="110", Note = ""}
NpcInfo[1171] = {MapId = 1302, Id = 49272, Type = 1, pLv ="110", Note = ""}
NpcInfo[1172] = {MapId = 1302, Id = 49245, Type = 1, pLv ="110", Note = ""}
NpcInfo[1173] = {MapId = 1302, Id = 49248, Type = 1, pLv ="110", Note = ""}
NpcInfo[1174] = {MapId = 1302, Id = 49249, Type = 1, pLv ="110", Note = ""}
NpcInfo[1175] = {MapId = 1302, Id = 49268, Type = 1, pLv ="110", Note = ""}
NpcInfo[1176] = {MapId = 1302, Id = 49280, Type = 1, pLv ="110", Note = ""}
NpcInfo[1177] = {MapId = 1302, Id = 49243, Type = 1, pLv ="110", Note = ""}
NpcInfo[1178] = {MapId = 1302, Id = 49240, Type = 1, pLv ="110", Note = ""}
NpcInfo[1179] = {MapId = 1302, Id = 49231, Type = 1, pLv ="106", Note = ""}
NpcInfo[1180] = {MapId = 1302, Id = 49244, Type = 1, pLv ="110", Note = ""}
NpcInfo[1181] = {MapId = 1302, Id = 49256, Type = 1, pLv ="110", Note = ""}
NpcInfo[1182] = {MapId = 1302, Id = 49239, Type = 1, pLv ="110", Note = ""}
NpcInfo[1183] = {MapId = 1303, Id = 49048, Type = 3, pLv ="116", Note = ""}
NpcInfo[1184] = {MapId = 1303, Id = 49049, Type = 3, pLv ="116", Note = ""}
NpcInfo[1185] = {MapId = 1303, Id = 49050, Type = 3, pLv ="116", Note = ""}
NpcInfo[1186] = {MapId = 1303, Id = 49052, Type = 3, pLv ="117", Note = ""}
NpcInfo[1187] = {MapId = 1303, Id = 49053, Type = 3, pLv ="117", Note = ""}
NpcInfo[1188] = {MapId = 1303, Id = 49054, Type = 3, pLv ="117", Note = ""}
NpcInfo[1189] = {MapId = 1303, Id = 49056, Type = 3, pLv ="118", Note = ""}
NpcInfo[1190] = {MapId = 1303, Id = 49057, Type = 3, pLv ="118", Note = ""}
NpcInfo[1191] = {MapId = 1303, Id = 49058, Type = 3, pLv ="118", Note = ""}
NpcInfo[1192] = {MapId = 1303, Id = 49059, Type = 3, pLv ="119", Note = ""}
NpcInfo[1193] = {MapId = 1303, Id = 49060, Type = 3, pLv ="119", Note = ""}
NpcInfo[1194] = {MapId = 1303, Id = 49061, Type = 3, pLv ="119", Note = ""}
NpcInfo[1195] = {MapId = 1303, Id = 49062, Type = 3, pLv ="119", Note = ""}
NpcInfo[1196] = {MapId = 1303, Id = 49066, Type = 3, pLv ="120", Note = ""}
NpcInfo[1197] = {MapId = 1303, Id = 49067, Type = 3, pLv ="120", Note = ""}
NpcInfo[1198] = {MapId = 1303, Id = 49068, Type = 3, pLv ="120", Note = ""}
NpcInfo[1199] = {MapId = 1303, Id = 49073, Type = 3, pLv ="121", Note = ""}
NpcInfo[1200] = {MapId = 1303, Id = 49074, Type = 3, pLv ="121", Note = ""}
NpcInfo[1201] = {MapId = 1303, Id = 49075, Type = 3, pLv ="121", Note = ""}
NpcInfo[1202] = {MapId = 1303, Id = 49076, Type = 3, pLv ="121", Note = ""}
NpcInfo[1203] = {MapId = 1303, Id = 49078, Type = 3, pLv ="122", Note = ""}
NpcInfo[1204] = {MapId = 1303, Id = 49080, Type = 3, pLv ="123", Note = ""}
NpcInfo[1205] = {MapId = 1303, Id = 49081, Type = 3, pLv ="123", Note = ""}
NpcInfo[1206] = {MapId = 1303, Id = 49082, Type = 3, pLv ="123", Note = ""}
NpcInfo[1207] = {MapId = 1303, Id = 49083, Type = 3, pLv ="123", Note = ""}
NpcInfo[1208] = {MapId = 1303, Id = 49084, Type = 3, pLv ="124", Note = ""}
NpcInfo[1209] = {MapId = 1303, Id = 49085, Type = 3, pLv ="124", Note = ""}
NpcInfo[1210] = {MapId = 1303, Id = 49086, Type = 3, pLv ="124", Note = ""}
NpcInfo[1211] = {MapId = 1303, Id = 49087, Type = 3, pLv ="125", Note = ""}
NpcInfo[1212] = {MapId = 1303, Id = 49088, Type = 3, pLv ="125", Note = ""}
NpcInfo[1213] = {MapId = 1303, Id = 49089, Type = 3, pLv ="125", Note = ""}
NpcInfo[1214] = {MapId = 1303, Id = 49090, Type = 3, pLv ="125", Note = ""}
NpcInfo[1215] = {MapId = 1303, Id = 49091, Type = 3, pLv ="125", Note = ""}
NpcInfo[1216] = {MapId = 1303, Id = 49092, Type = 3, pLv ="126", Note = ""}
NpcInfo[1217] = {MapId = 1303, Id = 49093, Type = 3, pLv ="126", Note = ""}
NpcInfo[1218] = {MapId = 1303, Id = 49094, Type = 3, pLv ="126", Note = ""}
NpcInfo[1219] = {MapId = 1303, Id = 49095, Type = 3, pLv ="126", Note = ""}
NpcInfo[1220] = {MapId = 1303, Id = 49096, Type = 3, pLv ="127", Note = ""}
NpcInfo[1221] = {MapId = 1303, Id = 49097, Type = 3, pLv ="127", Note = ""}
NpcInfo[1222] = {MapId = 1303, Id = 49098, Type = 3, pLv ="127", Note = ""}
NpcInfo[1223] = {MapId = 1303, Id = 49099, Type = 3, pLv ="127", Note = ""}
NpcInfo[1224] = {MapId = 1303, Id = 49100, Type = 3, pLv ="128", Note = ""}
NpcInfo[1225] = {MapId = 1303, Id = 49101, Type = 3, pLv ="128", Note = ""}
NpcInfo[1226] = {MapId = 1303, Id = 49102, Type = 3, pLv ="128", Note = ""}
NpcInfo[1227] = {MapId = 1303, Id = 49103, Type = 3, pLv ="129", Note = ""}
NpcInfo[1228] = {MapId = 1303, Id = 49104, Type = 3, pLv ="129", Note = ""}
NpcInfo[1229] = {MapId = 1303, Id = 49105, Type = 3, pLv ="129", Note = ""}
NpcInfo[1230] = {MapId = 1303, Id = 49106, Type = 3, pLv ="129", Note = ""}
NpcInfo[1231] = {MapId = 1303, Id = 49107, Type = 3, pLv ="129", Note = ""}
NpcInfo[1232] = {MapId = 1303, Id = 49108, Type = 3, pLv ="129", Note = ""}
NpcInfo[1233] = {MapId = 1303, Id = 49109, Type = 3, pLv ="129", Note = ""}
NpcInfo[1234] = {MapId = 1303, Id = 49110, Type = 3, pLv ="130", Note = ""}
NpcInfo[1235] = {MapId = 1303, Id = 49111, Type = 3, pLv ="130", Note = ""}
NpcInfo[1236] = {MapId = 1303, Id = 49112, Type = 3, pLv ="130", Note = ""}
NpcInfo[1237] = {MapId = 1303, Id = 49113, Type = 3, pLv ="130", Note = ""}
NpcInfo[1238] = {MapId = 1303, Id = 49114, Type = 3, pLv ="130", Note = ""}
NpcInfo[1239] = {MapId = 1303, Id = 49118, Type = 3, pLv ="120", Note = ""}
NpcInfo[1240] = {MapId = 1303, Id = 49129, Type = 3, pLv ="120", Note = ""}
NpcInfo[1241] = {MapId = 1303, Id = 49131, Type = 3, pLv ="130", Note = ""}
NpcInfo[1242] = {MapId = 1303, Id = 65413, Type = 3, pLv ="116", Note = ""}
NpcInfo[1243] = {MapId = 1303, Id = 49298, Type = 1, pLv ="120", Note = ""}
NpcInfo[1244] = {MapId = 1303, Id = 49322, Type = 1, pLv ="120", Note = ""}
NpcInfo[1245] = {MapId = 1303, Id = 49332, Type = 1, pLv ="120", Note = ""}
NpcInfo[1246] = {MapId = 1303, Id = 49333, Type = 1, pLv ="120", Note = ""}
NpcInfo[1247] = {MapId = 1303, Id = 49309, Type = 1, pLv ="120", Note = ""}
NpcInfo[1248] = {MapId = 1303, Id = 49351, Type = 1, pLv ="120", Note = ""}
NpcInfo[1249] = {MapId = 1303, Id = 49349, Type = 1, pLv ="120", Note = ""}
NpcInfo[1250] = {MapId = 1303, Id = 49355, Type = 1, pLv ="120", Note = ""}
NpcInfo[1251] = {MapId = 1303, Id = 49317, Type = 1, pLv ="120", Note = ""}
NpcInfo[1252] = {MapId = 1303, Id = 49318, Type = 1, pLv ="120", Note = ""}
NpcInfo[1253] = {MapId = 1303, Id = 49348, Type = 1, pLv ="120", Note = ""}
NpcInfo[1254] = {MapId = 1303, Id = 49305, Type = 1, pLv ="120", Note = ""}
NpcInfo[1255] = {MapId = 1303, Id = 49295, Type = 1, pLv ="120", Note = ""}
NpcInfo[1256] = {MapId = 1303, Id = 49283, Type = 1, pLv ="120", Note = ""}
NpcInfo[1257] = {MapId = 1303, Id = 49325, Type = 1, pLv ="120", Note = ""}
NpcInfo[1258] = {MapId = 1303, Id = 49321, Type = 1, pLv ="81", Note = ""}
NpcInfo[1259] = {MapId = 1303, Id = 49320, Type = 1, pLv ="81", Note = ""}
NpcInfo[1260] = {MapId = 1303, Id = 49319, Type = 1, pLv ="81", Note = ""}
NpcInfo[1261] = {MapId = 1303, Id = 49352, Type = 1, pLv ="120", Note = ""}
NpcInfo[1262] = {MapId = 1303, Id = 49347, Type = 1, pLv ="120", Note = ""}
NpcInfo[1263] = {MapId = 1303, Id = 49299, Type = 1, pLv ="120", Note = ""}
NpcInfo[1264] = {MapId = 1303, Id = 49304, Type = 1, pLv ="120", Note = ""}
NpcInfo[1265] = {MapId = 1303, Id = 49342, Type = 1, pLv ="120", Note = ""}
NpcInfo[1266] = {MapId = 1303, Id = 49328, Type = 1, pLv ="120", Note = ""}
NpcInfo[1267] = {MapId = 1303, Id = 49310, Type = 1, pLv ="120", Note = ""}
NpcInfo[1268] = {MapId = 1303, Id = 49353, Type = 1, pLv ="120", Note = ""}
NpcInfo[1269] = {MapId = 1303, Id = 49343, Type = 1, pLv ="120", Note = ""}
NpcInfo[1270] = {MapId = 1303, Id = 49324, Type = 1, pLv ="120", Note = ""}
NpcInfo[1271] = {MapId = 1303, Id = 49329, Type = 1, pLv ="120", Note = ""}
NpcInfo[1272] = {MapId = 1303, Id = 49301, Type = 1, pLv ="120", Note = ""}
NpcInfo[1273] = {MapId = 1303, Id = 49341, Type = 1, pLv ="120", Note = ""}
NpcInfo[1274] = {MapId = 1303, Id = 49291, Type = 1, pLv ="120", Note = ""}
NpcInfo[1275] = {MapId = 1303, Id = 49340, Type = 1, pLv ="120", Note = ""}
NpcInfo[1276] = {MapId = 1303, Id = 49307, Type = 1, pLv ="120", Note = ""}
NpcInfo[1277] = {MapId = 1303, Id = 49314, Type = 1, pLv ="120", Note = ""}
NpcInfo[1278] = {MapId = 1303, Id = 49345, Type = 1, pLv ="120", Note = ""}
NpcInfo[1279] = {MapId = 1303, Id = 49312, Type = 1, pLv ="81", Note = ""}
NpcInfo[1280] = {MapId = 1303, Id = 49294, Type = 1, pLv ="120", Note = ""}
NpcInfo[1281] = {MapId = 1303, Id = 49293, Type = 1, pLv ="120", Note = ""}
NpcInfo[1282] = {MapId = 1303, Id = 49287, Type = 1, pLv ="120", Note = ""}
NpcInfo[1283] = {MapId = 1303, Id = 49346, Type = 1, pLv ="120", Note = ""}
NpcInfo[1284] = {MapId = 1303, Id = 49350, Type = 1, pLv ="120", Note = ""}
NpcInfo[1285] = {MapId = 1303, Id = 49282, Type = 1, pLv ="130", Note = ""}
NpcInfo[1286] = {MapId = 1303, Id = 49330, Type = 1, pLv ="120", Note = ""}
NpcInfo[1287] = {MapId = 1303, Id = 49311, Type = 1, pLv ="120", Note = ""}
NpcInfo[1288] = {MapId = 1303, Id = 50651, Type = 1, pLv ="120", Note = ""}
NpcInfo[1289] = {MapId = 1303, Id = 49296, Type = 1, pLv ="120", Note = ""}
NpcInfo[1290] = {MapId = 1303, Id = 49284, Type = 1, pLv ="120", Note = ""}
NpcInfo[1291] = {MapId = 1303, Id = 49354, Type = 1, pLv ="120", Note = ""}
NpcInfo[1292] = {MapId = 1303, Id = 51141, Type = 1, pLv ="120", Note = ""}
NpcInfo[1293] = {MapId = 1303, Id = 49344, Type = 1, pLv ="120", Note = ""}
NpcInfo[1294] = {MapId = 1303, Id = 49308, Type = 1, pLv ="120", Note = ""}
NpcInfo[1295] = {MapId = 1303, Id = 49300, Type = 1, pLv ="120", Note = ""}
NpcInfo[1296] = {MapId = 1303, Id = 49331, Type = 1, pLv ="120", Note = ""}
NpcInfo[1297] = {MapId = 1303, Id = 49326, Type = 1, pLv ="120", Note = ""}
NpcInfo[1298] = {MapId = 1303, Id = 49290, Type = 1, pLv ="120", Note = ""}
NpcInfo[1299] = {MapId = 1303, Id = 49302, Type = 1, pLv ="120", Note = ""}
NpcInfo[1300] = {MapId = 1303, Id = 49323, Type = 1, pLv ="120", Note = ""}
NpcInfo[1301] = {MapId = 1303, Id = 49306, Type = 1, pLv ="120", Note = ""}
NpcInfo[1302] = {MapId = 1303, Id = 41877, Type = 1, pLv ="80", Note = ""}
NpcInfo[1303] = {MapId = 1303, Id = 49313, Type = 1, pLv ="120", Note = ""}
NpcInfo[1304] = {MapId = 1303, Id = 49292, Type = 1, pLv ="150", Note = ""}
NpcInfo[1305] = {MapId = 1303, Id = 49316, Type = 1, pLv ="120", Note = ""}
NpcInfo[1306] = {MapId = 1303, Id = 49327, Type = 1, pLv ="120", Note = ""}
NpcInfo[1307] = {MapId = 1301, Id = 65643, Type = 2, SubType = 0, pLv ="120", Note = "仙人"}
NpcInfo[1308] = {MapId = 1301, Id = 65644, Type = 2, SubType = 0, pLv ="120", Note = "仙人"}
NpcInfo[1309] = {MapId = 1301, Id = 65645, Type = 2, SubType = 0, pLv ="120", Note = "仙人"}
NpcInfo[1310] = {MapId = 1301, Id = 65244, Type = 2, SubType = 0, pLv ="120", Note = "驯养师"}
NpcInfo[1311] = {MapId = 1301, Id = 65242, Type = 2, SubType = 0, pLv ="120", Note = "巧匠"}
NpcInfo[1312] = {MapId = 1301, Id = 65240, Type = 2, SubType = 0, pLv ="120", Note = "护具商"}
NpcInfo[1313] = {MapId = 1301, Id = 65228, Type = 2, SubType = 0, pLv ="120", Note = "工匠学徒"}
NpcInfo[1314] = {MapId = 1301, Id = 65229, Type = 2, SubType = 0, pLv ="120", Note = "兵器商"}
NpcInfo[1315] = {MapId = 1301, Id = 64469, Type = 2, SubType = 0, pLv ="120", Note = "杂货商"}
NpcInfo[1316] = {MapId = 1301, Id = 64470, Type = 2, SubType = 0, pLv ="120", Note = "工匠"}
NpcInfo[1317] = {MapId = 1301, Id = 58510, Type = 2, SubType = 0, pLv ="120", Note = "烹饪师"}
NpcInfo[1318] = {MapId = 1301, Id = 58520, Type = 2, SubType = 0, pLv ="120", Note = "药师"}
NpcInfo[1319] = {MapId = 1301, Id = 58522, Type = 2, SubType = 0, pLv ="120", Note = "医师"}
NpcInfo[1320] = {MapId = 1302, Id = 65246, Type = 2, SubType = 0, pLv ="120", Note = "工匠学徒"}
NpcInfo[1321] = {MapId = 1302, Id = 65247, Type = 2, SubType = 0, pLv ="120", Note = "兵器商"}
NpcInfo[1322] = {MapId = 1302, Id = 65248, Type = 2, SubType = 0, pLv ="120", Note = "护具商"}
NpcInfo[1323] = {MapId = 1302, Id = 65250, Type = 2, SubType = 0, pLv ="120", Note = "巧匠"}
NpcInfo[1324] = {MapId = 1302, Id = 65252, Type = 2, SubType = 0, pLv ="120", Note = "驯养师"}
NpcInfo[1325] = {MapId = 1302, Id = 64951, Type = 2, SubType = 0, pLv ="120", Note = "烹饪师"}
NpcInfo[1326] = {MapId = 1302, Id = 64952, Type = 2, SubType = 0, pLv ="120", Note = "药师"}
NpcInfo[1327] = {MapId = 1302, Id = 64953, Type = 2, SubType = 0, pLv ="120", Note = "医师"}
NpcInfo[1328] = {MapId = 1302, Id = 64954, Type = 2, SubType = 0, pLv ="120", Note = "工匠"}
NpcInfo[1329] = {MapId = 1302, Id = 64955, Type = 2, SubType = 0, pLv ="120", Note = "杂货商"}
NpcInfo[1330] = {MapId = 1304, Id = 64717, Type = 1, pLv ="120", Note = ""}
NpcInfo[1331] = {MapId = 1304, Id = 64718, Type = 1, pLv ="120", Note = ""}
NpcInfo[1332] = {MapId = 1304, Id = 64719, Type = 1, pLv ="120", Note = ""}
NpcInfo[1333] = {MapId = 1304, Id = 64532, Type = 1, pLv ="120", Note = ""}
NpcInfo[1334] = {MapId = 1304, Id = 64531, Type = 1, pLv ="120", Note = ""}
NpcInfo[1335] = {MapId = 1304, Id = 64524, Type = 1, pLv ="120", Note = ""}
NpcInfo[1336] = {MapId = 1304, Id = 64525, Type = 1, pLv ="120", Note = ""}
NpcInfo[1337] = {MapId = 1304, Id = 64526, Type = 1, pLv ="120", Note = ""}
NpcInfo[1338] = {MapId = 1304, Id = 64520, Type = 1, pLv ="120", Note = ""}
NpcInfo[1339] = {MapId = 1304, Id = 64519, Type = 1, pLv ="120", Note = ""}
NpcInfo[1340] = {MapId = 1304, Id = 64518, Type = 1, pLv ="120", Note = ""}
NpcInfo[1341] = {MapId = 1304, Id = 64539, Type = 1, pLv ="120", Note = ""}
NpcInfo[1342] = {MapId = 1304, Id = 64538, Type = 1, pLv ="120", Note = ""}
NpcInfo[1343] = {MapId = 1304, Id = 64521, Type = 1, pLv ="120", Note = ""}
NpcInfo[1344] = {MapId = 1304, Id = 64522, Type = 1, pLv ="120", Note = ""}
NpcInfo[1345] = {MapId = 1304, Id = 66546, Type = 1, pLv ="120", Note = ""}
NpcInfo[1346] = {MapId = 1304, Id = 64527, Type = 1, pLv ="120", Note = ""}
NpcInfo[1347] = {MapId = 1304, Id = 64530, Type = 1, pLv ="120", Note = ""}
NpcInfo[1348] = {MapId = 1304, Id = 64716, Type = 1, pLv ="120", Note = ""}
NpcInfo[1349] = {MapId = 1304, Id = 64508, Type = 1, pLv ="120", Note = ""}
NpcInfo[1350] = {MapId = 1304, Id = 64499, Type = 1, pLv ="120", Note = ""}
NpcInfo[1351] = {MapId = 1304, Id = 64506, Type = 1, pLv ="120", Note = ""}
NpcInfo[1352] = {MapId = 1304, Id = 64507, Type = 1, pLv ="120", Note = ""}
NpcInfo[1353] = {MapId = 1304, Id = 64504, Type = 1, pLv ="120", Note = ""}
NpcInfo[1354] = {MapId = 1304, Id = 64505, Type = 1, pLv ="120", Note = ""}
NpcInfo[1355] = {MapId = 1304, Id = 64535, Type = 1, pLv ="120", Note = ""}
NpcInfo[1356] = {MapId = 1304, Id = 65169, Type = 1, pLv ="120", Note = ""}
NpcInfo[1357] = {MapId = 1304, Id = 64541, Type = 1, pLv ="120", Note = ""}
NpcInfo[1358] = {MapId = 1304, Id = 64515, Type = 1, pLv ="120", Note = ""}
NpcInfo[1359] = {MapId = 1304, Id = 64513, Type = 1, pLv ="120", Note = ""}
NpcInfo[1360] = {MapId = 1304, Id = 64511, Type = 1, pLv ="120", Note = ""}
NpcInfo[1361] = {MapId = 1304, Id = 64516, Type = 1, pLv ="120", Note = ""}
NpcInfo[1362] = {MapId = 1304, Id = 65158, Type = 1, pLv ="120", Note = ""}
NpcInfo[1363] = {MapId = 1304, Id = 64543, Type = 1, pLv ="120", Note = ""}
NpcInfo[1364] = {MapId = 1304, Id = 64514, Type = 1, pLv ="120", Note = ""}
NpcInfo[1365] = {MapId = 1304, Id = 64715, Type = 1, pLv ="120", Note = ""}
NpcInfo[1366] = {MapId = 1304, Id = 64501, Type = 1, pLv ="120", Note = ""}
NpcInfo[1367] = {MapId = 1304, Id = 64548, Type = 1, pLv ="120", Note = ""}
NpcInfo[1368] = {MapId = 1304, Id = 64549, Type = 1, pLv ="120", Note = ""}
NpcInfo[1369] = {MapId = 1304, Id = 64542, Type = 1, pLv ="120", Note = ""}
NpcInfo[1370] = {MapId = 1304, Id = 64509, Type = 1, pLv ="120", Note = ""}
NpcInfo[1371] = {MapId = 1304, Id = 64510, Type = 1, pLv ="120", Note = ""}
NpcInfo[1372] = {MapId = 1304, Id = 65172, Type = 1, pLv ="120", Note = ""}
NpcInfo[1373] = {MapId = 1304, Id = 64501, Type = 1, pLv ="120", Note = ""}
NpcInfo[1374] = {MapId = 1304, Id = 64547, Type = 2, SubType = 0, pLv ="120", Note = "驿站老板"}
NpcInfo[1375] = {MapId = 1304, Id = 65158, Type = 2, SubType = 0, pLv ="120", Note = "仓库老板"}
NpcInfo[1376] = {MapId = 1304, Id = 64534, Type = 2, SubType = 0, pLv ="120", Note = "凤凰寨汉铢杂货商"}
NpcInfo[1377] = {MapId = 1304, Id = 64533, Type = 2, SubType = 0, pLv ="120", Note = "凤凰寨汉铢食品商"}
NpcInfo[1378] = {MapId = 1304, Id = 64535, Type = 2, SubType = 0, pLv ="120", Note = "医师"}
NpcInfo[1379] = {MapId = 1304, Id = 64502, Type = 2, SubType = 0, pLv ="120", Note = "武师"}
NpcInfo[1380] = {MapId = 1304, Id = 64503, Type = 2, SubType = 0, pLv ="120", Note = "武师"}
NpcInfo[1381] = {MapId = 1304, Id = 65171, Type = 2, SubType = 0, pLv ="120", Note = "凤凰寨金币兵器商"}
NpcInfo[1382] = {MapId = 1304, Id = 65170, Type = 2, SubType = 0, pLv ="120", Note = "凤凰寨金币护具商"}
NpcInfo[1383] = {MapId = 1304, Id = 65168, Type = 2, SubType = 0, pLv ="120", Note = "饰品商"}
NpcInfo[1384] = {MapId = 1304, Id = 65182, Type = 2, SubType = 0, pLv ="120", Note = "值日功曹"}
NpcInfo[1385] = {MapId = 1304, Id = 65183, Type = 2, SubType = 0, pLv ="120", Note = "值日点卯官"}
NpcInfo[1386] = {MapId = 1304, Id = 65178, Type = 2, SubType = 0, pLv ="120", Note = "灵气商人"}
NpcInfo[1387] = {MapId = 1304, Id = 66028, Type = 2, SubType = 0, pLv ="120", Note = "凤凰寨金币杂货商"}
NpcInfo[1388] = {MapId = 1304, Id = 65179, Type = 2, SubType = 0, pLv ="120", Note = "灵气商人"}
NpcInfo[1389] = {MapId = 1304, Id = 64545, Type = 2, SubType = 0, pLv ="120", Note = "驿站老板"}
NpcInfo[1390] = {MapId = 1304, Id = 64506, Type = 2, SubType = 0, pLv ="120", Note = "新手指导员"}
NpcInfo[1391] = {MapId = 1304, Id = 64530, Type = 2, SubType = 0, pLv ="120", Note = "神秘商人"}
NpcInfo[1392] = {MapId = 1304, Id = 66026, Type = 2, SubType = 0, pLv ="120", Note = "花岭金币杂货商"}
NpcInfo[1393] = {MapId = 1304, Id = 65156, Type = 2, SubType = 0, pLv ="120", Note = "仓库老板"}
NpcInfo[1394] = {MapId = 1304, Id = 65169, Type = 2, SubType = 0, pLv ="120", Note = "采集师"}
NpcInfo[1395] = {MapId = 1304, Id = 64541, Type = 2, SubType = 0, pLv ="120", Note = "烹饪师"}
NpcInfo[1396] = {MapId = 1304, Id = 64500, Type = 2, SubType = 0, pLv ="120", Note = "武师"}
NpcInfo[1397] = {MapId = 1304, Id = 65174, Type = 2, SubType = 0, pLv ="120", Note = "结义管理员"}
NpcInfo[1398] = {MapId = 1304, Id = 64505, Type = 2, SubType = 0, pLv ="120", Note = "花岭汉铢杂货商"}
NpcInfo[1399] = {MapId = 1304, Id = 66027, Type = 2, SubType = 0, pLv ="120", Note = "海市金币杂货商"}
NpcInfo[1400] = {MapId = 1304, Id = 65157, Type = 2, SubType = 0, pLv ="120", Note = "仓库老板"}
NpcInfo[1401] = {MapId = 1304, Id = 64543, Type = 2, SubType = 0, pLv ="120", Note = "兵器师"}
NpcInfo[1402] = {MapId = 1304, Id = 64550, Type = 2, SubType = 0, pLv ="120", Note = "食品商"}
NpcInfo[1403] = {MapId = 1304, Id = 64501, Type = 2, SubType = 0, pLv ="120", Note = "武师"}
NpcInfo[1404] = {MapId = 1304, Id = 64551, Type = 2, SubType = 0, pLv ="120", Note = "杂货商"}
NpcInfo[1405] = {MapId = 1304, Id = 64542, Type = 2, SubType = 0, pLv ="120", Note = "护具师"}
NpcInfo[1406] = {MapId = 1304, Id = 64546, Type = 2, SubType = 0, pLv ="120", Note = "驿站老板"}
--]]
NpcInfo[1407] = {MapId = 1305, Id = 70255, Type = 1, pLv ="", Note = "桃花运解签人"}
NpcInfo[1408] = {MapId = 1305, Id = 69228, Type = 1, pLv ="", Note = "谷主"}
NpcInfo[1409] = {MapId = 1305, Id = 69297, Type = 1, pLv ="", Note = ""}
NpcInfo[1410] = {MapId = 1305, Id = 70253, Type = 1, pLv ="", Note = "官运解签人"}
NpcInfo[1411] = {MapId = 1305, Id = 70254, Type = 1, pLv ="", Note = ""}
NpcInfo[1412] = {MapId = 1305, Id = 69298, Type = 1, pLv ="", Note = ""}
NpcInfo[1413] = {MapId = 1305, Id = 69299, Type = 1, pLv ="", Note = ""}
NpcInfo[1414] = {MapId = 1305, Id = 69296, Type = 1, pLv ="", Note = ""}
NpcInfo[1415] = {MapId = 1305, Id = 70255, Type = 1, pLv ="", Note = "桃花运解签人"}
NpcInfo[1416] = {MapId = 1305, Id = 70250, Type = 1, pLv ="", Note = ""}
NpcInfo[1417] = {MapId = 1305, Id = 69301, Type = 1, pLv ="", Note = ""}
NpcInfo[1418] = {MapId = 1305, Id = 69300, Type = 1, pLv ="", Note = ""}
NpcInfo[1419] = {MapId = 1305, Id = 70251, Type = 1, pLv ="", Note = "财运解签人"}
NpcInfo[1420] = {MapId = 1305, Id = 70252, Type = 1, pLv ="", Note = ""}
NpcInfo[1421] = {MapId = 1305, Id = 69645, Type = 1, pLv ="", Note = ""}
NpcInfo[1422] = {MapId = 1305, Id = 69295, Type = 1, pLv ="", Note = ""}
NpcInfo[1423] = {MapId = 1305, Id = 70257, Type = 1, pLv ="", Note = "人品运解签人"}
NpcInfo[1424] = {MapId = 1305, Id = 70258, Type = 1, pLv ="", Note = ""}
NpcInfo[1425] = {MapId = 1305, Id = 69438, Type = 2, SubType = 0, pLv ="", Note = "聚贤谷商人"}
NpcInfo[1426] = {MapId = 1305, Id = 70256, Type = 2, SubType = 0, pLv ="", Note = ""}
NpcInfo[1427] = {MapId = 1305, Id = 70067, Type = 2, SubType = 0, pLv ="", Note = "仓库老板"}
NpcInfo[1428] = {MapId = 1305, Id = 69644, Type = 2, SubType = 0, pLv ="", Note = "统率商店"}
NpcInfo[1429] = {MapId = 1305, Id = 69234, Type = 2, SubType = 0, pLv ="", Note = "稀奇宝贝商店"}
NpcInfo[1430] = {MapId = 1305, Id = 69412, Type = 2, SubType = 0, pLv ="", Note = "神奇补书工匠"}
NpcInfo[1431] = {MapId = 1305, Id = 69442, Type = 2, SubType = 0, pLv ="", Note = "驿站老板"}
NpcInfo[1432] = {MapId = 1305, Id = 69443, Type = 2, SubType = 0, pLv ="", Note = "驿站老板"}
NpcInfo[1433] = {MapId = 1305, Id = 69444, Type = 2, SubType = 0, pLv ="", Note = "驿站老板"}
NpcInfo[1434] = {MapId = 1305, Id = 69441, Type = 2, SubType = 0, pLv ="", Note = "驿站老板"}
NpcInfo[1435] = {MapId = 1305, Id = 69176, Type = 3, pLv ="83", Note = ""}
NpcInfo[1436] = {MapId = 1305, Id = 69177, Type = 3, pLv ="83", Note = ""}
NpcInfo[1437] = {MapId = 1305, Id = 69178, Type = 3, pLv ="83", Note = ""}
NpcInfo[1438] = {MapId = 1305, Id = 69179, Type = 3, pLv ="83", Note = ""}
NpcInfo[1439] = {MapId = 1305, Id = 69180, Type = 3, pLv ="103", Note = ""}
NpcInfo[1440] = {MapId = 1305, Id = 69181, Type = 3, pLv ="103", Note = ""}
NpcInfo[1441] = {MapId = 1305, Id = 69182, Type = 3, pLv ="103", Note = ""}
NpcInfo[1442] = {MapId = 1305, Id = 69183, Type = 3, pLv ="103", Note = ""}
NpcInfo[1443] = {MapId = 1305, Id = 69184, Type = 3, pLv ="119", Note = ""}
NpcInfo[1444] = {MapId = 1305, Id = 69185, Type = 3, pLv ="119", Note = ""}
NpcInfo[1445] = {MapId = 1305, Id = 69176, Type = 3, pLv ="83", Note = ""}
NpcInfo[1446] = {MapId = 1305, Id = 69187, Type = 3, pLv ="119", Note = ""}
NpcInfo[1447] = {MapId = 1305, Id = 69188, Type = 3, pLv ="85", Note = ""}
NpcInfo[1448] = {MapId = 1305, Id = 69292, Type = 3, pLv ="81", Note = ""}
NpcInfo[1449] = {MapId = 1305, Id = 69293, Type = 3, pLv ="81", Note = ""}
NpcInfo[1450] = {MapId = 1305, Id = 69330, Type = 3, pLv ="40", Note = ""}
NpcInfo[1451] = {MapId = 1, Id = 66156, Type = 2, SubType = 0, pLv ="", Note = "汉铢商人"}
NpcInfo[1452] = {MapId = 2, Id = 66159, Type = 2, SubType = 0, pLv ="", Note = "汉铢商人"}
NpcInfo[1453] = {MapId = 7, Id = 66162, Type = 2, SubType = 0, pLv ="", Note = "汉铢商人"}
NpcInfo[1454] = {MapId = 3, Id = 66165, Type = 2, SubType = 0, pLv ="", Note = "汉铢商人"}


NpcInfo[1455] = {MapId = 7, Id = 26894, Type = 2, SubType = 6, pLv ="", Note = "总镖头"}
NpcInfo[1456] = {MapId = 5, Id = 3412, Type = 2, SubType = 3, pLv ="", Note = "驿站老板"}
NpcInfo[1457] = {MapId = 7, Id = 11918, Type = 2, SubType = 5, pLv ="", Note = "弓腰姬"}
NpcInfo[1458] = {MapId = 7, Id = 1913, Type = 2, SubType = 10, pLv ="", Note = "仓库老板"}
NpcInfo[1459] = {MapId = 1, Id = 1881, Type = 2, SubType = 3, pLv ="", Note = "驿站老板"}
NpcInfo[1460] = {MapId = 4, Id = 3403, Type = 2, SubType = 3, pLv ="", Note = "驿站老板"}
NpcInfo[1461] = {MapId = 6, Id = 3421, Type = 2, SubType = 3, pLv ="", Note = "驿站老板"}
NpcInfo[1462] = {MapId = 107, Id = 21325, Type = 2, SubType = 3, pLv ="", Note = "驿站老板"}
NpcInfo[1463] = {MapId = 102, Id = 19532, Type = 2, SubType = 3, pLv ="", Note = "驿站老板"}
NpcInfo[1464] = {MapId = 108, Id = 21342, Type = 2, SubType = 3, pLv ="", Note = "驿站老板"}
NpcInfo[1465] = {MapId = 103, Id = 19641, Type = 2, SubType = 3, pLv ="", Note = "驿站老板"}



RootColor = {254, 220, 64 }							--ListTitle的颜色
NormalItemColor = {255, 255, 255 }					--普通条目的颜色
TaskItemColor = { 0, 255, 0 }						--有可接任务的NPC的颜色
ListTitle = {"功能npc列表", "任务npc列表", "怪物列表"}	--显示Root条目的文字


NpcInfoFunc = {}
function NpcInfoFunc:GetNPCList(WorldId)
	local NpcList = {}  -- 功能npc列表
	local QNpcList = {} -- 任务功能npc列表
	local MonsterList = {} -- 怪物列表
	local n1 = 0
	local n2 = 0
	local n3 = 0
	local lvtext = ""
	for k,v in pairs(NpcInfo) do
		if WorldId == v.MapId then
			if v.Type == 1 then
				n1 = n1 + 1
				table.insert(QNpcList, n1, v.Id)
			elseif v.Type == 2 then
				n2 = n2 + 1
				table.insert(NpcList, n2, string.format("%s%s%s%d%s%s%d%s", v.Note, "-", "#", v.Id, "#", "(", v.SubType, ")"))
			elseif v.Type == 3 then
				n3 = n3 + 1
				if tonumber(v.pLv) <= 80 then
					table.insert(MonsterList, n3, string.format("%s%d%s%s%s%s", "#", v.Id, "#", "(", tostring(v.pLv), "级)"))
				elseif tonumber(v.pLv) > 80 and tonumber(v.pLv) < 150 then
					local n_Lv = tonumber(v.pLv) - 80
					table.insert(MonsterList, n3, string.format("%s%d%s%s%d%s", "#", v.Id, "#", "^ff6c00(英雄", n_Lv, "级)"))
				elseif tonumber(v.pLv) == 150 then
					table.insert(MonsterList, n3, string.format("%s%d%s%s", "#", v.Id, "#", "^ff6c00(???)"))
				else
					table.insert(MonsterList, n3, string.format("%s%d%s%s%s%s", "#", v.Id, "#", "（", "皇榜", "）"))
				end
			end
		end
	end
	return NpcList, QNpcList, MonsterList, ListTitle
end

function NpcInfoFunc:GetColors()
	return RootColor,NormalItemColor,TaskItemColor
end


