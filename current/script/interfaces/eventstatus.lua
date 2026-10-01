local PLUN = function (v) return v or true end
--local PLUN = loadfile "test/plun.lua" "script/interfaces/questminion.lua"

local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local instance = 0

Win_EventStatus = DlgTemplate:new({this = "Win_EventStatus"})

function Win_EventStatus:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	--self:RegisterEvent(WM_MOUSEMOVE, OnMOUSEMOVE)

end


--1050\1099对应events.txt文件中的InstanceID
function Win_EventStatus:SetWorldID(worldID)
	instance = worldID
	if worldID <1050 or worldID > 1099 then  --在如下id条件下，不会显示界面上的两个按钮。
		DlgApi.ShowItem (self.this, "Btn_HelpEvent1", false)
		DlgApi.ShowItem (self.this, "Btn_HelpEvent2", false)
	end
end

function Win_EventStatus:OnLButtonDown(objName)      --控制按钮打开的界面
	if instance ~= 0 then
		if objName == "Btn_HelpEvent1" then
			DlgApi.ShowDialog("Win_HelpEvent1", true)
		elseif objName == "Btn_HelpEvent2" then
			DlgApi.ShowDialog("Win_HelpEvent2", true)
		end
	end
end
