local DlgApi = DlgApi
local GameApi = GameApi

Win_FlowerGuide = DlgTemplate:new({this = "Win_FlowerGuide"})

levelupshow = {}	--旧的引导已经转为新的
-- levelupshow[1] = {"花娘：你好~欢迎进入赤壁！","花娘：我是你的朋友花娘，将会伴随你一起旅行哦！"}
-- levelupshow[2] = {"花娘：你升级好快呀！继续加油哦！我会陪着你一起升级！"}
-- levelupshow[9] = {"花娘：恭喜你达到9级！再升1级，你就可以获得官职了！官阶俸禄每日领取！更有特殊属性加成的官阶称号哦！"}
-- levelupshow[11] = {"花娘：恭喜你达到11级！将等级提升至17级，就可以获得一个成就哦！^tip"}
-- levelupshow[12] = {"温馨小贴士——当前适合的挂机地图为：河北，通过点击迷你地图上的挂机按钮即可开始挂机哦！"}
-- levelupshow[15] = {"花娘：恭喜你达到15级！再升1级，你就可以参加英雄玄石活动啦！还有缤纷的节日活动等你参与，海量奖励拿到手软！"}
-- levelupshow[16] = {"花娘：恭喜你达到16级！你现在可以参加英雄玄石、桃园告急等等高奖励日常活动啦！点击下面的活动日历即可知道详情哦！"}
-- levelupshow[17] = {"温馨小贴士——英雄玄石活动为每日12点后，领取英雄玄石，完成任务获得丰富奖励！"}
-- levelupshow[18] = {"温馨小贴士——桃园告急活动为每日14:00、16:00、18:00、20:00、22:00，完成任务获得海量奖励！"}
-- levelupshow[19] = {"温馨小贴士——当前适合的挂机地图为：西凉，通过点击迷你地图上的挂机按钮即可开始挂机哦！"}
-- levelupshow[21] = {"花娘：恭喜你达到21级！一个人升级是否觉得无聊呢？你可以拜个师傅，有他的帮助，你可以更快的升级哦！"}
-- levelupshow[22] = {"花娘：恭喜你达到22级！可找到各地巧匠了解装备相关功能哦！"}
-- levelupshow[28] = {"花娘：恭喜你达到28级！乱世不平，何不找个伴侣，携伴江湖？"}
-- levelupshow[29] = {"温馨小贴士——当前适合的挂机地图为：巴蜀，通过点击迷你地图上的挂机按钮即可开始挂机哦！"}
-- levelupshow[32] = {"花娘：恭喜你达到32级！你可以查看你的成就列表哦！^tip"}
-- levelupshow[35] = {"花娘：恭喜你达到35级！觉得升级慢吗？参加桃园告急活动可获得海量历练哦！"}
-- levelupshow[38] = {"花娘：你有军团吗？花娘推荐你加入军团哦！这样可以和朋友们一起去更快的完成任务和活动！可点击交友平台寻找军团哦！"}
-- levelupshow[39] = {"温馨小贴士——当前适合的挂机地图为：南蛮，通过点击迷你地图上的挂机按钮即可开始挂机哦！"}
-- levelupshow[40] = {"花娘：恭喜你达到40级！这一路相伴，你是否喜欢花娘？带着不舍的心情，花娘要与你道别了，期待日后有机会和你再次相见！","现在你可以学习如何招纳护卫了，若有缘，你可以招纳花娘作为你的护卫！帮你一起战斗，共闯天下！乱世——有你不寂寞。"}


function Win_FlowerGuide:Init()

    self:RegisterEvent(LUA_EVENT_FLOWER_GUIDE, self.OnEventFlowerGuide)

end

flower_guide = {}
--玩家升级
function flower_guide:GetPlayerLevelUpTip(level)
	return levelupshow[level]
end

--花娘引导触发条件类型：

--GUIDE_FINISH_TASK
--GUIDE_USE_EQUIPMENT
--GUIDE_RIDING
--GUIDE_PLAYER_LEVEL_UP
--GUIDE_POSITION_LEVEL_UP
--GUIDE_PROFESSION_LEVEL_UP
--GUIDE_EQUIPMENT_BROKEN
--GUIDE_LEVEL_UNMATCH

