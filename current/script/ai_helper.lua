--************************************************************************************************************
--
--已完成

--GameApi.SelectMonster()			选择range米范围内的怪物
--GameApi.CanAttack()				目标是否可被攻击
--GameApi.NormalAttack()			触发一次普通攻击

--GameApi.Face2Target()				使自己面向怪物，如果已经面向怪物则方向不变

--GameApi.IsAutoMoving()			检查人物是否处于自动移动中
--GameApi.LootPickUp(loot)			拾取地面掉落ID为loot的物品

--*GameApi.CanReward()				目标被杀后是否可以获得掉落和经验
--GameApi.Drops()				检查周围是否有东西可以捡起，返回值为拾取物品的ID
--GameApi.IsIdle()						返回自己是否处于空闲状态

--GameApi. IsFighting ()					检测目标是否处于战斗状态

--GameApi.CanUseSkill(n)		已设置且已冷却时返回true, 未设置返回nil, 未冷却返回false
--GameApi.GetHpRate(category)					返回对应类型的hp阀值（0 表示战斗绷带，1 表示瞬回药品， 2 表示休息补血）

--GameApi.SetHpRate(category, enable, rate)		获得玩家从界面设置的hp阀值（0 表示战斗绷带，1 表示瞬回药品， 2 表示休息补血）

--GameApi.GetMp2Rate(category)					返回对应类型的Mp2阀值（0 表示仙酒，1 表示饮料）

--GameApi.SetMp2Rate(category, enable, rate)	获得玩家从界面设置的Mp2阀值（0 表示食仙酒，1 表示饮料）

--GameApi.CanHealHp(category)			玩家是否放置了回血的药品（0 表示战斗绷带，1 表示瞬回药品， 2 表示休息补血）
										--已设置且已冷却时返回true, 未设置返回nil, 未冷却返回false
--GameApi.CanHealMp2(category)			玩家是否放置了回体的药品（0 表示仙酒，1 表示饮料）
										--已设置且已冷却时返回true, 未设置返回nil, 未冷却返回false
--GameApi. HealHp(cat)							使用回血药品（0 表示战斗绷带，1 表示瞬回药品， 2 表示休息补血）

--GameApi. HealMp2 (cat)						使用回体药品（0 表示仙酒，1 表示饮料）


--
--
--赤壁挂机挂机脚本的修改

--
--1、GameAI.NormalAttack更新为激活普通攻击，如果已经激活则不影响，赤壁的普攻是服务器自动完成的，只需要激活；
--2、加入判断当前是否自己的正面朝向目标的判断GameAI.IsFacingToTarget，由于赤壁的大部分攻击需要判断面向；
--3、加入能使得玩家转向自己面对目标的方向的方法：GameAI.FaceToTarget，当怪物到背后的时候可以用这个方法转向怪物；

--4、加入判断当前是否自己处于战斗状态（就是限制战斗外使用技能的那个状态）GameAI.IsInBattle，由于很多补给技能和物品需要战斗外才生效；
--5、GameAI.PickUp更新成能适合赤壁LOOT方式的情形，因为不再是拾取地面物品了；

--6、GameAI.CheckDrops变成检测周围有效的LOOT；

--7、在GameAI.CanAttack的基础上，增加一个GameAI.CanReward，用来判断目标是否能被击杀后获得经验和掉落，防止玩家攻击到别人已经攻击的怪物；

--8、GameAI.GetHostProp()改为返回人物的生命（HP）、斗气（MP1）、体力（MP2）；
--9、由于赤壁的技能有公共CD和自身CD两种，则GameAI.IsSkillCooling(id)分为GameAI.IsSkillCommonCooling(id)和GameAI.IsSkillSelfCooling(id)；

--10、增加服务器对挂机脚本的时间限制，只要玩家身上有某特定状态则可以挂机。由于脚本中判断容易被破解，所以只能服务器来做。

--************************************************************************************************************

--food 4495
--drink 4523
--bandage 4598
--记得加一下对阀值的上限限制

-- 加入对玩家的判断
-- 加入对打怪范围的判断和限制

-- 加入防止卡住的判断


--AUTO_WARNING_NOTARGET		=	"$$$$$$$$$$周围没有可攻击的目标"
--AUTO_WARNING_NOBANGDAGE		=	"$$$$$$$$$$托管无法使用回血膏"
--AUTO_WARNING_NOPOTION		=	"$$$$$$$$$$托管无法使用丹药"
--AUTO_WARNING_NOWINE			=	"$$$$$$$$$$托管无法使用仙酒"
--AUTO_WARNING_NOFOOD			=	"$$$$$$$$$$托管无法使用食物"
--AUTO_WARNING_NODRINK		=	"$$$$$$$$$$托管无法使用饮料"

----
-- 构建一个ActionTime类，用于今后的逻辑计时和计数

--***************************************新三国挂机新增接口2010-10-29*******************************************************

------------------------------------
-- 1.自动使用挂机道具
------------------------------------
--   GameApi.IsAiHelperState 当挂机状态消失时GameApi.IsAiHelperState返回False， 反之返回True

--   AI_Helper:SetHealFight (boolean)
--   判断是否要自动使用挂机道具，如果勾选自动使用挂机道具，且物品栏不为空，则返回true表示可以
--   使用挂机道具。反之，不满足其中任何一个条件，则返回false表示不能使用挂机道具.

--   GameApi.CanHealMp2(category)
--   玩家是否放置了回体的药品（0 表示仙酒，1 表示饮料）新增参数：2 表示挂机道具 对应控件Img_Item6 如果放置了物品则返回True,反之为false.

--   GameApi. HealHp(cat)
--   使用回血药品（0 表示战斗绷带，1 表示瞬回药品， 2 表示休息补血）新增参数：3 表示挂机道具 对应控件Img_Item6 控件内放入的道具

------------------------------------
-- 2.角色自动复活，上马返回死亡地点
------------------------------------
--   GameApi.Revive ()                  使用此接口使角色复活

--   AI_Helper:SetIsAutoRevival（checked, value1, value2）
--   checked: load配置文件或修改自动复活选项时调用此函数，传入是否自动复活.
--   value1: 可以自动复活value1自动复活C间隔时间，单位为秒.
--   value1: 传入自动复活次数value2.

--   GameApi.IsBacktoDeadBoddy（x, y, z）
--   判断角色是否到达尸体坐标为圆心半径10米的区域内参数x, y, z为尸体坐标，判断角色是否到达该坐标，如果没达到则返回false, 如果到达则返回true

--   GameApi.IsHelperAutoRide()
--   判断角色是否在马上，函数返回true则表示角色当前在马上，反之表示角色不在马上.

--   GameApi.Ride(boolean)
--   让角色上马或下马，参数填入true，则让角色上马，填入false则让角色下马

--   GameApi.StopAiHelper()                停止挂机

--   角色复活成功后，需要先补给然后再跑回死亡地点 1> 角色装备食物时，会根据玩家复活后会自动使用一个食物后再跑到复活地点 2> 角色没装备食物则需要等待血量大于90%再回复活点
------------------------------------
-- 3.特殊调用
------------------------------------
-- AI_Helper:OnAutoPlayStop()     当收到挂机状态结束的消息时，调用此函数

