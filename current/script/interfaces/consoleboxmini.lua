local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_ConsoleBoxMini = DlgTemplate:new({this = "Win_ConsoleBoxMini"})

function Win_ConsoleBoxMini:Init()
	self:RegisterEvent("Btn_Maxmize", self.OnClick)
end

function Win_ConsoleBoxMini:OnClick()
	local WinPosSwitch = DlgApi.GetItemRect(self.this, "Btn_Maxmize")
	local SwitchWin = "Win_ConsoleBox"
	DlgApi.ShowDialog(self.this, false);
	DlgApi.ShowDialog(SwitchWin, true);
	DlgApi.SetDialogPosition(SwitchWin, WinPosSwitch.x, WinPosSwitch.y)
end
