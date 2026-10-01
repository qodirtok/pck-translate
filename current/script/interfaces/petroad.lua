local DlgTemplate = DlgTemplate
local DlgApi = DlgApi
local GameApi = GameApi

Win_PetRoad = DlgTemplate:new({this = "Win_PetRoad"})

function Win_PetRoad:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
end

function Win_PetRoad:OnLButtonDown(objName)
	if objName == "Btn_Pet" then
		DlgApi.ShowDialog("Win_PetHelp0", true)
		DlgApi.ShowDialog(self.this, false)
	end
end
