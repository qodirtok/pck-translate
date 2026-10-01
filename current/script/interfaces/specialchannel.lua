local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi


Win_SpecialChannel = DlgTemplate:new({this = "Win_SpecialChannel"})

SpecialMsg = {}
SpecialMsg[1] = {year =  2010, month = 0, day = {0}, hour = 15, minute = 50, level = {60, 80} , week = {0}, text = "赤壁前哨战正在3线激烈进行中，60-80级玩家请前往3线赤壁大本营本国出阵使处参加前哨战。获取海量历练、名望、秘文等奖励。"}
SpecialMsg[2] = {year =  2010, month = 0, day = {0}, hour = 16, minute = 0, level = {60, 80} , week = {0}, text = "赤壁前哨战正在3线激烈进行中，60-80级玩家请前往3线赤壁大本营本国出阵使处参加前哨战。获取海量历练、名望、秘文等奖励。"}
SpecialMsg[3] ={year =  2010, month = 0, day = {0}, hour = 16, minute = 10, level = {60, 80} , week = {0}, text = "赤壁前哨战正在3线激烈进行中，60-80级玩家请前往3线赤壁大本营本国出阵使处参加前哨战。获取海量历练、名望、秘文等奖励。"}
SpecialMsg[4] ={year =  2010, month = 0, day = {0}, hour = 16, minute = 20, level = {60, 80} , week = {0}, text = "赤壁前哨战正在3线激烈进行中，60-80级玩家请前往3线赤壁大本营本国出阵使处参加前哨战。获取海量历练、名望、秘文等奖励。"}
SpecialMsg[5] ={year =  2010, month = 0, day = {0}, hour = 16, minute = 30, level = {60, 80} , week = {0}, text = "赤壁前哨战正在3线激烈进行中，60-80级玩家请前往3线赤壁大本营本国出阵使处参加前哨战。获取海量历练、名望、秘文等奖励。"}
SpecialMsg[6] ={year =  2010, month = 0, day = {0}, hour = 19, minute = 50, level = {81, 150} , week = {0},text = "" }	-- text = "赤壁决战正在6线激烈进行中，英雄等级玩家请前往6线赤壁大本营本国出阵使处参加决战。获取海量阅历、名望、混沌神石、一目神符、秘文等奖励。"
SpecialMsg[7] ={year =  2010, month = 0, day = {0}, hour = 20, minute = 0, level = {81, 150} , week = {0}, text = ""}	-- text = "赤壁决战正在6线激烈进行中，英雄等级玩家请前往6线赤壁大本营本国出阵使处参加决战。获取海量阅历、名望、混沌神石、一目神符、秘文等奖励。"
SpecialMsg[8] ={year =  2010, month = 0, day = {0}, hour = 20, minute = 10, level = {81, 150} , week = {0}, text = ""}	-- text = "赤壁决战正在6线激烈进行中，英雄等级玩家请前往6线赤壁大本营本国出阵使处参加决战。获取海量阅历、名望、混沌神石、一目神符、秘文等奖励。"
SpecialMsg[9] ={year =  2010, month = 0, day = {0}, hour = 20, minute = 20, level = {81, 150} , week = {0}, text = ""}	-- text = "赤壁决战正在6线激烈进行中，英雄等级玩家请前往6线赤壁大本营本国出阵使处参加决战。获取海量阅历、名望、混沌神石、一目神符、秘文等奖励。"
SpecialMsg[10] ={year =  2010, month = 0, day = {0}, hour = 20, minute = 30, level = {81, 150} , week = {0}, text = ""}	-- text = "赤壁决战正在6线激烈进行中，英雄等级玩家请前往6线赤壁大本营本国出阵使处参加决战。获取海量阅历、名望、混沌神石、一目神符、秘文等奖励。"
SpecialMsg[11] ={year =  2010, month = 0, day = {0}, hour = 15, minute = 55, level = {1, 150} , week = {6}, text = "时间：每周六16点到18点\r^fff600活动线路：^ffffff四线、五线、六线\r^fff600等级： ^ffffff英雄1级以上\r^fff600描述：^ffffff洛阳北邙地宫中的各种妖邪进攻洛阳新城，为保洛阳居民安全，请义士们拿起手中的武器，捍卫洛阳新城吧！"}
SpecialMsg[12] ={year =  2010, month = 0, day = {0}, hour = 16, minute = 0, level = {1, 150} , week = {6}, text = "时间：每周六16点到18点\r^fff600活动线路：^ffffff四线、五线、六线\r^fff600等级： ^ffffff英雄1级以上\r^fff600描述：^ffffff洛阳北邙地宫中的各种妖邪进攻洛阳新城，为保洛阳居民安全，请义士们拿起手中的武器，捍卫洛阳新城吧！"}
SpecialMsg[13] ={year =  2010, month = 0, day = {0}, hour = 16, minute = 15, level = {1, 150} , week = {6}, text = "时间：每周六16点到18点\r^fff600活动线路：^ffffff四线、五线、六线\r^fff600等级： ^ffffff英雄1级以上\r^fff600描述：^ffffff洛阳北邙地宫中的各种妖邪进攻洛阳新城，为保洛阳居民安全，请义士们拿起手中的武器，捍卫洛阳新城吧！"}
SpecialMsg[14] ={year =  2010, month = 0, day = {0}, hour = 17, minute = 0, level = {1, 150} , week = {6}, text = "时间：每周六16点到18点\r^fff600活动线路：^ffffff四线、五线、六线\r^fff600等级： ^ffffff英雄1级以上\r^fff600描述：^ffffff洛阳北邙地宫中的各种妖邪进攻洛阳新城，为保洛阳居民安全，请义士们拿起手中的武器，捍卫洛阳新城吧！"}
SpecialMsg[15] ={year =  2010, month = 11, day = {15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30}, hour = 18, minute = 0, level = {1, 150} , week = {6}, text = "18：00-24：00桃园村、白孔雀门、鸿固原西、司马庄、白马寺出现火尾虎踪迹，16级以上参与击杀之人都会获得奖赏，身上携带幸运钥匙，还可以收获重宝，各路英雄切莫错过良机！"}
SpecialMsg[16] ={year =  2010, month = 11, day = {15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30}, hour = 19, minute = 0, level = {1, 150} , week = {6}, text = "18：00-24：00桃园村、白孔雀门、鸿固原西、司马庄、白马寺出现火尾虎踪迹，16级以上参与击杀之人都会获得奖赏，身上携带幸运钥匙，还可以收获重宝，各路英雄切莫错过良机！"}
SpecialMsg[17] ={year =  2010, month = 11, day = {15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30}, hour = 20, minute = 0, level = {1, 150} , week = {6}, text = "18：00-24：00桃园村、白孔雀门、鸿固原西、司马庄、白马寺出现火尾虎踪迹，16级以上参与击杀之人都会获得奖赏，身上携带幸运钥匙，还可以收获重宝，各路英雄切莫错过良机！"}
SpecialMsg[18] ={year =  2010, month = 12, day = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19}, hour = 18, minute = 0, level = {1, 150} , week = {6}, text = "18：00-24：00桃园村、白孔雀门、鸿固原西、司马庄、白马寺出现火尾虎踪迹，16级以上参与击杀之人都会获得奖赏，身上携带幸运钥匙，还可以收获重宝，各路英雄切莫错过良机！"}
SpecialMsg[19] ={year =  2010, month = 12, day = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19}, hour = 19, minute = 0, level = {1, 150} , week = {6}, text = "18：00-24：00桃园村、白孔雀门、鸿固原西、司马庄、白马寺出现火尾虎踪迹，16级以上参与击杀之人都会获得奖赏，身上携带幸运钥匙，还可以收获重宝，各路英雄切莫错过良机！"}
SpecialMsg[20] ={year =  2010, month = 12, day = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19}, hour = 20, minute = 0, level = {1, 150} , week = {6}, text = "18：00-24：00桃园村、白孔雀门、鸿固原西、司马庄、白马寺出现火尾虎踪迹，16级以上参与击杀之人都会获得奖赏，身上携带幸运钥匙，还可以收获重宝，各路英雄切莫错过良机！"}
SpecialMsg[21] ={year =  2011, month = 1, day = {23}, hour = 19, minute = 0, level = {1, 150} , week = {0}, text = "19：00-24：00长安未央宫会出现大量宝箱、坛子、罐子、彩蛋，您随便砸，砸出的宝贝都是您的！有庆典锦囊的人别忘了找甜儿领取小锤子哦！5级以上均可参与，有混沌神石、斗神神兵、黄金套装哦！"}