-- 3.挂机速度优化
------------------------------------
-- 1> 拾取上限时间设置为500毫秒
-- 2> 冲锋技能无法释放时，直接使用普攻
-- 2> self.Charge.Waiting等待时间从5秒调整为1秒

------------------------------------
--4.挂机范围过大调整
------------------------------------
--AI_Helper:CheckDistance() 检查是否超出挂机范围，如果超出则自动返回
--选怪时判断是否超出挂机范围，如果超出挂机范围则不选怪
--************************************************************************************************************
local PLUN = function (v) return v or true end
--~ local PLUN = loadfile "test/plun.lua"("helper", "script/ai_helper.lua")

local GameApi = GameApi
-- 新加入的仅用于此脚本文件的函数会加在 AIHelperApi 中
local AIHelperApi = AIHelperApi

local function errorPrint (...)
	io.stdout:write "HELPER_ERR: "
	print(...)
end

local g_tostring = tostring
local function tostring (obj)
	if obj == nil then
		return "nil"
	else
		return g_tostring(obj)
	end
end

local Timer =
{}
Timer.__index = Timer

function Timer:new(obj)
	obj = obj or {}	-- create object if user does not provide one

	obj.m_Period = 0
	obj.m_Time = 0

	setmetatable(obj, self)
	return obj
end
function Timer:SetPeriod(period)
	self.m_Period = period
end
function Timer:GetPeriod()
	return self.m_Period
end
function Timer:SetTime(time)
	self.m_Time = time
end
function Timer:GetTime()
	return self.m_Time
end
function Timer:Reset()
	self.m_Time = 0
end
function Timer:IncTime(step)
	if self.m_Time < self.m_Period then self.m_Time = self.m_Time + step end
	return (self.m_Time >= self.m_Period)
end
function Timer:IsEnd()
	return (self.m_Time >= self.m_Period)
end
function Timer:Finish()
	self.m_Time = self.m_Period
end

----
-- 构建一个队列来储存一些需要的信息
local List =
{
	first = 1,
	last = 0
}

function List:new(o)
	o = o or {}	-- create object if user does not provide one
	setmetatable(o, self)
	self.__index = self
	return o
end
function List:PushRight(value)
	local last = self.last + 1
	self.last = last
	self[last] = value
end
function List:PopLeft()
	local first = self.first
	if first <= self.last then
		local value = self[first]
		self[first] = nil		-- to allow garbage collection
		self.first = first + 1
		return value
	end
end
function List:GetLen()
	return self.last - self.first
end
function List:OnTheList(value)
	local i
	for i = self.first, self.last do
		if self[i] == value then return true end
	end
	return false
end

----
-- 生成AI helper
local AI_Helper =
{
	log = function () end;
};


-- 获得GameAI
local GameApi = GameApi;

function AI_Helper:Init()
	--
	-- 各种状态
	--

	-- 开始挂机地点
	self.m_StartX					= 0
	self.m_StartY					= 0
	self.m_StartZ					= 0
	self.m_bUseHorse				= false

	-- 用来记录向服务器报告的间隔，毫秒单位
	self.m_ReportStateTimer			= Timer:new()
	self.m_ReportStateTimer:SetPeriod(30000)


	-- 用于记录检查过的MatterID的表
	self.m_CheckedMatters				= List:new()
	-- 拾取物品等待时间
	self.m_LootWaitTime = 500

	-- “没有可攻击目标”提示间隔
	self.m_NoAttackableTimer		= Timer:new()
	self.m_NoAttackableTimer:SetPeriod(15000)

	-- 一次技能施放间隔时间
	self.m_SkillWaitTimer			= Timer:new()
	self.m_SkillWaitTimer:SetPeriod(1000)

	-- 防卡死状态，设置 targetID=0 以重置状态
	self.m_AntiBlockData 			= {targetID=0, targetHP=0, timer=Timer:new()}
	self.m_AntiBlockData.timer:SetPeriod(30000)

	-- 当前目标
	self.m_target = 0
	self.m_nextTarget = 0
	self.m_bAttackedByTarget = false

	--
	-- 各种设置
	--

	-- 用来记录BUFF技能的使用间隔，毫秒单位
	self.m_SkillDelayTimers			= {}
	for i = 1, 6 do
		self.m_SkillDelayTimers[i] = Timer:new()		-- buffN 技能间隔时间
	end

	self.m_AttackMode			= 1		-- 1: 多个技能，2: 一个技能组
	self.m_Mp1					= 30	-- 斗气设置
	self.m_SkillDelays				= {600, 600, 600, 600, 600, 600}		--单位为秒
	self.m_SelectMonsterRange			= 30		-- 选怪范围，单位为米

	self.m_Bandage 				= {rate=0.3, enable=true}
	self.m_Potion 				= {rate=0.2, enable=true}
	self.m_Wine 				= {value=20, enable=true}
	self.m_Food 				= {rate=0.4, enable=true}
	self.m_Drink 				= {value=30, enable=true}

	-- 记录自动复活配置
	self.m_ReviveParam			= {bEnable=true, waitTime=200, maxDeath=10}
	self.m_ReviveCount			= 0

	self.m_bCounterAttackPlayer	= false
	self.m_bRunBackBeforeRest = false		--使用食物或饮料前是否跑回挂机点
end

-- coroutine 暂停
-- 暂停当前 coroutine，下一次被调用时，从 yield 之后继续执行
-- 局部变量会被保留为原状
-- yield 的返回值相当于函数传入参数
-- 请参考相关 Lua 文档
local yield = coroutine.yield

-- 自定义的 coroutine wrap 函数
-- 从 func 中返回会自动 yield，然后再次调用 func
-- 注意: 支持的 resume 参数数量有限 (数量含self)
local function doubleWrap (func)
	local function cofunc (...)
		local p1, p2, p3, p4 = ...
		while true do
			p1, p2, p3, p4 = yield(func(p1, p2, p3))
		end
	end
	return coroutine.wrap(cofunc)
end

-- 暂停 OnTick 一段时间，精度由 dwPeriod 决定。限 OnTick 及其子函数中调用
-- 返回实际暂停时间
-- 注意：Sleep 中角色可能意外死亡，因此 Sleep 之后需要判断一下。yield 同理。
local function Sleep (msTime)
	local timeLeft = msTime
	local timeWait = 0
	while timeLeft > 0 do
		local _, dwPeriod = yield()
		timeLeft = timeLeft - dwPeriod
		timeWait = timeWait + dwPeriod
	end
	return timeWait
end

-- 暂停一段时间，但如果 func() 为真则立即返回
local function SleepUntil (msTime, func)
	local timeLeft = msTime
	local timeWait = 0
	while timeLeft > 0 do
		if func and func() then
			return timeWait
		end
		local _, dwPeriod = yield()
		timeLeft = timeLeft - dwPeriod
		timeWait = timeWait + dwPeriod
	end
	return timeWait
end

function AI_Helper:IncreaseTimers(dwPeriod)
	for i = 1, #self.m_SkillDelayTimers do
		self.m_SkillDelayTimers[i]:IncTime(dwPeriod)
	end
	self.m_NoAttackableTimer:IncTime(dwPeriod)
	self.m_AntiBlockData.timer:IncTime(dwPeriod)
	self.m_SkillWaitTimer:IncTime(dwPeriod)
end

