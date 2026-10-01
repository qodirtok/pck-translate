local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_HelpLV67 = DlgTemplate:new({this = "Win_HelpLV67"})


--初始化--


function Win_HelpLV67:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
end


function Win_HelpLV67:ShowDialog()
	GameApi.CovertTextArea(self.this, "Text_1", HelpText67[1].text)
	--DlgApi.SetImageFile(self.this, "Img_Image", "CB\\图片\\护卫指引图片\\指引标题图.tga", 1)
end
--------------------------------------------------------------------
--[[护卫百科全卷用表
--]]
--插入文字和图--

function Win_HelpLV67:OnLButtonDown(objName)
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
function Win_HelpLV67:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Text_1", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end

HelpText67={}

HelpText67[1] = {text="主线任务：现在你可以通过#23030#前往留芳幽谷，探索新的地图，发现新的故事。\r\r酒馆任务：达到幽谷后，找到#19531#，或其他酒馆的老板，完成酒馆任务，获得经验和代币奖励。酒馆任务可重复完成。\r\r和亲任务：找到#24529#，购买和亲所需的物品，找到#27504#，完成和亲任务，每日可完成四次。\r\r桃园告急：每日14:00、16:00、18:00、20:00、22:00、找到#72651#，完成桃园任务，获得海量经验。\r\r英雄玄石：每日12点后，找到#26447#，领取英雄玄石，完成任务获得丰富奖励。\r\r"}


--"In addition to quest acquisition, ^ff0000Hero-level^ffffff players can visit the Chibi military camps to find the Title Exchange Envoy.\rUse #66208# to reach Chibi Camp and find the Title Exchange Officer for each kingdom.\rKingdom of Wei - #74897#.\rKingdom of Shu - #74898#.\rKingdom of Wu - #74899#.\rExchange using Chibi Bronze Coins.\rEarn Chibi Bronze Coins through Chibi Daily Quests and Commissioned Quests. Each Tier-1 title requires one Chibi Bronze Coin.\r"



