local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_TitleGuide = DlgTemplate:new({this = "Win_TitleGuide"})


--初始化--


function Win_TitleGuide:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
end

function Win_TitleGuide:ShowDialog()
	GameApi.CovertTextArea(self.this, "Txt_TextArea", TitleGuide[1].text)
	--DlgApi.SetImageFile(self.this, "Img_Image", "CB\\图片\\护卫指引图片\\指引标题图.tga", 1)
end
--------------------------------------------------------------------
--[[护卫百科全卷用表
--]]
--插入文字和图--

function Win_TitleGuide:OnLButtonDown(objName)
--	for i = 1 , 9 do
--		if objName == "Btn_" .. tostring(i) then
--			GameApi.CovertTextArea(self.this, "Txt_TextArea", TitleGuide[i].text)
--			--DlgApi.SetImageFile(self.this, "Img_Image", TitleGuide[i].image, 1)
--		end
--	end
	if objName == "Txt_TextArea" then
		local posx2, posy2 = GameApi.GetCursorPos()
	NpcID = DlgApi.GetItemLink(self.this, "Txt_TextArea", posx2, posy2)
	if NpcID ~= nil then
	   GameApi.BeginAutoSearchPath(NpcID)
	 end
	end
end

--------------------------------------------
--鼠标移动
--------------------------------------------
function Win_TitleGuide:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_TextArea", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end

 TitleGuide={}

TitleGuide[1] = {text="现在初阶称号除任务获取外，^ff0000英雄级^ffffff玩家可前往赤壁各军大营，找到称号兑换使。\r通过#66208#到达赤壁大营，找到各国称号兑换官。\r魏国-#74897#。\r蜀国-#74898#。\r吴国-#74899#。\r使用赤壁铜币兑换获得。\r可通过赤壁日常任务，委托任务获得赤壁铜币，每个初阶称号需要一个赤壁铜币。\r"}



