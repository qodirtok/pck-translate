local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local NpcID = ""

Win_IntoHelp = DlgTemplate:new({this = "Win_IntoHelp"});

function Win_IntoHelp:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown);
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
end


function Win_IntoHelp:ShowDialog()
	local text = "^fff962霸者归来\r^ffffff活动日期：5月10日起\r等级：50级以上\r活动NPC: #52596#\r\r^fff962天佑中华 同心祈福\r^ffffff活动时间：19：30-21：30\r等级：5级以上\r活动NPC: #52596#"
	GameApi.CovertTextArea(self.this, "Txt_Event", text)
	DlgApi.ShowDialog("Win_EventMain", false)
end


function Win_IntoHelp:OnLButtonDown(objName)
	if objName == "Btn_EventMain" then
		DlgApi.ShowDialog("Win_IntoHelp", false)
		DlgApi.ShowDialog("Win_EventMain", true)
	end
	if objName == "Btn_Close" then
		DlgApi.ShowDialog("Win_IntoHelp", false)
	end
	if objName == "Txt_Event" then
		local posx2, posy2 = GameApi.GetCursorPos()
		NpcID = DlgApi.GetItemLink(self.this, "Txt_Event", posx2, posy2)
		if NpcID ~= nil then
		GameApi.BeginAutoSearchPath(NpcID)
		end
	end
end

function Win_IntoHelp:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_Event", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end

