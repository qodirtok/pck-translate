local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_ServJade = DlgTemplate:new({this = "Win_ServJade"})

--秘文表
JadeTable = {n=102}
JadeTable[0] = {name = "全部" , mask = {} , id = 0}
JadeTable[1] = {name = "高级穿云符" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36143}
JadeTable[2] = {name = "高级化骨玉" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36147}
JadeTable[3] = {name = "高级回风玉" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36132}
JadeTable[4] = {name = "高级净心坠" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36152}
JadeTable[5] = {name = "高级连环石" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36146}
JadeTable[6] = {name = "高级两仪咒" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36126}
JadeTable[7] = {name = "高级凌云珠" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36123}
JadeTable[8] = {name = "高级明体坠" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36150}
JadeTable[9] = {name = "高级日光石" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36111}
JadeTable[10] = {name = "高级碎石符" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36120}
JadeTable[11] = {name = "高级五神咒" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36145}
JadeTable[12] = {name = "高级逍遥石" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36129}
JadeTable[13] = {name = "高级星光石" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36117}
JadeTable[14] = {name = "高级迅雷珠" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36144}
JadeTable[15] = {name = "高级月光石" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36114}
JadeTable[16] = {name = "上品百变石" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 13675}
JadeTable[17] = {name = "上品沉香咒" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36963}
JadeTable[18] = {name = "上品玲珑坠" , mask = {24,25,26,27,28,29} , id = 69502}
JadeTable[19] = {name = "上品落日玉" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 13676}
JadeTable[20] = {name = "上品明王珠" , mask = {24,25,26,27,28,29} , id = 69493}
JadeTable[21] = {name = "上品霹雳珠" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 13673}
JadeTable[22] = {name = "上品破军符" , mask = {24,25,26,27,28,29} , id = 69484}
JadeTable[23] = {name = "上品破玉符" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 13672}
JadeTable[24] = {name = "上品七星咒" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 13674}
JadeTable[25] = {name = "上品青冥符" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36959}
JadeTable[26] = {name = "上品清灵坠" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 26146}
JadeTable[27] = {name = "上品神武石" , mask = {24,25,26,27,28,29} , id = 69485}
JadeTable[28] = {name = "上品太极咒" , mask = {24,25,26,27,28,29} , id = 69494}
JadeTable[29] = {name = "上品万仞玉" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36967}
JadeTable[30] = {name = "上品瑶光玉" , mask = {24,25,26,27,28,29} , id = 69503}
JadeTable[31] = {name = "极品百变石" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 13680}
JadeTable[32] = {name = "极品沉香咒" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36964}
JadeTable[33] = {name = "极品玲珑坠" , mask = {24,25,26,27,28,29} , id = 69504}
JadeTable[34] = {name = "极品落日玉" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 13681}
JadeTable[35] = {name = "极品明王珠" , mask = {24,25,26,27,28,29} , id = 69495}
JadeTable[36] = {name = "极品霹雳珠" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 13678}
JadeTable[37] = {name = "极品破军符" , mask = {24,25,26,27,28,29} , id = 69486}
JadeTable[38] = {name = "极品破玉符" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 13677}
JadeTable[39] = {name = "极品七星咒" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 13679}
JadeTable[40] = {name = "极品青冥符" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36960}
JadeTable[41] = {name = "极品清灵坠" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 26147}
JadeTable[42] = {name = "极品神武石" , mask = {24,25,26,27,28,29} , id = 69487}
JadeTable[43] = {name = "极品太极咒" , mask = {24,25,26,27,28,29} , id = 69496}
JadeTable[44] = {name = "极品万仞玉" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36969}
JadeTable[45] = {name = "极品瑶光玉" , mask = {24,25,26,27,28,29} , id = 69505}
JadeTable[46] = {name = "神品百变石(专属)" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36141}
JadeTable[47] = {name = "神品百变石" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 75668}
JadeTable[48] = {name = "神品落日玉(专属)" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36142}
JadeTable[49] = {name = "神品落日玉" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 75669}
JadeTable[50] = {name = "神品霹雳珠(专属)" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36139}
JadeTable[51] = {name = "神品霹雳珠" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 75666}
JadeTable[52] = {name = "神品破玉符(专属)" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36138}
JadeTable[53] = {name = "神品破玉符" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 75665}
JadeTable[54] = {name = "神品七星咒(专属)" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36140}
JadeTable[55] = {name = "神品七星咒" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 75667}
JadeTable[56] = {name = "神品清灵坠(专属)" , mask = {9,10,11,13,14,15,18,21,22,30} , id = 36153}
JadeTable[57] = {name = "噩梦之眠Lv.1" , mask = {1} , id = 39280}
JadeTable[58] = {name = "噩梦之眠Lv.2" , mask = {1} , id = 39400}
JadeTable[59] = {name = "噩梦之眠Lv.3" , mask = {1} , id = 39405}
JadeTable[60] = {name = "诡异施法Lv.1" , mask = {1} , id = 39277}
JadeTable[61] = {name = "诡异施法Lv.2" , mask = {1} , id = 39397}
JadeTable[62] = {name = "诡异施法Lv.3" , mask = {1} , id = 39402}
JadeTable[63] = {name = "镜铠护身Lv.1" , mask = {1} , id = 39272}
JadeTable[64] = {name = "镜铠护身Lv.2" , mask = {1} , id = 39377}
JadeTable[65] = {name = "镜铠护身Lv.3" , mask = {1} , id = 39382}
JadeTable[66] = {name = "九剑灭杀阵Lv.1" , mask = {1} , id = 39271}
JadeTable[67] = {name = "九剑灭杀阵Lv.2" , mask = {1} , id = 39376}
JadeTable[68] = {name = "九剑灭杀阵Lv.3" , mask = {1} , id = 39381}
JadeTable[70] = {name = "狂战士之怒Lv.1" , mask = {1} , id = 39270}
JadeTable[71] = {name = "狂战士之怒Lv.2" , mask = {1} , id = 39360}
JadeTable[72] = {name = "狂战士之怒Lv.3" , mask = {1} , id = 39365}
JadeTable[73] = {name = "雷之奔袭Lv.1" , mask = {1} , id = 39279}
JadeTable[74] = {name = "雷之奔袭Lv.2" , mask = {1} , id = 39399}
JadeTable[75] = {name = "雷之奔袭Lv.3" , mask = {1} , id = 39404}
JadeTable[76] = {name = "冷血Lv.1" , mask = {1} , id = 39274}
JadeTable[77] = {name = "冷血Lv.2" , mask = {1} , id = 39379}
JadeTable[78] = {name = "冷血Lv.3" , mask = {1} , id = 39384}
JadeTable[79] = {name = "蛮荒之雷Lv.1" , mask = {1} , id = 39266}
JadeTable[80] = {name = "蛮荒之雷Lv.2" , mask = {1} , id = 39356}
JadeTable[81] = {name = "蛮荒之雷Lv.3" , mask = {1} , id = 39361}
JadeTable[82] = {name = "气势凌人Lv.1" , mask = {1} , id = 39267}
JadeTable[83] = {name = "气势凌人Lv.2" , mask = {1} , id = 39357}
JadeTable[84] = {name = "气势凌人Lv.3" , mask = {1} , id = 39362}
JadeTable[85] = {name = "闪电盾Lv.1" , mask = {1} , id = 39275}
JadeTable[86] = {name = "闪电盾Lv.2" , mask = {1} , id = 39380}
JadeTable[87] = {name = "闪电盾Lv.3" , mask = {1} , id = 39385}
JadeTable[88] = {name = "神伤之舞Lv.1" , mask = {1} , id = 39278}
JadeTable[89] = {name = "神伤之舞Lv.2" , mask = {1} , id = 39398}
JadeTable[90] = {name = "神伤之舞Lv.3" , mask = {1} , id = 39403}
JadeTable[91] = {name = "嗜杀如命Lv.1" , mask = {1} , id = 39268}
JadeTable[92] = {name = "嗜杀如命Lv.2" , mask = {1} , id = 39358}
JadeTable[93] = {name = "嗜杀如命Lv.3" , mask = {1} , id = 39363}
JadeTable[94] = {name = "霜冻之甲Lv.1" , mask = {1} , id = 39276}
JadeTable[95] = {name = "霜冻之甲Lv.2" , mask = {1} , id = 39396}
JadeTable[96] = {name = "霜冻之甲Lv.3" , mask = {1} , id = 39401}
JadeTable[97] = {name = "炎鬼飞切Lv.1" , mask = {1} , id = 39273}
JadeTable[98] = {name = "炎鬼飞切Lv.2" , mask = {1} , id = 39378}
JadeTable[99] = {name = "炎鬼飞切Lv.3" , mask = {1} , id = 39383}
JadeTable[100] = {name = "御器决Lv.1" , mask = {1} , id = 39269}
JadeTable[101] = {name = "御器决Lv.2" , mask = {1} , id = 39359}
JadeTable[102] = {name = "御器决Lv.3" , mask = {1} , id = 39364}

function Win_ServJade:Init()

end

local function IsMatch(mask1, mask2)
	for i = 1, #mask1 do
		if mask2 == mask1[i] then
			return true
		end
	end
	return false	
end

function Win_ServJade:RefreshJadeInfo(mask)
	local JadeList1 = {}
	local result = {}
	for i = 0 , JadeTable.n do
		if (i == 0) or (JadeTable[i] ~= nil and IsMatch(JadeTable[i].mask, mask)) then
			local iListItem = #JadeList1
			JadeList1[iListItem+1] = JadeTable[i].name
			result[iListItem+1] = JadeTable[i].id
		end
	end
	DlgApi.SetListText (self.this, "Combo_Jade", JadeList1)
	DlgApi.SetListCurLine (self.this, "Lst_Jade", 0)

	return result
end

