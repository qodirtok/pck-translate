local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local opennum = 0
local scalex

Win_AssociationTip = DlgTemplate:new({this = "Win_AssociationTip"})

-----------------------------------
--界面初始化
-----------------------------------
function Win_AssociationTip:Init()
self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown);
self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
self:RegisterEvent("Chk_Hide", self.OnHide);
DlgApi.SetItemText(self.this, "Chk_Hide", "隐")
scalex = DlgApi.GetWindowScale()
DlgApi.SetDialogPosition(self.this, -6, 243 * scalex)
end

-----------------------------------
--界面开启
-----------------------------------
function Win_AssociationTip:ShowDialog()
scalex = DlgApi.GetWindowScale()
DlgApi.SetItemText(self.this, "Chk_Hide", "隐")
DlgApi.SetDialogPosition(self.this, -6, 243 * scalex)
GameApi.CovertTextArea(self.this, "Txt_Bulletin", LEVELTIP_EventTips)
	if DlgApi.IsItemShow(self.this, "Rdo_AssociationTip") then
		DlgApi.CheckRadioButton(self.this, 1, 3)
	else
		DlgApi.CheckRadioButton(self.this, 1, 3)
	end
end

-----------------------------------
--界面实时刷新
-----------------------------------
local Win_Gift_time1 = 0
local Win_Gift_time2 = 0
function Win_AssociationTip:Tick(deltaTime)
	local scale = DlgApi.GetWindowScale()
	local i = 0
	local speed = 26
	local rspeed = 10
	local WinPosSwitch1 = DlgApi.GetItemRect("Win_CharHead", "Btn_Close")
	local WinPosSwitch2 = DlgApi.GetItemRect(self.this, "Rdo_EventTip")
	local WinPosSwitch3 = DlgApi.GetItemRect("Win_CharHead", "Btn_Conformity")
	if opennum == 2 and DlgApi.GetItemText(self.this, "Chk_Hide") == "隐" then
		Win_Gift_time1 = Win_Gift_time1 + deltaTime
		if Win_Gift_time1 < 1050 then
			Win_AssociationTip:Emotion_Move(self.this, "Rdo_EventTip", 243 * scale, speed)
		else
			DlgApi.SetDialogPosition(self.this, -200 * scale, 243 * scale)
			DlgApi.SetItemText(self.this, "Chk_Hide", "开")
			Win_Gift_time1 = 0
		end
	end
	if opennum == 1 and DlgApi.GetItemText(self.this, "Chk_Hide") == "开" then
		Win_Gift_time2 = Win_Gift_time2 + deltaTime
		if Win_Gift_time2 < 315 then
			Win_AssociationTip:Emotion_Open(self.this, "Rdo_EventTip", 243 * scale, rspeed)
		else
			DlgApi.SetDialogPosition(self.this, 0 * scale, 243 * scale)
			DlgApi.SetItemText(self.this, "Chk_Hide", "隐")
			Win_Gift_time2 = 0
		end
	end
end

-----------------------------------
--界面移动收起动画
-----------------------------------
function Win_AssociationTip:Emotion_Move(set_dlgname, set_item, set_x, set_speed)
	local scale = DlgApi.GetWindowScale()
	local WinPosSwitch = DlgApi.GetItemRect(set_dlgname, set_item)
	DlgApi.SetDialogPosition(set_dlgname, WinPosSwitch.x - set_speed * scale, set_x)
end

-----------------------------------
--界面移动开起动画
-----------------------------------
function Win_AssociationTip:Emotion_Open(set_dlgname, set_item, set_x, set_speed)
	local scale = DlgApi.GetWindowScale()
	local WinPosSwitch = DlgApi.GetItemRect(set_dlgname, set_item)
	DlgApi.SetDialogPosition(set_dlgname, WinPosSwitch.x + set_speed * scale, set_x)
end

function Win_AssociationTip:OnHide()
	if DlgApi.GetItemText(self.this, "Chk_Hide") == "隐" then
		opennum = 2
	elseif DlgApi.GetItemText(self.this, "Chk_Hide") == "开" then
		opennum = 1
	end
end

-----------------------------------
--鼠标操作
-----------------------------------
function Win_AssociationTip:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_Bulletin", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end


-----------------------------------
--对应控件操作
-----------------------------------
function Win_AssociationTip:OnLButtonDown(objName)
	if objName == "Txt_Bulletin" then
		local posx2, posy2 = GameApi.GetCursorPos()
		NpcID = DlgApi.GetItemLink(self.this, "Txt_Bulletin", posx2, posy2)
		if NpcID ~= nil then
			GameApi.BeginAutoSearchPath(NpcID)
		end
	end
	if objName == "Rdo_EventTip" then
		GameApi.CovertTextArea(self.this, "Txt_Bulletin", LEVELTIP_EventTips)
	end
end
