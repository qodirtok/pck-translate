local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local str
local tab = {}

Win_ConsoleBox = DlgTemplate:new({this = "Win_ConsoleBox"})

--Initialization
function Win_ConsoleBox:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown);
	self:RegisterEvent("Btn_Excute", self.OnExcute)
	DlgApi.SetListText(self.this, "Combo_TypeSelect", ConsoleListType)
	DlgApi.SetItemText(self.this, "Combo_TypeSelect", ConsoleListType[1])
	DlgApi.ShowItem(self.this, "Ebx_Para1", false)
	DlgApi.ShowItem(self.this, "Ebx_Para2", false)
	DlgApi.ShowItem(self.this, "Ebx_Para3", false)
	DlgApi.ShowItem(self.this, "Ebx_Para4", false)
	DlgApi.ShowItem(self.this, "Lab_Para1", false)
	DlgApi.ShowItem(self.this, "Lab_Para2", false)
	DlgApi.ShowItem(self.this, "Lab_Para3", false)
	DlgApi.ShowItem(self.this, "Lab_Para4", false)
	tab = Win_ConsoleBox:ShowContent(ConsoleListType[1])
	Win_ConsoleBox:SetContent()
end

--Window Display
function Win_ConsoleBox:ShowDialog()
	Win_ConsoleBox:ShowContent("Common")
end

--Shortcut Buttons--
ConsoleListBtn = {}
ConsoleListBtn[1] = "d_runspeed 20"
ConsoleListBtn[2] = "d_runspeed 0"
ConsoleListBtn[3] = "d_c2scmd 2010 81"
ConsoleListBtn[4] = "d_c2scmd 2008 7 200 200"
ConsoleListBtn[5] = "d_c2scmd 2988"
ConsoleListBtn[6] = "d_c2scmd 4012 500"
ConsoleListBtn[7] = "d_c2scmd 2001 153"
ConsoleListBtn[8] = "d_c2scmd 3022 64885"

--Category Display
function Win_ConsoleBox:OnLButtonDown(objName)
	if objName == "List_TypeSelect" then
		local n = DlgApi.GetListCurLine(self.this, "List_TypeSelect") + 1
		str = ConsoleListType[n]
		tab = Win_ConsoleBox:ShowContent(str)
		Win_ConsoleBox:SetContent()
	end

--Loop Button
	for i = 1 , 8 do
		local test1 = string.format("%s%d", "Btn_", i)
		if objName == test1 then
			GameApi.AddChatMessage(GP_CHAT_MISC, ConsoleListBtn[i] .. " Executed")
			GameApi.ExecuteCommand(tostring(ConsoleListBtn[i]))
			break
		end
	end

--Display Content
	if objName == "Lst_ConsoleList" then
		Win_ConsoleBox:ClosePanel()
		local n = DlgApi.GetListCurLine(self.this, "Lst_ConsoleList") + 1
		if tab[n] ~= nil then
			DlgApi.SetItemText (self.this, "Lab_Base", tab[n].command)
			DlgApi.SetItemText (self.this, "Txt_Desc", tab[n].desc)
			Win_ConsoleBox:Para(n)
			DlgApi.SetItemText(self.this, "Ebx_Para1", "")
			DlgApi.SetItemText(self.this, "Ebx_Para2", "")
			DlgApi.SetItemText(self.this, "Ebx_Para3", "")
			DlgApi.SetItemText(self.this, "Ebx_Para4", "")
		end
	end
--Reload File
	if objName == "Btn_Reload" then
		GameApi.AddChatMessage(GP_CHAT_MISC, " Executed")
		local filename = DlgApi.GetItemText(self.this, "Ebx_Filename")
		if filename ~= nil then
			GameApi.ReloadScriptFile(filename)
			GameApi.AddChatMessage(GP_CHAT_MISC, filename .. " Executed")
		end
	end
--Minimize Window
	if objName == "Btn_Minimize" then
		local WinPosSwitch = DlgApi.GetItemRect(self.this, "Btn_Minimize")
		local SwitchWin = "Win_ConsoleBoxMini"
		DlgApi.ShowDialog(self.this, false);
		DlgApi.ShowDialog(SwitchWin, true);
		DlgApi.SetDialogPosition(SwitchWin, WinPosSwitch.x, WinPosSwitch.y)
	end
end

--Display Parameter Count
function Win_ConsoleBox:Para(n)
	for i = 1, tab[n].parameter do
		DlgApi.ShowItem (self.this, "Ebx_Para" .. i, true)
		DlgApi.ShowItem (self.this, "Lab_Para" .. i, true)
	end
end

--Construct Console Command
function Win_ConsoleBox:OnExcute()
	local n = DlgApi.GetListCurLine("Win_ConsoleBox", "Lst_ConsoleList") + 1
	local strAll = ""
	local ConsoleStr = ""
	for i = 1, ConsoleList[n].parameter do
		parastr = DlgApi.GetItemText(self.this, string.format("%s%d", "Ebx_Para", i))
		if parastr ~= nil then
		strAll = strAll .. parastr .. " "
		end
	end
	ConsoleStr = tab[n].command .. strAll
	if ConsoleStr ~= nil then
		GameApi.AddChatMessage(GP_CHAT_MISC, ConsoleStr .. " Executed")
	end
	GameApi.ExecuteCommand(ConsoleStr)
end

function Win_ConsoleBox:ClosePanel()
	DlgApi.ShowItem(self.this, "Ebx_Para1", false)
	DlgApi.ShowItem(self.this, "Ebx_Para2", false)
	DlgApi.ShowItem(self.this, "Ebx_Para3", false)
	DlgApi.ShowItem(self.this, "Ebx_Para4", false)
	DlgApi.ShowItem(self.this, "Lab_Para1", false)
	DlgApi.ShowItem(self.this, "Lab_Para2", false)
	DlgApi.ShowItem(self.this, "Lab_Para3", false)
	DlgApi.ShowItem(self.this, "Lab_Para4", false)
end

function Win_ConsoleBox:ShowContent(str)
	local listvalue = {}
	local listtitle = {}
	Win_ConsoleBox:ClosePanel()
	l = 0
	for k, v in ipairs(ConsoleList) do
		if v.cate == str then
			l = l + 1
			listvalue[l] = {}
			listvalue[l].command = v.command
			listvalue[l].parameter = v.parameter
			listvalue[l].desc = v.desc
			table.insert(listtitle, l, v.title)
		end
	end
	DlgApi.SetListText(self.this, "Lst_ConsoleList", listtitle)
	return listvalue
end

function Win_ConsoleBox:SetContent()
	Win_ConsoleBox:Para(tab[1].parameter)
	DlgApi.SetItemText (self.this, "Lab_Base", tab[1].command)
	DlgApi.SetItemText (self.this, "Txt_Desc", tab[1].desc)
	DlgApi.SetItemText(self.this, "Ebx_Para1", "")
	DlgApi.SetItemText(self.this, "Ebx_Para2", "")
	DlgApi.SetItemText(self.this, "Ebx_Para3", "")
	DlgApi.SetItemText(self.this, "Ebx_Para4", "")
end