function AI_Helper:yieldAndIncreaseTimers()
	local self, dwPeriod = yield()
	self:IncreaseTimers(dwPeriod)
	return self, dwPeriod
end

function AI_Helper:sleepAndIncreaseTimers(msTime, func)
	local timeWait = SleepUntil(msTime, func)
	self:IncreaseTimers(timeWait)
	return timeWait
end


-- 重置AI_Helper，所有参数设为默认，这些参数会被界面读取
function AI_Helper:Reset()
	self:Init()
end

-- 开始挂机
function AI_Helper:Start(x, y, z)
	-- 获得玩家的挂机初始位置
	self.m_StartX, self.m_StartY, self.m_StartZ = GameApi.GetSelfPos()
	self.m_bUseHorse = GameApi.IsRide()

	-- 拾取物品等待时间
	self.m_LootWaitTime = 500

	-- 重置计时器
	for i = 1, #self.m_SkillDelayTimers do
		self.m_SkillDelayTimers[i]:Finish()
	end
	self.m_NoAttackableTimer:Reset()
	self.m_AntiBlockData.timer:Reset()
	self.m_SkillWaitTimer:Finish()

	-- 重置挂机死亡次数
	self.m_ReviveCount = 0
	AIHelperApi.UpdateDeathCount(0)		-- 设置界面上“已经死亡XX次”

	-- 重置目标
	self.m_target = 0
	self.m_nextTarget = 0
	self.m_bAttackedByTarget = false

	-- 生成 Tick() 函数
	self.Tick = doubleWrap(self.OnTick)
end


-- 主逻辑TICK，每0.5秒调用一次
-- 当 Tick 被调用时，会间接调用 OnTick
-- 应在 Start 中调用如下代码
-- 		AI_Helper.Tick = doubleWrap(AI_Helper.OnTick)

-- 主逻辑TICK调用的 doubleWrap func，每0.1秒调用一次
-- 可用 yield 暂停，也可以和普通函数一样 return
function AI_Helper:OnTick(dwPeriod)
	--
	-- TEST BEGIN
--~ 	do
--~ 	end
	-- TEST END
	--

	--- 不可更改 开始
	if self.m_ReportStateTimer:IncTime(dwPeriod) then
		GameApi.Report2Svr()
		self.m_ReportStateTimer:Reset()
	end
	--- 不可更改 结束

	self:IncreaseTimers(dwPeriod)

	-- 初始化角色状态
	GameApi.CloseLoot()		-- 关闭拾取物品框，以防被卡死

	-- 判断死亡
	if GameApi.IsDead() then
		self:Revive()
		return
	end
	if GameApi.IsDead() then return end

	-- 0 现在是空闲状态

	-- self:Fight() self:Loot() 等函数可能会因超时或其他意外而失败
	-- 失败时返回值为假，此时直接 return 开始新一轮判断 (Fight 之后适用)
	local retFlag

	-- 1 补充体力和精力
	self.log "rest"
	retFlag = self:Rest()		-- 可能 yield
	if --[[not retFlag or--]] GameApi.IsDead() then return end		-- 返回false时不应开始新一轮判断，如果是因主怪物攻击引起失败，此处会循环失败

	-- 2 选择目标
	self.log "select"
	if self.m_target == 0 then
		if not (GameApi.CanAttack() and GameApi.CanReward()) then
			self.log "select new monster"
			self:SelectMonster()
		else
			self.log "already has a target"
		end
	else
		self.log "select the old target"
		GameApi.SelectTarget(self.m_target)
	end

	local selectTimeLeft = 1500
	while not (GameApi.CanAttack() and GameApi.CanReward()) or self:ShouldIgnore(GameApi.GetTargetProp()) do
		local waitTime = self:sleepAndIncreaseTimers(100)
		selectTimeLeft = selectTimeLeft - waitTime

		if self.m_NoAttackableTimer:IsEnd() then		-- 长时间未选中有效目标
			self.m_NoAttackableTimer:Reset()
			GameApi.AddChatMessage(GP_CHAT_MISC, AUTO_WARNING_NOTARGET)
		end

		if selectTimeLeft < 0 then
			-- 可能是偏离起始点太远，向起始点跑
			self.log "run back"
			self.m_target = 0
			self.m_nextTarget = 0
			self.m_bAttackedByTarget = false
			GameApi.CancelSelect()
			GameApi.StartAutoMove(self.m_StartX, self.m_StartY, self.m_StartZ)
			return	-- 结束
		end
	end
	self.m_target = GameApi.GetTargetProp()
	self.m_NoAttackableTimer:Reset()

	-- 3 攻击
	while self.m_target ~= 0 do
		retFlag = self:Fight()		-- 可能 yield
		if GameApi.IsComboSkill() then		-- 停止技能组
			GameApi.UseSkill(8)
		end

		if retFlag then		-- 杀死了 m_target
			self.m_target = self.m_nextTarget
			self.m_nextTarget = 0
			self.m_bAttackedByTarget = false

			if self.m_target ~= 0 then
				GameApi.SelectTarget(self.m_target)
				self:sleepAndIncreaseTimers(500)
			end
		else				-- 各种超时，清空目标
			self.m_target = 0
			self.m_nextTarget = 0
			self.m_bAttackedByTarget = false
			return
		end

		if GameApi.IsDead() then return end
	end

	-- 4 拾取
	self.log "Can Loot ?"
	if GameApi.AIHelper_CanLoot() then
		self.log "Loot"
		retFlag = self:Loot()		-- 可能 yield
		if not retFlag or GameApi.IsDead() then return end
	end

	-- 5 结束，回到空闲状态
	self.m_NoAttackableTimer:Reset()

	self.log "Tick end"
	return
end

