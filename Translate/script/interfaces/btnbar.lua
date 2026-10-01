local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local Format = string.format

Win_BtnBar = DlgTemplate:new({this = "Win_BtnBar"})
--------------------------------------------
-- Interface Initialization
--------------------------------------------
function Win_BtnBar:Init()
	self:RegisterEvent("Btn_Conformity", self.OnConformity);
	self:RegisterEvent("Btn_EventMain", self.OnEventMain);
end
--------------------------------------------
-- Open Help Interface
--------------------------------------------
function Win_BtnBar:OnConformity()
	  local isshow1 = DlgApi.IsDialogShow("Win_LevelTip");
	  local isshow2 = DlgApi.IsDialogShow("Win_LevelHelp3");
	if isshow1 or isshow2 then
	  DlgApi.ShowDialog("Win_LevelTip", false);
	  DlgApi.ShowDialog("Win_LevelHelp3", false);
	else
	  DlgApi.ShowDialog("Win_LevelTip", true);
	  Win_LevelTip:OnInit()
	end
end

function Win_BtnBar:OnEventMain()
	  local isshow = DlgApi.IsDialogShow("Win_EventMain");
	  DlgApi.ShowDialog("Win_EventMain", not isshow);
end

