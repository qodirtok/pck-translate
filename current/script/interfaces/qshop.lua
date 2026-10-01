local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_QShop = DlgTemplate:new({this = "Win_QShop"})


-----------------------------------
--界面初始化
-----------------------------------
function Win_QShop:Init()
    
end

AnnounceConf = 
{
	txt_stay_time = 40,		-- 每条公告滚动时间（秒）
	txt_move_speed = 30,	-- 公告滚动速度（像素/秒）
}

AnnounceSales = 
{
	-- 限时促销公告，注意时间填写的格式 year.month.day-hour:minute:second
	--[1] = { text = "^ffff00这是一条限时促销公告啊，限时促销公告每次都优先滚动。", startTime = "2012-7-12 0:30:59", endTime = "2012-8-12 0:30:59" },
	--[2] = { text = "^ff00ff限时促销公告请注意有效时间的填写格式，时间格式需要严格遵守。", startTime = "2012-7-15 0:30:59", endTime = "2012-8-20 0:30:59" },
	[1] = { text = "^ff5a00“天机材”于9月14日至9月16日八折销售，请查看限时促销处购买。", startTime = "2012-9-14 0:0:0", endTime = "2012-9-16 23:59:59" },
	[2] = { text = "^ff5a00商票商城全新上架“秘文相关”可购买秘文·心至秘文兵，欢迎玩家购买。", startTime = "2012-9-10 0:0:0", endTime = "2012-9-30 23:59:59" },
	[3] = { text = "^ff5a00“护卫如意礼包”、“护卫吉祥礼包”、“良师册”于9月10日至9月16日开始销售，请查看限时促销处购买。", startTime = "2012-9-10 0:0:0", endTime = "2012-9-16 23:59:59" },
}

AnnounceNormal = 
{
	[1] = "^ff5a00商票商城、汉铢商城已全面开启，欢迎玩家购买！",
	[2] = "^ff5a00新品“地慧刺”、“地灵刺”已上架，快去给装备附魂吧！",
	[3] = "^ff5a00商票商城可购买与元宝商城相同的物品，商票可在游戏内与官方网站获得！",
	[4] = "^ff5a00汉铢商城可购买药品、传送旗、时装等，欢迎购买。",
}

