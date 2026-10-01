local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local opennum = 0

Win_WorldMap = DlgTemplate:new({this = "Win_WorldMap"})

-----------------------------------
-- Interface Initialization
-----------------------------------
function Win_WorldMap:Init()
self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown);
self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
self:RegisterEvent("Btn_MapInfo", self.OnInfo);
end

-----------------------------------
-- Interface Open
-----------------------------------
function Win_WorldMap:ShowDialog()
	if DlgApi.IsItemShow(self.this,"Btn_MapInfo") then
		if DlgApi.IsItemShow(self.this,"Btn_Traffic") or DlgApi.IsItemShow(self.this,"Lab_Base4") then
			DlgApi.ShowItem(self.this,"Btn_MapInfo", false)
		else
			DlgApi.ShowItem(self.this,"Btn_MapInfo", true)
		end
	end
end

function Win_WorldMap:Tick()

end
-----------------------------------
--打开NPC列表
-----------------------------------
function Win_WorldMap:OnInfo()
	local isshow1 = DlgApi.IsItemShow(self.this,"Edt_NpcList")
	local isshow2 = DlgApi.IsItemShow(self.this,"Tree_NpcList")
	if DlgApi.IsItemShow(self.this,"Tree_NpcList") then
		DlgApi.SetItemText(self.this, "Btn_MapInfo", "地图信息")
	else
		DlgApi.SetItemText(self.this, "Btn_MapInfo", "关闭列表")
	end
	DlgApi.ShowItem(self.this,"Edt_NpcList", not isshow1)
	DlgApi.ShowItem(self.this,"Tree_NpcList", not isshow2)
end
