local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

local Win_CharacterPosition = DlgTemplate:new({this = "Win_CharacterPosition"})

function Win_CharacterPosition:Init()
	self:RegisterEvent("Btn_Help", self.OnHelp)
end

function Win_CharacterPosition:ShowDialog()

end

function Win_CharacterPosition:OnHelp()
	local DialogPos = DlgApi.GetItemRect(self.this, "Img_Frame2")
	DlgApi.ShowDialog (self.this, false)
	DlgApi.ShowDialog ("Win_CharacterPositionHelp", true)
	DlgApi.SetDialogPosition ("Win_CharacterPositionHelp", DialogPos.x, DialogPos.y)
end

_G.Win_CharacterPosition = Win_CharacterPosition
