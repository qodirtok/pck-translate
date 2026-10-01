local PLUN = function (v) return v or true end
--local PLUN = loadfile "test/plun.lua" "script/interfaces/questminion.lua"

local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

local Win_BoardMain = DlgTemplate:new({this = "Win_BoardMain"})

function Win_BoardMain:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, OnMOUSEMOVE)
end

function Win_BoardMain:ShowDialog()
	GameApi.SetSubDialog (self.this, "Sub_Area", "Win_Board1")
	DlgApi.CheckRadioButton (self.this, 1, 1)
--	DlgApi.ShowItem (self.this, "Gfx_BoardMain",false)
end

function Win_BoardMain:OnLButtonDown(objName)
	for i = 1, 8 do
		if objName == "Btn_" .. i then
			if i == 8 then
				DlgApi.ShowDialog(self.this, false)
			else
				GameApi.SetSubDialog (self.this, "Sub_Area", "Win_Board" .. i)
			end
		end
	end
	if objName == "Sub_Area" then
		local posX, posY = GameApi.GetCursorPos()
		local npcID = DlgApi.GetItemLink (self.this, "Sub_Area", posX, posY)
		if npcID ~= nil then
			GameApi.BeginAutoSearchPath(NpcID)
		end
	end
end

function Win_BoardMain:OnMOUSEMOVE()
	local posX, posY = GameApi.GetCursorPos()
	local result = DlgApi.GetItemLink(self.this, "Sub_Area", posX, posY)
		if result == nil then
			GameApi.ScriptChangeCursor(0)
		else
			GameApi.ScriptChangeCursor(14)
		end
	return true
end

_G.Win_BoardMain = PLUN(Win_BoardMain, "Win_BoardMain")
