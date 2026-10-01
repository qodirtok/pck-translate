local DlgTemplate = DlgTemplate
local DlgApi = DlgApi
local GameApi = GameApi

Win_PetHelp11 = DlgTemplate:new({this = "Win_PetHelp11"})

-----------------------------------
--界面初始化
-----------------------------------

function Win_PetHelp11:Init()
	self:RegisterEvent("Btn_Next", self.PageUp)
	--self:RegisterEvent("Btn_Pagedown", self.PageDown)
end

-----------------------------------
--翻页
-----------------------------------

function Win_PetHelp11:PageUp()
	local WinPosSwitch = DlgApi.GetItemRect(self.this, "Img_Head")
	local SwitchWin = "Win_PetHelp12"
	DlgApi.ShowDialog(self.this, false);
	DlgApi.ShowDialog(SwitchWin, true);
	DlgApi.SetDialogPosition(SwitchWin, WinPosSwitch.x, WinPosSwitch.y)
end

--[[function Win_PetHelp10:PageDown()
	local WinPosSwitch = DlgApi.GetItemRect(self.this, "Img_bg")
	local SwitchWin = "Win_BattleScore5_Help"
	DlgApi.ShowDialog(self.this, false);
	DlgApi.ShowDialog(SwitchWin, true);
	DlgApi.SetDialogPosition(SwitchWin, WinPosSwitch.x, WinPosSwitch.y)
end
]]--
