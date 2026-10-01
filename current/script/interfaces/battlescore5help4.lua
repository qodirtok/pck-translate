local DlgTemplate = DlgTemplate
local DlgApi = DlgApi
local GameApi = GameApi

Win_BattleScore5_Help4 = DlgTemplate:new({this = "Win_BattleScore5_Help4"})

-----------------------------------
--界面初始化
-----------------------------------

function Win_BattleScore5_Help4:Init()
	self:RegisterEvent("Btn_Pageup", self.PageUp)
	self:RegisterEvent("Btn_Pagedown", self.PageDown)
end

-----------------------------------
--翻页
-----------------------------------

function Win_BattleScore5_Help4:PageUp()
	local WinPosSwitch = DlgApi.GetItemRect(self.this, "Img_bg")
	local SwitchWin = "Win_BattleScore5_Help5"
	DlgApi.ShowDialog(self.this, false);
	DlgApi.ShowDialog(SwitchWin, true);
	DlgApi.SetDialogPosition(SwitchWin, WinPosSwitch.x, WinPosSwitch.y)
end

function Win_BattleScore5_Help4:PageDown()
	local WinPosSwitch = DlgApi.GetItemRect(self.this, "Img_bg")
	local SwitchWin = "Win_BattleScore5_Help3"
	DlgApi.ShowDialog(self.this, false);
	DlgApi.ShowDialog(SwitchWin, true);
	DlgApi.SetDialogPosition(SwitchWin, WinPosSwitch.x, WinPosSwitch.y)
end
