local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_TradeCharGuide = DlgTemplate:new({this = "Win_TradeCharGuide"})

function Win_TradeCharGuide:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
end

function Win_TradeCharGuide:ShowDialog()
	GameApi.CovertTextArea(self.this, "Txt_TextArea", TradeCharGuide[1])
	DlgApi.CheckRadioButton(self.this, 1, 1)
end

function Win_TradeCharGuide:OnLButtonDown(objName)
	for i = 1, 3 do
		if objName == "Btn_" .. i then
			GameApi.CovertTextArea(self.this, "Txt_TextArea", TradeCharGuide[i])
		end
	end
	if objName == "Btn_TradeNet" then
		GameApi.OpenHttpAddress( "http://www.xunbao178.com/chb" ) -- 寻宝网赤壁主页
	end
end


