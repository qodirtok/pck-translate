local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_EnchaseGuide = DlgTemplate:new({this = "Win_EnchaseGuide"})

local EnchaseGuideText =
{
	--1 什么是秘文
	"秘文是一种带有神秘属性的文字。\r\r您如果获得了一颗充满力量的秘文灵珠或秘文琼珠，就可以把它镶嵌到兵器或防具上。",
	--2 可镶嵌秘文的装备
	"五品或更高的兵器、防具和马鞭都可以镶嵌秘文。\r\r需要注意的是，您需要先寻找“开光石”激活装备上的秘文孔后，才能够进行秘文镶嵌。\r\r每件兵器或防具通常都可激活3个秘文孔。",
	--3 有哪些秘文
	"共有26种秘文：\r\r^72fe00秘文·心：生命值+20^ffffff\r^72fe00秘文·盾：防御力+1^ffffff\r^72fe00秘文·力：攻击力+2^ffffff\r^72fe00秘文·秘：体力值+2^ffffff\r^72fe00秘文·怒：命中+1^ffffff\r\r^0184ff秘文·灵：生命值+1%^ffffff\r^0184ff秘文·壁：暴击伤害+2%^ffffff\r^0184ff秘文·斩：攻击强度+1%^ffffff\r^0184ff秘文·影：间接伤害抗性+1^ffffff\r^0184ff秘文·豪：暴击+1^ffffff\r\r^a800ff秘文·冥：治疗效果+2%^ffffff\r^a800ff秘文·兵：暴击抗性+1^ffffff\r^a800ff秘文·斗：附加伤害+3^ffffff\r^a800ff秘文·闪：闪避+1^ffffff\r^a800ff秘文·狂：暴击伤害+5%^ffffff\r^a800ff秘文·魂：附加伤害+10^ffffff\r\r★^0184ff秘文·忍：生命值+100^ffffff\r★^0184ff秘文·甲：防御力+10^ffffff\r★^0184ff秘文·罗：暴击伤害+3%^ffffff\r★^0184ff秘文·刑：攻击力+30^ffffff\r★^0184ff秘文·羲：体质+200^ffffff\r\r★^a800ff秘文·泽：治疗效果+2% 治疗点数+15^ffffff\r★^a800ff秘文·刹：间接伤害抗性+1 暴击抗性+1^ffffff\r★^a800ff秘文·灭：直接伤害抗性+1 暴击附加伤害+20^ffffff\r★^a800ff秘文·岩：穿透+1 闪避+1^ffffff\r★^a800ff秘文·御：刺破+1 暴击伤害+5%^ffffff\r★^a800ff秘文·山：减免伤害+10 附加伤害+20^ffffff",
	--4 秘文可镶嵌的部位
	"不同的秘文可以镶嵌到不同的部位：\r\r^72fe00秘文·心^ffffff：兵器、上衣、裤子、肩部、腰部、马鞭\r^72fe00秘文·盾^ffffff：兵器、上衣、裤子、腕部、足部、马鞭\r^72fe00秘文·力^ffffff：兵器、上衣、肩部、腕部、足部\r^72fe00秘文·秘^ffffff：裤子、肩部、腰部、足部、马鞭\r^72fe00秘文·怒^ffffff：兵器、腕部、腰部、马鞭\r\r^0184ff秘文·灵^ffffff：兵器、上衣、裤子、肩部、腰部\r^0184ff秘文·壁^ffffff：上衣、裤子、腕部、足部\r^0184ff秘文·斩^ffffff：兵器、上衣、肩部、腕部、足部\r^0184ff秘文·影^ffffff：裤子、肩部、腰部、足部、马鞭\r^0184ff秘文·豪^ffffff：兵器、上衣、腕部、腰部、足部\r\r^a800ff秘文·冥^ffffff：兵器、上衣、裤子、肩部、腰部、足部\r^a800ff秘文·兵^ffffff：上衣、裤子、腕部、足部\r^a800ff秘文·斗^ffffff：兵器、上衣、肩部、腕部、足部、马鞭\r^a800ff秘文·闪^ffffff：裤子、肩部、腰部、足部\r^a800ff秘文·狂^ffffff：兵器、肩部、腕部、腰部\r^a800ff秘文·魂^ffffff：上衣、裤子、足部、马鞭\r\r★^0184ff秘文·忍^ffffff：兵器、上衣、裤子、肩部、腰部\r★^0184ff秘文·甲^ffffff：上衣、裤子、腕部、足部\r★^0184ff秘文·罗^ffffff：兵器、上衣、肩部、腕部、足部\r★^0184ff秘文·刑^ffffff：裤子、肩部、腰部、足部、马鞭\r★^0184ff秘文·羲^ffffff：兵器、上衣、腕部、腰部、足部\r\r★^a800ff秘文·泽^ffffff：兵器、上衣、裤子、肩部、腰部、足部\r★^a800ff秘文·刹^ffffff：上衣、裤子、腕部、足部\r★^a800ff秘文·灭^ffffff：兵器、上衣、肩部、腕部、足部、马鞭\r★^a800ff秘文·岩^ffffff：裤子、肩部、腰部、足部\r★^a800ff秘文·御^ffffff：兵器、肩部、腕部、腰部\r★^a800ff秘文·山^ffffff：上衣、足部、裤子、马鞭",
	--5 如何获得秘文
	"前15种秘文灵珠可以从游戏世界、活动以及战场中“征战”、“演义”中获得。\r\r越靠前的秘文越常见。\r\r除此之外，利用朱砂笔也可以对低级秘文灵珠进行点化，不过越高级的秘文点化失败率会越来越高，需要小心。\r\r秘文琼珠可以从游戏世界、活动以及战场中“征战”、“演义”中获得。\r\r越靠前的越常见。\r\r秘文琼珠还可以通过马良笔点化秘文灵珠而成。",
	--6 秘文组合
	"当一件装备上的所有秘文孔（通常是三个）都已镶满秘文，秘文组合会激活更强力的属性，同时装备的名称也会改变，这便是秘文组合。",
	--7 秘文组合的效果
	"秘文组合后，会产生组合属性。\r\r通常的组合会使装备带上“如意”属性，它会跟据最高级的秘文，使装备附加生命值和攻击强度。\r\r例如：“^0184ff秘文组合·如意：生命值+20 攻击强度+1%^ffffff”\r\r当组合的秘文达成一定的条件，则会激活更强力的秘咒。",
	--8 什么是秘咒
	"如果用特定的组合为一件装备镶嵌秘文，则可以产生的特殊的“秘咒”。\r\r“秘咒”的效果远强于一般的“如意”组合属性。\r\r例如：将以下秘文镶嵌到一件装备上\r\r^72fe00秘文·盾^ffffff(2)+^72fe00秘文·力^ffffff(3)+^72fe00秘文·怒^ffffff(5)\r\r将可组合出\r\r^fff962秘咒·日月：生命值+50 攻击力+3 命中+1^ffffff\r\r镶嵌的顺序不会影响秘咒的组合效果。",
	--9 如何去除秘文
	"通过工匠可以帮助去除已经镶嵌的秘文，去除后可以重新镶一个秘文。\r\r去除的秘文将不会保留，这点需要注意。\r\r通常来说，应该尽量保留高级秘文，去除低级秘文。",
	--10 装备升级说明
	"装备升级服务可用于提升你的装备的品阶，例如把一件五阶武器提升为六阶武器。但并不是所有的装备都可以升级，您可以把一件装备放到“待升级装备”栏内查看可升级成的装备。通常在升级时会要求原装备的成长等级达到一定级别，并且会消耗部分材料。\r\r^ff8080装备升级之后，将完全继承原装备的激活秘文孔数、已镶嵌秘文以及强化属性。^ffffff如果升级后装备的成长等级上限不小于原装备的成长等级，则成长等级也会保留。\r"
}

function Win_EnchaseGuide:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
end

function Win_EnchaseGuide:ShowDialog()
	GameApi.SetSubDialog (self.this, "Sub_Dialog", "Win_EnchaseGuideComp")
end

function Win_EnchaseGuide:OnLButtonDown(objName)
	for i = 1, 10 do
		if objName == "Btn_" .. i then
			GameApi.SetSubDialog (self.this, "Sub_Dialog", "Win_EnchaseGuideText")
			DlgApi.SetItemText ("Win_EnchaseGuideText", "Txt_EnchaseGuideText", EnchaseGuideText[i])
		end
	end
	if objName == "Btn_EnchaseComp" then
		GameApi.SetSubDialog (self.this, "Sub_Dialog", "Win_EnchaseGuideComp")
	end
end

