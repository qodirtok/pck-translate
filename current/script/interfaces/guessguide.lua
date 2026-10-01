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
	GameApi.CovertTextArea(self.this, "Txt_TextArea", "欢迎查看竞猜说明！")
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
GuessGuide[1] = {text="    竞技场竞猜是一项预测当周竞技场冠军的活动，活动的时间为每周六19：00至周日13：50，玩家可以在现有报名队伍中预测此次比赛的冠军队伍，冠军产生后，会根据竞猜规则分发最终的奖励，如果预测的队伍最终获得亚军或进入前四，同样会获得一定奖励。\r注意：请在周一维护前领取奖励。"}
--~ --该怎样竞猜
GuessGuide[2] = {text="    每周六玩家都会获得100点竞猜点数，竞猜点数是用来竞猜冠军的筹码，竞猜点数每周清零，不可累积。\r\r    玩家通过屏幕右侧的竞猜小图标打开竞猜界面，在竞猜开始后，可从队伍列表中选择下注的队伍，最多可选3支队伍，每队押注最少10点，最多60点。当冠军产生后，竞猜正确的玩家将会获得相应的阅历或历练值。\r"}
--~ --怎么样领奖
GuessGuide[3] = {text="    在每周竞技赛结束后，可通过竞猜界面中的领奖按钮领取阅历值，领奖将于周一维护时结束，未领取的奖励将被清除，请及时领取。如果押中冠军，更有几率领到神秘大奖。押中三四名赔率为1，亚军赔率为1.25，冠军的赔率根据最终结果由系统计算，但系统限制赔率范围为1.5-5倍\r"}
--~ --什么是赔率
GuessGuide[4] = {text="    本游戏中的赔率是指玩家押注后，每注所获得的收益比例。例如，玩家的赔率为2，则玩家下注10点后获得的收益为20点。注：系统会自动将收益点数转换为阅历或历练值。 \r"}

