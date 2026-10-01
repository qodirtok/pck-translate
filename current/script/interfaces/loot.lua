加入此行禁用脚本



local Dlp = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local Format = string.format

Win_Loot = Dlp:new({this = "Win_Loot"})


--定义nowpage为loot包裹的当前页数，每页3个物品栏，初始显示第一页
--定义nowitem为当前处理的包裹内物品次序
local nowpage = 0
local nowitem = 0
	
function Win_Loot:Init()
    self:RegisterEvent("IDCANCEL", self.OnClose);
    self:RegisterEvent("Btn_Close", self.OnClose);
    self:RegisterEvent("Btn_PageUp", self.OnPageUp);
    self:RegisterEvent("Btn_PageDown", self.OnPageDown);
    --暂定右键点击图标拾取物品
    self:RegisterEvent(WM_RBUTTONDOWN, self.OnRButtonDown);
end

--向前翻页按钮，每次翻页nowpage减1
function Win_Loot:OnPageUp()
	if nowpage > 0 then
		nowpage = nowpage - 1;
	end
end

--向后翻页按钮，每次翻页nowpage加1
function Win_Loot:OnPageDown()
	--定义num为loot包裹内的物品数量
	local lootitem = GameApi.GetPackInfo();
	local num = lootitem.lootpack_size;
	if (nowpage + 1) * 3 < num then
		nowpage = nowpage + 1;
	end
end

--右键点击图标拾取物品
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
	--定义num为loot包裹内的物品数量
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

