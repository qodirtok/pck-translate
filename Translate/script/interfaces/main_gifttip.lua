local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local xtime = 0

Win_GiftTip = DlgTemplate:new({this = "Win_GiftTip"})


-----------------------------------
-- Interface Initialization
-----------------------------------
function Win_GiftTip:Init()
self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown);
self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
DlgApi.ShowItem("Win_GiftTip", "Btn_View", false)
DlgApi.ShowDialog(self.this, false)
DlgApi.SetDialogAlpha("Win_GiftTip", 0)
end

-----------------------------------
-- Interface Real-time Refresh
-----------------------------------
function Win_GiftTip:Tick(deltaTime)
local isshow = DlgApi.IsDialogShow("Win_Gift")
	if isshow then
		Win_GiftTip:EmationItem_Alpha("Win_GiftTip", 255, deltaTime)
		DlgApi.ShowItem("Win_GiftTip", "Btn_View", true)
	elseif not isshow and Win_GiftTip:OnMOUSEMOVE("Win_GiftTip") == true then
		Win_GiftTip:EmationItem_Alpha("Win_GiftTip", 255, deltaTime)
		DlgApi.ShowItem("Win_GiftTip", "Btn_View", true)
		DlgApi.SetItemText("Win_GiftTip", "Btn_View", "查看")
	else
		DlgApi.SetDialogAlpha("Win_GiftTip", 0)
		DlgApi.ShowItem("Win_GiftTip", "Btn_View", false)
	end
	if DlgApi.IsItemShow(self.this,"Txt_GiftTime") then
		DlgApi.ShowItem(self.this, "Lab_Notify", false)
	end
end

-----------------------------------
--界面淡然淡出
-----------------------------------
function Win_GiftTip:EmationItem_Alpha(Set_dlgname, setalpha, dtime)
	xtime = xtime + dtime
	if xtime > 1 + dtime then
		DlgApi.SetDialogAlpha(Set_dlgname, setalpha)
	end
end

-----------------------------------
--获取鼠标是否指向制定界面
-----------------------------------
function Win_GiftTip:OnMOUSEMOVE(dname)
	local posx1, posy1 = GameApi.GetCursorPos()
	local ActiveDlg, ActiveItem = DlgApi.GetHitItem(posx1, posy1)
	if ActiveDlg == dname then
		return true
	end
	return false
end