-- 死亡复活，可能 yield
function AI_Helper:Revive ()
	while GameApi.IsDead() do
		GameApi.Revive()
		self:sleepAndIncreaseTimers(500)
	end

	-- 重置角色状态
	GameApi.CancelAction()
	GameApi.CancelSelect()
	self.m_target = 0
	self.m_nextTarget = 0
	self.m_bAttackedByTarget = false
	if GameApi.IsComboSkill() then		-- 停止技能组，死亡时可能未能停止
		GameApi.UseSkill(8)
	end

	self.m_ReviveCount = self.m_ReviveCount + 1
	AIHelperApi.UpdateDeathCount(self.m_ReviveCount)
	if self.m_ReviveCount >= self.m_ReviveParam.maxDeath then	-- 超出最大复活次数，中止挂机
		AIHelperApi.StopHelper()
		while true do yield() end
	end

	-- 返回前等待，至少等2秒，防止上马时一定概率卡住
	local waitTime = self.m_ReviveParam.waitTime*1000
	if waitTime < 2000 then
		waitTime = 2000
	end
	self:sleepAndIncreaseTimers(waitTime)

	if GameApi.IsDead() then return end

	-- 回血
	local curProp = GameApi.GetPlayerBasicProp(0)
	while GameApi.CanHealHp(2) and curProp.hp/curProp.maxhp < 0.90 and self.m_Food.enable do
		GameApi.HealHp(2)
		self:sleepAndIncreaseTimers(16000, function () return self.m_bAttackedByTarget end)
		if self.m_bAttackedByTarget then	-- 不太可能出现
			break
		end

		if GameApi.IsDead() then return end
		curProp = GameApi.GetPlayerBasicProp(0)
	end

	-- 返回
	-- 1 上马
	if not GameApi.IsHelperAutoRide() then		-- 不需返回流程
		return
	end

	GameApi.Ride(true)

	local timeLeft = 30000
	while not GameApi.IsRide() do
		local timeWait = self:sleepAndIncreaseTimers(500)

		if GameApi.IsDead() then return end
		timeLeft = timeLeft - timeWait
		if timeLeft < 0 then
			errorPrint "Ride timeout"
			GameApi.CancelAction()
			GameApi.StartAutoMove(self.m_StartX, self.m_StartY, self.m_StartZ)
			return		-- 步行
		end
	end

	-- 2 移动到开始挂机点
	local startX, startY, startZ = self.m_StartX, self.m_StartY, self.m_StartZ
	local timeLeft = 300000
	while true do
		local x, _, z = GameApi.GetSelfPos()
		if (x-startX)*(x-startX) + (z-startZ)*(z-startZ) < self.m_SelectMonsterRange^2 then
			break
		end
		GameApi.StartAutoMove(startX, startY, startZ)

		local timeWait = self:sleepAndIncreaseTimers(500)
		timeLeft = timeLeft - timeWait
		if timeLeft < 0 then
			errorPrint "Return on horse timeout"
			GameApi.CancelAction()
			break
		end

		if GameApi.IsDead() then return end
	end

	-- 3 恢复挂机开始时的骑乘状态
	self.m_bUseHorse = false	--D 暂时禁用此功能

	while GameApi.IsRide() ~= self.m_bUseHorse do
		GameApi.Ride(self.m_bUseHorse)
		self:sleepAndIncreaseTimers(3000,
			function () return GameApi.IsRide() == self.m_bUseHorse end)	-- 必须成功下马否则无法攻击
		if GameApi.IsDead() then return end
	end

	-- 再清一下状态
	GameApi.CancelAction()
	GameApi.CancelSelect()
	self.m_target = 0
	self.m_nextTarget = 0
	self.m_bAttackedByTarget = false
	return true
end

-- 等待至脱离战斗状态
function AI_Helper:WaitUntilNotFighting ()
	local timeLeft = 20000
	while GameApi.IsFighting() do
		print("wait")--D
		local timeWait = self:sleepAndIncreaseTimers(100)
		timeLeft = timeLeft - timeWait
		if timeLeft < 0 or GameApi.IsDead() then
			errorPrint "Wait until not fighting timeout or lost target"
			GameApi.CancelAction()
			return false
		end
		if self.m_bAttackedByTarget then	-- 被攻击时中止
			return false
		end
	end

end

function AI_Helper:RunBack (timeout)
	local startX, startY, startZ = self.m_StartX, self.m_StartY, self.m_StartZ

	local timeLeft = timeout
	while true do
		GameApi.StartAutoMove(startX, startY, startZ)

		-- 受攻击或到达时结束
		if self.m_bAttackedByTarget then return false end

		local x, _, z = GameApi.GetSelfPos()
		if (x-startX)*(x-startX) + (z-startZ)*(z-startZ) < 2*2 then
			return true
		end

		local timeWait = self:sleepAndIncreaseTimers(100)
		timeLeft = timeLeft - timeWait
		if timeLeft < 0 or GameApi.IsDead() then
			errorPrint "RunBack timeout"
			GameApi.CancelAction()
			return false
		end
	end
end

-- 休息，可能 yield
function AI_Helper:Rest ()
	-- 【赤壁增加】如果需要非战斗补给，则首先吃喝补给一下
	-- 等待至脱离战斗状态

	-- 休息补血
	local curProp = GameApi.GetPlayerBasicProp(0)
	local kMaxTimeUsed = 150000
	local timeUsed = 0

	while curProp.hp/curProp.maxhp < self.m_Food.rate and self.m_Food.enable do
		self.log "should rest for food"
		if GameApi.CanHealHp(2) == nil then
			GameApi.AddChatMessage(GP_CHAT_MISC, AUTO_WARNING_NOFOOD)
			break
		end

		--是否先跑回挂机点
		if self.m_bRunBackBeforeRest then
			if not self:RunBack(25000) then
				return false
			end
		end

		self:sleepAndIncreaseTimers(2100, function () return GameApi.CanHealHp(2) end)	-- 等待食物CD结束
		if not GameApi.CanHealHp(2) then		-- 超时
			errorPrint "Wait for food cool down timeout"
			break
		end

		self:WaitUntilNotFighting()
		GameApi.HealHp(2)
		-- 等待中如果被攻击或已加满则跳出
		local function breakFunc ()
			if self.m_bAttackedByTarget then return true end
			curProp = GameApi.GetPlayerBasicProp(0)
			return curProp.hp == curProp.maxhp
		end
		local timeSleep = self:sleepAndIncreaseTimers(16000, breakFunc)
		-- 被攻击
		if self.m_bAttackedByTarget then
			return true
		end
		-- 已加满
		if curProp.hp == curProp.maxhp then
			break
		end

		timeUsed = timeUsed + timeSleep
		-- 死亡
		if GameApi.IsDead() then return end
		-- 超时
		if timeUsed > kMaxTimeUsed then
			errorPrint "Rest HealHp(2) timeout"
			GameApi.CancelAction()
			return false
		end

		curProp = GameApi.GetPlayerBasicProp(0)
	end

	-- 补Mp2，休息，饮料
	local curProp = GameApi.GetPlayerBasicProp(0)
	local timeUsed = 0
	while curProp.mp2 < self.m_Drink.value and self.m_Drink.enable do
		self.log "should rest for drink"
		if GameApi.CanHealMp2(1) == nil then
			GameApi.AddChatMessage(GP_CHAT_MISC, AUTO_WARNING_NODRINK)
			break
		end

		--是否先跑回挂机点
		if self.m_bRunBackBeforeRest then
			if not self:RunBack(25000) then
				return false
			end
		end

		self:sleepAndIncreaseTimers(2100, function () return GameApi.CanHealMp2(1) end)	-- 等待饮料CD结束
		if not GameApi.CanHealMp2(1) then		-- 超时
			errorPrint "Wait for drink cool down timeout"
			break
		end

		self:WaitUntilNotFighting()
		GameApi.HealMp2(1)
		-- 等待中如果被攻击或已加满则跳出
		local function breakFunc ()
			if self.m_bAttackedByTarget then return true end
			curProp = GameApi.GetPlayerBasicProp(0)
			return curProp.mp2 == curProp.maxmp2
		end
		local timeSleep = self:sleepAndIncreaseTimers(16000, breakFunc)
		-- 被攻击
		if self.m_bAttackedByTarget then
			return true
		end
		-- 已加满
		if curProp.mp2 == curProp.maxmp2 then
			break
		end

		timeUsed = timeUsed + timeSleep
		-- 死亡
		if GameApi.IsDead() then return end
		-- 超时
		if timeUsed > kMaxTimeUsed then
			errorPrint "Rest HealMp2 timeout"
			GameApi.CancelAction()
			return false
		end

		curProp = GameApi.GetPlayerBasicProp(0)
	end

	return true
end

