local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local typenum = ""

Win_LevelTip = DlgTemplate:new({this = "Win_LevelTip"})



-----------------------------------
--界面初始化

-----------------------------------
function Win_LevelTip:Init()
local ret = GameApi.GetPlayerBasicProp(0)
self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown);
self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
self:RegisterEvent("Btn_AllQuest", self.OnAllQuest)
DlgApi.SetListText(self.this, "Combo_TypeSelect", LEVELTIP_TYPELIST)
DlgApi.SetItemText(self.this, "Combo_TypeSelect", LEVELTIP_TYPELIST[1])
DlgApi.ShowItem(self.this, "Btn_Conformity", true)
DlgApi.ShowItem(self.this, "Img_Conformity2", false)
DlgApi.ShowItem(self.this, "Btn_Conformity2", false)
end

-----------------------------------
--界面开启显示

-----------------------------------
function Win_LevelTip:ShowDialog()
	DlgApi.ShowItem(self.this, "Img_Frame2", true)
	DlgApi.ShowItem(self.this, "Img_Frame3", true)
	DlgApi.ShowItem(self.this, "Img_Frame4", true)
	DlgApi.ShowItem(self.this, "Img_Frame5", true)
	DlgApi.ShowItem(self.this, "Img_Frame8", true)
	DlgApi.ShowItem(self.this, "Img_Frame6", true)
	DlgApi.ShowItem(self.this, "Img_Frame7", true)
	DlgApi.ShowDialog("Win_LevelHelp3", false);
	DlgApi.ShowItem(self.this, "Btn_SortType", true)
	DlgApi.ShowItem(self.this, "Btn_SortLv", true)
	DlgApi.ShowItem(self.this, "Btn_SortNPC", true)
	DlgApi.ShowItem(self.this, "Btn_SortTitle", true)
	DlgApi.ShowItem(self.this, "List_Msg", true)
	DlgApi.ShowItem(self.this, "Txt_Content", true)
	DlgApi.ShowItem(self.this, "Combo_TypeSelect", true)
	DlgApi.ShowItem(self.this, "Lab_MsgNum", true)
	DlgApi.ShowItem(self.this, "Txt_MsgNum", true)
	DlgApi.ShowItem(self.this, "Lab_Content", true)
	DlgApi.ShowItem(self.this, "Lab_Type", true)
	DlgApi.ShowItem(self.this, "Btn_AccontSafe", true)
	DlgApi.ShowItem(self.this, "Txt_AccontSafe", false)
	DlgApi.ShowItem(self.this, "Btn_Back", false)
	DlgApi.SetItemText(self.this, "Lab_Test20", "全部")
	DlgApi.SetListText(self.this, "Combo_TypeSelect", LEVELTIP_TYPELIST)
	DlgApi.SetItemText(self.this, "Combo_TypeSelect", LEVELTIP_TYPELIST[1])
	local titlepage, conpage = Win_LevelTip:ShowType(1)
	local a1, a2 = Win_LevelTip:GetQuestIn()
	DlgApi.SetItemText(self.this, "Txt_MsgNum", string.format("%s%s", tostring(a2), "条"))
	DlgApi.SetListText(self.this, "List_Msg", titlepage)
	GameApi.CovertTextArea(self.this, "Txt_Content", conpage[1])
end

