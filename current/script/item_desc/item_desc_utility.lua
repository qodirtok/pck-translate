--	将所有工具函数封装到模块mod_utility
module("mod_utility", package.seeall)

-- table复制函数
function CopyTable(t)
    assert(type(t) == "table", "You must specify a table to copy")
    local result = {}
    for k,v in pairs(t) do
        if type(v) == "table" then
            result[k] = copyTable(v)
        else
            result[k] = v
        end
    end
    -- copy the metatable if exists
    setmetatable(result, getmetatable(t))
    return result
end

--	获取名称数目的描述文本

function GetNameCountText(valTab)
    if (string.len(valTab.name) == 0) then
    	return string.format("")
    end
	strNameCnt = string.format(ITEM_NAME_DESC[1], valTab.name)
	if (valTab.count > 1) then
		strNameCnt = strNameCnt .. string.format(ITEM_COUNT_DESC[1], valTab.count)
	end
	if (valTab.name_color ~= -1) then
		strNameCnt = string.format(ITEM_COLOR_DESC[valTab.name_color+1]) .. strNameCnt
		strNameCnt = strNameCnt .. string.format(ITEM_COLOR_DESC[2])
	end
	strNameCnt = strNameCnt .. string.format("\\r")
	return strNameCnt
end

-- 获取绑定状态描述文本

function GetBoundStateText(valTab)
    strBound = ""
	if (valTab.bound >= 1 and valTab.bound <= 4) then
		strBound = strBound .. string.format(ITEM_BOUND_DESC[valTab.bound])
		strBound = strBound .. string.format("\\r")
	end
	if (valTab.limited == true) then
	    strBound = strBound .. string.format(ITEM_BOUND_DESC[6])
	    strBound = strBound .. string.format("\\r")
	end
	return strBound
end

-- 获取剩余时间的描述文本

function GetExpireTimeText(valTab)
    time = valTab.expire_time
	if (time <= 0) then
	    return string.format("")
	end

	day = time / (24*3600)
    hour = (time % (24*3600)) / 3600
	minute = (time % 3600) / 60
	second = time % 60
	color = 2

	strExpireTime = string.format(ITEM_TIME_DESC[1])
	if (day >= 1) then
	    strExpireTime = strExpireTime .. string.format(ITEM_TIME_DESC[2], day)
		strExpireTime = strExpireTime .. string.format(ITEM_TIME_DESC[3], hour)
		color = 4
	elseif (hour >= 1) then
	    strExpireTime = strExpireTime .. string.format(ITEM_TIME_DESC[3], hour)
		strExpireTime = strExpireTime .. string.format(ITEM_TIME_DESC[4], minute)
		color = 7
	elseif (minute >= 1) then
   	    strExpireTime = strExpireTime .. string.format(ITEM_TIME_DESC[4], minute)
		strExpireTime = strExpireTime .. string.format(ITEM_TIME_DESC[5], second)
		color = 10
	else
		strExpireTime = strExpireTime .. string.format(ITEM_TIME_DESC[5], second)
		color = 9
	end
	strExpireTime = string.format(ITEM_COLOR_DESC[color]) .. strExpireTime .. string.format(ITEM_COLOR_DESC[2])
	strExpireTime = strExpireTime .. string.format("\\r")
	return strExpireTime
end

-- 获带单位的价格描述

function GetPriceText(price)
	if (price <= 0) then
	    return string.format("")
	end

	jade = price / 1000000
	gold = (price / 10000) % 100
	silver = (price / 100) % 100
	copper = price % 100

	strPrice = ""
	if (jade >= 1) then
		strPrice = strPrice .. string.format(ITEM_PRICE_DESC[7], jade)
		strPrice = strPrice .. string.format(ITEM_PRICE_DESC[8], gold)
		strPrice = strPrice .. string.format(ITEM_PRICE_DESC[9], silver)
		strPrice = strPrice .. string.format(ITEM_PRICE_DESC[10], copper)
	elseif (gold >= 1) then
		strPrice = strPrice .. string.format(ITEM_PRICE_DESC[8], gold)
		strPrice = strPrice .. string.format(ITEM_PRICE_DESC[9], silver)
		strPrice = strPrice .. string.format(ITEM_PRICE_DESC[10], copper)
	elseif (silver >= 1) then
		strPrice = strPrice .. string.format(ITEM_PRICE_DESC[9], silver)
		strPrice = strPrice .. string.format(ITEM_PRICE_DESC[10], copper)
	else
		strPrice = strPrice .. string.format(ITEM_PRICE_DESC[10], copper)
	end
	return strPrice