function AI_Helper:checkTarget ()
	-- 0 防止目标丢失
	local targetID = GameApi.GetTargetProp()
	if targetID == 0 and GameApi.IsTargetValid(self.m_target, self.m_bCounterAttackPlayer, 80) then
		self.log "Target lost"
		GameApi.SelectTarget(self.m_target)
		self:sleepAndIncreaseTimers(500)
	else
		if targetID ~= self.m_target then
			if GameApi.CanAttack() and GameApi.CanReward() then
				self.log "Target changed"
				self.m_target = targetID
				self.m_bAttackedByTarget = true
				if self.m_nextTarget == targetID then
					self.m_nextTarget = 0
				end
			else
				self.log "Target reselect"
				GameApi.SelectTarget(self.m_target)
				self:sleepAndIncreaseTimers(500)
			end
		end
	end
end

-- 战斗，直到当前选中目标死亡，可能 yield
function AI_Helper:Fight ()
	local retFlag
	self:resetBlockChecker()		-- 初始化防卡死状态

	-- 开战前先治疗一下
	retFlag = self:Heal()
	if not retFlag or GameApi.IsDead() then
		return false
	end

	if self.m_AttackMode == 1 then		-- 使用多个普通技能
		-- 1 开战，起始技能index = 0
		self.log "BattleStart"
		retFlag = self:BattleStart(0)
		if not retFlag or GameApi.IsDead() then
			return false
		end

		-- 2 攻击
		self.log "FightStart"
		local iFight = 0		-- 攻击序号，用于优化网络数据量
		while GameApi.IsTargetValid(self.m_target, self.m_bCounterAttackPlayer, 80)
				and not self:ShouldIgnore(self.m_target) do
			-- 0 防止目标丢失
			self:checkTarget()

			-- 1 打一下
			self:FightOnce(iFight)
			iFight = iFight + 1
			if GameApi.IsDead() then return end

			-- 2 治疗
			retFlag = self:Heal()
			if not retFlag or GameApi.IsDead() then
				return false
			end

			-- 3 防卡死
			if self:checkBlock() then
				-- 尝试向起始点移动
				GameApi.CancelAction()
				GameApi.CancelSelect()
				self.m_target = 0
				self.m_nextTarget = 0
				self.m_bAttackedByTarget = false
				GameApi.StartAutoMove(self.m_StartX, self.m_StartY, self.m_StartZ)
				self:sleepAndIncreaseTimers(5000)
				errorPrint "Blocked"
				return false
			end

			if GameApi.IsDead() then return end
		end
	else							-- 使用单个技能组
		while GameApi.IsTargetValid(self.m_target, self.m_bCounterAttackPlayer, 80)
				and not self:ShouldIgnore(self.m_target) do
			-- 0 防止目标丢失
			self:checkTarget()

			-- 1 普通攻击
			GameApi.Face2Target()
			GameApi.NormalAttack()

			-- 2 保证技能组在施放中
			if not GameApi.IsComboSkill() then
				GameApi.UseSkill(8)
			end

			-- 3 治疗 (copy)
			retFlag = self:Heal()
			if not retFlag or GameApi.IsDead() then
				return false
			end

			-- 4 防卡死 (copy)
			if self:checkBlock() then
				-- 尝试向起始点移动
				GameApi.CancelAction()
				GameApi.CancelSelect()
				self.m_target = 0
				self.m_nextTarget = 0
				self.m_bAttackedByTarget = false
				GameApi.StartAutoMove(self.m_StartX, self.m_StartY, self.m_StartZ)
				self:sleepAndIncreaseTimers(5000)
				errorPrint "Blocked"
				return false
			end

			self:sleepAndIncreaseTimers(500)
			if GameApi.IsDead() then return end
		end
		-- Fight 的调用者将停止技能组
	end

	self.log "Fight finish"
	return true
end

-- 选中玩家或护卫，且距离挂机开始点大于挂机范围 + 15 时，停止追击
function AI_Helper:ShouldIgnore (targetID)
	if AIHelperApi.IsTargetPlayerOrPet(targetID) then
		local x, y, z = GameApi.GetSelfPos()
		local startX, startY, startZ = self.m_StartX, self.m_StartY, self.m_StartZ
		if (x-startX)^2 + (z-startZ)^2 > (self.m_SelectMonsterRange + 15)^2 then
			return true
		end
	end
	return false
end

-- 施放一个技能，若技能有吟唱，等待吟唱完成
function AI_Helper:CastSkill (iSkill)
	if not GameApi.CanUseSkill(iSkill) then
		return
	end
	if not self.m_SkillWaitTimer:IsEnd() then
		return
	end

	local function sleepBreak ()
		return not GameApi.IsTargetValid(self.m_target)
	end
	local distToTarget = self:GetDistance()

	GameApi.UseSkill(iSkill)
	local timeWait = 0
	while GameApi.IsSpellingMagic() do
		timeWait = timeWait + self:sleepAndIncreaseTimers(100, sleepBreak)
		if not GameApi.IsTargetValid(self.m_target) then
			print ("CancelAction")--D
			GameApi.CancelAction()
			return
		end
		if timeWait > 10000 then	-- 超时
			print("Spelling Magic time out")--D
			GameApi.CancelAction()
			break
		end
	end
	if timeWait < 500 then
		self:sleepAndIncreaseTimers(500-timeWait)
	end
--~ 	if timeWait == 0 then
--~ 		self.m_SkillWaitTimer:SetPeriod(1000)
--~ 		self.m_SkillWaitTimer:Reset()
--~ 	else
--~ 		local deltaT = (distToTarget - 3.4)/20
--~ 		if deltaT < 0.5 then
--~ 			self.m_SkillWaitTimer:SetPeriod((deltaT+0.5)*1000)
--~ 			self.m_SkillWaitTimer:Reset()
--~ 		else
--~ 			self.m_SkillWaitTimer:Finish()
--~ 		end
--~ 	end
end

-- 战斗辅助函数，开战，使用开战技能可能 yield
-- iSkill 开战使用的技能/技能组
function AI_Helper:BattleStart(iSkill)
	GameApi.StopAutoMove()
	GameApi.Face2Target()

	if GameApi.CanUseSkill(iSkill)==nil then		-- 没有设置开战技能，或技能未冷却
		return true
	end

	if not self.m_bAttackedByTarget then		-- 被攻击时不保证起攻技能
		local castMaxDist = GameApi.GetSkillMaxDist(iSkill)

		if type(castMaxDist) == "number" and self:GetDistance() 			-- 有距离限制
				and self:GetDistance() > castMaxDist-1 then	-- 且太远
			local timeLeft = 20000
			local distanc = self:GetDistance()	-- 如果无目标，此值将为nil
			while distanc and distanc > castMaxDist-1 do
				-- 向目标移动
				GameApi.MoveToTarget()

				local timeWait = self:sleepAndIncreaseTimers(200)
				timeLeft = timeLeft - timeWait
				if GameApi.IsDead() then return end
				if timeLeft < 0 then
					errorPrint "BattleStart move to target"
					return false
				end
				if not GameApi.CanAttack() then
					self.log "BattleStart lost target"
					return false
				end
				if self.m_bAttackedByTarget then	-- 被攻击时不保证起攻技能
					break
				end

				distanc = self:GetDistance()
			end
			GameApi.StopAutoMove()
		end
	end

	if not self.m_bAttackedByTarget then		-- 被攻击时不保证起攻技能
		-- 等待非战斗状态技能
		local canCastSkillInFight = GameApi.CanCastSkillInFight(iSkill)
		if not canCastSkillInFight then
			local timeLeft = 20000
			while GameApi.IsFighting() do
				local timeWait = self:sleepAndIncreaseTimers(100)
				timeLeft = timeLeft - timeWait
				if timeLeft < 0 or GameApi.IsDead() or not GameApi.CanAttack() then
					errorPrint "BattleStart wait not fighting timeout or lost target"
					GameApi.CancelAction()
					return false
				end
				if self.m_bAttackedByTarget then	-- 被攻击时不保证起攻技能
					break
				end
			end
		end
	end

	-- 施放技能
	GameApi.Face2Target()
	GameApi.StopAutoMove()
	if not self.m_bAttackedByTarget then
		self:sleepAndIncreaseTimers(300)
	end
	self:CastSkill(iSkill)

	return true
