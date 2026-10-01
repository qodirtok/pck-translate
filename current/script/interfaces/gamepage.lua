local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_GamePage = DlgTemplate:new({this = "Win_GamePage"})

function Win_GamePage:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	DlgApi.ShowItem (self.this, "Gfx_1", false)
	DlgApi.ShowItem (self.this, "Txt_1", false)
end

function Win_GamePage:ShowDialog()
	DlgApi.CheckRadioButton (self.this, 1, 2)
end

--[[function Win_GamePage:OnLButtonDown (objName)
	if objName == "Rdo_3" then
		DlgApi.ShowItem (self.this, "Gfx_1", false)
		DlgApi.ShowItem (self.this, "Txt_1", false)
	end
end
--]]
