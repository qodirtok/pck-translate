加入此行禁用脚本



local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local Format = string.format

Win_Character= DlgTemplate:new({this = "Win_Character"})

function Win_Character:Init()
    
    self:RegisterEvent("Btn_TitleDown", self.OnTitleDown);
    self:RegisterEvent("Btn_ManaDown", self.OnManaDown);
    self:RegisterEvent("Btn_Credit", self.OnCredit);
    self:RegisterEvent("Btn_TitleBox", self.OnTitleBox);
end

function Win_Character:OnTitleDown()
	  DlgApi.ShowDialog("Win_TitleExp", true);
end

function Win_Character:OnManaDown()
	  DlgApi.ShowDialog("Win_Character_Mana_Help", true);
end

function Win_Character:OnCredit()
	  DlgApi.ShowDialog("Win_Credit_Help", true);
end

function Win_Character:OnTitleBox()
	  DlgApi.ShowDialog("Win_TitleBox", true);
end

function Win_Character:Tick()
   local ret = GameApi.GetPlayerFullProp(0);
   DlgApi.SetItemText(self.this, "Txt_Name", ret.name);
   DlgApi.SetItemText(self.this, "Txt_HP", Format("%d/%d", ret.hp, ret.maxhp));
   DlgApi.SetItemText(self.this, "Txt_MP", Format("%d/%d", ret.mp1, ret.maxmp1));
   DlgApi.SetItemText(self.this, "Txt_PK", Format("%d", ret.pklevel));
   DlgApi.SetItemText(self.this, "Txt_Damage", Format("%d-%d", ret.damage_low, ret.damage_high));
   DlgApi.SetItemText(self.this, "Txt_Defense", Format("%d", ret.defence));
   DlgApi.SetItemText(self.this, "Txt_Critical", Format("%d", ret.crit_rate));
   DlgApi.SetItemText(self.this, "Txt_CriticalDamage", Format("%d", ret.crit_damage));
   DlgApi.SetItemHint(self.this, "Img_StunRes", Format("眩晕抗性：%d", ret.resistance1));
   DlgApi.SetItemHint(self.this, "Img_SilenceRes", Format("沉默抗性：%d", ret.resistance2));
   DlgApi.SetItemHint(self.this, "Img_WeaknessRes", Format("虚弱抗性：%d", ret.resistance3));
   DlgApi.SetItemHint(self.this, "Img_SleepRes", Format("迟缓抗性：%d", ret.resistance4));
   DlgApi.SetItemHint(self.this, "Img_EnlaceRes", Format("定身抗性：%d", ret.resistance5));
   local i
   for i = 0, SIZE_EQUIPIVTR-1 do
	    local name = Format("Equip_%02d", i);
	    GameApi.SetIcon(self.this, name, ICON_TYPE_EQUIPPACK, i);
	 end
end
