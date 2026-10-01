local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_Message6 = DlgTemplate:new({this = "Win_Message6"})

function Win_Message6:Init()
self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown);
end

function Win_Message6:ShowDialog()
	local text = "您的军团已迎战，找到#45869#可加入战斗。"
	GameApi.CovertTextArea(self.this, "Txt_Message", text)
end

function Win_Message6:OnLButtonDown(objName)
	if objName == "Txt_Message" then
			local posx2, posy2 = GameApi.GetCursorPos()
			local NpcID = DlgApi.GetItemLink(self.this, "Txt_Message", posx2, posy2)
			if NpcID ~= nil then
			GameApi.BeginAutoSearchPath(NpcID)
		end
	end
end

function Win_Message6:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_Message", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end

