local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_ComposeItemHelp = DlgTemplate:new({this = "Win_ComposeItemHelp"})

--初始化--

function Win_ComposeItemHelp:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
end

function Win_ComposeItemHelp:ShowDialog()
	GameApi.CovertTextArea(self.this, "Txt_TextArea", "^ea8015随机合成：\r^ffffff两本同类祖籍技能书可放入随机八卦炉合成，返还对应的祖籍秘籍，使用祖籍秘籍可在未央宫购买祖籍技能书。\r^ff0000注意：放入两本以上的祖籍技能书只会返还两本祖籍秘籍，请勿尝试。\r\r^00ff00绿色品质技能书^ffffff2个~3个可随机合成^00ff00绿色品质技能书^ffffff\r^00ff00绿色品质技能书^ffffff>4个可随机合成^0080c0蓝色品质技能书^ffffff\r^0080c0蓝色品质技能书^ffffff>2个可随机合成^0080c0蓝色品质技能书^ffffff\r\r^ff6fb3头像框、面饰、耳饰，^ffffff放入2个可随机合成对应种类物品，并有一定几率出现^ff6fb3玉隐属性^ffffff的道具。\r放入4个、6个、8个同类道具可^ff6fb3增加玉隐道具出现的几率^ffffff。\r^ff9090注意：^ffffff面饰、耳饰男女道具不可通用合成。\r\r^ea8015特定合成:^ffffff\r开放火承、凤鸣、灵隐、炽承、龙鸣、夜殇、冥殇、云霄系列的头像框、耳饰和面饰的合成。\r3^ffffff个^ff6fb3玉隐^ffffff=^ff6fb3火承^ffffff\r                       2^ffffff个^ff6fb3玉隐^ffffff=^ff6fb3灵隐^ffffff\r3^ffffff个^ff6fb3火承^ffffff=^ff6fb3凤鸣^ffffff                       3^ffffff个^ff6fb3灵隐^ffffff=^ff6fb3炽承^ffffff\r                       2^ffffff个^ff6fb3火承^ffffff=^ff6fb3炽承\r^ffffff3个^ff6fb3凤鸣^ffffff=^ff6fb3夜殇^ffffff                       3^ffffff个^ff6fb3炽承^ffffff=^ff6fb3龙鸣^ffffff\r                       2^ffffff个^ff6fb3凤鸣^ffffff=^ff6fb3龙鸣^ffffff\r^ffffff3个^ff6fb3夜殇^ffffff=^ff6fb3云霄^ffffff                       3^ffffff个^ff6fb3龙鸣^ffffff=^ff6fb3冥殇^ffffff\r                       2^ffffff个^ff6fb3夜殇^ffffff=^ff6fb3冥殇^ffffff\r                      ^ff6fb3冥殇^ffffff+^ff6fb3夜殇^ffffff=^ff6fb3云霄^ffffff\r\r可使用前一级与当前级合成来重置当前级饰品的属性。\r例如：火承+玉隐=火承 （属性重置）\r\r级别：\r云霄>夜殇>凤鸣>火承>玉隐\r冥殇>龙鸣>炽承>灵隐\r波罗碎片5个+混沌神石=金乌神石（成功）或波若石（失败）\r^ffffff\r开放五行宝玉的合成。\r将神秘粉尘、元素结晶和对应的五行精华放入八卦炉中，\r可合成对应的五行宝玉。\r例如：神秘粉尘*240 + 元素结晶*50 + 金之精华*3 = 赤金宝玉*1（绑定）\r^ffffff\r开放下列九阶橙色宝物的五行升级：\r年华追忆灯、不朽长存钟、万闪黑风伞\r池云啸天图、幻影跗骨斩、兵意狂飚令\r将宝物与五行宝玉同时放入八卦炉，即可进行升级。\r例如：年华追忆灯 + 赤金宝玉 = 年华追忆灯·金\r\r^ff9090注意：^ffffff不同种类或不同性别物品不可同时放入合成。材料属性对升级或重置时得到物品的属性有极大影响。")
	--DlgApi.ShowItem (self.this, "Txt_TextArea", false)
	--DlgApi.ShowItem (self.this, "Lab_Text", false)
	--DlgApi.SetImageFile(self.this, "Img_Image", "CB\\图片\\护卫指引图片\\指引标题图.tga", 1)
