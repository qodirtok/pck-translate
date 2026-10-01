local DlgTemplate = DlgTemplate
local DlgApi = DlgApi
local GameApi = GameApi

Win_EventBox = DlgTemplate:new({this = "Win_EventBox"})

-----------------------------------
--界面初始化
-----------------------------------

function Win_EventBox:Init()
	self:RegisterEvent("Btn_Help", self.Help)
end

function Win_EventBox:ShowDialog()
	DlgApi.ShowDialog("Win_EventHelp", false);
end
-----------------------------------

-----------------------------------

function Win_EventBox:Help()
	local WinPosSwitch = DlgApi.GetItemRect(self.this, "Img_BG")
	local SwitchWin = "Win_EventHelp"
	DlgApi.ShowDialog(SwitchWin, true);
	DlgApi.ShowDialog(self.this, false);
	DlgApi.SetDialogPosition(SwitchWin, WinPosSwitch.x, WinPosSwitch.y)
end
