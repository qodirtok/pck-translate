local DlgTemplate = DlgTemplate
local DlgApi = DlgApi
local GameApi = GameApi

Win_BattleScore5_Help5 = DlgTemplate:new({this = "Win_BattleScore5_Help5"})

-----------------------------------
--界面初始化
-----------------------------------

function Win_BattleScore5_Help5:Init()
	self:RegisterEvent("Btn_Pagedown", self.OnClick)
end

-----------------------------------
--翻页
-----------------------------------

function Win_BattleScore5_Help5:OnClick()
	local WinPosSwitch = DlgApi.GetItemRect(self.this, "Img_bg")
	local SwitchWin = "Win_BattleScore5_Help4"
	DlgApi.ShowDialog(self.this, false);
	DlgApi.ShowDialog(SwitchWin, true);
	DlgApi.SetDialogPosition(SwitchWin, WinPosSwitch.x, WinPosSwitch.y)
end
