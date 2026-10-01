local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_GearScoreGuide1 = DlgTemplate:new({this = "Win_GearScoreGuide1"})

--初始化--

function Win_GearScoreGuide1:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
end

function Win_GearScoreGuide1:ShowDialog()
	GameApi.CovertTextArea(self.this, "Txt_TextArea", "Click the button to view detailed guidance!")

end
--------------------------------------------------------------------

function Win_GearScoreGuide1:OnLButtonDown(objName)
	for i = 1 , 6 do
		if objName == "Btn_" .. tostring(i) then

			GameApi.CovertTextArea(self.this, "Txt_TextArea", GearScoreGuide1[i].text)

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
function Win_GearScoreGuide1:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_TextArea", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end

GearScoreGuide1={}
--装备强化
GearScoreGuide1[1] = {text="^ff6fb3Enhancement Method:^ffffff Find #20287#, select Equipment Enhancement, and place the equipment inside to see the enhancement result and required items.\r\r^ff6fb3Acquiring Recipes:^ffffff Near #1928#, you can find NPCs selling weapon, armor, and accessory enhancement recipes. Learn them to craft the required enhancement items.\r\r"}


--秘文
GearScoreGuide1[2] = {text="^ff6fb3什么是秘文：^ffffff通过在装备上镶嵌秘文可以提升战斗力评分，秘文是一种充满力量的秘文灵珠或秘文琼珠，本身带有附加的属性，同时通过不同装备部位上的秘文，可形成秘咒，产生额外的属性加成。\r\r^ff6fb3如何获取和装备秘文：^ffffff可以通过参加战场，使用朱砂笔对低级秘文灵珠进行点化来获得秘文。可以在#19589#处购买开光石，在#20286#激活装备上的秘文孔后，即可进行秘文镶嵌。\r可以在#1932#处，查询更加详细的秘文指引和秘咒组合。\r\r^ff6fb3增加战斗力评分的秘文：^ffffff\r^72fe00秘文·力：攻击力+2^ffffff\r^72fe00秘文·怒：命中+1^ffffff\r^0184ff秘文·壁：暴击伤害+2%^ffffff\r^0184ff秘文·斩：攻击强度+1%^ffffff\r^0184ff秘文·豪：暴击+1^ffffff\r^0184ff秘文·罗：暴击伤害+3%^ffffff\r^0184ff秘文·刑：攻击力+30^ffffff\r^a800ff秘文·斗：附加伤害+3^ffffff\r^a800ff秘文·狂：暴击伤害+5%^ffffff\r^a800ff秘文·魂：附加伤害+10^ffffff\r^a800ff秘文·灭：直接伤害抗性+1 暴击附加伤害+20^ffffff\r^a800ff秘文·岩：穿透+1 闪避+1^ffffff\r^a800ff秘文·御：刺破+1 暴击伤害+5%^ffffff\r^a800ff秘文·山：减免伤害+10 附加伤害+20^ffffff\r\r"}


--符玉
GearScoreGuide1[3] = {text="^ff6fb3How to Obtain Talisman Jade:^ffffff Talisman Jade drops from battlefield and mob kills. Upgrade them to create higher-tier Talisman Jade.\r\r^ff6fb3Upgrading Talisman Jade:^ffffff At #1928#, select Learn Talisman Jade Recipe to learn how to upgrade Talisman Jade.\r\r^ff6fb3How to Attach Talisman Jade:^ffffff At #3354# or #20286#, select Attach Talisman Jade to add it to your equipment.\r\r"
}

--成长
GearScoreGuide1[4] = {text="^ff6fb3How to Grow Equipment:^ffffff Go to #20287#, select Equipment Growth, and place the equipment you want to grow to see the grown attributes and required items.\r\r^ff6fb3Required Items:^ffffff All items needed for equipment growth can be exchanged at #65229# using Dream Retention Fragments to purchase weapon materials.\r\r^ff6fb3Ways to Obtain Dream Retention Fragments:^ffffff\r1. Purchase from the Mall.\r2. Obtain from Daily Quest activities and battlefield.\r3. Claim from Daily Online Rewards."}

