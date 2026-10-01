
SecretarySpecialIDMap = {}
SecretarySpecialIDMap.ItemId2Index =
{
--	Used to mark hint states corresponding to item IDs
--	[Item ID] = Storage index (sequentially numbered from 1, cannot insert in the middle; item IDs across different tables are assigned storage indices uniformly)

	["GAIN"] =		-- Obtain Item
	{
    	[30893] = 1,--Male Costume
		[30895] = 2,--Female Costume
	},

	["USE"] =			-- Use Item
	{
		[30893] = 3,--Male Costume
		[30895] = 4,--Female Costume
	},

	["EQUIP"] = 		-- Equip Item
	{
		[30893] = 5,--Male Costume
		[30895] = 6,--Female Costume

	},
}

SecretarySpecialIDMap.SkillId2Index =
{
--	Used to mark hint states corresponding to skill IDs
--	[Skill ID] = Storage index (sequentially numbered from 1, cannot insert in the middle)
  ["LEARN"] =		-- Learn Skill
	{
		[98] = 1,--Qinggong
		[99] = 2,--Qinggong
		[563] = 3,--Qinggong
		[569] = 4,--Qinggong
		[710] = 5,--Transform
		[711] = 6,--Summon
	},

	["CAST"] =		-- Cast Skill
	{
		[98] = 7,--Qinggong
		[99] = 8,--Qinggong
		[563] = 9,--Qinggong
		[569] = 10,--Qinggong
		[710] = 11,--Transform
		[711] = 12,--Summon
	},
}

SecretarySpecialIDMap.TaskId2Index =
{
--	Used to mark hint states corresponding to accepted quest IDs
--	[Quest ID] = Storage index (sequentially numbered from 1, cannot insert in the middle; quest IDs across different tables are assigned storage indices uniformly)

["ACCEPT"] =		-- Accept Quest
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

	["FINISH"] = 		-- Complete Quest
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

	["COMPLETE"] = 		-- Complete Quest
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
--	Used to mark hint states corresponding to BUFF IDs
--	[BUFF ID] = Storage index (sequentially numbered from 1, cannot insert in the middle)
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

-- Event IDs not affected by assistant closure
SecretarySpecialEvent =
{
}
function SecretarySpecialEvent:GetSelf()
	return self
end