--花娘引导填写格式举例：
flower_guide_condition = {}
-- flower_guide_condition[0] = {type = GUIDE_FINISH_TASK, task = 100, equipment = 100, level = 100, positionID = 100（这个是ID）, positionLevel = 100（这个是等级）, skillID = 100, skillLevel = 100, professionLevel = 100 }
-- flower_guide_condition[10] = { type = GUIDE_FINISH_TASK, task = 25747}
-- flower_guide_condition[20] = { type = GUIDE_USE_EQUIPMENT, equipment = 1093}	--穿装备
-- flower_guide_condition[30] = { type = GUIDE_RIDING }
-- flower_guide_condition[40] = { type = GUIDE_USE_EQUIPMENT, equipment = 79458}	--穿时装
-- flower_guide_condition[50] = { type = GUIDE_PLAYER_LEVEL_UP, level = 28}
-- flower_guide_condition[60] = { type = GUIDE_POSITION_LEVEL_UP, positionID = 4102}	--升官
-- flower_guide_condition[70] = { type = GUIDE_PROFESSION_LEVEL_UP, professionLevel = 2 }	--升兵种
-- flower_guide_condition[80] = { type = GUIDE_EQUIPMENT_BROKEN }	--修装备


--以下是普通的花娘引导
	flower_guide_condition[1] 	  = { type = GUIDE_PLAYER_LEVEL_UP, level = 1 }		--提示使用箭头引导
	flower_guide_condition[10] 	  = { type = GUIDE_PLAYER_LEVEL_UP, level = 2 }		--原花娘引导："花娘：你升级好快呀！继续加油哦！我会陪着你一起升级！"
	flower_guide_condition[20] 	  = { type = GUIDE_FINISH_TASK, task = 30350 }	--完成穿装备任务后，提示玩家装备有品质
	flower_guide_condition[30] 	  = { type = GUIDE_RIDING }						--骑坐骑后，提示坐骑信息
	flower_guide_condition[40]    = { type = GUIDE_USE_EQUIPMENT, equipment = 30893 }	--穿上时装后弹出提示 男
	flower_guide_condition[41]    = { type = GUIDE_USE_EQUIPMENT, equipment = 30895 }	--穿上时装后弹出提示 女
	flower_guide_condition[50] 	  = { type = GUIDE_PLAYER_LEVEL_UP, level = 8 }		--玩家到达8级后，告知玩家怎么用轻功
	flower_guide_condition[60] 	  = { type = GUIDE_PLAYER_LEVEL_UP, level = 9 }		--原花娘引导："花娘：恭喜你达到9级！再升1级，你就可以获得官职了！官阶俸禄每日领取！更有特殊属性加成的官阶称号哦！"
	flower_guide_condition[70] 	  = { type = GUIDE_PROFESSION_LEVEL_UP, professionLevel = 2 }	--玩家提升兵种后，提示兵种信息
	flower_guide_condition[80] 	  = { type = GUIDE_POSITION_LEVEL_UP, positionID = 4101 }		--玩家提升官职后，提示官职信息
	flower_guide_condition[90] 	  = { type = GUIDE_PLAYER_LEVEL_UP, level = 11 }		--原花娘引导："花娘：恭喜你达到11级！将等级提升至17级，就可以获得一个成就哦！^tip"
	flower_guide_condition[100]   = { type = GUIDE_PLAYER_LEVEL_UP, level = 12 }		--原花娘引导："花娘：当前适合的挂机地图为：河北，通过点击迷你地图上的挂机按钮即可开始挂机哦！"
	flower_guide_condition[110]   = { type = GUIDE_PLAYER_LEVEL_UP, level = 15 }		--原花娘引导："花娘：恭喜你达到15级！再升1级，你就可以参加英雄玄石活动啦！还有缤纷的节日活动等你参与，海量奖励拿到手软！"
	flower_guide_condition[120]   = { type = GUIDE_PLAYER_LEVEL_UP, level = 16 }		--原花娘引导："花娘：恭喜你达到16级！你现在可以参加英雄玄石、桃园告急等等高奖励日常活动啦！点击下面的活动日历即可知道详情哦！"
	flower_guide_condition[130]   = { type = GUIDE_PLAYER_LEVEL_UP, level = 17 }		--原花娘引导："花娘：英雄玄石活动为每日12点后，领取英雄玄石，完成任务获得丰富奖励！"
	flower_guide_condition[140]   = { type = GUIDE_PLAYER_LEVEL_UP, level = 18 }		--原花娘引导："花娘：桃园告急活动为每日14:00、16:00、18:00、20:00、22:00，完成任务获得海量奖励！"
	flower_guide_condition[150]   = { type = GUIDE_PLAYER_LEVEL_UP, level = 19 }		--原花娘引导："花娘：当前适合的挂机地图为：西凉，通过点击迷你地图上的挂机按钮即可开始挂机哦！"
	flower_guide_condition[160]   = { type = GUIDE_PLAYER_LEVEL_UP, level = 21 }		--原花娘引导："花娘：恭喜你达到21级！一个人升级是否觉得无聊呢？你可以拜个师傅，有他的帮助，你可以更快的升级哦！"
	flower_guide_condition[170]   = { type = GUIDE_PLAYER_LEVEL_UP, level = 22 }		--原花娘引导："花娘：恭喜你达到22级！可找到各地巧匠了解装备相关功能哦！"
	flower_guide_condition[180]   = { type = GUIDE_PLAYER_LEVEL_UP, level = 28 }		--原花娘引导："花娘：恭喜你达到28级！乱世不平，何不找个伴侣，携伴江湖？"
	flower_guide_condition[190]   = { type = GUIDE_PLAYER_LEVEL_UP, level = 29 }		--原花娘引导："花娘：当前适合的挂机地图为：巴蜀，通过点击迷你地图上的挂机按钮即可开始挂机哦！"
	flower_guide_condition[200]   = { type = GUIDE_PLAYER_LEVEL_UP, level = 32 }		--原花娘引导："花娘：恭喜你达到32级！你可以查看你的成就列表哦！^tip"
	flower_guide_condition[210]   = { type = GUIDE_PLAYER_LEVEL_UP, level = 35 }		--原花娘引导："花娘：恭喜你达到35级！觉得升级慢吗？参加桃园告急活动可获得海量历练哦！"
	flower_guide_condition[220]   = { type = GUIDE_PLAYER_LEVEL_UP, level = 38 }		--原花娘引导："花娘：你有军团吗？花娘推荐你加入军团哦！这样可以和朋友们一起去更快的完成任务和活动！可点击交友平台寻找军团哦！"
	flower_guide_condition[230]   = { type = GUIDE_PLAYER_LEVEL_UP, level = 39 }		--原花娘引导："花娘：当前适合的挂机地图为：南蛮，通过点击迷你地图上的挂机按钮即可开始挂机哦！"
	flower_guide_condition[240]   = { type = GUIDE_PLAYER_LEVEL_UP, level = 40 }		--原花娘引导："花娘：恭喜你达到40级！这一路相伴，你是否喜欢花娘？带着不舍的心情，花娘要与你道别了，期待日后有机会和你再次相见！","现在你可以学习如何招纳护卫了，若有缘，你可以招纳花娘作为你的护卫！帮你一起战斗，共闯天下！乱世——有你不寂寞。"
	flower_guide_condition[250]   = { type = GUIDE_EQUIPMENT_BROKEN }					--若有装备快坏了则弹出修装备提示

