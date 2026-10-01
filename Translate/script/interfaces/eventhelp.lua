local DlgTemplate = DlgTemplate
local DlgApi = DlgApi
local GameApi = GameApi

Win_EventHelp = DlgTemplate:new({this = "Win_EventHelp"})

-----------------------------------
-- Interface Initialization
-----------------------------------

function Win_EventHelp:Init()
	self:RegisterEvent("Btn_Help", self.Help)
end

-----------------------------------
-----------------------------------

function Win_EventHelp:Help()
	local WinPosSwitch = DlgApi.GetItemRect(self.this, "Img_BG")
	local SwitchWin = "Win_EventBox"
	DlgApi.ShowDialog(self.this, false);
	DlgApi.ShowDialog(SwitchWin, true);
	DlgApi.SetDialogPosition(SwitchWin, WinPosSwitch.x, WinPosSwitch.y)
end
