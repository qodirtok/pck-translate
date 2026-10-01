local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

local Win_EventMsg2 = DlgTemplate:new({this = "Win_EventMsg2"})

function Win_EventMsg2:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE)
end

function Win_EventMsg2:ShowDialog()
	GameApi.CovertTextArea (self.this, "Txt_Content", "^ff9090英雄之路：^ffffff河北出现很多奇怪的女子，还有大批的贼人，又赶上鼹鼠灾，天灾人祸民不聊生！#74817#希望各位英雄和朋友们一起来拯救村民！\r^ff9090活动时间：^ffffff每周日15点、17点、19点、21点、23点\r^ff9090等级：^ffffff英雄级\r^ff9090注意：^ffffff活动持续时间1小时，1小时后所有活动相关内容都会消失！如果没有及时完成，请在下次活动开启时继续完成。")
end

function Win_EventMsg2:OnLButtonDown(objName)
	if objName == "Txt_Content" then
		local posX , posY = GameApi.GetCursorPos()
		local NpcID = DlgApi.GetItemLink (self.this, "Txt_Content", posX, posY)
		if NpcID ~= nil then
			GameApi.BeginAutoSearchPath(NpcID)
		end
	end
end

function Win_EventMsg2:OnMOUSEMOVE()
	local posX, posY = GameApi.GetCursorPos()
	local result = DlgApi.GetItemLink(self.this, "Txt_Content", posX, posY)
		if result == nil then
			GameApi.ScriptChangeCursor(0)
		else
			GameApi.ScriptChangeCursor(14)
		end
	return true
end

_G.Win_EventMsg2 = Win_EventMsg2
