local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi

Win_CharHeadClose= DlgTemplate:new({this = "Win_CharHeadClose"})

function Win_CharHeadClose:Init()
    
    self:RegisterEvent("Btn_Close", self.OnClose);
end

function Win_CharHeadClose:OnClose()
	  DlgApi.ShowDialog("Win_CharHeadClose", false);
	  DlgApi.ShowDialog("Win_CharHead", true);
end