end

-- 根据上下文获取物品价格描述

function GetContextPriceText(valTab)
    context = valTab.context
	if (context == CONTEXT_DEFAULT or context == CONTEXT_REWARD or context == CONTEXT_PRODUCE) then
		return string.format("")
	end
	strConPrice = ""
	if (context == CONTEXT_NPC_BUY) then
		if (valTab.total_price > 0) then
	        strConPrice = strConPrice .. string.format(ITEM_PRICE_DESC[3], GetPriceText(valTab.total_price))
	        strConPrice = strConPrice .. string.format("\\r")
	    end
	    if (valTab.exploit_price > 0) then
	        strConPrice = strConPrice .. string.format(ITEM_PRICE_DESC[4], tab.exploit_price)
	        strConPrice = strConPrice .. string.format("\\r")
	    end
	    if (string.len(valTab.req_item) > 0 and valTab.req_item_cnt > 0) then
	    	strConPrice = strConPrice .. string.format(ITEM_PRICE_DESC[6], valTab.req_item, valTab.req_item_cnt)
	    	strConPrice = strConPrice .. string.format("\\r")
	    end
	elseif (context == CONTEXT_NPC_SELL or context == CONTEXT_TRADE or context == CONTEXT_VENDUE or context == CONTEXT_RECYCLE or context == CONTEXT_BOOTH_BUY or context == CONTEXT_BOOTH_SELL) then
		if (valTab.total_price > 0 and valTab.unit_price > 0) then
		    strConPrice = strConPrice .. string.format(ITEM_PRICE_DESC[2], GetPriceText(valTab.unit_price), GetPriceText(valTab.total_price))
		    strConPrice = strConPrice .. string.format("\\r")
		end
	elseif (context == CONTEXT_REPAIR) then
		if (valTab.unit_price > 0 and valTab.unit_price == valTab.total_price) then
		    strConPrice = strConPrice .. string.format(ITEM_PRICE_DESC[5], GetPriceText(valTab.unit_price))
		    strConPrice = strConPrice .. string.format("\\r")
		end
	else
	    strConPrice = string.format("")
	end
	return strConPrice
end

-- 获取生产配方已学习文本

function GetRecipeLearnedText(valTab)
    strPrecipelearned = ""
	if (valTab.have_learned == true) then
   		strPrecipelearned = strPrecipelearned .. string.format(ITEM_COLOR_DESC[6])
		strPrecipelearned = strPrecipelearned .. string.format(ITEM_PROD_TYPE_DESC[1])
		strPrecipelearned = strPrecipelearned .. string.format("\\r")
	end
	return strPrecipelearned
end

-- 获取生产技能类型限制文本

function GetProduceSkillNameText(valTab)
    strPskillname = ""
    if valTab.req_prod_skill_color == 1 then
        clrPskillname = 10
    else
        clrPskillname = 6
    end
	strPskillname = strPskillname .. string.format(ITEM_COLOR_DESC[2])
	strPskillname = strPskillname .. string.format(ITEM_PROD_TYPE_DESC[2] , ITEM_COLOR_DESC[clrPskillname] , valTab.req_prod_skill)
	strPskillname = strPskillname .. string.format("\\r")
	return strPskillname
end

-- 获取生产技能熟练度限制文本
function GetProduceSkillMasteryText(valTab)
    strPskillmastery = ""
    if valTab.req_prod_point_color == 1 then
        clrPskillmastery = 10
    else
        clrPskillmastery = 6
    end
   	strPskillmastery = strPskillmastery .. string.format(ITEM_COLOR_DESC[2])
	strPskillmastery = strPskillmastery .. string.format(ITEM_PROD_TYPE_DESC[3] , ITEM_COLOR_DESC[clrPskillmastery] , valTab.req_prod_point)
	strPskillmastery = strPskillmastery .. string.format("\\r")
	return strPskillmastery
end

-- 获取生产成品名称文本
function GetProductNameText(valTab)
	strPname = ""
   	strPname = strPname .. string.format(ITEM_COLOR_DESC[2])
	strPname = strPname .. string.format(ITEM_PROD_TYPE_DESC[4] , valTab.product_name)
	strPname = strPname .. string.format("\\r")
	return strPname
end

