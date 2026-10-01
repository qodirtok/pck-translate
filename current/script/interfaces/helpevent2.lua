local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_HelpEvent2 = DlgTemplate:new({this = "Win_HelpEvent2"})


--初始化--


function Win_HelpEvent2:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
end

function Win_HelpEvent2:ShowDialog()
	GameApi.CovertTextArea(self.this, "Txt_Text", HelpEvent2)
end
--------------------------------------------------------------------

function Win_HelpEvent2:OnLButtonDown(objName)
	if objName == "Txt_Text" then
		local posx, posy = GameApi.GetCursorPos()
	NpcID = DlgApi.GetItemLink(self.this, "Txt_Text", posx, posy)
	if NpcID ~= nil then
	   GameApi.BeginAutoSearchPath(NpcID)
	 end
	end
end

--------------------------------------------
--鼠标移动
--------------------------------------------
function Win_HelpEvent2:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_Text", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end
