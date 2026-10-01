local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_HelpLV71 = DlgTemplate:new({this = "Win_HelpLV71"})


--初始化--


function Win_HelpLV71:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
end


function Win_HelpLV71:ShowDialog()
	GameApi.CovertTextArea(self.this, "Text_1", HelpText71[1].text)
	--DlgApi.SetImageFile(self.this, "Img_Image", "CB\\图片\\护卫指引图片\\指引标题图.tga", 1)
end
--------------------------------------------------------------------
--[[护卫百科全卷用表
--]]
--插入文字和图--

function Win_HelpLV71:OnLButtonDown(objName)
--	for i = 1 , 9 do
--		if objName == "Btn_" .. tostring(i) then
--			GameApi.CovertTextArea(self.this, "Txt_TextArea", TitleGuide[i].text)
--			--DlgApi.SetImageFile(self.this, "Img_Image", TitleGuide[i].image, 1)
--		end
--	end
	if objName == "Text_1" then
		local posx2, posy2 = GameApi.GetCursorPos()
	NpcID = DlgApi.GetItemLink(self.this, "Text_1", posx2, posy2)
	if NpcID ~= nil then
	   GameApi.BeginAutoSearchPath(NpcID)
	 end
	end
end

--------------------------------------------
--鼠标移动
--------------------------------------------
function Win_HelpLV71:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Text_1", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end

HelpText71={}

HelpText71[1] = {text="主线任务：现在你可以通过#23030#前往楼兰沙海，探索新的地图，发现新的故事。\r\r酒馆任务：达到沙海后，找到#21352#，或其他酒馆的老板，完成酒馆任务，获得经验和代币奖励。酒馆任务可重复完成。\r\r和亲任务：找到#24529#，购买和亲所需的物品，找到#27505#，完成和亲任务，每日可完成四次。\r\r桃园告急：每日14:00、16:00、18:00、20:00、22:00、找到#72651#，完成桃园任务，获得海量经验。\r\r英雄玄石：每日12点后，找到#26447#，领取英雄玄石，完成任务获得丰富奖励。\r\r"}


--"现在初阶称号除任务获取外，^ff0000英雄级^ffffff玩家可前往赤壁各军大营，找到称号兑换使。\r通过#66208#到达赤壁大营，找到各国称号兑换官。\r魏国-#74897#。\r蜀国-#74898#。\r吴国-#74899#。\r使用赤壁铜币兑换获得。\r可通过赤壁日常任务，委托任务获得赤壁铜币，每个初阶称号需要一个赤壁铜币。\r"



