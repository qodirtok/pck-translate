local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_GuessGuide = DlgTemplate:new({this = "Win_GuessGuide"})

--初始化--

function Win_GuessGuide:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
end

function Win_GuessGuide:ShowDialog()
	GameApi.CovertTextArea(self.this, "Txt_TextArea", "Welcome to the Betting Guide!")
	--DlgApi.SetImageFile(self.this, "Img_Image", "CB\\图片\\护卫指引图片\\指引标题图.tga", 1)
end
--------------------------------------------------------------------
--[[护卫百科全卷用表
--]]
--插入文字和图--

function Win_GuessGuide:OnLButtonDown(objName)
	for i = 1 , 9 do
		if objName == "Btn_" .. tostring(i) then
			GameApi.CovertTextArea(self.this, "Txt_TextArea", GuessGuide[i].text)
			--DlgApi.SetImageFile(self.this, "Img_Image", GuessGuide[i].image, 1)
		end
	end
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
function Win_GuessGuide:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_TextArea", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end

 GuessGuide={}
--~ --什么是竞技场竞赛活动
GuessGuide[1] = {text="    Arena Betting is an activity where you predict the weekly arena champion. The event runs from Saturday 19:00 to Sunday 13:50. You can predict the champion among the registered teams. After the champion is determined, final rewards will be distributed according to the betting rules. If your predicted team finishes as runner-up or in the top 4, you will also receive rewards.\rNote: Please claim rewards before Monday maintenance."}
--~ --该怎样竞猜
GuessGuide[2] = {text="    Every Saturday, players receive 100 betting points. Betting points are the chips used to bet on the champion. Betting points reset weekly and cannot be accumulated.\r\r    Open the betting interface by clicking the betting icon on the right side of the screen. After betting opens, select teams from the list to place your bets. You can choose up to 3 teams, with a minimum bet of 10 points and maximum of 60 points per team. After the champion is determined, players who bet correctly will receive corresponding EXP or Training Points.\r"}
--~ --怎么样领奖
GuessGuide[3] = {text="    After each weekly arena competition ends, you can claim EXP values through the Claim Rewards button in the betting interface. Claiming ends at Monday maintenance, and unclaimed rewards will be cleared. Please claim in time. If you bet on the champion, you have a chance to receive a mystery grand prize. Betting on 3rd or 4th place has odds of 1, runner-up has odds of 1.25. Champion odds are calculated by the system based on final results, but the system limits odds to 1.5-5x.\r"}
--~ --什么是赔率
GuessGuide[4] = {text="    In this game, odds refer to the return ratio per bet after placing a wager. For example, if your odds are 2, a 10-point bet will yield 20 points in return. Note: The system automatically converts return points into EXP or Training Values. \r"}