-- 获取生产成品描述文本
function GetProductDescText(valTab)
    strPdesc = ""
   	strPdesc = strPdesc .. string.format(ITEM_COLOR_DESC[2])
   	strPdesc = strPdesc .. string.format(ITEM_PROD_TYPE_DESC[5] , valTab.product_desc , ITEM_COLOR_DESC[2])
 	strPdesc = strPdesc .. string.format("\\r")
	return strPdesc
end
--------------------------------------
--战魂物品说明
--------------------------------------
--	获取名称数目的描述文本

function GetAnimaNameText(valTab)
    if (string.len(valTab.name) == 0) then
    	return string.format("")
    end
	if valTab.anima_flevel ~= 0 and valTab.anima_flevel ~= 1 then
		strNameCnt = string.format(valTab.name .. "(+" .. tostring(valTab.anima_flevel - 1) .. ")")
	else
		strNameCnt = string.format(valTab.name)
	end
	if (valTab.count > 1) then
		strNameCnt = strNameCnt .. string.format(ITEM_COUNT_DESC[1], valTab.count)
	end
	if (valTab.name_color ~= -1) then
		strNameCnt = string.format(ITEM_COLOR_DESC[valTab.name_color+1]) .. strNameCnt
		strNameCnt = strNameCnt .. string.format(ITEM_COLOR_DESC[2])
	end
	strNameCnt = strNameCnt .. string.format("\\r")
	return strNameCnt
end

-- 获取战魂等级限制
function GetLevelLimit(valTab)
   strLim = ""
   if valTab.req_level ~= nil then
   		strLim = strLim .. string.format(ITEM_COLOR_DESC[valTab.req_level_color + 1] .. ITEM_ANIMA_STR_DESC[1] .. valTab.req_level .. ITEM_ANIMA_STR_DESC[10]  .. ITEM_COLOR_DESC[2] )
   		strLim = strLim .. string.format("\\r")
   end
   return strLim
end

-- 获取战魂类型
function GetAnimaTid(valTab)
   strtid = ""
	for k,v in pairs(ITEM_ANIMA_STR_DESC[14]) do
		if valTab.anima_tid == v then
			strtid = strtid .. string.format(ITEM_ANIMA_STR_DESC[15])
			strtid = strtid .. string.format("\\r")
			break
		else
			strtid = ""
		end
	end
	for s, t in pairs(ITEM_ANIMA_STR_DESC[14]) do
		if strtid == "" then
			if valTab.anima_tid ~= t then
				strtid = strtid .. string.format(ITEM_ANIMA_STR_DESC[16])
				strtid = strtid .. string.format("\\r")
				break
			end
		end
	end
	return strtid
end

-- 获取战魂等级
function GetAnimaLevel(valTab)
local zhuanlv = ""
   strLevel = ""
   if valTab.anima_level ~= nil and valTab.anima_level ~= 0 then
		if valTab.anima_nirvana_times > 0 then
			if valTab.anima_nirvana_times == 1 then
				zhuanlv = string.format("%s%s%d%s", ITEM_COLOR_DESC[3], ITEM_ANIMA_STR_DESC[17], valTab.anima_nirvana_times, ITEM_ANIMA_STR_DESC[18])
			elseif valTab.anima_nirvana_times == 2 then
				zhuanlv = string.format("%s%s%d%s", ITEM_COLOR_DESC[4], ITEM_ANIMA_STR_DESC[17], valTab.anima_nirvana_times, ITEM_ANIMA_STR_DESC[18])
			elseif valTab.anima_nirvana_times == 3 then
				zhuanlv = string.format("%s%s%d%s", ITEM_COLOR_DESC[5], ITEM_ANIMA_STR_DESC[17], valTab.anima_nirvana_times, ITEM_ANIMA_STR_DESC[18])
			elseif valTab.anima_nirvana_times == 4 then
				zhuanlv = string.format("%s%s%d%s", ITEM_COLOR_DESC[6], ITEM_ANIMA_STR_DESC[17], valTab.anima_nirvana_times, ITEM_ANIMA_STR_DESC[18])
			end
		else
			zhuanlv = ""
		end
		strLevel = strLevel .. string.format(ITEM_ANIMA_STR_DESC[3] .. valTab.anima_level .. ITEM_ANIMA_STR_DESC[10] .. zhuanlv .. ITEM_COLOR_DESC[2])
		strLevel = strLevel .. string.format("\\r")
		if valTab.anima_level < 20 then
			strLevel = strLevel .. string.format("%s%d%s%d", ITEM_ANIMA_STR_DESC[12], valTab.anima_levelup, "/",  valTab.anima_flevelup)
			strLevel = strLevel .. string.format("\\r")
		else
			strLevel = strLevel .. string.format("%s%s", ITEM_ANIMA_STR_DESC[12], "--/--")
			strLevel = strLevel .. string.format("\\r")
		end
   end
  return strLevel
