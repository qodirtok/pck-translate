local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_PetMan= DlgTemplate:new({this = "Win_PetMan"})

function Win_PetMan:Init()
	DlgApi.ShowItem(self.this, "Gfx_Summon", false)
	DlgApi.ShowItem(self.this, "Gfx_Levelup", false)
    self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	--DlgApi.ShowItem(self.this, "Gfx_Plus", false)
end

function Win_PetMan:OnLButtonDown(objName)
	if objName == "Btn_PetGuide" then
		DlgApi.ShowDialog("Win_PetGuide", true)
	end
end