end

-- 战斗辅助函数，普通攻击一次，放一次技能
-- 当 iFight % 5 == 0 时才会 NormalAttack，防止发过多网络数据
function AI_Helper:FightOnce (iFight)
	local curProp = GameApi.GetPlayerBasicProp(0)

	if iFight==nil or iFight % 5 == 0 then
		GameApi.Face2Target()
		GameApi.NormalAttack()
	end

	-- 使用斗气技能
	if GameApi.CanUseSkill(7) and curProp.mp1 > self.m_Mp1 then
		self:CastSkill(7)
		return true
	end

	-- 使用Buff技能
	for i = 9, 14 do
		local num = i - 8
		local timer = self.m_SkillDelayTimers[num]

		if timer:GetTime() >= self.m_SkillDelays[num] * 1000 then
			local can = GameApi.CanUseSkill(i)
			if can then
				self:CastSkill(i)
				timer:Reset()
				return true
			elseif can == nil then		-- 没有设置技能
				timer:Reset()
			end
		end
	end

	-- 使用重复技能
	for i = 1, 6 do
		if GameApi.CanUseSkill(i) then
			self:CastSkill(i)
			return true
		end
	end

	-- 没有使用技能
	self:sleepAndIncreaseTimers(100)
	return true
end

-- 战斗辅助函数，防卡死，返回 true 表明已卡住
-- 函数使用 self.m_AntiBlockData 记录状态
function AI_Helper:resetBlockChecker ()
	local AntiBlockData = self.m_AntiBlockData
	AntiBlockData.targetID = 0
	AntiBlockData.timer:Reset()
end

function AI_Helper:checkBlock ()
	local targetID, targetHP, targetX, targetY, targetZ = GameApi.GetTargetProp()
	local AntiBlockData = self.m_AntiBlockData

	if targetID ~= AntiBlockData.targetID or targetID == 0 or
			targetHP < AntiBlockData.targetHP then
		AntiBlockData.targetID = targetID
		AntiBlockData.targetHP = targetHP
		AntiBlockData.timer:Reset()
		return false
	end

	if AntiBlockData.timer:IsEnd() then
		AntiBlockData.timer:Reset()
		return true
	end

	return false
end


function AI_Helper:Heal ()
	-- 【赤壁增加】战斗中当生命或体力低于设定量的时候使用各种战斗回复手段

	-- 补HP，category：0 表示战斗绷带，1 表示瞬回药品， 2 表示休息补血
	-- 补Mp2（体力），category：0 表示仙酒，1 表示饮料
	local curProp = GameApi.GetPlayerBasicProp(0)

	if self.m_Bandage.enable and curProp.hp/curProp.maxhp < self.m_Bandage.rate then
		if GameApi.CanHealHp(0) then
			-- 备份选中的怪
			local TargetID, TargetHP, TargetX, TargetY, TargetZ = GameApi.GetTargetProp()

			-- 选中自己以使用绷带
			GameApi.SelectSelf()
			GameApi.HealHp(0)

			-- 等待6秒
			self:sleepAndIncreaseTimers(1000)

			-- 重新选中怪以免 Fight 函数逻辑出错
			if TargetID then
				GameApi.SelectTarget(TargetID)
				-- 等待选怪完成
				self:sleepAndIncreaseTimers(500)
				if GameApi.IsDead() then return end
			end

			self:sleepAndIncreaseTimers(5000)
			if GameApi.IsDead() then return end

			return true
		end
	end

	if self.m_Potion.enable and curProp.hp/curProp.maxhp < self.m_Potion.rate then
		if GameApi.CanHealHp(1) then
			GameApi.HealHp(1)
			-- self:yieldAndIncreaseTimers()		-- 瞬回
			return true
		end
	end

	if self.m_Wine.enable and curProp.mp2 < self.m_Wine.value then
		if GameApi.CanHealMp2(0) then
			GameApi.HealMp2(0)
			self:sleepAndIncreaseTimers(500)
			if GameApi.IsDead() then return end
			return true
		end
	end

	return true
end

-- 拾取物品，可能 yield
function AI_Helper:Loot()
	local timeUsed = 0
	while true do
		local ret = self:LootOnce()
		if ret == false then	-- 有错误
			return false
		else		--number
			if ret > 0 then		-- 成功
				local newWaitTime = self.m_LootWaitTime * 2
				if newWaitTime < 200 then newWaitTime = 200 end
				if newWaitTime > 1000 then newWaitTime = 1000 end
				self.m_LootWaitTime = newWaitTime
				return true

			else			-- 没有物品，等待后再试
				if timeUsed < self.m_LootWaitTime then
					self.log("Loot once no item")
					local timeWait = self:sleepAndIncreaseTimers(100)
					timeUsed = timeUsed + timeWait

				else		-- 等待超时，无物品掉落
					local newWaitTime = self.m_LootWaitTime / 2
					self.m_LootWaitTime = newWaitTime >= 200 and newWaitTime or 0
					self.log("Loot wait time: "..self.m_LootWaitTime)
					return true
				end
			end
		end
	end
end

-- 拾取物品，可能 yield
-- 返回: false = 失败, 数字 = 拾到的数量
function AI_Helper:LootOnce()
	local loots = GameApi.CheckDrops(22)		-- 取得附近掉落的物品，参数为范围大小
	if loots == nil then
		return 0
	end

	local lootCount = 0
	for i=1, #loots do
		local lootId = loots[i]
		if not self.m_CheckedMatters:OnTheList(lootId) then		-- 和已经搜索过的进行排除处理
			-- 拾取之
			self.bLootFinishFlag = nil		-- 在回调函数 LootOpen() 中被设置

			local timeLeft = 15000
			local iLoot = 0
			while not self.bLootFinishFlag do
				if iLoot % 5 == 0 then
					local retFlag = GameApi.LootPickUp(lootId)
					if retFlag ~= true then
						print "Loot disappeared"--D
						GameApi.CancelAction()
						return false
					end
				end
				iLoot = iLoot + 1

				local timeWait = self:sleepAndIncreaseTimers(100)
				if GameApi.IsDead() then return end
				if self.m_bAttackedByTarget then
					GameApi.CancelAction()
					return false
				end
				timeLeft = timeLeft - timeWait
				if timeLeft < 0 then		-- 拾取物品超时，一般是被卡住了
					errorPrint "Loot timeout"
					self.m_CheckedMatters:PushRight(lootId)
					GameApi.CancelAction()
					self.bLootFinishFlag = nil
					return false
				end
			end
			self.bLootFinishFlag = nil
			lootCount = lootCount + 1
		end
	end
	return lootCount
