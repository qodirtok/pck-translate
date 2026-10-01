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
	GameApi.CovertTextArea(self.this, "Txt_TextArea","^ffffff可找到#45212#来查看详细的指引功能。\r\r^ff6fb3战魂的获取：战魂该如何获得：^ffffff\r当您60级后，如果拥有称号\“战魂使\”，可在长安九天玄女处接到任务\“长枪啸风云动荡\”和\“翻云覆雨为鬼谋\”，完成任务后即可获得普通战魂。\r每个人只能获得两个普通战魂：啸风和鬼谋各一个。\r\r^ff6fb3名将战魂该如何获得：^ffffff\r当您80级后，如果拥有称号\“战魂使\”，可在长安九天玄女处接到名将战魂任务，完成任务后即可获得名将战魂的元魂。使用生产技能\“巧匠\”可以把元魂和元灵珠合成为名将战魂。\r名将战魂任务每天只可完成一次。\r\r^ff6fb3提高战魂的属性资质：^ffffff\r战魂的每项基本属性都有一个对应的资质，资质按照从高到低一次为：神体、仙灵、圣灵、英灵、游魂五档，每一档从高到低又分为一等、二等、三等三个级别。资质越高，对应的基本属性的成长越快。\r\r^ff6fb3什么是战魂的资质品级：^ffffff\r资质品级是对战魂四项属性资质的整体评价，一般情况下，资质品级越高，四项属性的平均资质也越高。资质品级最低为0，最高为22，资质品级通常不会变化，只在洗髓时有可能会改变。\r\r^ff6fb3提高战魂等级：^ffffff\r杀死怪物获得经验后，装上的战魂将获得成长度。战魂的成长度达到当前等级的上限后，战魂会自动提升1级。战魂升级后，力、灵、命、神四项属性将获得成长。\r已开放的战魂最高等级为20级。")

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
GearScoreGuide5[1] = {text="^ff6fb3强化的方式：^ffffff找到#20287#，选择装备强化并将装备放入，即可看到强化后的结果以及所需道具。\r\r^ff6fb3配方的获得^ffffff：在#1928#附近，可分别找到购买强化武器、防具、饰品的道具配方的NPC，学习后可制作所需的强化物品。\r\r"}


--秘文
GearScoreGuide5[2] = {text="^ff6fb3什么是秘文：^ffffff通过在装备上镶嵌秘文可以提升战斗力评分，秘文是一种充满力量的秘文灵珠或秘文琼珠，本身带有附加的属性，同时通过不同装备部位上的秘文，可形成秘咒，产生额外的属性加成。\r\r^ff6fb3如何获取和装备秘文：^ffffff可以通过参加战场，使用朱砂笔对低级秘文灵珠进行点化来获得秘文。可以在#19589#处购买开光石，在#20286#激活装备上的秘文孔后，即可进行秘文镶嵌。\r可以在#1932#处，查询更加详细的秘文指引和秘咒组合。\r\r^ff6fb3增加战斗力评分的秘文：^ffffff\r^72fe00秘文·力：攻击力+2^ffffff\r^72fe00秘文·怒：命中+1^ffffff\r^0184ff秘文·壁：暴击伤害+2%^ffffff\r^0184ff秘文·斩：攻击强度+1%^ffffff\r^0184ff秘文·豪：暴击+1^ffffff\r^0184ff秘文·罗：暴击伤害+3%^ffffff\r^0184ff秘文·刑：攻击力+30^ffffff\r^a800ff秘文·斗：附加伤害+3^ffffff\r^a800ff秘文·狂：暴击伤害+5%^ffffff\r^a800ff秘文·魂：附加伤害+10^ffffff\r^a800ff秘文·灭：直接伤害抗性+1 暴击附加伤害+20^ffffff\r^a800ff秘文·岩：穿透+1 闪避+1^ffffff\r^a800ff秘文·御：刺破+1 暴击伤害+5%^ffffff\r^a800ff秘文·山：减免伤害+10 附加伤害+20^ffffff\r\r"}


--符玉
GearScoreGuide5[3] = {text="^ff6fb3获取附玉的方式：^ffffff通过战场和击杀小怪，即可掉落附玉，附玉可以通过升级制作成更高级的附玉。\r\r^ff6fb3附玉的升级方式：^ffffff在#1928#中，选择学习附玉配方，即可学习升级附玉的方法。\r\r^ff6fb3如何附加附玉：^ffffff在#1928#或#20287#选择附加附玉，即可将附玉添加至装备上。\r\r"
}

--成长
GearScoreGuide5[4] = {text="^ff6fb3如何装备成长：^ffffff来到#20287#处，选择装备成长，放入想要成长的装备，即可查看成长后的属性以及成长所需的道具。\r\r^ff6fb3所需要的道具：^ffffff装备成长所需的道具，均可使用留梦碎片在#65229#处购买兵器-材料来兑换。\r\r^ff6fb3获取留梦碎片的方式如下：^ffffff\r1.通过商城购买。\r2.通过日常任务活动、战场获得。\r3.每日在线领奖领取。"}

