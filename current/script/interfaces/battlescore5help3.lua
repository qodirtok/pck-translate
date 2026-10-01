local DlgTemplate = DlgTemplate
local DlgApi = DlgApi
local GameApi = GameApi

Win_BattleScore5_Help3 = DlgTemplate:new({this = "Win_BattleScore5_Help3"})

-----------------------------------
--界面初始化
-----------------------------------

function Win_BattleScore5_Help3:Init()
	self:RegisterEvent("Btn_Pageup", self.PageUp)
	self:RegisterEvent("Btn_Pagedown", self.PageDown)
end

-----------------------------------
--翻页
-----------------------------------

function Win_BattleScore5_Help3:PageUp()
	local WinPosSwitch = DlgApi.GetItemRect(self.this, "Img_bg")
	local SwitchWin = "Win_BattleScore5_Help4"
	DlgApi.ShowDialog(self.this, false);
	DlgApi.ShowDialog(SwitchWin, true);
	DlgApi.SetDialogPosition(SwitchWin, WinPosSwitch.x, WinPosSwitch.y)
end

function Win_BattleScore5_Help3:PageDown()
	local WinPosSwitch = DlgApi.GetItemRect(self.this, "Img_bg")
	local SwitchWin = "Win_BattleScore5_Help2"
	DlgApi.ShowDialog(self.this, false);
	DlgApi.ShowDialog(SwitchWin, true);
	DlgApi.SetDialogPosition(SwitchWin, WinPosSwitch.x, WinPosSwitch.y)
end