end

function AI_Helper:SelectMonster()
	GameApi.SelectMonster(self.m_StartX, self.m_StartZ, self.m_SelectMonsterRange)
end

-- 回调函数，当捡物品完成时此函数被调用
function AI_Helper:OnLootOpen(m_CheckedMatters)
	self.m_CheckedMatters:PushRight(m_CheckedMatters)
	if self.m_CheckedMatters:GetLen() > 49 then self.m_CheckedMatters:PopLeft() end

	self.bLootFinishFlag = true		-- 在 Loot() 中被清除
end

-- 回调函数，被怪攻击时此函数被调用
function AI_Helper:OnAttacked(attacker)
	if not GameApi.IsTargetValid(attacker, self.m_bCounterAttackPlayer, 80) then
		return
	end

	if self:ShouldIgnore(attacker) then
		self.log "Too far, ignore player or pet"
		return
	end

	do	-- 检查状态
		local target, nextTarget = self.m_target, self.m_nextTarget
		local bAttacked = self.m_bAttackedByTarget
		if target == 0 and nextTarget ~= 0 then
			errorPrint "target state error: no target"
		elseif self.m_target ~= 0 and self.m_target == self.m_nextTarget then
			errorPrint "target state error: same targets"
		end
	end

	if not self.m_bAttackedByTarget or self.m_target == 0 then	-- 还没开始战斗
		if self.m_target ~= attacker then
			self.log "Counter attack"
			self.m_target = attacker
			GameApi.StopAutoMove()
		end
		self.m_bAttackedByTarget = true
		self.m_nextTarget = 0
		GameApi.SelectTarget(attacker)
	else
		if attacker ~= self.m_target and self.m_nextTarget == 0 then
			self.m_nextTarget = attacker
		end
	end
end

------
-- 获得玩家设置的战斗中补给阀值

--	self.m_Bandage.rate			= 0.40
--	self.m_Potion.rate			= 0.40
--	self.m_Wine.value			= 40
--	self.m_Food.rate			= 0.40
--	self.m_Drink.value			= 40
function AI_Helper:SetHpRate(category, IsSet, rate)
	local lowRate = rate
	if type(lowRate) ~= "number" or lowRate > 100 or lowRate < 0 then
		lowRate = 0
	end
	-- 对绷带的阀值上限限制为70%
	if category == 0 and lowRate > 70 then lowRate = 70 end

	if category == 0 then self.m_Bandage.rate = lowRate*0.01 end
	if category == 1 then self.m_Potion.rate = lowRate*0.01 end
	if category == 2 then self.m_Food.rate = lowRate*0.01 end

	if category == 0 then self.m_Bandage.enable = IsSet end
	if category == 1 then self.m_Potion.enable = IsSet end
	if category == 2 then self.m_Food.enable = IsSet end
end

function AI_Helper:GetHpRate(category)
	if category == 0 then return self.m_Bandage.enable, self.m_Bandage.rate*100 end
	if category == 1 then return self.m_Potion.enable, self.m_Potion.rate*100 end
	if category == 2 then return self.m_Food.enable, self.m_Food.rate*100 end
end

function AI_Helper:SetMp2(category, IsSet, value)
	local lowvalue = value
	if type(lowvalue) ~= "number" or lowvalue < 0 then
		lowvalue = 0
	end
	if category == 0 then self.m_Wine.value = lowvalue end
	if category == 1 then self.m_Drink.value = lowvalue end

	if category == 0 then self.m_Wine.enable = IsSet end
	if category == 1 then self.m_Drink.enable = IsSet end
end

function AI_Helper:GetMp2(category)
	if category == 0 then return self.m_Wine.enable, self.m_Wine.value end
	if category == 1 then return self.m_Drink.enable, self.m_Drink.value end
end

-- 获得玩家设置的战斗中技能相关数值

--a)	本地函数用于返回玩家选择的攻击模式，是快捷动作还是技能，
--i.	AI_Helper:SetAttackMode(Mode)，参数Mode返回玩家勾选了什么攻击模式，当值为2的时候为选择快捷动作模式，值为1的时候为技能模式；
--ii.	AI_Helper: GetAttackMode ()	return	mode
--b)	本地函数用于获取玩家斗气技能使用阀值，
--i.	AI_Helper:SetMp1Skill(Mp1)，参数Mp1返回玩家设置的斗气上限；
--ii.	AI_Helper: GetMp1Skill ()	return	Mp1
--c)	本地函数用于获取玩家普通技能的使用间隔，

--i.	AI_Helper:SetSkillDelays(interval)，参数interval返回玩家设置的使用间隔；
--ii.	AI_Helper: GetSkillDelays()	return	interval

--SetAttackMode GetAttackMode SetMp1Skill GetMp1Skill GetSkillDelays SetSkillDelays

function AI_Helper:SetAttackMode(Mode)
	local m_AttackMode = Mode
	self.m_AttackMode = m_AttackMode
end

function AI_Helper:GetAttackMode()
	return self.m_AttackMode
end

function AI_Helper:SetMp1Skill(mp1)
	local m_Mp1 = mp1
	self.m_Mp1 = m_Mp1
end

function AI_Helper:GetMp1Skill()
	return self.m_Mp1
end

function AI_Helper:SetSkillDelays(delays)
	local skillDelays = self.m_SkillDelays
	for i=1, #skillDelays do
		local value = delays[i]
		if type(value)=="number" then
			skillDelays[i] = value
		end
	end

	for i = 1, #self.m_SkillDelayTimers do
		local value = self.m_SkillDelays[i]
		if type(value)=="number" then
			self.m_SkillDelayTimers[i]:SetPeriod(self.m_SkillDelays[i] * 1000)
		end
	end
end

function AI_Helper:GetSkillDelays()
	return self.m_SkillDelays
end

--1、增加限定挂机范围相关的接口：

--a)	本地函数用于返回玩家设置的挂机范围，
--i.	AI_Helper:SetAutoRange(range)，参数range返回设定的挂机范围半径；
--ii.	AI_Helper: GetAutoRange ()	return	range
function AI_Helper:SetSelectMonsterRange(range)
	-- 限定玩家的范围设置
	if range > 60 then range = 60 end

	self.m_SelectMonsterRange = range
end

function AI_Helper:GetSelectMonsterRange()
	return self.m_SelectMonsterRange
end

--
-- 本地数学函数，用来返回自己和目标敌人之间的距离的平方
function AI_Helper:GetDistanceSqare()
	local distance
	local TargetID, TargetHP, TargetX, TargetY, TargetZ = GameApi.GetTargetProp()
	if TargetID then
		local SelfX, SelfY, SelfZ = GameApi.GetSelfPos()

		-- 用勾股定理计算距离
		distanceSqare = (TargetZ - SelfZ)^2 + (TargetX - SelfX)^2
		return distanceSqare
	else
		return nil
	end
end