--以下是与玩家等级对比，不满足时出提示，对比内容是玩家等级和兵种等级
	-- flower_guide_condition[1000]  = { type = GUIDE_LEVEL_UNMATCH, level = 1 , professionLevel = 1  }
	-- flower_guide_condition[1010]  = { type = GUIDE_LEVEL_UNMATCH, level = 10, professionLevel = 2  }
	flower_guide_condition[1020]  = { type = GUIDE_LEVEL_UNMATCH, level = 20, professionLevel = 11 }
	flower_guide_condition[1030]  = { type = GUIDE_LEVEL_UNMATCH, level = 30, professionLevel = 21 }
	flower_guide_condition[1040]  = { type = GUIDE_LEVEL_UNMATCH, level = 40, professionLevel = 31 }
	-- flower_guide_condition[1050]  = { type = GUIDE_LEVEL_UNMATCH, level = 50, professionLevel = 41 }
	-- flower_guide_condition[1060]  = { type = GUIDE_LEVEL_UNMATCH, level = 60, professionLevel = 51 }
	-- flower_guide_condition[1070]  = { type = GUIDE_LEVEL_UNMATCH, level = 70, professionLevel = 62 }
	-- flower_guide_condition[1080]  = { type = GUIDE_LEVEL_UNMATCH, level = 80, professionLevel = 63 }