end

-- 获取战魂成长等级
function GetAnimaProperty(valTab)
	local propvalue = valTab.anima_property1 + valTab.anima_property2 + valTab.anima_property3 + valTab.anima_property4 - 40 * valTab.anima_nirvana_times
	local proplv1
    local i
    local v
    local z
	local  AnimaLevel = {}
	AnimaLevel[1] = {335, 342, 349, 357, 364, 372, 380, 388, 396, 404, 412, 420, 429, 437, 446, 455, 464, 473, 482, 492, 501, 511}
	AnimaLevel[2] = {369, 378, 387, 396, 405, 415, 425, 435, 445, 455, 465, 476, 486, 497, 508, 519, 530, 542, 553, 565, 577, 589}
	AnimaLevel[3] = {402, 413, 424, 435, 447, 458, 470, 482, 494, 506, 518, 531, 544, 556, 570, 583, 596, 610, 624, 638, 652, 666}
	AnimaLevel[4] = {436, 449, 462, 474, 488, 501, 515, 529, 543, 557, 571, 586, 601, 616, 631, 647, 662, 678, 695, 711, 727, 744}
	AnimaLevel[5] = {470, 484, 499, 514, 529, 544, 560, 576, 592, 608, 624, 641, 658, 675, 693, 711, 729, 747, 765, 784, 803, 822}
	AnimaLevel[6] = {504, 520, 536, 553, 570, 587, 605, 623, 641, 659, 678, 696, 716, 735, 755, 774, 795, 815, 836, 857, 878, 900}
	AnimaLevel[7] = {538, 556, 574, 592, 611, 630, 650, 670, 690, 710, 731, 752, 773, 794, 816, 838, 861, 884, 907, 930, 954, 978}
	AnimaLevel[8] = {572, 591, 611, 632, 652, 673, 695, 717, 739, 761, 784, 807, 830, 854, 878, 902, 927, 952, 977, 1003, 1029, 1055}
	AnimaLevel[9] = {605, 627, 649, 671, 694, 716, 740, 764, 788, 812, 837, 862, 888, 913, 940, 966, 993, 1020, 1048, 1076, 1105, 1133}
	AnimaLevel[10] = {639, 662, 686, 710, 735, 760, 785, 811, 837, 863, 890, 917, 945, 973, 1001, 1030, 1059, 1089, 1119, 1149, 1180, 1211}
	AnimaLevel[11] = {673, 698, 724, 749, 776, 803, 830, 858, 886, 914, 943, 972, 1002, 1032, 1063, 1094, 1125, 1157, 1190, 1222, 1255, 1289}
	AnimaLevel[12] = {707, 734, 761, 789, 817, 846, 875, 905, 935, 965, 996, 1028, 1060, 1092, 1125, 1158, 1192, 1226, 1260, 1295, 1331, 1367}
	AnimaLevel[13] = {741, 769, 799, 828, 858, 889, 920, 952, 984, 1016, 1049, 1083, 1117, 1151, 1186, 1222, 1258, 1294, 1331, 1368, 1406, 1444}
	AnimaLevel[14] = {774, 805, 836, 867, 900, 932, 965, 999, 1033, 1067, 1103, 1138, 1174, 1211, 1248, 1285, 1324, 1362, 1402, 1441, 1482, 1522}
	AnimaLevel[15] = {808, 840, 873, 907, 941, 975, 1010, 1046, 1082, 1118, 1156, 1193, 1232, 1270, 1310, 1349, 1390, 1431, 1472, 1514, 1557, 1600}
	AnimaLevel[16] = {842, 876, 911, 946, 982, 1018, 1055, 1093, 1131, 1169, 1209, 1248, 1289, 1330, 1371, 1413, 1456, 1499, 1543, 1587, 1632, 1678}
    strProp = ""
	if valTab.anima_level >= 5 then
		if propvalue ~= nil and propvalue ~= 0 then
			for i = 1 , 22 do
				if propvalue >= AnimaLevel[valTab.anima_level - 4][22] or propvalue >= AnimaLevel[valTab.anima_level - 4][i] and propvalue <= AnimaLevel[valTab.anima_level - 4][i + 1] or propvalue < AnimaLevel[valTab.anima_level - 4][1] then
					if 	propvalue < AnimaLevel[valTab.anima_level - 4][1] then
						proplv1 = 0
					elseif propvalue < AnimaLevel[valTab.anima_level - 4][22] then
						proplv1 = i
					elseif propvalue >= AnimaLevel[valTab.anima_level - 4][22] then
						proplv1 = 22
					end
					if proplv1 == 0 then
						strProp = strProp .. string.format("%s%d%s",ITEM_ANIMA_STR_DESC[4], proplv1, ITEM_ANIMA_QUA_DESC[1])
						strProp = strProp .. string.format("\\r")
						break
					elseif proplv1 > 0 and proplv1 ~= nil then
						for v = 1, 4 do
							if proplv1 >= ITEM_ANIMA_QUA_DESC[6][v] and proplv1 < ITEM_ANIMA_QUA_DESC[6][v + 1] then
								z = v
								if string.len(tostring(proplv1)) == 1 then
								strProp = strProp .. string.format("%s%d%s%s",ITEM_ANIMA_STR_DESC[4], proplv1, "  ", ITEM_ANIMA_QUA_DESC[z])
								strProp = strProp .. string.format("\\r")
								else
								strProp = strProp .. string.format("%s%d%s",ITEM_ANIMA_STR_DESC[4], proplv1, ITEM_ANIMA_QUA_DESC[z])
								strProp = strProp .. string.format("\\r")
								end
								break
							elseif proplv1 >= ITEM_ANIMA_QUA_DESC[6][5] then
								z = 5
								if string.len(tostring(proplv1)) == 1 then
								strProp = strProp .. string.format("%s%d%s%s",ITEM_ANIMA_STR_DESC[4], proplv1, "  ", ITEM_ANIMA_QUA_DESC[z])
								strProp = strProp .. string.format("\\r")
								else
								strProp = strProp .. string.format("%s%d%s",ITEM_ANIMA_STR_DESC[4], proplv1, ITEM_ANIMA_QUA_DESC[z])
								strProp = strProp .. string.format("\\r")
								end
								break
							end
						end
					break
					end
				end
			end
		end
	end
    return  strProp
