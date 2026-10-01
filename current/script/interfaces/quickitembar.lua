local UIManTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_QuickItemBar = DlgTemplate:new({this = "Win_QuickItemBar"});

local IdList = {1745,1746,1750,1754, 50625, 64626, 64628, 1754, 3297, 50642, 72301, 3340}
function Win_QuickItemBar:ShowQuestItem(id)
	for k, v in ipairs(IdList) do
		if id == v then
			return true
		end
	end
	return false
end
