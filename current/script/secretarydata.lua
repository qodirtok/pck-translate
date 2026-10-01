
SecretarySpecialIDMap = {}
SecretarySpecialIDMap.ItemId2Index =
{
--	用于物品id对应的提示状态的标记
--	[物品id] = 存储序号（从1顺序往后排，不可中间插入，不同表格中的物品id统一分配存储序号）

	["GAIN"] =		-- 获取物品
	{
    	[30893] = 1,--男时装
		[30895] = 2,--女时装
	},

	["USE"] =			-- 使用物品
	{
		[30893] = 3,--男时装
		[30895] = 4,--女时装
	},

	["EQUIP"] = 		-- 装备物品
	{
		[30893] = 5,--男时装
		[30895] = 6,--女时装

	},
}

SecretarySpecialIDMap.SkillId2Index =
{
--	用于技能id对应的提示状态的标记
--	[技能id] = 存储序号（从1顺序往后排，不可中间插入）
  ["LEARN"] =		-- 学习技能
	{
		[98] = 1,--轻功
		[99] = 2,--轻功
		[563] = 3,--轻功
		[569] = 4,--轻功
		[710] = 5,--变身
		[711] = 6,--召唤
	},

	["CAST"] =		-- 释放技能
	{
		[98] = 7,--轻功
		[99] = 8,--轻功
		[563] = 9,--轻功
		[569] = 10,--轻功
		[710] = 11,--变身
		[711] = 12,--召唤
	},
}

SecretarySpecialIDMap.TaskId2Index =
{
--	用于接受任务id对应的提示状态的标记
--	[任务id] = 存储序号（从1顺序往后排，不可中间插入，不同表格中的任务id统一分配存储序号）

["ACCEPT"] =		-- 接受任务
	{
    	[25133] = 1,
    	[666] = 2,
		[899]= 3,
		[900]= 3,
		[901]= 3,
		[902]= 3,
		[903]= 3,
		[904]= 3,
		[905]= 3,
		[906]= 3,
		[907]= 3,
		[908]= 3,
		[909]= 3,
		[910]= 3,
		[911]= 3,
		[912]= 3,
		[913]= 3,
		[914]= 3,
		[915]= 3,
		[916]= 3,

		[961]= 4,
		[929]= 4,
		[967]= 4,
		[970]= 4,
		[952]= 4,
		[982]= 4,
		[955]= 4,
		[945]= 4,
		[935]= 4,
		[958]= 4,
		[949]= 4,
		[932]= 4,
		[979]= 4,
		[942]= 4,
		[976]= 4,
		[938]= 4,
		[973]= 4,
		[964]= 4,



	},

	["FINISH"] = 		-- 完成任务
	{
    	[25133] = 5,
		[25134] = 6,
		[899]= 7,
		[900]= 7,
		[901]= 7,
		[902]= 7,
		[903]= 7,
		[904]= 7,
		[905]= 7,
		[906]= 7,
		[907]= 7,
		[908]= 7,
		[909]= 7,
		[910]= 7,
		[911]= 7,
		[912]= 7,
		[913]= 7,
		[914]= 7,
		[915]= 7,
		[916]= 7,

		[961]= 8,
		[929]= 8,
		[967]= 8,
		[970]= 8,
		[952]= 8,
		[982]= 8,
		[955]= 8,
		[945]= 8,
		[935]= 8,
		[958]= 8,
		[949]= 8,
		[932]= 8,
		[979]= 8,
		[942]= 8,
		[976]= 8,
		[938]= 8,
		[973]= 8,
		[964]= 8,
	},

	["COMPLETE"] = 		-- 完成任务
	{
    	[25133] = 9,
		[666] = 10,
        [961]= 11,
		[929]= 11,
		[967]= 11,
		[970]= 11,
		[952]= 11,
		[982]= 11,
		[955]= 11,
		[945]= 11,
		[935]= 11,
		[958]= 11,
		[949]= 11,
		[932]= 11,
		[979]= 11,
		[942]= 11,
		[976]= 11,
		[938]= 11,
		[973]= 11,
		[964]= 11,
	},
}

SecretarySpecialIDMap.BuffId2Index =
{
--	用于BUFF的id对应的提示状态的标记
--	[BUFFid] = 存储序号（从1顺序往后排，不可中间插入）
	[86] = 1,
}

function SecretarySpecialIDMap:GetItemIdIndex( opt, id )
	if ( self.ItemId2Index[opt][id] ) then
	    return self.ItemId2Index[opt][id]
	else
	    return 0
	end
end

function SecretarySpecialIDMap:GetSkillIdIndex( opt, id )
	if ( self.SkillId2Index[opt][id] ) then
	    return self.SkillId2Index[opt][id]
	else
	    return 0
	end
end

function SecretarySpecialIDMap:GetTaskIdIndex( opt, id )
	if ( self.TaskId2Index[opt][id] ) then
	    return self.TaskId2Index[opt][id]
	else
	    return 0
	end
end

function SecretarySpecialIDMap:GetBuffIdIndex( id )
	if ( self.BuffId2Index[id] ) then
	    return self.BuffId2Index[id]
	else
	    return 0
	end
end

-- 不受小助手关闭影响的事件id
SecretarySpecialEvent =
{
}
function SecretarySpecialEvent:GetSelf()
	return self
end

