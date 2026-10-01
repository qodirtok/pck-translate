---护卫动作相关逻辑
-----------------------------------------------------------------------------
-- Key动作的替补动作为Value
BackUpECMName = {}
BackUpECMName["反挑"] = "速挑"
BackUpECMName["横抡"] = "猛刺"
BackUpECMName["劲挑"] = "猛劈"
BackUpECMName["猛刺"] = "猛劈"
BackUpECMName["怒抡"] = "速抡"
BackUpECMName["怒劈"] = "速劈"
BackUpECMName["连刺"] = "连抡"
BackUpECMName["挑劈"] = "连劈"
BackUpECMName["特殊攻击10"] = "特殊攻击1"
BackUpECMName["特殊攻击10"] = "特殊攻击1"

local l_StrDefault = "普通攻击1"
guard_lua_act = {}
function guard_lua_act:GetBackUpECMName( strOldECMName )
	local strRet = BackUpECMName[strOldECMName]
	if strRet == nil then
		strRet = l_StrDefault
	end
	return strRet
end

-----------------------------------------------------------------------------------------------------
--- 道具ID对应的抓捕动作为 Value
CaptureTool_Actions = {}
CaptureTool_Actions[65879] = "抓捕动作1"
CaptureTool_Actions[65854] = "抓捕动作2"
CaptureTool_Actions[65873] = "抓捕动作3"
CaptureTool_Actions[65891] = "抓捕动作4"
local l_StrDefaultActionName = "默认抓捕动作"

function guard_lua_act:GetCaptureToolAction( idCaptureTool )
	local strRet = CaptureTool_Actions[idCaptureTool]
	if strRet == nil then
		strRet = l_StrDefaultActionName
	end
	return strRet
end

-----------以下函数是借用本文件的地方---------------------
pet_helper = {}
function pet_helper:GetCombineGfxName( HostGender, PetGender )
	local strGfx = {
	"策划联入\\11月策划联入\\合体效果1.gfx",
	"策划联入\\11月策划联入\\合体效果2.gfx",
	"策划联入\\11月策划联入\\合体效果3.gfx",
	"策划联入\\11月策划联入\\合体效果4.gfx",
	"策划联入\\11月策划联入\\合体效果5.gfx",
	"策划联入\\11月策划联入\\合体效果6.gfx",
	}
	local strAnimGfx = {
	"策划联入\\11月策划联入\\合体动画1.gfx",
	"策划联入\\11月策划联入\\合体动画2.gfx",
	"策划联入\\11月策划联入\\合体动画3.gfx",
	}
	
	local idxGfx = 1	-- 安全检查，如果非法输入，就播放1
	local idxAnimGfx = PetGender+1
	if idxAnimGfx < 1 or idxAnimGfx > 3 then
		idxAnimGfx = 1	-- 安全检查，如果非法输入，就播放1
	end
	
	if HostGender == 0 and PetGender == 0 then
		idxGfx = 4
	elseif HostGender == 0 and PetGender == 1 then
		idxGfx = 4
	elseif HostGender == 1 and PetGender == 0 then
		idxGfx = 4
	elseif HostGender == 1 and PetGender == 1 then
		idxGfx = 4
	elseif HostGender == 0 and PetGender == 2 then
		idxGfx = 4
	elseif HostGender == 0 and PetGender == 2 then
		idxGfx = 4
	end
	
	return 	strGfx[idxGfx],"HH_shou02",strAnimGfx[idxAnimGfx],"HH_Spine"  --持续光效和挂点 短光效和挂点
end

function pet_helper:GetPlaySummonAction( HostGender, IsRiding )
	if HostGender == 0 then
		if IsRiding == true then
			return "召唤_骑乘_通用"	-- 男骑
		else
			return "召唤_通用"	-- 男不骑
		end
	else
		if IsRiding == true then
			return "召唤_骑乘_通用"	-- 女骑
		else
			return "召唤_通用"	-- 女不骑
		end
	end
end


-----------以下函数是借用本文件的地方---------------------
---以下函数为配置月光马用，输入equipid，输出光效、挂点列表
---在HookGfxTable中列出所有与显隐相关的光效及挂点
---在equipid中，设置时间段开始、结束时间，以及显示或隐藏的光效及挂点，type = 1 {}，附合显示的为{}表内内容，{}为空则表示全隐，type = 0  反之
---在GetPetTimeGfx函数中，若返回值为0，则表示全隐