local mathsqrt = math.sqrt
function AI_Helper:GetDistance()
	local distance
	local TargetID, TargetHP, TargetX, TargetY, TargetZ = GameApi.GetTargetProp()
	if TargetID then
		local SelfX, SelfY, SelfZ = GameApi.GetSelfPos()
		return mathsqrt( (TargetX - SelfX)^2 + (TargetY - SelfY)^2 + (TargetZ - SelfZ)^2 )
	else
		return nil
	end
end

function AI_Helper:GetDistanceH()
	local distance
	local TargetID, TargetHP, TargetX, TargetY, TargetZ = GameApi.GetTargetProp()
	if TargetID then
		local SelfX, SelfY, SelfZ = GameApi.GetSelfPos()
		return mathsqrt( (TargetX - SelfX)^2 + (TargetZ - SelfZ)^2 )
	else
		return nil
	end
end

-- 读取自动复活
function AI_Helper:SetReviveParam(bEnable, waitTime, maxDeath)
	local ReviveParam = self.m_ReviveParam
	ReviveParam.bEnable = bEnable
	ReviveParam.waitTime = waitTime
	ReviveParam.maxDeath = maxDeath
end

-- 死亡次数是否已达上限
function AI_Helper:GetIsDeathMax ()
	return self.m_ReviveCount >= self.m_ReviveParam.maxDeath
end

function AI_Helper:SetCounterAttackPlayer(bEnable)
	self.m_bCounterAttackPlayer = bEnable
end

-- 使用食物或饮料前是否跑回挂机点
function AI_Helper:SetRunBackBeforeRest (flag)
	self.m_bRunBackBeforeRest = not not flag
end

-- by zhangzhipeng 2012 2 15
local DrinkItems =
{
  4522,4523,4524,4525,4526,4527,4583,4584,4585,4586,4587,4588,5044,5045,5046,5047,5048,5049,5050,5051,5052,5053,5054,5055,7395,7396,7397,7398,7399,7400,7401,7402,7403,7404,7405,7406,7413,7414,7415,7451,15863,15864,25254,25255,25256,25257,25258,25259,25260,25261,25262,25263,25264,25265,25266,25267,25268,25269,25270,25271,25272,25273,45778,45779,45780,45781,45782,45783,45833,45834,45835,45836,45837,45838,50319,50320,50321,50322,50323,50324,50325,50326,50327,50328,50329,50330,50331,50332,50333,50334,50335,50336,50337,50338,50339,50340,50341,50342,50343,50344,50345,50346,50347,50348,50349,50350,50351,50352,50353,50354,50355,50356,50357,50358,50359,50360,50361,50362,50363,50364,50365,50366,50367,50368,50369,50370,50371,50372,50373,50374,50375,50376,50377,50378
}
local FoodItems =
{
4492,4493,4494,4495,4496,4497,4498,4499,4500,4501,4502,4503,4504,4505,4506,4507,4508,4509,4510,4511,4512,4513,4514,4515,4516,4517,4518,4519,4520,4521,4550,4551,4552,4553,4554,4555,4556,4557,4558,4560,4561,4562,4563,4564,4565,4567,4569,4570,4571,4572,4573,4574,4575,4576,4577,4578,4579,4580,4581,4582,4864,4865,4866,4867,4868,4869,4870,4871,4872,4873,4874,4875,4876,4877,4878,4879,4880,4881,4882,4883,4884,4885,4886,4887,4888,4889,4890,4891,4892,4893,5369,5370,5371,15862,17073,17074,17075,17076,17077,17078,25218,25219,25220,25221,25222,25223,25224,25225,25226,25227,25228,25229,25230,25231,25232,25233,25234,25235,25236,25237,25238,25239,25240,25241,25242,25243,25244,25245,25246,25247,25248,25249,25250,25251,25252,25253,25582,25583,25584,25585,25586,25587,25588,25589,25590,25591,25592,25593,29631,29632,29633,29634,29635,45765,45766,45767,45773,45774,45775,45776,45777,45825,45826,45827,45828,45829,45830,45831,45832,50171,50172,50173,50174,50175,50176,50177,50178,50179,50180,50181,50182,50183,50184,50185,50186,50187,50188,50189,50190,50191,50192,50193,50194,50195,50196,50197,50198,50199,50200,50201,50202,50203,50204,50205,50206,50207,50208,50209,50210,50211,50212,50213,50214,50215,50216,50217,50218,50219,50220,50221,50222,50223,50224,50225,50226,50227,50228,50229,50230,50231,50232,50233,50234,50235,50236,50237,50238,50239,50240,50241,50242,50243,50244,50245,50246,50247,50248,50249,50250,50251,50252,50253,50254,50255,50256,50257,50258,50259,50260,50261,50262,50263,50264,50265,50266,50267,50268,50269,50270,50271,50272,50273,50274,50275,50276,50277,50278,50279,50280,50281,50282,50283,50284,50285,50286,50287,50288,50289,50290,50291,50292,50293,50294,50295,50296,50297,50298,50299,50300,50301,50302,50303,50304,50305,50306,50307,50308,50309,50310,50311,50312,50313,50314,50315,50316,50317,50318
}
local HPItems =
{
4534,4535,4536,4537,4538,4539,4595,4596,4597,4598,4599,4600,7407,7408,7409,7410,7411,7412,7466,7467,15865,19587,25274,25275,25276,25277,25278,25279,25280,25281,25282,25283,29630,45784,45785,45786,45787,45788,45839,45840,45842,45843,45844,50379,50380,50381,50382,50383,50384,50385,50386,50387,50388,50389,50390,50391,50392,50393,50394,50395,50396,50397,50398
}

function AI_Helper:GetRecDrinkList()
	return DrinkItems
end
function AI_Helper:GetRecFoodList()
	return FoodItems
end
function AI_Helper:GetRecItemList()
	return HPItems
end

_G.AI_Helper = PLUN(AI_Helper, "AI_Helper")

--
-- function printTable, author xugang, 2011.03
--
local print = print
local pairs = pairs
local tostring = tostring
local string = string
local type = type
local stringrep = string.rep
local stdout = io.stdout
local printTable_tablelist = {}

local function printTable_( t, level, maxLevel, name )
	printTable_tablelist[t] = name

	for k,v in pairs(t) do
		if( type(v)=="table" ) then
			if printTable_tablelist[v] then
				stdout:write( stringrep(' ',level*2), tostring(k), " = ", tostring(v), " (", printTable_tablelist[v], ")" )
				print()
			elseif maxLevel and level+1 >= maxLevel then
				stdout:write( stringrep(' ',level*2), tostring(k), " = ", tostring(v), " (...)" )
				print()
			else
				stdout:write( stringrep(' ',level*2), tostring(k), " = ", tostring(v) )
				print()
				printTable_( v, level + 1, maxLevel, name.."."..tostring(k) )
			end
		else
			if type(v)=="string" then
				stdout:write( stringrep(' ',level*2), tostring(k), ' = "', v, '"' )
				print()
			else
				stdout:write( stringrep(' ',level*2), tostring(k), " = ", tostring(v) )
				print()
			end
		end
	end
end

function printTable( t, maxLevel, name )
	if type(t) ~= "table" then
		print( t )
	else
		if name then
			print( name.." =" )
		end
		stdout:write( "[", tostring(t), "]" )
		print()
		printTable_( t, 0, maxLevel, type(name)=="string" and name or "t" )
		printTable_tablelist = {}
	end
end

--
-- Test
