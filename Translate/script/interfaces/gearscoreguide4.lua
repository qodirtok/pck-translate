local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_GearScoreGuide4 = DlgTemplate:new({this = "Win_GearScoreGuide4"})

--初始化--

function Win_GearScoreGuide4:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
end

function Win_GearScoreGuide4:ShowDialog()
	GameApi.CovertTextArea(self.this, "Txt_TextArea", "^ffffffYou can use the Escort Encyclopedia on the Escort interface to view detailed guidance.\r\r^ff6fb3How to Obtain an Escort:^ffffff\r\rAfter reaching Level 40, go to #69294# to accept Escort quests and obtain an Escort. Escort Attribute Enhancement: Escort reputation currently has six stages: Unknown, ^72fe00Slightly Known^ffffff, ^0184ffKnown Locally^ffffff, ^a800ffFamous^ffffff, ^ff7d2fWidely Renowned^ffffff, ^fff962Legendary^ffffff.\r\rHigher Escort reputation means stronger overall attributes and a higher chance of gaining superior aptitude during tendon shifting.\r\rEscorts whose reputation has not reached the top tier can use ^00ff00Book of War Merits^ffffff at #69417# in Chang’an Cloud Terrace to spend gold to increase their reputation.\r\r^ff6fb3Increase Rarity:^ffffff\r\rEscort rarity currently has five tiers: Ordinary, ^72fe00Hard to Obtain with Gold^ffffff, ^0184ffRare in a Century^ffffff, ^a800ffRare in a Millennium^ffffff不遇^ffffff、^ff7d2f万中挑一^ffffff五种。\r\r护卫的珍稀度越高，护卫的整体属性越好。\r\r珍稀度属于护卫的天生属性，目前不可改变。\r\r^ff6fb3提高等级：^ffffff\r\r护卫当前的等级，最高100级。\r\r绑定状态的护卫在100级时可以晋升官阶，之后等级归零。\r\r提升护卫等级时会消耗当前历练和当前士气。\r\r^ff6fb3提高官阶：^ffffff\r\r最初始的护卫为九品官阶，之后每次护卫达到100级时可以晋升。\r\r晋升官阶后，护卫的属性成长会获得较大提升，但是等级、当前历练、已分配的属性点会统一归零，而缺损士气会保留，当前士气变为100点，自由属性点额外增加20点。\r\r晋升官阶后，护卫各个等级的升级所需历练会相应增加，而升级所需士气不变。\r\r绑定状态的护卫在达到100级时可在长安云台的#69417#处花费一定的金钱和人物历练晋升官阶。")

end
--------------------------------------------------------------------

function Win_GearScoreGuide4:OnLButtonDown(objName)
	for i = 1 , 6 do
		if objName == "Btn_" .. tostring(i) then

			GameApi.CovertTextArea(self.this, "Txt_TextArea", GearScoreGuide4[i].text)

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
function Win_GearScoreGuide4:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_TextArea", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end