-----------------------------
--界面初始化
-----------------------------
function Win_SpecialChannel:Init()
	self:RegisterEvent("Btn_Type6", self.OnShowMsg)
	DlgApi.ShowItem(self.this, "Btn_Type6", false)
end


function Win_SpecialChannel:ShowDialog()

end

-----------------------------
--计时显示内容
-----------------------------
local Win_SpecialChannel_time = 0
function Win_SpecialChannel:Tick(deltaTime)
	-- 当信息显示时开始计时
	local ztime = Win_SpecialChannel:ReTime(deltaTime)

	-- 获得服务器时间
	local spyy, spmm, spdd, sphh, spff = GameApi.GetServerTime()

	-- 计算当天是周几
	local weeknum = Win_SpecialChannel:Week(spyy, spmm, spdd)

	-- 筛选满足条件的信息
	local msg = Win_SpecialChannel:ShowMsg(spyy, spmm, spdd, sphh, spff, weeknum)

	-- 当到达设定时间时关闭信息显示
	if msg ~= "" and msg ~= "\r" then
		--DlgApi.ShowItem(self.this, "Btn_Type6", false)
		GameApi.AddDropHint(6)
	else
		--DlgApi.ShowItem(self.this, "Btn_Type6", true)
		GameApi.RemoveDropHint(6)
	end
