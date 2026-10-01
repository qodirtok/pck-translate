local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_TradeNet = DlgTemplate:new({this = "Win_TradeNet"})

-- Initialization --

function Win_TradeNet:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE)
end

function Win_TradeNet:ShowDialog()
	GameApi.CovertTextArea(self.this, "Txt_TextArea", "^FDE287You can visit #71123# to use our Treasure Hunt Travel Service.")
end

----------
function Win_TradeNet:OnLButtonDown(objName)
	if objName == "Txt_TextArea" then
		local posx2, posy2 = GameApi.GetCursorPos()
		NpcID = DlgApi.GetItemLink(self.this, "Txt_TextArea", posx2, posy2)
		if NpcID ~= nil then
		GameApi.BeginAutoSearchPath(NpcID)
		end
	end
end

--------------------------------------------
-- Mouse Move
--------------------------------------------
function Win_TradeNet:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_TextArea", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true
end


