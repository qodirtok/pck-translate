local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

local Win_EventMsg = DlgTemplate:new({this = "Win_EventMsg"})

function Win_EventMsg:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE)
end

function Win_EventMsg:ShowDialog()
	GameApi.CovertTextArea (self.this, "Txt_Content", "^ff9090桃园告急：^ffffff不明身份的叛乱分子乔装打扮，从清凉驿潜入，一直到桃园村都有他们的踪迹。有的化妆成杂耍团，有的化妆成道士，偷袭村民，#72651#希望有英雄和朋友们一起来拯救村民！\r^ff9090活动时间：^ffffff每天14点、16点、18点、20点、22点\r^ff9090等级：^ffffff16-80级\r^ff9090活动线路：^ffffff新手线（1-5线）\r^ff9090注意：^ffffff活动持续1小时，组队效率更高！1小时后所有叛乱分子都会消失！如果没有及时完成，请在下次活动开启时继续完成。")
end

function Win_EventMsg:OnLButtonDown(objName)
	if objName == "Txt_Content" then
		local posX , posY = GameApi.GetCursorPos()
		local NpcID = DlgApi.GetItemLink (self.this, "Txt_Content", posX, posY)
		if NpcID ~= nil then
			GameApi.BeginAutoSearchPath(NpcID)
		end
	end
end

function Win_EventMsg:OnMOUSEMOVE()
	local posX, posY = GameApi.GetCursorPos()
	local result = DlgApi.GetItemLink(self.this, "Txt_Content", posX, posY)
		if result == nil then
			GameApi.ScriptChangeCursor(0)
		else
			GameApi.ScriptChangeCursor(14)
		end
	return true
end

_G.Win_EventMsg = Win_EventMsg