end

-----------------------------
--筛选满足条件信息
-----------------------------
function Win_SpecialChannel:ShowMsg(yy, mm, dd, hh, ff, week)
	local ret = GameApi.GetPlayerBasicProp(0)
	local smg = ""
	for k, v in ipairs(SpecialMsg) do
		if yy == v.year and mm ==  v.month and hh == v.hour and ff == v.minute and ret.level >= v.level[1] and ret.level <= v.level[2] then
			for k1, v1 in ipairs(v.day) do
				if dd == v1 then
					smg = smg .. v.text .. "\r"
				end
			end
		elseif v.month == 0 and v.day[1] == 0 and ret.level >= v.level[1] and ret.level <= v.level[2] then
			for k1, v1 in ipairs(v.week) do
				if week == v1 and hh == v.hour and ff == v.minute then
					smg = smg .. v.text .. "\r"
				end
			end
		end
	end
	return smg
end

-----------------------------
--计时函数
-----------------------------
function Win_SpecialChannel:ReTime(dtime)
	if DlgApi.IsItemShow(self.this, "Btn_Type6") == false then
		Win_SpecialChannel_time = 0
	else
		Win_SpecialChannel_time = Win_SpecialChannel_time + dtime
	end
	return 	Win_SpecialChannel_time
end

-----------------------------
--根据年月日计算星期几
-----------------------------
function Win_SpecialChannel:Week(yy, mm, dd)
	if mm < 3 then
		c1 = math.floor((yy - 1)/100)
		MonthNum1 = mm + 12
		YearNum1 = yy - 1 - c1*100
	else
		c1 = math.floor(yy/100)
		MonthNum1 = mm
		YearNum1 = yy - c1*100
	end
	local WeekNum = (math.floor(c1/4) - 2*c1 + YearNum1 + math.floor(YearNum1/4) + math.floor(13*(MonthNum1 + 1)/5) + tonumber(dd) - 1) % 7
	return WeekNum
end

-----------------------------
--点击按钮显示信息
-----------------------------
function Win_SpecialChannel:OnShowMsg()

	-- 获得服务器时间
	local spyy, spmm, spdd, sphh, spff = GameApi.GetServerTime()

	-- 计算当天是周几
	local weeknum = Win_SpecialChannel:Week(spyy, spmm, spdd)

	-- 筛选满足条件的信息
	local msg = Win_SpecialChannel:ShowMsg(spyy, spmm, spdd, sphh, spff, weeknum)
	if msg ~= "" and msg ~= "\r" then
		DlgApi.ShowDialog("Win_SpecialChannel_Msg", true)
		DlgApi.SetItemText("Win_SpecialChannel_Msg", "Txt_Content", msg)
	end