-----------------------------------
--显示任务信息
-----------------------------------
function Win_LevelTip:GetQuestIn()
local ret = GameApi.GetPlayerBasicProp(0)
local y, m, w, d = Win_EventMain:Date()
local ilist = {}
local titlelist = {}
local conlist = {}
local l = 0
    -- 将任务信息插入表中

	for k, v in ipairs(QuestpList) do
		if v.Ptype == 20 and ret.level >= v.pLv or ret.level >= v.pLv and ret.level <= v.pLv + 5 then
			if ret.race == v.Ptype or v.Ptype == 10 or v.Ptype == 20 then
				if v.Pprof == "" or ret.prof == v.Pprof then --加入主兵种职业判断 20110607
					local name, goldbonus, expbonus, itembonus, extendnpc, completenpc, areatype, lvlowerlimit, lvlupperlimit, teamquest, title, nodo = GameApi.IvtrQuestInfo(v.qId)
					local itemname = ""
					local ItemInfo3 = "或"
					if nodo == false then
						l = l + 1
						ilist[l] = {}
						ilist[l].stype = LEVELTIP_TYPELIST[2]
						ilist[l].text1 = name
						ilist[l].text2 = lvlowerlimit
							for k1, v1 in ipairs(itembonus) do
								if v1 ~= 0 then
									ItemInfo1, ItemInfo2, ItemInfo3 = GameApi.GetItemInfo(v1)
								end
								if itembonus[k1 + 1] == nil then
									itemname = itemname .. string.format("%s", ItemInfo3)
								elseif v1 == 0 then
									itemname = itemname .. string.format("%s", "或")
								elseif itembonus[k1 + 1] ~= nil and ItemInfo3 ~= "或" then
									itemname = itemname .. string.format("%s%s", ItemInfo3, "、")
								end
							end
						ilist[l].text3 = itemname
						local equipeinfo = string.format("%s%d%s%s%s", "^fedc40接任务NPC：^ffffff#", extendnpc, "#\r", "^fedc40奖励装备：^ffffff", itemname)
						ilist[l].text4 = equipeinfo
					end
				end
			end
		end
	end

	-- 将指称号息插入表中

	for k2, v2 in ipairs(TitlePList) do
		if ret.level >= v2.Tlevel then
			local name, goldbonus, expbonus, itembonus, extendnpc, completenpc, areatype, lvlowerlimit, lvlupperlimit, teamquest, title, nodo = GameApi.IvtrQuestInfo(v2.TID)
			local quesname = ""
			if nodo == false and ret.race == v2.Ptype or v2.Ptype == 10 then
				l = l + 1
				ilist[l] = {}
				ilist[l].stype = LEVELTIP_TYPELIST[4]
				ilist[l].text1 = name
				ilist[l].text2 = v2.Tlevel
				ilist[l].text3 = title
				for k6, v6 in ipairs(v2.TIdList) do
					local name, goldbonus, expbonus, itembonus, extendnpc, completenpc, areatype, lvlowerlimit, lvlupperlimit, teamquest, title, nodo = GameApi.IvtrQuestInfo(v6)

					if nodo == false then
						over = ""
					else
						over = "(已完成)"
					end
					quesname = quesname .. string.format("%s%s%s%d%s%s%d%s", name, over, "\r^fedc40推荐等级：^ffffff", lvlowerlimit + 2, "\r^fedc40接任务NPC：^ffffff", "#", extendnpc, "#")
					quesname = quesname .. string.format("\r\r")
				end
				ilist[l].text4 = quesname
			end
		end
	end

	 -- 将指引信息插入表中

	for k3, v3 in ipairs(RHelpList) do
		if v3.pLv <= 18 then
			if ret.level == v3.pLv and ret.race == v3.Ptype then
			l = l + 1
			ilist[l] = {}
			ilist[l].stype = LEVELTIP_TYPELIST[3]
			ilist[l].text1 = v3.title
			ilist[l].text2 = v3.pLv
			ilist[l].text3 = v3.text
			ilist[l].text4 = v3.content
			end
		else
		if ret.level >= v3.pLv then --修改为显示所有达到等级后的任务 20110607
			l = l + 1
			ilist[l] = {}
			ilist[l].stype = LEVELTIP_TYPELIST[3]
			ilist[l].text1 = v3.title
			ilist[l].text2 = v3.pLv
			ilist[l].text3 = v3.text
			ilist[l].text4 = v3.content
			end
		end
	end

	for k4,v4 in ipairs(ilist) do
		titlelist[k4] = string.format("%s\t%s\t%s\t%s",v4.stype, v4.text1, v4.text2, v4.text3)
		conlist[k4] = string.format("%s", v4.text4)
	end
	return ilist, l
end

-----------------------------------
--按照类别显示
-----------------------------------
function Win_LevelTip:ShowType(ttype)
local title, num = Win_LevelTip:GetQuestIn()
local titlelist1 = {}
local conlist1 = {}
local titlelist2 = {}
local conlist2 = {}
local l = 0
local f = 0
local level = ""
	for k5,v5 in ipairs(title) do
		if v5.text2 > 80 then
			 level = string.format("%s%d%s", "^ff7d2f英雄", v5.text2 - 80, "级")
		else
			 level = string.format("%d%s", v5.text2, "级")
		end
		if ttype ~= nil then
			if ttype == 1 then
				titlelist1[k5] = string.format("%s\t%s\t%s\t%s",v5.stype, v5.text1, level, v5.text3)
				conlist1[k5] = string.format("%s", v5.text4)
			elseif LEVELTIP_TYPELIST[ttype] == v5.stype or LEVELTIP_TYPELIST[ttype] == v5.text1 then
				titlelist1[k5] = string.format("%s\t%s\t%s\t%s",v5.stype, v5.text1, level, v5.text3)
				conlist1[k5] = string.format("%s", v5.text4)
			end
		else
			titlelist1[k5] = string.format("%s\t%s\t%s\t%s",v5.stype, v5.text1, level, v5.text3)
			conlist1[k5] = string.format("%s", v5.text4)
		end
	end
	return titlelist1, conlist1
