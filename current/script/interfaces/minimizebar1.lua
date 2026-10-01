加入此行禁用脚本

local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local Format = string.format

Win_Main= DlgTemplate:new({this = "Win_Main"})

function Win_Main:Init()
    
    self:RegisterEvent("Btn_Action", self.OnAction);
    self:RegisterEvent("Btn_Produce", self.OnProduce);
    self:RegisterEvent("Btn_Character", self.OnCharacter);
    self:RegisterEvent("Btn_Skill", self.OnSkill);
    self:RegisterEvent("Btn_Inventory", self.OnInventory);
    self:RegisterEvent("Btn_Quest", self.OnQuest);
    self:RegisterEvent("Btn_Friend", self.OnFriend);
    self:RegisterEvent("Btn_QShop", self.OnQShop);
    self:RegisterEvent("Btn_System", self.OnSystem);
end

function Win_Main:OnProduce()
	  local isshow = DlgApi.IsDialogShow("Win_Produce");
	  DlgApi.ShowDialog("Win_Produce", not isshow);
end

function Win_Main:OnAction()
	  local isshow = DlgApi.IsDialogShow("Win_Action");
	  DlgApi.ShowDialog("Win_Action", not isshow);
end

function Win_Main:OnCharacter()
	  local isshow = DlgApi.IsDialogShow("Win_Character");
	  DlgApi.ShowDialog("Win_Character", not isshow);
end

function Win_Main:OnSkill()
	  local isshow = DlgApi.IsDialogShow("Win_SkillBook");
	  DlgApi.ShowDialog("Win_SkillBook", not isshow);
end

function Win_Main:OnInventory()
	  local isshow = DlgApi.IsDialogShow("Win_Inventory");
	  DlgApi.ShowDialog("Win_Inventory", not isshow);
	  DlgApi.ShowDialog("Win_Equipment", not isshow);
end

function Win_Main:OnQuest()
	  local isshow = DlgApi.IsDialogShow("Win_Quest");
	  DlgApi.ShowDialog("Win_Quest", not isshow);
end

function Win_Main:OnFriend()
	  local isshow = DlgApi.IsDialogShow("Win_FriendList");
	  DlgApi.ShowDialog("Win_FriendList", not isshow);
end

function Win_Main:OnQShop()
	  local isshow = DlgApi.IsDialogShow("Win_QShop");
	  DlgApi.ShowDialog("Win_QShop", not isshow);
end

function Win_Main:OnSystem()
	  local isshow = DlgApi.IsDialogShow("Win_Main3");
	  DlgApi.ShowDialog("Win_Main3", not isshow);
end
