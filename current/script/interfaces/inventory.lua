local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

local ItemName
Win_Inventory = DlgTemplate:new({this = "Win_Inventory"})

function Win_Inventory:Init()
		self:RegisterEvent(LEVT_FIRST_OPEN_PACK,	self.ShowGuide)
		DlgApi.ShowItem(self.this, "Gfx_1", false)
end


function Win_Inventory:Tick(deltaTime)
     ItemName=GameApi.GetControlNameByItemid(30895)

		 if ItemName ==nil then
		    ItemName=GameApi.GetControlNameByItemid(30893)
		 end
	if DlgApi.IsItemShow(self.this, "Gfx_1") then
		local WinPosSwitch = DlgApi.GetItemRect(self.this, ItemName, true)
		DlgApi.SetItemPos(self.this, "Gfx_1", WinPosSwitch.x+20, WinPosSwitch.y+30)
	end
end

function Win_Inventory:ShowGuide(event)
		 DlgApi.ShowItem ("Win_Main", "Gfx_1", false ) --12 打开包裹后隐藏光效
		 DlgApi.ShowItem (self.this, "Gfx_1", true )  --13  显示按钮提示498494984
		 ItemName=GameApi.GetControlNameByItemid(30895)

		 if ItemName ==nil then
		    ItemName=GameApi.GetControlNameByItemid(30893)
		 end

	   local ItemPos = DlgApi.GetItemRect(self.this, ItemName, true)
		 DlgApi.SetItemPos(self.this, "Gfx_1", ItemPos.x+20, ItemPos.y+30)
end
