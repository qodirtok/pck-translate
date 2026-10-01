local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_HelpLV60 = DlgTemplate:new({this = "Win_HelpLV60"})


--初始化--


function Win_HelpLV60:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
end


function Win_HelpLV60:ShowDialog()
	GameApi.CovertTextArea(self.this, "Text_1", HelpText60[1].text)
	--DlgApi.SetImageFile(self.this, "Img_Image", "CB\\图片\\护卫指引图片\\指引标题图.tga", 1)
end
--------------------------------------------------------------------
--[[护卫百科全卷用表
--]]
--插入文字和图--

function Win_HelpLV60:OnLButtonDown(objName)
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
function Win_HelpLV60:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Text_1", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end

HelpText60={}

HelpText60[1] = {text="Main Quest: Now you can use #23030# to travel to the Snow Realm of Sorrow, explore new maps, and discover new stories.\r\rTavern Quests: After reaching the Snow Realm, find #21329# or other tavern owners to complete Tavern Quests for EXP and token rewards. Tavern Quests can be completed repeatedly.\r\rMarriage Quest: Find #24529# to purchase items needed for marriage, then find #27503# to complete the quest. Can be completed 4 times daily.\r\rPeach Garden Emergency: Daily at 14:00, 16:00, 18:00, 20:00, 22:00, find #72651# to complete the Peach Garden quest for massive EXP.\r\rHero Mysterious Stone: After 12:00 daily, find #26447# to claim Hero Mysterious Stones and complete quests for rich rewards.\r\r"}


--"In addition to quest acquisition, ^ff0000Hero-level^ffffff players can visit the Chibi military camps to find the Title Exchange Envoy.\rUse #66208# to reach Chibi Camp and find the Title Exchange Officer for each kingdom.\rKingdom of Wei - #74897#.\rKingdom of Shu - #74898#.\rKingdom of Wu - #74899#.\rExchange using Chibi Bronze Coins.\rEarn Chibi Bronze Coins through Chibi Daily Quests and Commissioned Quests. Each Tier-1 title requires one Chibi Bronze Coin.\r"



