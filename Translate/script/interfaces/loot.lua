Disable script by joining this line



local Dlp = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local Format = string.format

Win_Loot = Dlp:new({this = "Win_Loot"})


-- Define nowpage as current page of loot inventory, 3 item slots per page, initially showing page 1
-- Define nowitem as current item order in inventory
local nowpage = 0
local nowitem = 0
	
function Win_Loot:Init()
    self:RegisterEvent("IDCANCEL", self.OnClose);
    self:RegisterEvent("Btn_Close", self.OnClose);
    self:RegisterEvent("Btn_PageUp", self.OnPageUp);
    self:RegisterEvent("Btn_PageDown", self.OnPageDown);
    -- Provisionally right-click icon to pick up item
    self:RegisterEvent(WM_RBUTTONDOWN, self.OnRButtonDown);
end

-- Previous page button, decrements nowpage by 1 each time
function Win_Loot:OnPageUp()
	if nowpage > 0 then
		nowpage = nowpage - 1;
	end
end

-- Next page button, increments nowpage by 1 each time
function Win_Loot:OnPageDown()
	-- Define num as item count in loot inventory
	local lootitem = GameApi.GetPackInfo();
	local num = lootitem.lootpack_size;
	if (nowpage + 1) * 3 < num then
		nowpage = nowpage + 1;
	end
end

-- Right-click icon to pick up item
function Win_Loot:OnRButtonDown(name)
    for i = 0, 2 do
    	local itemname = Format("Item_%d", i + 1);
  		nowitem = nowpage * 3 + i;
    	if name == itemname then
	   		GameApi.LootPickUp(nowitem);
      end
	  end
end

--关闭按钮
function Win_Loot:OnClose()
	DlgApi.ShowDialog("Win_Loot", false);
	GameApi.LootClose(); 
end

function Win_Loot:ShowDialog()
	nowpage = 0;
end

function Win_Loot:Tick()
	-- Define num as item count in loot inventory
	local lootitem = GameApi.GetPackInfo();
	local num = lootitem.lootpack_size;
	
	if nowpage > 0 then
		DlgApi.ShowItem(self.this, "Btn_PageUp", true);
	else
		DlgApi.ShowItem(self.this, "Btn_PageUp", false);
	end
	if (nowpage + 1) * 3 < num then
		DlgApi.ShowItem(self.this, "Btn_PageDown", true);
	else
		DlgApi.ShowItem(self.this, "Btn_PageDown", false);
	end
	
	--显示当前页数
	DlgApi.SetItemText(self.this, "Lab_Page", Format("第%d页", nowpage + 1));
	--根据当前页数及物品是否被拾取显示战利品图标
	for k = 0, 2 do
		local itemname = Format("Item_%d", k + 1);
		nowitem = nowpage * 3 + k;
		GameApi.SetIcon(self.this, itemname , ICON_TYPE_LOOTPACK, nowitem);
	end
end

