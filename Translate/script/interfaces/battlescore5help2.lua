local DlgTemplate = DlgTemplate
local DlgApi = DlgApi
local GameApi = GameApi

Win_BattleScore5_Help2 = DlgTemplate:new({this = "Win_BattleScore5_Help2"})

-----------------------------------
-- Interface Initialization
-----------------------------------

function Win_BattleScore5_Help2:Init()
	self:RegisterEvent("Btn_Pageup", self.PageUp)
	self:RegisterEvent("Btn_Pagedown", self.PageDown)
end

-----------------------------------
-- Page Turn
-----------------------------------

function Win_BattleScore5_Help2:PageUp()
	local WinPosSwitch = DlgApi.GetItemRect(self.this, "Img_bg")
	local SwitchWin = "Win_BattleScore5_Help3"
	DlgApi.ShowDialog(self.this, false);
	DlgApi.ShowDialog(SwitchWin, true);
	DlgApi.SetDialogPosition(SwitchWin, WinPosSwitch.x, WinPosSwitch.y)
end

function Win_BattleScore5_Help2:PageDown()
	local WinPosSwitch = DlgApi.GetItemRect(self.this, "Img_bg")
	local SwitchWin = "Win_BattleScore5_Help"
	DlgApi.ShowDialog(self.this, false);
	DlgApi.ShowDialog(SwitchWin, true);
	DlgApi.SetDialogPosition(SwitchWin, WinPosSwitch.x, WinPosSwitch.y)
end