end



-- 获取资质等级
function GetAnimaGenLv(valTab)
   strGenLv = ""
   local i
   local v
   local z
   local Genius = valTab.anima_genius1 + valTab.anima_genius2 + valTab.anima_genius3 + valTab.anima_genius4
   if Genius ~= nil then
		for i = 29 ,50 do
			if Genius < 29 then
				strGenLv = strGenLv .. string.format("%s%d%s", ITEM_ANIMA_STR_DESC[5], 0, ITEM_ANIMA_QUA_DESC[1])
				strGenLv = strGenLv .. string.format("\\r")
				break
			elseif Genius == i then
				for v = 1, 4 do
					local m = i - 28
					if m >= ITEM_ANIMA_QUA_DESC[6][v] and m < ITEM_ANIMA_QUA_DESC[6][v + 1] then
						z = v
						if string.len(tostring(i - 28)) == 1 then
							strGenLv = strGenLv .. string.format("%s%d%s%s", ITEM_ANIMA_STR_DESC[5], i - 28, "  ", ITEM_ANIMA_QUA_DESC[z])
							strGenLv = strGenLv .. string.format("\\r")
						else
							strGenLv = strGenLv .. string.format("%s%d%s", ITEM_ANIMA_STR_DESC[5], i - 28, ITEM_ANIMA_QUA_DESC[z])
							strGenLv = strGenLv .. string.format("\\r")
						end
						break
					elseif m >= 20 then
						z = 5
						if string.len(tostring(i - 28)) == 1 then
							strGenLv = strGenLv .. string.format("%s%d%s%s", ITEM_ANIMA_STR_DESC[5], i - 28, "  ", ITEM_ANIMA_QUA_DESC[z])
							strGenLv = strGenLv .. string.format("\\r")
						else
							strGenLv = strGenLv .. string.format("%s%d%s", ITEM_ANIMA_STR_DESC[5], i - 28, ITEM_ANIMA_QUA_DESC[z])
							strGenLv = strGenLv .. string.format("\\r")
						end
						break
					end
				end
			end
		end
   end
  return strGenLv
end