end
-----------------------------------
--按键操作
-----------------------------------
function Win_LevelTip:OnLButtonDown(objName)
local LineNum2
local conp2 = {}
local f = 0
	if objName == "List_TypeSelect" then
		LineNum2 = DlgApi.GetListCurLine(self.this, "List_TypeSelect") + 1
	    local titlp, conp = Win_LevelTip:ShowType(LineNum2)
		DlgApi.SetItemText(self.this, "Lab_Test20", LEVELTIP_TYPELIST[LineNum2])
		DlgApi.SetListText(self.this, "List_Msg", titlp)
		GameApi.CovertTextArea(self.this, "Txt_Content", " ")
	end
	if objName == "List_Msg" then
		local LineNum1 = DlgApi.GetListCurLine(self.this, "List_Msg") + 1
		local str = DlgApi.GetItemText(self.this, "Lab_Test20")
		if str ~= nil then
			for i = 1, 8 do
				if LEVELTIP_TYPELIST[i] == str then
					LineNum2 = i
				end
			end
		elseif str == LEVELTIP_TYPELIST[1] then
			LineNum2 = 1
		else
			LineNum2 = 1
		end
		local titlp1, conp1 = Win_LevelTip:ShowType(LineNum2)
		for o, p in pairs(conp1) do
			f = f + 1
			conp2[f] = p
		end
		GameApi.CovertTextArea(self.this, "Txt_Content", conp2[LineNum1])
	end
	if objName == "Txt_Content" then
		local posx2, posy2 = GameApi.GetCursorPos()
		NpcID = DlgApi.GetItemLink(self.this, "Txt_Content", posx2, posy2)
		if NpcID ~= nil then
		GameApi.BeginAutoSearchPath(NpcID)
		end
	end
	if objName == "Btn_AccontSafe" then
		DlgApi.ShowItem(self.this, "Img_Frame2", false)
		DlgApi.ShowItem(self.this, "Img_Frame3", false)
		DlgApi.ShowItem(self.this, "Img_Frame4", false)
		DlgApi.ShowItem(self.this, "Img_Frame5", false)
		DlgApi.ShowItem(self.this, "Img_Frame8", false)
		DlgApi.ShowItem(self.this, "Img_Frame6", false)
		DlgApi.ShowItem(self.this, "Img_Frame7", false)
		DlgApi.ShowItem(self.this, "Btn_SortType", false)
		DlgApi.ShowItem(self.this, "Btn_SortLv", false)
		DlgApi.ShowItem(self.this, "Btn_SortNPC", false)
		DlgApi.ShowItem(self.this, "Btn_SortTitle", false)
		DlgApi.ShowItem(self.this, "List_Msg", false)
		DlgApi.ShowItem(self.this, "Txt_Content", false)
		DlgApi.ShowItem(self.this, "Combo_TypeSelect", false)
		DlgApi.ShowItem(self.this, "Lab_MsgNum", false)
		DlgApi.ShowItem(self.this, "Txt_MsgNum", false)
		DlgApi.ShowItem(self.this, "Lab_Content", false)
		DlgApi.ShowItem(self.this, "Lab_Type", false)
		DlgApi.ShowItem(self.this, "Btn_AccontSafe", false)
		DlgApi.ShowItem(self.this, "Txt_AccontSafe", true)
		DlgApi.ShowItem(self.this, "Btn_Back", true)
		GameApi.CovertTextArea(self.this, "Txt_AccontSafe", LEVELHELP_TEXT1 .. LEVELHELP_TEXT2 .. LEVELHELP_TEXT3 .. LEVELHELP_TEXT4 .. LEVELHELP_TEXT5)
	end
	if objName == "Btn_Back" then
		DlgApi.ShowItem(self.this, "Img_Frame2", true)
		DlgApi.ShowItem(self.this, "Img_Frame3", true)
		DlgApi.ShowItem(self.this, "Img_Frame4", true)
		DlgApi.ShowItem(self.this, "Img_Frame5", true)
		DlgApi.ShowItem(self.this, "Img_Frame8", true)
		DlgApi.ShowItem(self.this, "Img_Frame6", true)
		DlgApi.ShowItem(self.this, "Img_Frame7", true)
		DlgApi.ShowItem(self.this, "Btn_SortType", true)
		DlgApi.ShowItem(self.this, "Btn_SortLv", true)
		DlgApi.ShowItem(self.this, "Btn_SortNPC", true)
		DlgApi.ShowItem(self.this, "Btn_SortTitle", true)
		DlgApi.ShowItem(self.this, "List_Msg", true)
		DlgApi.ShowItem(self.this, "Txt_Content", true)
		DlgApi.ShowItem(self.this, "Combo_TypeSelect", true)
		DlgApi.ShowItem(self.this, "Lab_MsgNum", true)
		DlgApi.ShowItem(self.this, "Txt_MsgNum", true)
		DlgApi.ShowItem(self.this, "Lab_Content", true)
		DlgApi.ShowItem(self.this, "Lab_Type", true)
		DlgApi.ShowItem(self.this, "Btn_AccontSafe", true)
		DlgApi.ShowItem(self.this, "Txt_AccontSafe", false)
		DlgApi.ShowItem(self.this, "Btn_Back", false)
	end
end
function Win_LevelTip:OnAllQuest()
	local WinPosSwitch = DlgApi.GetItemRect(self.this, "Img_Frame1")
	local SwitchWin = "Win_LevelHelp3"
	DlgApi.ShowDialog(self.this, false);
	DlgApi.ShowDialog(SwitchWin, true);
	DlgApi.SetDialogPosition(SwitchWin, WinPosSwitch.x, WinPosSwitch.y)
end
--------------------------------------------
--鼠标移动
--------------------------------------------
function Win_LevelTip:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_Content", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end

