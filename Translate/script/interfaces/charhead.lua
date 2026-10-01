local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local Format = string.format


Win_CharHead= DlgTemplate:new({this = "Win_CharHead"})

function Win_CharHead:Init()
    self:RegisterEvent("Btn_Close", self.OnClose);
    self:RegisterEvent("Chk_HeadHP", self.OnHeadBar);
    self:RegisterEvent("Chk_HeadMP", self.OnHeadBar);
    self:RegisterEvent("Chk_HeadEXP", self.OnHeadBar);
    self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown);
    self:RegisterEvent("Btn_Conformity", self.OnConformity);
    self:RegisterEvent("Btn_Conformity2", self.OnConformity2);
	DlgApi.ShowItem(self.this, "Btn_Conformity2", false)
	DlgApi.ShowItem(self.this, "Img_Conformity2", false)
	DlgApi.ShowItem(self.this, "Gfx_PetHeadMini", false)
	DlgApi.ShowItem(self.this, "Gfx_Pointer", false)
end

function Win_CharHead:ShowDialog()
	DlgApi.ShowItem(self.this, "Img_ShipScore", false)
	if DlgApi.IsItemShow("Win_CharHead", "Btn_ShipScore") then
	end
end

function Win_CharHead:Tick()
	local ret = GameApi.GetPlayerBasicProp(0)
	if  ret.level == 81 then
		Win_CharHead: CloseConformity()
	end

	--In the Battle of Chibi map, after the warship info interface is closed, the warship info button flashes
	if DlgApi.IsDialogShow("Win_BattleScore5") == false and DlgApi.IsItemShow(self.this, "Btn_ShipScore") then
		DlgApi.ShowItem(self.this, "Img_ShipScore", true)
	end

    --Leave the Chibi map to close the warship info interface
	if not DlgApi.IsItemShow(self.this, "Btn_ShipScore") then
		DlgApi.ShowDialog("Win_BattleScore5", false)
	end
end

function Win_CharHead:OnConformity()
	local isshow = DlgApi.IsDialogShow("Win_LevelTipNew")
	--local isshow2 = DlgApi.IsDialogShow("Win_LevelHelp1")
	--if isshow2 == false then
		--DlgApi.ShowDialog("Win_LevelTipNew", not isshow1)
	--else
		--DlgApi.ShowDialog("Win_LevelHelp1", not isshow2)
	--end
	
	if isshow == false then
		DlgApi.ShowDialog("Win_LevelTipNew", not isshow)
	end
	
	Win_CharHead: CloseConformity()
end

function Win_CharHead:OnConformity2()
	--local isshow2 = DlgApi.IsDialogShow("Win_LevelHelp1")
	local isshow = DlgApi.IsDialogShow("Win_LevelTipNew")
	--local ret = GameApi.GetPlayerBasicProp(0)
--if ret.level == 80 then
		--DlgApi.ShowDialog("Win_LevelHelp1", not isshow2)
	--else
	
	DlgApi.ShowDialog("Win_LevelTipNew", not isshow)
	
	Win_CharHead: CloseConformity()
end

function Win_CharHead: CloseConformity()
	DlgApi.ShowItem(self.this, "Btn_Conformity2", false)
	DlgApi.ShowItem(self.this, "Img_Conformity2", false)
	DlgApi.ShowItem(self.this, "Btn_Conformity", true)
end
--[[
function Win_CharHead:OnClose()
	  DlgApi.ShowDialog("Win_CharHeadClose", true);
	  DlgApi.ShowDialog("Win_CharHead", false);
end

function Win_CharHead:OnHeadBar()
	  local chkhp = DlgApi.IsItemChecked(self.this, "Chk_HeadHP");
	  local chkmp = DlgApi.IsItemChecked(self.this, "Chk_HeadMP");
	  local chkexp = DlgApi.IsItemChecked(self.this, "Chk_HeadEXP");
	  local opt;
	  opt = {headhp = chkhp, headmp = chkmp, headexp = chkexp};
	  GameApi.SetHeadBarOption(opt);
end

function Win_CharHead:OnLButtonDown(name)
    if name == "Img_Head" then
        local id = GameApi.GetSelfID();
	      GameApi.SelectTarget(id);
	  end
end

function Win_CharHead:Tick()
   local ret = GameApi.GetPlayerBasicProp(0);
   DlgApi.SetItemText(self.this, "Txt_Name", ret.name);
   DlgApi.SetProgress(self.this, "Prgs_HP", ret.hp / ret.maxhp);
   DlgApi.SetProgress(self.this, "Prgs_MP", ret.mp1 / ret.maxmp1);
   DlgApi.SetProgress(self.this, "Prgs_AP", ret.mp2 / ret.maxmp2);
   DlgApi.SetItemText(self.this, "Txt_HP", Format("%d/%d", ret.hp, ret.maxhp));
   DlgApi.SetItemText(self.this, "Txt_MP", Format("%d/%d", ret.mp1, ret.maxmp1));
   DlgApi.SetItemText(self.this, "Txt_LV", Format("%d", ret.level));
   GameApi.SetHostPortrait(self.this, "Img_Head");
end
--]]
