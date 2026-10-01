local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

local Win_CharacterRiding = DlgTemplate:new({this = "Win_CharacterRiding"})


function Win_CharacterRiding:Init()
	self:RegisterEvent("Lab_Tips", self.OnHelp)
end

function Win_CharacterRiding:ShowDialog()

end

function Win_CharacterRiding:OnHelp()
	DlgApi.ShowDialog ("Win_RidHelp", true)
end

_G.Win_CharacterRiding = Win_CharacterRiding