-- 获取战魂资质
function GetAnimaGenius(valTab)
    local i = 1
    strGeni = ""
    for i = 1, 4 do
        if valTab["anima_property" .. tostring(i)] ~= nil and valTab["anima_property" .. tostring(i)] ~= 0 then
		   if string.len(valTab["anima_property" .. tostring(i)]) == 2 then
           strGeni = strGeni .. string.format(ITEM_ANIMA_PROP_DESC[i] .. valTab["anima_property" .. tostring(i)] .. "    ".. ITEM_ANIMA_STR_DESC[13] .. ITEM_ANIMA_GEN_DESC[valTab["anima_genius" .. i]])
           strGeni = strGeni .. string.format("\\r")
		   else
           strGeni = strGeni .. string.format(ITEM_ANIMA_PROP_DESC[i] .. valTab["anima_property" .. tostring(i)] .. "  ".. ITEM_ANIMA_STR_DESC[13] .. ITEM_ANIMA_GEN_DESC[valTab["anima_genius" .. i]])
           strGeni = strGeni .. string.format("\\r")
		   end
        end
    end
    return  strGeni
end

-- 获取炼魂属性

function GetAnimaSporp(valTab)
   strsporp = ""
   if valTab.anima_sporperty ~= nil and valTab.anima_sporperty ~= "^ffffff" then
   		strsporp = strsporp .. string.format("%s%s", valTab.anima_sporperty, ITEM_COLOR_DESC[2])
   		strsporp = strsporp .. string.format("\\r")
   end
   return strsporp
end

-- 获取战魂本体属性

function GetAnimaFproperty(valTab)
    local i = 1
    strFprop = ""
    for i = 1, 4 do
        if valTab["anima_fporperty" .. tostring(i)] ~=  nil  then
           strFprop = strFprop .. string.format("%s%s%s", ITEM_COLOR_DESC[valTab.name_color+1], string.sub(valTab["anima_fporperty" .. tostring(i)], 8), ITEM_COLOR_DESC[2])
           strFprop = strFprop .. string.format("\\r")
        end
    end
    return  strFprop
end

-- 获取技能属性

function GetAnimaSkill(valTab)
    local i = 1
	local color_desc = ""
    strSkill = ""
    for i = 1, 8 do
		if i <= 3 then
			color_desc = ITEM_COLOR_DESC[8]
		else
			color_desc = ITEM_COLOR_DESC[11]
		end
        if valTab["anima_skillname" .. tostring(i)] ~= nil and valTab["anima_skillname" .. tostring(i)] ~= "" then
			strSkill = strSkill .. string.format("%s%s%s", color_desc, valTab["anima_skillname" .. tostring(i)], ITEM_COLOR_DESC[2])
			strSkill = strSkill .. string.format("\\r")
        end
    end
    return  strSkill
end

-- 获取能力属性

function GetAnimaDamage(valTab)
    local i = valTab.anima_quality
    strDama = ""
    if  valTab.anima_damage ~= 0 then
    	strDama = strDama .. string.format(ITEM_COLOR_DESC[valTab.name_color+1] .. ITEM_ANIMA_STR_DESC[6] .. valTab.anima_damage)
    	strDama = strDama .. string.format("\\r")
    end
    if  valTab.anima_criticalattack ~= 0 then
      	strDama = strDama .. string.format(ITEM_COLOR_DESC[valTab.name_color+1] .. ITEM_ANIMA_STR_DESC[7] .. valTab.anima_criticalattack)
    	strDama = strDama .. string.format("\\r")
    end
    if  valTab.anima_alchemy ~= 0 then
    	strDama = strDama .. string.format(ITEM_COLOR_DESC[valTab.name_color+1] .. ITEM_ANIMA_STR_DESC[8] .. valTab.anima_alchemy)
    	strDama = strDama .. string.format("\\r")
    end
    return strDama
end

-- 获取战魂价格
function GetAnimaPrice(valTab)
   strPrice = ""
   if valTab[exploit_price] ~= nil then
   		strPrice = strPrice .. string.format(valTab[exploit_price])
   		strPrice = strPrice .. string.format("\\r")
   end
   return strPrice
end

-- 去掉整体描述的最后一个换行符
function TrimLastReturn(desc)
    if (string.len(desc) >= 2 and string.sub(desc, -2, -1) == string.format("\\r")) then
        return string.sub(desc, 1, -3)
    else
        return desc
    end
end

-- 需要时可能需要新加函数，包括A.去空行：将两个或以上连续的\\r换成\\r，B.去连续空行：将三个或以上连续的\\r换成\\r\\r。