HookGfxTable = {}
HookGfxTable[73950] = {
		{"怪物\\通用\\月光马轨迹拖尾.gfx", "HH_Head"},
		{"怪物\\通用\\月光马蓝色烟雾.gfx", "HH_Head"},
		{"怪物\\通用\\月光马星象.gfx", "HH_Head"},
		{"怪物\\通用\\月光马星象.gfx", "HH_Hip"},
		{"怪物\\通用\\月光马星象1.gfx", "HH_Hip"},
		{"怪物\\通用\\月光马轨迹拖尾.gfx", "HH_Hip"},
		{"怪物\\通用\\月光马蓝色烟雾.gfx", "HH_Hip"},
		{"怪物\\通用\\月光马蓝色烟雾.gfx", "HH_Spine"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_fx01"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_fx02"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_fx03"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_fx04"},
		{"怪物\\通用\\月光马眼睛.gfx", "HH_lefteye"},
		{"怪物\\通用\\月光马轨迹拖尾.gfx", "HH_ride"},
		{"怪物\\通用\\月光马眼睛.gfx", "HH_righteye"},
		{"怪物\\通用\\月光马蓝色烟雾.gfx", "HH_毛发01"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_星辰01"},
		{"怪物\\通用\\月光马星线.gfx", "HH_星辰01"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰02"},
		{"怪物\\通用\\月光马飘带.gfx", "HH_星辰02"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰03"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰04"},
		{"怪物\\通用\\月光马飘带.gfx", "HH_星辰05"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰05"},
		{"怪物\\通用\\月光马星线.gfx", "HH_星辰06"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_星辰06"},
		{"怪物\\通用\\月光马星线.gfx", "HH_星辰06"},
		{"怪物\\通用\\月光马星象.gfx", "HH_星辰07"},
		{"怪物\\通用\\月光马飘带.gfx", "HH_星辰07"},
		{"怪物\\通用\\月光马星象5.gfx", "HH_星辰07"},
		{"怪物\\通用\\月光马飘带.gfx", "HH_星辰07"},
		{"怪物\\通用\\月光马星象.gfx", "HH_星辰08"},
		{"怪物\\通用\\月光马星象3.gfx", "HH_星辰08"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰10"},
		{"怪物\\通用\\月光马飘带.gfx", "HH_星辰11"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰11"},
		{"怪物\\通用\\月光马星线.gfx", "HH_星辰12"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_星辰12"},
		{"怪物\\通用\\月光马星线.gfx", "HH_星辰12"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_星辰12"},
		{"怪物\\通用\\月光马星线.gfx", "HH_星辰15"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_星辰15"},
		{"怪物\\通用\\月光马飘带.gfx", "HH_星辰16"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰16"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰17"},
		{"怪物\\通用\\月光马轨迹拖尾.gfx", "HH_星辰18"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰19"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰21"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰22"},
		{"怪物\\通用\\月光马星象4.gfx", "HH_星辰23"},
		{"怪物\\通用\\月光马蓝色烟雾.gfx", "HH_星辰23"}
}

HookGfxTable[76184] = {
		{"怪物\\通用\\月光马轨迹拖尾.gfx", "HH_Head"},
		{"怪物\\通用\\月光马蓝色烟雾.gfx", "HH_Head"},
		{"怪物\\通用\\月光马星象.gfx", "HH_Head"},
		{"怪物\\通用\\月光马星象.gfx", "HH_Hip"},
		{"怪物\\通用\\月光马星象1.gfx", "HH_Hip"},
		{"怪物\\通用\\月光马轨迹拖尾.gfx", "HH_Hip"},
		{"怪物\\通用\\月光马蓝色烟雾.gfx", "HH_Hip"},
		{"怪物\\通用\\月光马蓝色烟雾.gfx", "HH_Spine"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_fx01"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_fx02"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_fx03"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_fx04"},
		{"怪物\\通用\\月光马眼睛.gfx", "HH_lefteye"},
		{"怪物\\通用\\月光马轨迹拖尾.gfx", "HH_ride"},
		{"怪物\\通用\\月光马眼睛.gfx", "HH_righteye"},
		{"怪物\\通用\\月光马蓝色烟雾.gfx", "HH_毛发01"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_星辰01"},
		{"怪物\\通用\\月光马星线.gfx", "HH_星辰01"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰02"},
		{"怪物\\通用\\月光马飘带.gfx", "HH_星辰02"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰03"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰04"},
		{"怪物\\通用\\月光马飘带.gfx", "HH_星辰05"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰05"},
		{"怪物\\通用\\月光马星线.gfx", "HH_星辰06"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_星辰06"},
		{"怪物\\通用\\月光马星线.gfx", "HH_星辰06"},
		{"怪物\\通用\\月光马星象.gfx", "HH_星辰07"},
		{"怪物\\通用\\月光马飘带.gfx", "HH_星辰07"},
		{"怪物\\通用\\月光马星象5.gfx", "HH_星辰07"},
		{"怪物\\通用\\月光马飘带.gfx", "HH_星辰07"},
		{"怪物\\通用\\月光马星象.gfx", "HH_星辰08"},
		{"怪物\\通用\\月光马星象3.gfx", "HH_星辰08"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰10"},
		{"怪物\\通用\\月光马飘带.gfx", "HH_星辰11"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰11"},
		{"怪物\\通用\\月光马星线.gfx", "HH_星辰12"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_星辰12"},
		{"怪物\\通用\\月光马星线.gfx", "HH_星辰12"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_星辰12"},
		{"怪物\\通用\\月光马星线.gfx", "HH_星辰15"},
		{"怪物\\通用\\蓝紫色光晕.gfx", "HH_星辰15"},
		{"怪物\\通用\\月光马飘带.gfx", "HH_星辰16"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰16"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰17"},
		{"怪物\\通用\\月光马轨迹拖尾.gfx", "HH_星辰18"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰19"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰21"},
		{"怪物\\通用\\月光马星线2.gfx", "HH_星辰22"},
		{"怪物\\通用\\月光马星象4.gfx", "HH_星辰23"},
		{"怪物\\通用\\月光马蓝色烟雾.gfx", "HH_星辰23"}
}
function GetPetHookGfxTable( id )
	if HookGfxTable[id] ~= nil then
		return HookGfxTable[id]
	else
		return 0
	end
end

equipid = {}
equipid[73950] = 
{
	{
		start = 0,
		finish = 8,
		type = 0,
	},
	{
		start = 8,
		finish = 20,
		type = 1,
	},
	{
		start = 20,
		finish = 24,
		type = 0,
	}
}

equipid[76184] = 
{
	{
		start = 0,
		finish = 8,
		type = 0,
	},
	{
		start = 8,
		finish = 20,
		type = 1,
	},
	{
		start = 20,
		finish = 24,
		type = 0,
	}
}


function GetPetTimeGfx( PetID, iHour )
	if equipid[PetID] == nil then
		return 0
	end
	
	for i,v in pairs(equipid[PetID]) do
		if v.start <= iHour and v.finish > iHour then
			return v
		end
	end

	return 0
	
end