--以下是与玩家等级对比，不满足时出提示，对比内容是玩家等级和官职等级
	-- flower_guide_condition[2010]  = { type = GUIDE_LEVEL_UNMATCH, level = 10, positionID = 4101 }
	flower_guide_condition[2020]  = { type = GUIDE_LEVEL_UNMATCH, level = 20, positionID = 4102 }
	flower_guide_condition[2030]  = { type = GUIDE_LEVEL_UNMATCH, level = 30, positionID = 4103 }
	flower_guide_condition[2040]  = { type = GUIDE_LEVEL_UNMATCH, level = 40, positionLevel = 1 }
	-- flower_guide_condition[2050]  = { type = GUIDE_LEVEL_UNMATCH, level = 50, positionLevel = 2 }
	-- flower_guide_condition[2060]  = { type = GUIDE_LEVEL_UNMATCH, level = 60, positionLevel = 3 }
	-- flower_guide_condition[2070]  = { type = GUIDE_LEVEL_UNMATCH, level = 61, positionLevel = 4 }
	-- flower_guide_condition[2080]  = { type = GUIDE_LEVEL_UNMATCH, level = 62, positionLevel = 5 }
	-- flower_guide_condition[2090]  = { type = GUIDE_LEVEL_UNMATCH, level = 63, positionLevel = 6 }
	-- flower_guide_condition[2100]  = { type = GUIDE_LEVEL_UNMATCH, level = 64, positionLevel = 7 }
	-- flower_guide_condition[2110]  = { type = GUIDE_LEVEL_UNMATCH, level = 65, positionLevel = 8 }
	-- flower_guide_condition[2120]  = { type = GUIDE_LEVEL_UNMATCH, level = 66, positionLevel = 9 }


--触发条件类型检测
function Win_FlowerGuide:OnEventFlowerGuide(event, nType)

	--DlgApi.ShowDialog("Win_FlowerGuide", true);

	--DlgApi.SetItemText("Win_FlowerGuide", "Txt_Tip", tostring(level));

	--local playerBasicProp = GameApi.GetPlayerBasicProp(0);

	--DlgApi.SetItemText("Win_FlowerGuide", "Txt_Tip", playerBasicProp.name);

	for i, condition in pairs(flower_guide_condition) do
		if condition.type == GUIDE_FINISH_TASK then self:OnFinishTask(i, condition)
		elseif condition.type == GUIDE_USE_EQUIPMENT then self:OnUseEquipment(i, condition)
		elseif condition.type == GUIDE_RIDING then self:OnRiding(i, condition)
		elseif condition.type == GUIDE_PLAYER_LEVEL_UP then self:OnPlayerLevelUp(i, condition)
		elseif condition.type == GUIDE_POSITION_LEVEL_UP then self:OnPositionLevelUp(i, condition)
		elseif condition.type == GUIDE_PROFESSION_LEVEL_UP then self:OnProfessionLevelUp(i, condition)
		elseif condition.type == GUIDE_EQUIPMENT_BROKEN then
			if nType == GUIDE_EQUIPMENT_BROKEN then
				self:OnEquipmentBroken(i, condition)
			end
		elseif condition.type == GUIDE_LEVEL_UNMATCH then
			if nType == GUIDE_LEVEL_UNMATCH then
				self:OnLevelUnmatch(i, condition)
			end
		end

	end