end
--------------------------------------------------------------------
--[[
function Win_ComposeItemHelp:OnLButtonDown(objName)
	for i = 1 , 6 do
		if objName == "Btn_" .. tostring(i) then
			--DlgApi.ShowItem (self.this, "Img_Image", false)
			--DlgApi.ShowItem (self.this, "Image_back", false)
			--DlgApi.ShowItem (self.this, "Lab_Text", true)
			--DlgApi.ShowItem (self.this, "Txt_TextArea", true)
			GameApi.CovertTextArea(self.this, "Txt_TextArea", ComposeItemHelp[i].text)
			--DlgApi.SetImageFile(self.this, "Img_Image", ComposeItemHelp[i].image, 1)
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
]]--
--------------------------------------------
--鼠标移动
--------------------------------------------
function Win_ComposeItemHelp:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_TextArea", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end
--[[
ComposeItemHelp={}
--战魂的简介
ComposeItemHelp[1] = {text="^ff6fb3什么是战魂：^ffffff\r战魂是一件特殊的装备，装备上融入了人物体内的某个英雄魂魄，一旦激活后会释放出潜能，提升人物自身能力。\r\r^ff6fb3战魂都有哪些：\r^ffffff游戏中存在着许多种类的战魂，不同的战魂其能力、成长、战魂技各不相同。普通战魂只有两种：啸风和鬼谋，而名将和英灵战魂则有若干种。\r由于不同战魂其渊源和来历不尽相同，战魂的能力是千差万别。但从总体上说，名将战魂在各方面均优于普通战魂。\r\r^ff6fb3战魂有什么作用:^ffffff\r战魂不仅是一件特殊的装备，装上战魂后，战魂的\“英雄能力\”也会融入人物体内，从而使人物继承战魂的能力。一旦融入体内的战魂觉醒，人物的攻击能力将大幅加强，同时可以触发特有的战魂技。"
}
--战魂的获得
ComposeItemHelp[2] = {text="^ff6fb3普通战魂该如何获得：^ffffff\r当您60级后，如果拥有称号\“战魂使\”，可在长安九天玄女处接到任务\“长枪啸风云动荡\”和\“翻云覆雨为鬼谋\”，完成任务后即可获得普通战魂。\r每个人只能获得两个普通战魂：啸风和鬼谋各一个。\r\r^ff6fb3名将战魂该如何获得：^ffffff\r当您80级后，如果拥有称号\“战魂使\”，可在长安九天玄女处接到名将战魂任务，完成任务后即可获得名将战魂的元魂。使用生产技能\“巧匠\”可以把元魂和元灵珠合成为名将战魂。\r名将战魂任务每天只可完成一次。"}
--战魂的属性
ComposeItemHelp[3] = {text="^ff6fb3什么是战魂的基本属性：^ffffff\r战魂的基本属性分为力、灵、命、神四项，这四项属性决定了战魂的能力。\r力决定了战魂觉醒后给敌人造成的灵魂伤害；\r灵决定了战魂觉醒后给敌人造成灵魂伤害的暴击几率；\r命决定了战魂元神值的上限；\r神决定了战魂元神值的恢复速度。\r\r^ff6fb3什么是战魂的属性资质：^ffffff\r战魂的每项基本属性都有一个对应的资质，资质按照从高到低一次为：神体、仙灵、圣灵、英灵、游魂五档，每一档从高到低又分为一等、二等、三等三个级别。资质越高，对应的基本属性的成长越快。\r\r^ff6fb3什么是战魂的资质品级：^ffffff\r资质品级是对战魂四项属性资质的整体评价，一般情况下，资质品级越高，四项属性的平均资质也越高。资质品级最低为0，最高为22；普通战魂的初始资质品级为0，名将战魂的初始资质品级为2。\r资质品级通常不会变化，只在洗髓时有可能会改变。\r\r^ff6fb3什么是战魂的成长评价：^ffffff\r成长评价是对战魂四项属性成长的整体评价，成长评价越高，表示战魂的成长性越好。每次升级时都会根据战魂的属性成长重新给出成长评价。\r成长评价最低为0，最高为22。\r^ff9090只有5级以上的战魂才能看到成长评价。\r\r^ff6fb3什么是战魂的元神值：^ffffff\r元神值即战魂的\“精力\”。当装备战魂后，元神值会随时间恢复，而在战魂觉醒期间，元神值会随时间消耗。\r\r^ff6fb3什么是炼魂属性：^ffffff当战魂的炼魂等级提升后，战魂将获得炼魂属性，炼魂属性会提高战魂装备后的人物自身属性，高级别的炼魂属性还附带增强魂技的效果。\r"}
--战魂的成长
ComposeItemHelp[4] = {text="^ff6fb3战魂如何升级：^ffffff\r杀死怪物获得经验后，装上的战魂将获得成长度。战魂的成长度达到当前等级的上限后，战魂会自动提升1级。战魂升级后，力、灵、命、神四项属性将获得成长。\r已开放的战魂最高等级为20级。\r战魂+9之前，消耗乾坤符升级时，每次使用必定加1点成长值，有几率直接炼魂成功。成长值满时，下次炼魂必定升级，升级后会扣除升级所需的成长值。使用返魂符时，当前成长值不会变化。\r\r^ff6fb3什么是炼魂，有何作用：^ffffff\r战魂不仅自身能够成长，还可在炼魂师处对战魂进行炼化。炼魂时需要消耗魂晶石，炼魂成功后会提升战魂的炼魂等级。炼魂除了能增加额外的魂炼属性，还会提升战魂技能的使用效果。\r^ff9090目前炼魂等级最高为+15。\r\r^ff6fb3什么是战魂重生,有何作用：^ffffff\r战魂满级（20级）后，可以到NPC处使用战魂重生服务让战魂转生。转生后的战魂为1级，拥有更高的1级初始属性，同时转生后会获得一个魂力效果。\r如果在重生时同时放入归魂丹（需要战魂5级），会把战魂级别和基本属性重置成1级，转生过的战魂，最近一次获得的魂力效果也会重新生成。\r如果在重生时同时放入镇魂珠（需要战魂5级），会重新生成对应等级的战魂基本属性。\r战魂重生不会改变战魂的属性资质。\r战魂重生可用辅助道具：轮回香。重生服务消耗它时，可手动选定指定魂力重生。使用此服务不改变战魂的当前等级，但战魂成长评价会归零，需再配合镇魂珠获得当前的战魂评价。\r现在战魂可进行四次转生，每次转生增加一个魂力，最高可以四个魂力。\r\r^ff6fb3什么战魂洗髓，有何作用：^ffffff\r在炼魂师处使用神木鼎洗髓会重新生成战魂的四项属性资质，并可能改变战魂的资质品级。洗髓不会改变战魂的基本属性数值。\r\r^ff6fb3什么是战魂幻化，有何作用：^ffffff\r低品质的名将战魂可以幻化成高品质的战魂，新战魂会继承原有战魂的等级、四项属性和资质、技能以及炼魂等级。\r只有绿色和蓝色品质的名将战魂可以进行幻化，幻化时需要消耗数量不等的化魂符。"}
--战魂的觉醒
ComposeItemHelp[5] = {text="^ff6fb3如何才能觉醒：^ffffff\r战魂的元神值超过上限的50%后，可以使用战魂觉醒功能。觉醒后战魂的元神值会随时间快速消耗，元神消耗到0时战魂会结束觉醒状态。\r\r^ff6fb3战魂觉醒后有什么作用：^ffffff\r战魂觉醒后每隔一段时间会对你的攻击目标执行一次灵魂攻击。灵魂攻击无法被闪避和格挡，灵魂攻击造成的伤害不受防御和伤害减免的影响。战魂觉醒后魂技的效果也会大幅提升。\r"}
--战魂的技能
ComposeItemHelp[6] = {text="^ff6fb3如何才能提高魂技：^ffffff\r战魂除了天生会有一项魂技外，在升级时也有可能获得新的魂技。每个战魂都有其固有的魂技。\r\r^ff6fb3魂技的等级如何提升：^ffffff\r升级战魂有可能提升魂技的等级，通常情况下，战魂四项属性的成长性越好，魂技的等级就可能越高。\r^ff9090魂技的等级最高为11级。\r\r^ff6fb3魂技的类型有哪些：^ffffff\r魂技有攻击类、护佑类、阵法类（^ff9090暂未开放^ffffff）三种。攻击类魂技会给敌人造成伤害，同时有可能附带特殊的效果，护佑类魂技会给自身提升战斗能力，而阵法类魂技会给友方玩家提供增益状态。\r魂技的效果受魂技等级、战魂属性、炼魂等级的影响。\r\r^ff6fb3炼魂等级对魂技效果有何影响：^ffffff\r炼魂等级提高到+3后，可以增加护佑类魂技的效果持续时间；\r炼魂等级提高到+5后，还可以减少攻击类魂技的冷却时间、增加攻击类魂技的效果持续时间。\r\r^ff6fb3战魂的技能效果：^ffffff\r战魂第三魂技在开启时，若战魂处于觉醒状态，则会得到以下加成\r随炼魂等级提升，获得生命值上限加成和攻击加成，同时额外获得特殊的技能效果。\r\r1.狼目--夏侯惇--背水--增加暴击抗性\r\r2.洛神--甄妃--蔽月--增加暴击附加伤害 \r\r3.召虎--张辽--威慑--被攻击时，有几率加上状态威慑，免疫眩晕，状态持续3秒\r\r4.武圣--关羽--武圣--提升暴击伤害\r\r5.伏龙--诸葛亮--七星--提升生命上限\r\r6.神射--黄忠--精魄--提升体质\r\r7.魅生--小乔--灵魅--提升治疗点数 \r\r8.斗魂--甘宁--魂佑--被攻击时，有几率加上状态灵巧，闪避提升，状态持续3秒\r\r9.顾曲--周瑜--定军--增加直抗、间抗\r\r注：以上技能均为手动释放，觉醒或不觉醒时都可释放，但效果增加均在战魂觉醒时才生效，战魂取消觉醒后驱散\r"}
]]--
