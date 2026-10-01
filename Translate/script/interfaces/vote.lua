local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_Vote = DlgTemplate:new({this = "Win_Vote"})

VoteInfo = {}

VoteInfo[1] = {
	title = "Kingdom of Wei Great General Vote",	-- 投票界面标题
	intro = "^ff6fb3Description:^72fe00Vote to select your faction's Great General. Candidates are the top 20 warriors by kills in last month's faction battles.", -- 说明
	hint = "", -- 提示
	title_name = "Player Name", -- 列表第一列标题
	title_score = "Last Month Score", -- 列表第二列标题
	title_num = "Votes", -- 列表第三列标题
}

VoteInfo[2] = {
	title = "Kingdom of Shu Great General Vote",	-- 投票界面标题
	intro = "^ff6fb3Description:^72fe00Vote to select your faction's Great General. Candidates are the top 20 warriors by kills in last month's faction battles.", -- 说明
	hint = "", -- 提示
	title_name = "Player Name", -- 列表第一列标题
	title_score = "Last Month Score", -- 列表第二列标题
	title_num = "Votes", -- 列表第三列标题
}

VoteInfo[3] = {
	title = "Kingdom of Wu Great General Vote",	-- 投票界面标题
	intro = "^ff6fb3Description:^72fe00Vote to select your faction's Great General. Candidates are the top 20 warriors by kills in last month's faction battles.", -- 说明
	hint = "", -- 提示
	title_name = "Player Name", -- 列表第一列标题
	title_score = "Last Month Score", -- 列表第二列标题
	title_num = "Votes", -- 列表第三列标题
}
