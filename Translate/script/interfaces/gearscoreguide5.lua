local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_GearScoreGuide5 = DlgTemplate:new({this = "Win_GearScoreGuide5"})

--初始化--

function Win_GearScoreGuide5:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
end

function Win_GearScoreGuide5:ShowDialog()
	GameApi.CovertTextArea(self.this, "Txt_TextArea","You can find #45212# to view detailed guidance.\r\r^ff6fb3How to Obtain War Souls:^ffffff\rAfter reaching Level 60, if you have the title \“War Soul Envoy\”, you can receive the quests \“Spear Howls Through Stormy Skies\” and \“Clouds Turn, Rain Falls, Schemes for Ghosts\” from the Nine Heavens Mysterious Maiden in Chang’an. Complete them to obtain normal War Souls.\rEach person can only obtain two normal War Souls: one Howling Wind and one Ghost Scheme.\r\r^ff6fb3How to Obtain Famous General War Souls:^ffffff\rAfter reaching Level 80, if you have the title \“War Soul Envoy\”, you can receive Famous General War Soul quests from the Nine Heavens Mysterious Maiden in Chang’an. Complete them to obtain the Origin Soul of a Famous General War Soul. Use the production skill \“Master Artisan\” to combine the Origin Soul with an Origin Spirit Pearl into a Famous General War Soul.\rFamous General War Soul quests can only be completed once per day.\r\r^ff6fb3Increase War Soul Attribute Aptitude:^ffffff\rEach basic attribute of a War Soul has a corresponding aptitude. Aptitudes rank from high to low in five tiers: Divine Body, Immortal Spirit, Sacred Spirit, Heroic Spirit, and Wandering Soul. Each tier is further divided into Grade 1, Grade 2, and Grade 3 from high to low. The higher the aptitude, the corresponding基本属性的成长越快。\r\r^ff6fb3什么是战魂的资质品级：^ffffff\r资质品级是对战魂四项属性资质的整体评价，一般情况下，资质品级越高，四项属性的平均资质也越高。资质品级最低为0，最高为22，资质品级通常不会变化，只在洗髓时有可能会改变。\r\r^ff6fb3提高战魂等级：^ffffff\r杀死怪物获得经验后，装上的战魂将获得成长度。战魂的成长度达到当前等级的上限后，战魂会自动提升1级。战魂升级后，力、灵、命、神四项属性将获得成长。\r已开放的战魂最高等级为20级。")

end
--------------------------------------------------------------------

function Win_GearScoreGuide5:OnLButtonDown(objName)
	for i = 1 , 6 do
		if objName == "Btn_" .. tostring(i) then

			GameApi.CovertTextArea(self.this, "Txt_TextArea", GearScoreGuide5[i].text)

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
function Win_GearScoreGuide5:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_TextArea", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end


GearScoreGuide5={}
--装备强化
GearScoreGuide5[1] = {text="^ff6fb3Enhancement Method:^ffffff Find #20287#, select Equipment Enhancement, and place the equipment inside to see the enhancement result and required items.\r\r^ff6fb3Acquiring Recipes:^ffffff Near #1928#, you can find NPCs selling enhancement recipes for weapons, armor, and accessories. Learn them to craft the required enhancement items.\r\r"}


--秘文
GearScoreGuide5[2] = {text="^ff6fb3什么是秘文：^ffffff通过在装备上镶嵌秘文可以提升战斗力评分，秘文是一种充满力量的秘文灵珠或秘文琼珠，本身带有附加的属性，同时通过不同装备部位上的秘文，可形成秘咒，产生额外的属性加成。\r\r^ff6fb3如何获取和装备秘文：^ffffff可以通过参加战场，使用朱砂笔对低级秘文灵珠进行点化来获得秘文。可以在#19589#处购买开光石，在#20286#激活装备上的秘文孔后，即可进行秘文镶嵌。\r可以在#1932#处，查询更加详细的秘文指引和秘咒组合。\r\r^ff6fb3增加战斗力评分的秘文：^ffffff\r^72fe00秘文·力：攻击力+2^ffffff\r^72fe00秘文·怒：命中+1^ffffff\r^0184ff秘文·壁：暴击伤害+2%^ffffff\r^0184ff秘文·斩：攻击强度+1%^ffffff\r^0184ff秘文·豪：暴击+1^ffffff\r^0184ff秘文·罗：暴击伤害+3%^ffffff\r^0184ff秘文·刑：攻击力+30^ffffff\r^a800ff秘文·斗：附加伤害+3^ffffff\r^a800ff秘文·狂：暴击伤害+5%^ffffff\r^a800ff秘文·魂：附加伤害+10^ffffff\r^a800ff秘文·灭：直接伤害抗性+1 暴击附加伤害+20^ffffff\r^a800ff秘文·岩：穿透+1 闪避+1^ffffff\r^a800ff秘文·御：刺破+1 暴击伤害+5%^ffffff\r^a800ff秘文·山：减免伤害+10 附加伤害+20^ffffff\r\r"}


--符玉
GearScoreGuide5[3] = {text="^ff6fb3How to Obtain Attached Jade:^ffffff Attached Jade drops from battlefield and mob kills. Upgrade them to create higher-tier Attached Jade.\r\r^ff6fb3Upgrading Attached Jade:^ffffff At #1928#, select Learn Attached Jade Recipe to learn how to upgrade Attached Jade.\r\r^ff6fb3How to Attach Attached Jade:^ffffff At #1928# or #20287#, select Attach Attached Jade to add it to your equipment.\r\r"
}

--成长
GearScoreGuide5[4] = {text="^ff6fb3How to Grow Equipment:^ffffff Go to #20287#, select Equipment Growth, and place the equipment you want to grow to see the grown attributes and required items.\r\r^ff6fb3Required Items:^ffffff All items needed for equipment growth can be exchanged at #65229# using Dream Retention Fragments to purchase weapon materials.\r\r^ff6fb3Ways to Obtain Dream Retention Fragments:^ffffff\r1. Purchase from the Mall.\r2. Obtain from Daily Quest activities and battlefield.\r3. Claim from Daily Online Rewards."}

