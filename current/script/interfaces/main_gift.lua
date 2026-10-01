local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local scalex
Win_Gift = DlgTemplate:new({this = "Win_Gift"})

-----------------------------------
--界面初始化

-----------------------------------
function Win_Gift:Init()
self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown);
self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
scalex = DlgApi.GetWindowScale()
end

-----------------------------------
--界面开启

-----------------------------------
function Win_Gift:ShowDialog()
scalex = DlgApi.GetWindowScale()
local WinPosSwitch1 = DlgApi.GetItemRect("Win_GiftTip", "Lab_GiftTime")
local WinPosSwitch2 = DlgApi.GetItemRect("Win_MiniMap", "Img_ServerTime")
DlgApi.SetDialogPosition(self.this, (WinPosSwitch1.x - 17) * scalex, (WinPosSwitch2.y - 86) * scalex)
DlgApi.SetItemText("Win_GiftTip", "Btn_View", "关闭")

end

----------------------------------
--界面实时刷新
-----------------------------------
local Win_Gift_time = 0
function Win_Gift:Tick(deltaTime)
	local scale = DlgApi.GetWindowScale()
	local speed = 34
	local rspeed = 2
	local WinPosSwitch1 = DlgApi.GetItemRect("Win_GiftTip", "Lab_GiftTime")
	local WinPosSwitch2 = DlgApi.GetItemRect(self.this, "Img_Gift1")
	if DlgApi.IsDialogShow(self.this) and WinPosSwitch2.y < speed - rspeed then
		Win_Gift_time = Win_Gift_time + deltaTime
		Win_Gift:Emotion_Move(self.this, "Img_Gift1", Win_Gift_time, WinPosSwitch1.x - 17 * scale, speed * scale)
	elseif DlgApi.IsDialogShow(self.this) and WinPosSwitch2.y >= speed - rspeed then
		DlgApi.SetDialogPosition(self.this, WinPosSwitch1.x - 17 * scale, (speed - rspeed) * scale)
	end
	if scalex ~= scale then
		DlgApi.ShowDialog(self.this, false)
	end
end

----------------------------------
--界面移动动画
-----------------------------------

function Win_Gift:Emotion_Move(set_dlgname, set_item, deltime, set_x, set_speed)
	local scale = DlgApi.GetWindowScale()
	local WinPosSwitch = DlgApi.GetItemRect(set_dlgname, set_item)
	if deltime > 1 then
		DlgApi.SetDialogPosition(set_dlgname, set_x, (WinPosSwitch.y + set_speed) * scale)
	end
end