end

--完成任务
function Win_FlowerGuide:OnFinishTask(index, condition)

	if GameApi.IsTaskFinished(condition.task) and not GameApi.CheckFlowerGuideRecord("task", tostring(condition.task)) then
		GameApi.SendFlowerGuideText(FlowerGuide[index]);

		GameApi.SaveFlowerGuideRecord("task", tostring(condition.task))
	end
end

--使用装备
function Win_FlowerGuide:OnUseEquipment(index, condition)

	if GameApi.FindInEquipmentPack(condition.equipment) and not GameApi.CheckFlowerGuideRecord("equipment", tostring(condition.equipment)) then
		GameApi.SendFlowerGuideText(FlowerGuide[index]);

		GameApi.SaveFlowerGuideRecord("equipment", tostring(condition.equipment))
	end
end

--骑乘状态
function Win_FlowerGuide:OnRiding(index, condition)

	if GameApi.IsRide() and not GameApi.CheckFlowerGuideRecord("riding", "riding") then
		GameApi.SendFlowerGuideText(FlowerGuide[index]);

		GameApi.SaveFlowerGuideRecord("riding", "riding")
	end

end

--玩家升级
function Win_FlowerGuide:OnPlayerLevelUp(index, condition)

	local playerBasicProp = GameApi.GetPlayerBasicProp(0);

	if (condition.level == playerBasicProp.level) and not GameApi.CheckFlowerGuideRecord("level", tostring(condition.level)) then
		GameApi.SendFlowerGuideText(FlowerGuide[index]);

		GameApi.SaveFlowerGuideRecord("level", tostring(condition.level))
	end

end

--官职升级
function Win_FlowerGuide:OnPositionLevelUp(index, condition)


	if GameApi.hasPositionTitle(condition.positionID) and not GameApi.CheckFlowerGuideRecord("position", tostring(condition.positionID)) then
		GameApi.SendFlowerGuideText(FlowerGuide[index]);

		GameApi.SaveFlowerGuideRecord("position", tostring(condition.positionID))
	end

end

--主兵种升级
function Win_FlowerGuide:OnProfessionLevelUp(index, condition)

	local playerBasicProp = GameApi.GetPlayerBasicProp(0);

	if (condition.professionLevel == playerBasicProp.proflevel) and not GameApi.CheckFlowerGuideRecord("profession", tostring(condition.professionLevel)) then
		GameApi.SendFlowerGuideText(FlowerGuide[index]);

		GameApi.SaveFlowerGuideRecord("profession", tostring(condition.professionLevel))
	end

end

--装备即将损坏
function Win_FlowerGuide:OnEquipmentBroken(index, condition)

	brokenList = GameApi.GetEquipBrokenList();
	if #brokenList ~= 0 then
		GameApi.SendFlowerGuideText(FlowerGuide[index]);

	end

end

--等级不匹配
function Win_FlowerGuide:OnLevelUnmatch(index, condition)

	local playerBasicProp = GameApi.GetPlayerBasicProp(0)
	local level = playerBasicProp.level



	local unmatch = false

	if (condition.level == level) then

		if (condition.positionID ~= nil) then
			if not GameApi.hasPositionTitle(condition.positionID) then unmatch = true end
		elseif (condition.positionLevel ~= nil) then
			local maxPositionLevel = GameApi.GetMaxPositionLevel
			if (condition.positionLevel > maxPositionLevel) then unmatch = true end
		elseif (condition.professionLevel ~=nil) then
			local professionLevel = playerBasicProp.proflevel
			if (condition.professionLevel > professionLevel) then unmatch = true end
		elseif (condition.skillID ~= nil) then
			local skillLevel = GameApi.GetSKillLevelByID(condition.skillID)
			if (condition.skillLevel > skillLevel) then unmatch = true end
		end
	end

	if unmatch then
		GameApi.SendFlowerGuideText(FlowerGuide[index]);
	end


end