end
--[[
-----------------------------
--设置界面位置
-----------------------------
function Win_SpecialChannel:Init()
	DlgApi.ShowItem(self.this, "Txt_Channel", false)
	Win_SpecialChannel:setpotsion()
end


function Win_SpecialChannel:ShowDialog()
	Win_SpecialChannel:setpotsion()
end

-----------------------------
--计时显示内容
-----------------------------
local Win_SpecialChannel_time = 0
function Win_SpecialChannel:Tick(deltaTime)
	-- 当信息显示时开始计时
	local ztime = Win_SpecialChannel:ReTime(deltaTime)

	-- 获得服务器时间
	local spyy, spmm, spdd, sphh, spff = GameApi.GetServerTime()

	-- 计算当天是周几
	local weeknum = Win_SpecialChannel:Week(spyy, spmm, spdd)

	-- 筛选满足条件的信息
	local msg = Win_SpecialChannel:ShowMsg(spyy, spmm, spdd, sphh, spff, weeknum)

	-- 当到达设定时间时关闭信息显示
	if ztime ~= 0 and ztime >= 10000 then DlgApi.ShowItem(self.this, "Txt_Channel", false) end

	-- 显示特殊频道信息
	if msg ~= "" then
		DlgApi.ShowItem(self.this, "Txt_Channel", true)
		Win_SpecialChannel:setpotsion()
		DlgApi.SetItemText(self.this, "Txt_Channel", msg)
	end
end

-----------------------------
--筛选满足条件信息
-----------------------------
function Win_SpecialChannel:ShowMsg(yy, mm, dd, hh, ff, week)
	local smg = ""
	for k, v in ipairs(SpecialMsg) do
		if yy == v.year and mm ==  v.month and dd == v.day and hh == v.hour and ff == v.minute then
			smg = smg .. v.text .. "\r"
		elseif v.month == 0 and v.day == 0 then
			for k1, v1 in ipairs(v.week) do
				if week == v1 and hh == v.hour and ff == v.minute then
					smg = smg .. v.text .. "\r"
				end
			end
		end
	end
	return smg
end

-----------------------------
--计时函数
-----------------------------
function Win_SpecialChannel:ReTime(dtime)
	if DlgApi.IsItemShow(self.this, "Txt_Channel") == false then
		Win_SpecialChannel_time = 0
	else
		Win_SpecialChannel_time = Win_SpecialChannel_time + dtime
	end
	return 	Win_SpecialChannel_time
end

-----------------------------
--根据年月日计算星期几
-----------------------------
function Win_SpecialChannel:Week(yy, mm, dd)
	if mm < 3 then
		c1 = math.floor((yy - 1)/100)
		MonthNum1 = mm + 12
		YearNum1 = yy - 1 - c1*100
	else
		c1 = math.floor(yy/100)
		MonthNum1 = mm
		YearNum1 = yy - c1*100
	end
	local WeekNum = (math.floor(c1/4) - 2*c1 + YearNum1 + math.floor(YearNum1/4) + math.floor(13*(MonthNum1 + 1)/5) + tonumber(dd) - 1) % 7
	return WeekNum
end

function Win_SpecialChannel:setpotsion()
	local WinPosSwitch = DlgApi.GetItemRect("Win_CharHead", "Img_Faction")
	local scale = DlgApi.GetWindowScale()
	if DlgApi.IsDialogShow(Win_AssociationTip) == false then
		DlgApi.SetDialogPosition(self.this, (WinPosSwitch.x + 40) * scale, (WinPosSwitch.y - 180) * scale)
	else
		if DlgApi.GetItemText("Win_AssociationTip", "Chk_Hide") == "隐" then
			DlgApi.SetDialogPosition(self.this, WinPosSwitch.x * scale, (WinPosSwitch.y - 490) * scale)
		else
			DlgApi.SetDialogPosition(self.this, (WinPosSwitch.x + 40) * scale, (WinPosSwitch.y - 180) * scale)
		end
	end
end
--]]
