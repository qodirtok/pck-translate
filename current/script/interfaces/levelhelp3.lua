local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local Format = string.format

Win_LevelHelp3 = DlgTemplate:new({this = "Win_LevelHelp3"})
--------------------------------------------
--界面初始化
--------------------------------------------
function Win_LevelHelp3:Init()
	self:RegisterEvent("Btn_Close", self.OnClose)
	self:RegisterEvent("Btn_LevelTip", self.OnLevelTip)
end

function Win_LevelHelp3:OnClose()
	DlgApi.ShowDialog(self.this, false);
end

function Win_LevelHelp3:OnLevelTip()
	local WinPosSwitch = DlgApi.GetItemRect(self.this, "Img_Frame1")
	local SwitchWin = "Win_LevelTip"
	DlgApi.ShowDialog(self.this, false)
	DlgApi.ShowDialog("Win_LevelTip", true)
	DlgApi.SetDialogPosition(SwitchWin, WinPosSwitch.x, WinPosSwitch.y)
end
