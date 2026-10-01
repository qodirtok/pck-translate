local PLUN = function (v) return v or true end
--local PLUN = loadfile "test/plun.lua" "script/interfaces/questminion.lua"

local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

local Win_QuestMinion = DlgTemplate:new({this = "Win_QuestMinion"})

function Win_QuestMinion:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
end

function Win_QuestMinion:ShowDialog()
	DlgApi.ShowItem(self.this, "Gfx_MouseClick", false)
	DlgApi.ShowItem(self.this, "Gfx_MouseClick2", false)
end

function Win_QuestMinion:OnLButtonDown(objName)
	if objName == "text" then
		DlgApi.ShowItem(self.this, "Gfx_MouseClick", false)
		DlgApi.ShowItem(self.this, "Gfx_MouseClick2", false)
	end
end

_G.Win_QuestMinion = PLUN(Win_QuestMinion, "Win_QuestMinion")

