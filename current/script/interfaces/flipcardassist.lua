local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

local Win_FlipCardAssist = DlgTemplate:new({this = "Win_FlipCardAssist"})

function Win_FlipCardAssist:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE)
end

function Win_FlipCardAssist:ShowDialog()
	GameApi.CovertTextArea (self.this, "TextArea_assist", CardAssist)
end

function Win_FlipCardAssist:OnLButtonDown(objName)
	if objName == "Btn_Position" then
		local DialogPos = DlgApi.GetItemRect(self.this, "Img_Frame2")
		DlgApi.ShowDialog (self.this, false)
		DlgApi.ShowDialog ("Win_FlipCardAssist", true)
		DlgApi.SetDialogPosition ("Win_FlipCardAssist", DialogPos.x, DialogPos.y)
	end
	if objName == "TextArea_assist" then
		local posX , posY = GameApi.GetCursorPos()
		local NpcID = DlgApi.GetItemLink (self.this, "TextArea_assist", posX, posY)
		if NpcID ~= nil then
			GameApi.BeginAutoSearchPath(NpcID)
		end
	end
end

function Win_FlipCardAssist:OnMOUSEMOVE()
	local posX, posY = GameApi.GetCursorPos()
	local result = DlgApi.GetItemLink(self.this, "TextArea_assist", posX, posY)
		if result == nil then
			GameApi.ScriptChangeCursor(0)
		else
			GameApi.ScriptChangeCursor(14)
		end
	return true
end

_G.Win_FlipCardAssist = Win_FlipCardAssist
