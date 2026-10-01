local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

local Win_CharacterPositionHelp = DlgTemplate:new({this = "Win_CharacterPositionHelp"})

function Win_CharacterPositionHelp:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE)
end

function Win_CharacterPositionHelp:ShowDialog()
	GameApi.CovertTextArea (self.this, "Txt_Content", PositionHelp)
end

function Win_CharacterPositionHelp:OnLButtonDown(objName)
	if objName == "Btn_Position" then
		local DialogPos = DlgApi.GetItemRect(self.this, "Img_Frame2")
		DlgApi.ShowDialog (self.this, false)
		DlgApi.ShowDialog ("Win_CharacterPosition", true)
		DlgApi.SetDialogPosition ("Win_CharacterPosition", DialogPos.x, DialogPos.y)
	end
	if objName == "Txt_Content" then
		local posX , posY = GameApi.GetCursorPos()
		local NpcID = DlgApi.GetItemLink (self.this, "Txt_Content", posX, posY)
		if NpcID ~= nil then
			GameApi.BeginAutoSearchPath(NpcID)
		end
	end
end

function Win_CharacterPositionHelp:OnMOUSEMOVE()
	local posX, posY = GameApi.GetCursorPos()
	local result = DlgApi.GetItemLink(self.this, "Txt_Content", posX, posY)
		if result == nil then
			GameApi.ScriptChangeCursor(0)
		else
			GameApi.ScriptChangeCursor(14)
		end
	return true
end

_G.Win_CharacterPositionHelp = Win_CharacterPositionHelp
