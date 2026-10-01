local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_Vote = DlgTemplate:new({this = "Win_Vote"})

VoteInfo = {}

VoteInfo[1] = {
	title = "魏国大将军投票",	-- 投票界面标题
	intro = "^ff6fb3说明:^72fe00投票选出本阵营的建威大将军，参选人为上月在阵营约战中杀敌数名列前20名的勇士。", -- 说明
	hint = "", -- 提示
	title_name = "玩家名字", -- 列表第一列标题
	title_score = "上月积分", -- 列表第二列标题
	title_num = "票数", -- 列表第三列标题
}

VoteInfo[2] = {
	title = "蜀国大将军投票",	-- 投票界面标题
	intro = "^ff6fb3说明:^72fe00投票选出本阵营的建威大将军，参选人为上月在阵营约战中杀敌数名列前20名的勇士。", -- 说明
	hint = "", -- 提示
	title_name = "玩家名字", -- 列表第一列标题
	title_score = "上月积分", -- 列表第二列标题
	title_num = "票数", -- 列表第三列标题
}

VoteInfo[3] = {
	title = "吴国大将军投票",	-- 投票界面标题
	intro = "^ff6fb3说明:^72fe00投票选出本阵营的建威大将军，参选人为上月在阵营约战中杀敌数名列前20名的勇士。", -- 说明
	hint = "", -- 提示
	title_name = "玩家名字", -- 列表第一列标题
	title_score = "上月积分", -- 列表第二列标题
	title_num = "票数", -- 列表第三列标题
}
