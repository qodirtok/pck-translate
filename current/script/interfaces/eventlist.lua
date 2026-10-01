local PLUN = function (v) return v or true end
--local PLUN = loadfile "test/plun.lua" "script/interfaces/eventlist.lua"

local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

local Win_EventList = DlgTemplate:new({this = "Win_EventList"})

----------------------
--当表中某一项数据随角色信息而变化时，将其写为函数，数据为函数返回值
--使用此数据时，用 convertValue 进行转换
----------------------
local function convertValue (valueOrFunc)
	if type(valueOrFunc) == "function" then
		return valueOrFunc()
	else
		return valueOrFunc
	end
end
----------------------------------
--[[
活动表的说明

--]]
----------------------------------
EventList = {n=35}
EventList[1]	 = {
		name = "白帝城争夺战", --活动名称
		isNew = false,        --无视
		type = "^ff9c00阵营",  --阵营的文本显示
		level = "60级",        --等级的文本显示
		MaxDayNum = -1,        --每日次数 -1为无
		MaxWeekNum = 1,        --每周次数 -1为无
		time = "周三20点至22点",   --活动时间的文本显示
		weekday = {3},  --周几开启，0为周日！
		starttime = {"20h0m"}, --！！一定要加{}！！活动的开启时间，若有多段开启时间，则用逗号隔开
		duration	= 120,   --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		autopath = "#41907#", --自动寻路的NPCid
		content = "两百年前的蜀帝公孙述在白帝城复活，三国\r将士可以赶往白帝城，决定白帝城要塞的归属权。争夺\r战中有可能会获得鸿羽、碎羽、君王九锡、战魂物品和\r大量名望。占领国还可以获得特殊的占领任务。\r^ff6fb3本活动每周可完成1次。活动线路为7线。^ffffff",
		eventtype = {3},  -- 活动的类型 1为推荐 2为节日 3为社交
		reward = {79829}, --奖励的物品ID
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		minlevel = 60,       --显示此活动玩家的最小等级
		maxlevel = 130,      --显示此活动玩家的最高等级
		icon = "CB\\EventIcon\\qianli.dds",  --活动图标
		taskAnd = nil,    --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		taskOr = {23478}  --完成的任务ID，可用逗号隔开，完成一个则视为活动完成
	}
EventList[2]	 = {
		name = "结义任务",
		isNew = false,
		type = "^fff600军团",
		level = "12级",
		MaxDayNum = 1,
		MaxWeekNum = -1,
		time = "全天",
		weekday = {0,1,2,3,4,5,6},
		starttime = nil,
		duration	= nil,
		autopath = "#6243#",
		content = "每日可在结义管理员处学习结义兵法，提\r升活跃度，为结义做贡献！\r^ff6fb3本活动每日可完成1次。^ffffff",
		eventtype = {3},
		reward = {92470},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		 minlevel = 12,
		 maxlevel = 130,
		icon = "CB\\EventIcon\\pingfan.dds",
		taskAnd = nil,
		taskOr = {1959,1960,1961,1962}
	}
EventList[3]	 = {
		name = "惩凶平叛",
		isNew = false,
		type = "^fff600军团",
		level = "16级",
		MaxDayNum = 1,
		MaxWeekNum = -1,
		time = "全天",
		weekday = {0,1,2,3,4,5,6},
		starttime = nil,
		duration	=nil,
		autopath = "#3355#",
		content = "每日可在皇甫炎处领取“惩凶平叛”任务，前往\r消灭军团叛将，获得军团贡献，领取丰厚奖励！\r^ff6fb3本活动每日可完成1次。^ffffff",
		eventtype = {3},
		reward = {92469},
		quickFinishTaskID = 26190, --快速完成任务ID
		quickFinishItemID = 80382,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 2,		----快速完成需要消耗的道具数量
		 minlevel = 16,
		 maxlevel = 130,
		icon = "CB\\EventIcon\\xiongnu.dds",
		taskAnd = nil,
		taskOr = {3387,3388,3390,3391,3392,3393,3394,3395,3396,3397,9556,9557,9558,20604,20605,20606}
	}
EventList[4]	 = {
		name = "农场偷菜",
		isNew = false,
		type = "^fff600军团",
		level = "15级",
		MaxDayNum = 5,
		MaxWeekNum = -1,
		time = "全天",
		weekday = {0,1,2,3,4,5,6},
		starttime = nil,
		duration = nil,
		autopath = "#45869#",
		content = "每日可在本方军团基地的农场果园护工处领取日常任务\r“领取收获工具（每日五次）”获得“军团农刀”，既可以在本方\r军团农场果园中收获，也可以去敌方军团基地中偷取！\r^ff6fb3本活动每日可完成5次。^ffffff",
		eventtype = {3},
		reward = {79829},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		 minlevel = 15,
		 maxlevel = 130,
		icon = "CB\\EventIcon\\qianli.dds",
		taskAnd = nil,
		taskOr = {17652}
	}
EventList[5]	 = {
		name = "英雄玄石",
		isNew = false,
		type = "^ffa083奇遇",
		level = "16级",
		MaxDayNum = 3,
		MaxWeekNum = -1,
		time = "12点至24点",
		weekday = {0,1,2,3,4,5,6},
		starttime = {"12h0m"},
		duration	= 710,
		autopath = "#26447#",
		content = "每日中午12点后可在未央宫前领取3枚英雄玄石，\r完成“惩凶平叛”、“基地平叛”、“结义兵法”、“押镖护送”、“莫问今朝”、“桃园告急”\r六个个任务中的任意三个，可获得海量经验和奖励！\r^ff6fb3本活动每日包含3个任务。\r使用快捷完成功能需在领取英雄玄石之前。^ffffff",
		eventtype = {1},
		reward = {92461},
		quickFinishTaskID = 26534, --快速完成任务ID
		quickFinishItemID = 80382,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 3,		----快速完成需要消耗的道具数量
		 minlevel = 16,
		 maxlevel = 130,
		icon = "CB\\EventIcon\\qianli.dds",
		taskAnd = nil,
		taskOr = {18046,18047,10540,18854,15859,15860,15861,15862,15863,23455,23456,23457,20604,20605,20606,1959,1960,1961,1962}
	}
EventList[6]	 = {
		name = "聚贤谷密函",
		isNew = false,
		type = "^8cd656护卫",
		level = "英雄1级",
		MaxDayNum = 2,
		MaxWeekNum = -1,
		time = "全天",
		weekday = {0,1,2,3,4,5,6},
		starttime = nil,
		duration	=nil,
		autopath = "#69297#",
		content = "奇怪的坛子和聚贤谷的怪物有几率获得。记录了聚贤谷内众人\r的委托的函件。可以在聚贤谷对酌居刘昊（30，168）处开启此密函。\r^ff6fb3本活动每日可完成2次。^ffffff",
		eventtype = {1},
		reward = {92468},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		 minlevel = 81,
		 maxlevel = 130,
		icon = "CB\\EventIcon\\qiqiao.dds",
		taskAnd = nil,
		taskOr = {22168}
	}
EventList[7]	 = {
		name = "聚贤谷求助信",
		isNew = false,
		type = "^8cd656护卫",
		level = "40至80级",
		MaxDayNum = -1,
		MaxWeekNum = 7,
		time = "全天",
		weekday = {0,1,2,3,4,5,6},
		starttime = nil,
		duration	=nil,
		autopath = "#69295#",
		content = "在聚贤谷商人处可以购买“求助信”。将此信交给紫云岭的水瑶(-179,-24)，\r可获得任务“英雄难过美人关”。完成任务后可获得\r历练、护卫历练，以及护卫每日必须的物品。\r40-80级的玩家才可以获得任务。\r^ff6fb3本活动每周可完成7次。^ffffff",
		eventtype = {1},
		reward = {79829},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		    minlevel = 40,
		    maxlevel = 80,
		icon = "CB\\EventIcon\\qiqiao.dds",
		taskAnd = nil,
		taskOr = {22167}
	}

EventList[8]	 = {
		name = "夫妻鸳鸯令",
		isNew = false,
		type = "^ff4ca4姻缘",
		level = "任意",
		MaxDayNum = 1,
		MaxWeekNum = -1,
		time = "全天",
		weekday = {0,1,2,3,4,5,6},
		starttime = nil,
		duration	=nil,
		autopath = "#12820#",
		content = "与关中长安城的红娘对话可领取到鸳鸯令,领取时必须\r夫妻二人组队,并且是队长与红娘对话方可获得“鸳鸯令”,\r队长获得“鸳鸯令”后可以开启获得今日婚姻任务。\r^ff6fb3本活动每日可完成1次。^ffffff",
		eventtype = {3},
		reward = {79829},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		    minlevel = 5,
		    maxlevel = 130,
		icon = "CB\\EventIcon\\yuanyangling.dds",
		taskAnd = nil,
		taskOr = {4744,4791}
	}
EventList[9]	 = {
		name = "夫妻红豆采摘",
		isNew = false,
		type = "^ff4ca4姻缘",
		level = "任意",
		MaxDayNum = 1,
		MaxWeekNum = -1,
		time = "全天",
		weekday = {0,1,2,3,4,5,6},
		starttime = nil,
		duration	=nil,
		autopath = "#12820#",
		content = "夫妻双方组队后可以在关中长安城红娘处\r领取到婚姻任务。\r^ff6fb3本活动每日可完成1次。^ffffff",
		eventtype = {3},
		reward = {79829},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		    minlevel = 5,
		    maxlevel = 130,
		icon = "CB\\EventIcon\\hongdou.dds",
		taskAnd = nil,
		taskOr = {23608}
	}
EventList[10]	 = {
		name = "洛阳渔乐",
		isNew = false,
		type = "^fff600风雅",
		level = "英雄1级",
		MaxDayNum = 1,
		MaxWeekNum = -1,
		time = "15点至24点",
		weekday = {0,1,2,3,4,5,6},
		starttime = {"15h0m"},
		duration	= 540,
		autopath = "#51461#",
		content = "可与洛阳新城内的垂钓搜集者处领取\r鱼饵，开始洛阳垂钓。\r^ff6fb3本活动每日可接1次。^ffffff",
		eventtype = {0},
		reward = {79829},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		    minlevel = 81,
		    maxlevel = 130,
		icon = "CB\\EventIcon\\zhoudiaoyu.dds",
		taskAnd = nil,
		taskOr = {18821}
	}
EventList[11]	 = {
		name = "垂钓桃园",
		isNew = false,
		type = "^fff600风雅",
		level = "16级",
		MaxDayNum = 1,
		MaxWeekNum = -1,
		time = "全天",
		weekday = {0,1,2,3,4,5,6},
		starttime = nil,
		duration	= nil,
		autopath = "#9163#",
		content = "每日可在长安孔融处领取鱼饵,于\r3线-10线的河北桃园村池塘,参加每天垂钓活动。\r^ff6fb3本活动每日可接1次。^ffffff",
		eventtype = {1},
		reward = {79829},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		minlevel = 16,
		maxlevel = 80,
		icon = "CB\\EventIcon\\zhoudiaoyu.dds",
		taskAnd = nil,
		taskOr = {3951}
	}
EventList[12]	 = {
		name = "神州探宝",
		isNew = false,
		type = "^ffa083奇遇",
		level = "英雄1级",
		MaxDayNum = 1,
		MaxWeekNum = -1,
		time = "12点至24点",
		weekday = {0,1,2,3,4,5,6},
		starttime = {"12h0m"},
		duration	= 720,
		autopath = "#64878#",
		content = "与林一处上交“探宝司南”可开启神州探宝\r历程，寻宝过程中有可能会惊动神州探宝事件哦！\r^ff6fb3本活动每日可完成1次。^ffffff",
		eventtype = {0},
		reward = {92465},
		quickFinishTaskID = 26319, --快速完成任务ID
		quickFinishItemID = 80382,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 2,		----快速完成需要消耗的道具数量
		minlevel = 81,
		maxlevel = 130,
		icon = "CB\\EventIcon\\xunbao.dds",
		taskAnd = nil,
		taskOr = {18856,18857,18858}
	}
EventList[13]	 = {
		name = "赤壁水战日常",
		isNew = false,
		type = "^ff9c00阵营",
		level = "40级",
		MaxDayNum = 1,
		MaxWeekNum = -1,
		time = "全天",
		weekday = {1,2,3,4,5,6},
		starttime = nil,
		duration	= 960,
		autopath = "#66208#",
		content = "赤壁大战之际，各国都在不断收集辎重粮草，\r以备战时能够在军备上有所长。通过赤壁驿传使前往赤壁，\r找到本国当前事件的负责人，完成任务后可以获得大量的奖励。\r^ff6fb3本活动每日可完成1次。\r使用快捷完成功能，需在领取赤壁水战任务之前。^ffffff",
		eventtype = {1},
		reward = {92467},
		quickFinishTaskID = 26535, --快速完成任务ID
		quickFinishItemID = 80382,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 3,		----快速完成需要消耗的道具数量
		minlevel = 40,
		maxlevel = 130,
		camp = "123",
		icon = "CB\\EventIcon\\pingluan.dds",
		taskAnd = nil,
		taskOr = {19216,19231,19246,19222,19237,19252,19227,19242,19257}
	}
EventList[14]	 = {
		name = "纷纷世事",
		isNew = false,
		type = "^ff9c00奇遇",
		level = "英雄16级",
		MaxDayNum = 1,
		MaxWeekNum = -1,
		time = "12点至16点，20点到24点",
		weekday = {0,1,2,3,4,5,6},
		starttime = nil,
		duration	= nil,
		autopath = "#89454#",
		content = "仙人左慈现身在洛阳孟津村和草原，邀请各\r位亲历重大历史事件。完成后将获得大量奖励。\r^ff6fb3（左慈处的系列任务每天可以接受多个，但奖励会一直递减。）^ffffff",
		eventtype = {1},
		reward = {92471},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		minlevel = 96,
		maxlevel = 130,
		camp = "123",
		icon = "CB\\EventIcon\\qianli.dds",
		taskAnd = nil,    --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		taskOr = {28835}  --完成的任务ID，可用逗号隔开，完成一个则视为活动完成
	}
EventList[15]	 = {
		name = "赤壁前哨战",
		isNew = false,
		type = "^ff9c00阵营",
		level = "60级",
		MaxDayNum = -1,
		MaxWeekNum = 1,
		time = "周日16点至18点",
		weekday = {0},
		starttime = {"16h0m"},
		duration	= 120,
		autopath = "#66208#",
		content = "魏蜀吴三国水军在赤壁集结，经过一周的后勤\r准备，终于在3线赤壁开启前哨战。参与可以获得海量\r历练、名望、高级秘文、聚星旗等丰厚奖励。\r^ff6fb3本活动每周可完成1次。^ffffff",
		eventtype = {1},
		reward = {79829},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		minlevel = 60,
		maxlevel = 80,
		icon = "CB\\EventIcon\\pingluan.dds",
		taskAnd = nil,
		taskOr = {22104}
	}
EventList[16]	 = {
		name = "赤壁决战",
		isNew = false,
		type = "^ff9c00阵营",
		level = "英雄1级",
		MaxDayNum = -1,
		MaxWeekNum = 1,
		time = "每周日20-22点",
		weekday = {0},
		starttime = {"20h0m"},
		duration	= 120,
		autopath = "#66208#",
		content = "魏蜀吴三国水军在赤壁集结，经过一周的后勤\r准备，终于在6线赤壁开启决战。参与可以获得海量阅历、\r名望、高级秘文、聚星旗等丰厚奖励，甚至有可能获得混沌神石。\r^ff6fb3本活动每周可完成1次。^ffffff",
		eventtype = {1},
		reward = {79829},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		minlevel = 81,
		maxlevel = 130,
		icon = "CB\\EventIcon\\pingluan.dds",
		taskAnd = nil,
		taskOr = {22105}
	}


EventList[17]	 = {
		name = "领取征战令",
		isNew = false,
		type = "^deff00战场",
		level = "60级",
		MaxDayNum = 1,
		MaxWeekNum = -1,
		time = "20点到24点",
		weekday = {0,1,2,3,4,5,6},
		starttime = {"20h0m"},
		duration	= 240,
		autopath = "#9512#",
		content = "每晚20点至24点，玩家可于长安未央宫韩彬或马元义处领取2枚征战令,\r凭此令2枚进入濮阳之战·英雄级或界桥之战，\r可在战场结束后获得大量阅历和文武功勋，以及两张濮阳征战奖励函。\r^ff6fb3本活动每日可完成1次。^ffffff",
		eventtype = {1},
		reward = {79829},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		minlevel = 60,
		maxlevel = 130,
		icon = "CB\\EventIcon\\wuzhang.dds",
		taskAnd = nil,
		taskOr = {6879}
	}
EventList[18]	 = {
		name = "国战",
		isNew = false,
		type = "^ff9c00阵营",
		level = "英雄1级",
		MaxDayNum = -1,
		MaxWeekNum = 1,
		time = "周六20点至22点",
		weekday = {6},
		starttime = {"20h0m"},
		duration	= 120,
		autopath = function ()
			local prop = GameApi.GetPlayerSocialProp(0)
			if prop.camp == 1 then
				return "#4135#"
			elseif prop.camp == 2 then
				return "#4138#"
			elseif prop.camp == 3 then
				return "#4141#"
			else
				return ""
			end
		end,
		content = "每周六晚英雄1级以上已加入阵营的玩家可以从未央宫\r传送到各军大营,从各阵营演军官处的国战服务申请进入对应阵营国战。\r^ff6fb3本活动每周可完成1次。^ffffff",
		eventtype = {1},
		reward = {79829},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		minlevel = 81,
		maxlevel = 130,
		icon = "CB\\EventIcon\\guozhan.dds",
		taskAnd = nil,
		taskOr = {6467,6468,6469}
	}
EventList[19]	 = {
		name = "怪物攻城",
		isNew = false,
		type = "^ffa083奇遇",
		level = "英雄1级",
		MaxDayNum = -1,
		MaxWeekNum = 6,
		time = "周六16点至18点",
		weekday = {6},
		starttime = {"16h0m"},
		duration	= 120,
		autopath = "#51491#",
		content = "每周六下午，洛阳北邙地宫中的各种妖邪将进攻洛阳新城，\r为报洛阳居民安全，请义士们拿起手中的武器，捍卫洛阳新城吧！\r^ff6fb3本活动包含3个任务共可完成6次。^ffffff",
		eventtype = {1},
		reward = {79829},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		minlevel = 81,
		maxlevel = 130,
		icon = "CB\\EventIcon\\魔王压制战.dds",
		taskAnd = nil,
		taskOr = {18817,18818,18819}
	}

EventList[20]	 = {
		name = "桃园告急",
		isNew = false,
		type = "^fff962平乱",
		level = "16级-80级",
		MaxDayNum = 1,
		MaxWeekNum = -1,
		time = "14点到22点",
		weekday = {0,1,2,3,4,5,6},
		starttime = {"14h0m","16h0m","18h0m","20h0m","22h0m"},
		duration	= 60,
		autopath = "#72651#",
		content = "^fff600时间：^ffffff每天 14点、16点、18点、20点、22点\r^fff600注意：活动持续1小时，组队效率更高！1小时后所有叛乱分子都会消失！\r如果没有及时完成，请在下次活动开启时继续完成。\r活动线路：新手线（1-5线）^ffffff桃园告急：\r不明身份的叛乱分子乔装打扮，从清凉驿潜入，一直到桃园村都有他们的踪迹。\r有的化妆成杂耍团，有的化妆成道士，偷袭村民，\r桃园卫兵（河北348，121）希望有能人异士和朋友们一起来拯救村民！！\r详情请见桃园卫兵处的活动指引。",
		eventtype = {1},
		reward = {79829},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		    minlevel = 16,
		    maxlevel = 80,
		icon = "CB\\EventIcon\\pingfan.dds",
		taskAnd = nil,
		taskOr = {23455,23456,23457}
	}
EventList[21]	 = {
 		name = "英雄之路",
 		isNew = false,
 		type = "^fff962平乱",
 		level = "英雄1级",
 		MaxDayNum = -1,
 		MaxWeekNum = 1,
 		time = "周日15点到23点",
		weekday = {0},
 		starttime = {"15h0m","17h0m","19h0m","19h0m","21h0m","23h0m"},
		duration	= 120,
 		autopath = "#74817#",
 		content = "^fff600时间：^ffffff每周日 15点、17点、19点、21点、23点\r^fff600注意：活动持续1小时，组队效率更高！1小时后所有活动相关内容都会消失！\r如果没有及时完成，请在下次活动开启时继续完成。\r^ffffff英雄之路：\r河北出现很多奇怪的女子，还有大批的贼人，又赶上鼹鼠灾，天灾人祸民不聊生！\r手足无措的村民（河北-179，-145）希望各位英雄和朋友们一起来拯救村民！\r详情请询问手足无措的村民。",
 		eventtype = {1},
		reward = {79829},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		    minlevel = 81,
			maxlevel = 130,
		icon = "CB\\EventIcon\\pingfan.dds",
 		taskAnd = nil,
 		taskOr = {24036}
 	}

EventList[22]	 = {
		name = "沙海奇兵",
		isNew = true,
		type = "^00ff40最新",
		level = "5级",
		MaxDayNum = 1,
		MaxWeekNum = 5,
		time = "全天",
		weekday = {0,1,2,3,4,5,6},
		starttime = nil,
		duration	= nil,
		autopath = "#11918#",
		content = "每周可从长安孙尚香（151，196）处购买门票“^72fe00汉军密令^ffffff”，持有该物品\r可进入『战车试驾·沙海奇兵』战场体验驾驶战车的乐趣！\r每周完成该战场前5次可获得奖励，每周消灭沙漠火狐前3次也可获得奖励。\r另外如果持有老门票“^ff7d2f汉军密令^ffffff”，在杀死boss时还有大量的额外奖励！\r使用快捷完成功能需消耗一个汉军密令。\r注：战场结束时请勿使用快捷完成功能，否则有可能造成损失。\r沙海奇兵战场奖励每周只能获得5次，请合理使用此功能。",
		eventtype = {4},
		reward = {92466},
		quickFinishTaskID = 26552, --快速完成任务ID
		quickFinishItemID = 80382,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 3,		----快速完成需要消耗的道具数量
		minlevel = 5,
		 maxlevel = 130,
		icon = "CB\\EventIcon\\zhengzhanling.dds",
		taskAnd = nil,
		taskOr = {24295,26552}
	}
EventList[23]	 = {
		name = "皇榜委托任务", --活动名称
		isNew = false,        --无视
		type = "^ff9c00阵营",  --阵营的文本显示
		level = "60级",        --等级的文本显示
		MaxDayNum = 1,        --每日次数 -1为无
		MaxWeekNum = -1,        --每周次数 -1为无
		time = "全天",   --活动时间的文本显示
		weekday = {0,1,2,3,4,5,6},  --周几开启，0为周日！
		starttime = nil, --！！一定要加{}！！活动的开启时间，若有多段开启时间，则用逗号隔开
		duration	= nil,   --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		autopath = "", --自动寻路的NPCid
		content = "天下大乱，逆贼横行，英雄之士，奉命讨逆。\r前往各国主城皇榜发布人处接取皇榜任务，\r揭榜者必有重赏！\r使用快捷完成功能需加入阵营，且每次使用快捷完成需额外消耗一个将军令。^ffffff",
		eventtype = {0},  -- 活动的类型 1为推荐 2为节日 3为社交
		reward = {92463}, --奖励的物品ID
		quickFinishTaskID = 26531, --快速完成任务ID
		quickFinishItemID = 80382,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 4,		----快速完成需要消耗的道具数量
		minlevel = 60,       --显示此活动玩家的最小等级
		maxlevel = 130,      --显示此活动玩家的最高等级
		icon = "CB\\EventIcon\\qianli.dds",  --活动图标
		taskAnd = nil,    --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		taskOr = {26531}  --完成的任务ID，可用逗号隔开，完成一个则视为活动完成
	}
EventList[24]	 = {
		name = "白帝城委托任务", --活动名称
		isNew = false,        --无视
		type = "^ff9c00阵营",  --阵营的文本显示
		level = "60级",        --等级的文本显示
		MaxDayNum = 1,        --每日次数 -1为无
		MaxWeekNum = -1,        --每周次数 -1为无
		time = "全天",   --活动时间的文本显示
		weekday = {0,1,2,3,4,5,6},  --周几开启，0为周日！
		starttime = nil, --！！一定要加{}！！活动的开启时间，若有多段开启时间，则用逗号隔开
		duration	= nil,   --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		autopath = "", --自动寻路的NPCid
		content = "白帝城硝烟四起，战火纷飞，各国英雄之士速去平乱纷争，\r成功之后必有重赏！使用快捷完成功能需加入阵营。^ffffff",
		eventtype = {0},  -- 活动的类型 1为推荐 2为节日 3为社交
		reward = {92462}, --奖励的物品ID
		quickFinishTaskID = 26533, --快速完成任务ID
		quickFinishItemID = 80382,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 2,		----快速完成需要消耗的道具数量
		minlevel = 60,       --显示此活动玩家的最小等级
		maxlevel = 130,      --显示此活动玩家的最高等级
		icon = "CB\\EventIcon\\qianli.dds",  --活动图标
		taskAnd = nil,    --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		taskOr = {26533}  --完成的任务ID，可用逗号隔开，完成一个则视为活动完成
	}
--[EventList[25]	 = {
		--name = "英雄志·许褚传", --活动名称
		--isNew = false,        --无视
		--type = "^ff9c00战场",  --阵营的文本显示
		--level = "英雄30级",        --等级的文本显示
		--MaxDayNum = 1,        --每日次数 -1为无
		--MaxWeekNum = -1,        --每周次数 -1为无
		--time = "全天",   --活动时间的文本显示
		--weekday = {0,1,2,3,4,5,6},  --周几开启，0为周日！
		--starttime = nil, --！！一定要加{}！！活动的开启时间，若有多段开启时间，则用逗号隔开
		--duration	= nil,   --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		--autopath = "", --自动寻路的NPCid
		--content = "前往英雄志·许褚传，向许褚发起挑战，\r成功之后必有重赏！\r使用快捷完成功能需消耗一个斗虎状和一个许褚传神秘门票。\r注：战场结束时请勿使用快捷完成功能，否则有可能造成损失。^ffffff",
		--eventtype = {4},  -- 活动的类型 1为推荐 2为节日 3为社交
		--reward = {79829}, --奖励的物品ID
		--quickFinishTaskID = 26547, --快速完成任务ID
		--quickFinishItemID = 80382,	--快速完成需要消耗的道具ID
		--quickFinishItemNum = 20,		----快速完成需要消耗的道具数量
		--minlevel = 110,       --显示此活动玩家的最小等级
		--maxlevel = 130,      --显示此活动玩家的最高等级
		--icon = "CB\\EventIcon\\qianli.dds",  --活动图标
		--taskAnd = nil,    --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		--taskOr = {26547}  --完成的任务ID，可用逗号隔开，完成一个则视为活动完成
	--}
--[EventList[26]	 = {
		--name = "英雄志·甘宁传", --活动名称
		--isNew = false,        --无视
		--type = "^ff9c00战场",  --阵营的文本显示
		--level = "英雄40级",        --等级的文本显示
		--MaxDayNum = 1,        --每日次数 -1为无
		--MaxWeekNum = -1,        --每周次数 -1为无
		--time = "全天",   --活动时间的文本显示
		--weekday = {0,1,2,3,4,5,6},  --周几开启，0为周日！
		--starttime = nil, --！！一定要加{}！！活动的开启时间，若有多段开启时间，则用逗号隔开
		--duration	= nil,   --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		--autopath = "", --自动寻路的NPCid
		--content = "前往英雄志·甘宁传，向甘宁发起挑战，\r成功之后必有重赏！\r使用快捷完成功能需消耗一个水鸟羽和一个甘宁传神秘门票。\r注：战场结束时请勿使用快捷完成功能，否则有可能造成损失。^ffffff",
		--eventtype = {4},  -- 活动的类型 1为推荐 2为节日 3为社交
		--reward = {79829}, --奖励的物品ID
		--quickFinishTaskID = 26548, --快速完成任务ID
		--quickFinishItemID = 80382,	--快速完成需要消耗的道具ID
		--quickFinishItemNum = 20,		----快速完成需要消耗的道具数量
		--minlevel = 120,       --显示此活动玩家的最小等级
		--maxlevel = 130,      --显示此活动玩家的最高等级
		--icon = "CB\\EventIcon\\qianli.dds",  --活动图标
		--taskAnd = nil,    --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		--taskOr = {26548}  --完成的任务ID，可用逗号隔开，完成一个则视为活动完成
	--} 
--EventList[27]	 = {
		--name = "英雄志·黄忠传", --活动名称
		--isNew = false,        --无视
		--type = "^ff9c00战场",  --阵营的文本显示
		--level = "英雄48级",        --等级的文本显示
		--MaxDayNum = 1,        --每日次数 -1为无
		--MaxWeekNum = -1,        --每周次数 -1为无
		--time = "全天",   --活动时间的文本显示
		--weekday = {0,1,2,3,4,5,6},  --周几开启，0为周日！
		--starttime = nil, --！！一定要加{}！！活动的开启时间，若有多段开启时间，则用逗号隔开
		--duration	= nil,   --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		--autopath = "", --自动寻路的NPCid
		--content = "前往英雄志·黄忠传，向黄忠发起挑战，\r成功之后必有重赏！\r使用快捷完成功能需消耗一个沐花甲和一个黄忠传神秘门票。\r注：战场结束时请勿使用快捷完成功能，否则有可能造成损失。^ffffff",
		--eventtype = {4},  -- 活动的类型 1为推荐 2为节日 3为社交
		--reward = {79829}, --奖励的物品ID
		--quickFinishTaskID = 26549, --快速完成任务ID
		--quickFinishItemID = 80382,	--快速完成需要消耗的道具ID
		--quickFinishItemNum = 20,		----快速完成需要消耗的道具数量
		--minlevel = 128,       --显示此活动玩家的最小等级
		--maxlevel = 130,      --显示此活动玩家的最高等级
		--icon = "CB\\EventIcon\\qianli.dds",  --活动图标
		--taskAnd = nil,    --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		--taskOr = {26549}  --完成的任务ID，可用逗号隔开，完成一个则视为活动完成
	--}
EventList[25]	 = {
		name = "幻想八阵图·休门", --活动名称
		isNew = false,        --无视
		type = "^ff9c00战场",  --阵营的文本显示
		level = "英雄31级",        --等级的文本显示
		MaxDayNum = 1,        --每日次数 -1为无
		MaxWeekNum = -1,        --每周次数 -1为无
		time = "全天",   --活动时间的文本显示
		weekday = {0,1,2,3,4,5,6},  --周几开启，0为周日！
		starttime = nil, --！！一定要加{}！！活动的开启时间，若有多段开启时间，则用逗号隔开
		duration	= nil,   --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		autopath = "", --自动寻路的NPCid
		content = "挑战幻想八阵图·休门战场，成功之后必有重赏！\r使用快捷完成功能需消耗一个平乱珏和两个天威令。\r注：战场结束时请勿使用快捷完成功能，否则有可能造成损失。^ffffff",
		eventtype = {4},  -- 活动的类型 1为推荐 2为节日 3为社交
		reward = {79829}, --奖励的物品ID
		quickFinishTaskID = 26550, --快速完成任务ID
		quickFinishItemID = 80382,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 5,		----快速完成需要消耗的道具数量
		minlevel = 111,       --显示此活动玩家的最小等级
		maxlevel = 130,      --显示此活动玩家的最高等级
		icon = "CB\\EventIcon\\qianli.dds",  --活动图标
		taskAnd = nil,    --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		taskOr = {26550}  --完成的任务ID，可用逗号隔开，完成一个则视为活动完成
	}
EventList[26]	 = {
		name = "北邙皇陵", --活动名称
		isNew = false,        --无视
		type = "^ff9c00战场",  --阵营的文本显示
		level = "英雄35级",        --等级的文本显示
		MaxDayNum = 1,        --每日次数 -1为无
		MaxWeekNum = -1,        --每周次数 -1为无
		time = "全天",   --活动时间的文本显示
		weekday = {0,1,2,3,4,5,6},  --周几开启，0为周日！
		starttime = nil, --！！一定要加{}！！活动的开启时间，若有多段开启时间，则用逗号隔开
		duration	= nil,   --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		autopath = "", --自动寻路的NPCid
		content = "挑战北邙皇陵战场，成功之后必有重赏！\r使用快捷完成功能需消耗一个北邙皇陵探索令。\r注：战场结束时请勿使用快捷完成功能，否则有可能造成损失。^ffffff",
		eventtype = {4},  -- 活动的类型 1为推荐 2为节日 3为社交
		reward = {79829}, --奖励的物品ID
		quickFinishTaskID = 26551, --快速完成任务ID
		quickFinishItemID = 80382,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 4,		----快速完成需要消耗的道具数量
		minlevel = 115,       --显示此活动玩家的最小等级
		maxlevel = 130,      --显示此活动玩家的最高等级
		icon = "CB\\EventIcon\\qianli.dds",  --活动图标
		taskAnd = nil,    --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		taskOr = {26551}  --完成的任务ID，可用逗号隔开，完成一个则视为活动完成
	}
EventList[27]	 = {
		name = "抢新娘",        --活动名称
		isNew = true,                   --无视
		type = "^00ff40最新",           --阵营的文本显示
		level = "16级",                 --等级的文本显示
		MaxDayNum = -1,                  --每日次数 -1为无
		MaxWeekNum = 1,                --每周次数 -1为无	
        loopStart = {2013,1,14},       --周末循环特殊活动的开始时间。此活动为活动A
		loopEnd	= {2013,1,20},         --周末循环特殊活动的结束时间
		loopPeriod = 28,               --loopStart所示日期的几天后，会会再次显示。单位为天。间隔多少天轮回显示此活动。	
		time = "周六、周日",                  --活动时间的文本显示
		weekday = {0,6},      --周几开启，0为周日！
		starttime =  nil,                --！！一定要加{}！！活动的开启时间，若有多段开启时间，则用逗号隔开
		duration	=nil ,             --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		autopath = "#81380#",           --自动寻路的NPCid
		content = "霸王寨的大王“王天霸”强抢民女“林萧萧”，准备拜堂当妾室。\r林萧萧父亲林慕白拜托各位英雄去救救他的女儿，前往霸王寨喜宴抢回新娘。",
		eventtype = {1},                -- 活动的类型 1为推荐 2为节日 3为社交
		reward = {81869},               --奖励的物品ID
		quickFinishTaskID = 0,          --快速完成任务ID
		quickFinishItemID = 0,	        --快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		    ----快速完成需要消耗的道具数量
		minlevel = 16,                  --显示此活动玩家的最小等级
		maxlevel = 130,                 --显示此活动玩家的最高等级
		icon = "CB\\EventIcon\\pingluan.dds",  --活动图标
		taskAnd = nil,                  --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		taskOr = {26816}    --完成的任务ID，可用逗号隔开，完成一个则视为活动完成
	}
EventList[28]	 = {
		name = "将相之才",        --活动名称
		isNew = true,                   --无视
		type = "^00ff40最新",           --阵营的文本显示
		level = "16级",                 --等级的文本显示
		MaxDayNum = -1,                  --每日次数 -1为无
		MaxWeekNum = 1,                --每周次数 -1为无	
        loopStart = {2013,1,28},       --周末循环特殊活动的开始时间。此活动为活动C
		loopEnd	= {2013,2,3},         --周末循环特殊活动的结束时间
		loopPeriod = 28,               --loopStart所示日期的几天后，会会再次显示。单位为天。间隔多少天轮回显示此活动。	
		time = "周六、周日",                  --活动时间的文本显示
		weekday = {0,6},      --周几开启，0为周日！
		starttime =  nil,                --！！一定要加{}！！活动的开启时间，若有多段开启时间，则用逗号隔开
		duration	=nil ,             --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		autopath = "#86793#",           --自动寻路的NPCid
		content = "时值乱世群雄并起，\r魏蜀吴三国已成三足鼎立之势。\r请各路英豪速速向本国使者报到，\r前往试炼场与各路英雄一决胜负。",
		eventtype = {1},                -- 活动的类型 1为推荐 2为节日 3为社交
		reward = {88084},               --奖励的物品ID
		quickFinishTaskID = 0,          --快速完成任务ID
		quickFinishItemID = 0,	        --快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		    ----快速完成需要消耗的道具数量
		minlevel = 16,                  --显示此活动玩家的最小等级
		maxlevel = 130,                 --显示此活动玩家的最高等级
		icon = "CB\\EventIcon\\pingluan.dds",  --活动图标
		taskAnd = nil,                  --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		taskOr = {27985,27986,27987,27979,27980,27981,27994,27995,28084,28085,28086,28087}    --完成的任务ID，可用逗号隔开，完成一个则视为活动完成
	}
EventList[29]	 = {
		name = "冬岛问命",        --活动名称
		isNew = true,                   --无视
		type = "^00ff40最新",           --阵营的文本显示
		level = "16级",                 --等级的文本显示
		MaxDayNum = -1,                  --每日次数 -1为无
		MaxWeekNum = 1,                --每周次数 -1为无	
        loopStart = {2013,2,4},       --周末循环特殊活动的开始时间。此活动为活动D
		loopEnd	= {2013,2,10},         --周末循环特殊活动的结束时间
		loopPeriod = 28,               --loopStart所示日期的几天后，会会再次显示。单位为天。间隔多少天轮回显示此活动。	
		time = "周六、周日",                  --活动时间的文本显示
		weekday = {0,6},      --周几开启，0为周日！
		starttime =  nil,                --！！一定要加{}！！活动的开启时间，若有多段开启时间，则用逗号隔开
		duration	=nil ,             --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		autopath = "#82016#",           --自动寻路的NPCid
		content = "前往神秘的冬岛，问天命，卜吉凶。\r此行凶险，诸神脾气古怪，可能遇到多种不同的待遇。\r若天之所向，则可获得宝物；若天之所逆，有可能受到雷公的惩罚。",
		eventtype = {1},                -- 活动的类型 1为推荐 2为节日 3为社交
		reward = {82066},               --奖励的物品ID
		quickFinishTaskID = 0,          --快速完成任务ID
		quickFinishItemID = 0,	        --快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		    ----快速完成需要消耗的道具数量
		minlevel = 16,                  --显示此活动玩家的最小等级
		maxlevel = 130,                 --显示此活动玩家的最高等级
		icon = "CB\\EventIcon\\pingluan.dds",  --活动图标
		taskAnd = nil,                  --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		taskOr = {26985}    --完成的任务ID，可用逗号隔开，完成一个则视为活动完成

	}
EventList[30]	 = {
		name = "草船借箭",        --活动名称
		isNew = true,                   --无视
		type = "^00ff40结义",           --阵营的文本显示
		level = "30级",                 --等级的文本显示
		MaxDayNum = -1,                  --每日次数 -1为无
		MaxWeekNum = 1,                --每周次数 -1为无		
		time = "周日",                  --活动时间的文本显示
		weekday = {0},      --周几开启，0为周日！
		starttime =  {"19h0m"},       
		duration = 20 ,             --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		autopath = "#81784#",           --自动寻路的NPCid
		content = "草船借箭活动是以结义为单位，\r每周日进行的趣味性竞技比赛。\r根据结义内所有参与玩家所获得的积分进行排名，\r按照排名发放各种丰厚奖励。上周结义总贡献排名前100结义的结义长\r可以为本结义报名参加本周的草船借箭活动。",
		eventtype = {1},                -- 活动的类型 1为推荐 2为节日 3为社交
		reward = {79830},               --奖励的物品ID
		quickFinishTaskID = 0,          --快速完成任务ID
		quickFinishItemID = 0,	        --快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		    ----快速完成需要消耗的道具数量
		minlevel = 30,                  --显示此活动玩家的最小等级
		maxlevel = 130,                 --显示此活动玩家的最高等级
		icon = "CB\\EventIcon\\pingluan.dds",  --活动图标
		taskAnd = nil,                  --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		taskOr = {26826}    --完成的任务ID，可用逗号隔开，完成一个则视为活动完成
	}
EventList[31]	 = {
		name = "武斗盛宴",        --活动名称
		isNew = true,                   --无视
		type = "^00ff40最新",           --阵营的文本显示
		level = "16级",                 --等级的文本显示
		MaxDayNum = -1,                  --每日次数 -1为无
		MaxWeekNum = 1,                --每周次数 -1为无	
        loopStart = {2013,1,21},       --周末循环特殊活动的开始时间。此活动为活动D
		loopEnd	= {2013,1,27},         --周末循环特殊活动的结束时间
		loopPeriod = 28,               --loopStart所示日期的几天后，会会再次显示。单位为天。间隔多少天轮回显示此活动。	
		time = "周六、周日 10点、11点、14点、18点",                  --活动时间的文本显示
		weekday = {0,6},      --周几开启，0为周日！
		starttime = {"10h0m","11h0m","14h0m","18h0m"},                --！！一定要加{}！！活动的开启时间，若有多段开启时间，则用逗号隔开
		duration	= 30,             --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		autopath = "#82572#",           --自动寻路的NPCid
		content = "前往演武场，与诸侯手下众位名将一同迎战吕布。\r吕布及其手下皆骁勇善战，各路豪杰需小心应对。\r吕布及其手下只会攻击诸位将领及其手下士兵，将领是否能成功坚持到最后，是决定最后奖励的关键因素。",
		eventtype = {1},                -- 活动的类型 1为推荐 2为节日 3为社交
		reward = {82755},               --奖励的物品ID
		quickFinishTaskID = 0,          --快速完成任务ID
		quickFinishItemID = 0,	        --快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		    ----快速完成需要消耗的道具数量
		minlevel = 16,                  --显示此活动玩家的最小等级
		maxlevel = 130,                 --显示此活动玩家的最高等级
		icon = "CB\\EventIcon\\pingluan.dds",  --活动图标
		taskAnd = nil,                  --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		taskOr = {27062,27111,27112}    --完成的任务ID，可用逗号隔开，完成一个则视为活动完成

	}
EventList[32]	 = {
		name = "和亲系列",
		isNew = false,
		type = "^ffa083奇遇",
		level = "60级-80级",
		MaxDayNum = 4,
		MaxWeekNum = -1,
		time = "全天",
		weekday = {0,1,2,3,4,5,6},
		starttime = nil,
		duration	= nil,
		autopath = "#68891#",
		content = "每日可在长安城的灵气商人吖蛮处，购买\r和亲物品，远赴他乡，完成和亲任务，赢取奖励。\r^ff6fb3本活动每日可完成4次。^ffffff",
		eventtype = {1},
		reward = {79829},
		quickFinishTaskID = 0, --快速完成任务ID
		quickFinishItemID = 0,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 0,		----快速完成需要消耗的道具数量
		    minlevel = 60,
		    maxlevel = 80,
		icon = "CB\\EventIcon\\shezhan.dds",
		taskAnd = nil,
		taskOr = {10296,10316,10322,10328,10334,10340,10346,10352,10358,10364,21967,21968,21969,21970,21971,21972,21973,21974,21975,21976,21977,21978,21979,21980,21981}
	}	
EventList[33]	 = {
		name = "合肥之战", --活动名称
		isNew = false,        --无视
		type = "^ff9c00战场",  --阵营的文本显示
		level = "英雄30级",        --等级的文本显示
		MaxDayNum = 1,        --每日次数 -1为无
		MaxWeekNum = -1,        --每周次数 -1为无
		time = "全天",   --活动时间的文本显示
		weekday = {0,1,2,3,4,5,6},  --周几开启，0为周日！
		starttime = nil, --！！一定要加{}！！活动的开启时间，若有多段开启时间，则用逗号隔开
		duration	= nil,   --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		autopath = "", --自动寻路的NPCid
		content = "前往合肥之战（英雄级），协助张辽守卫合肥城，\r成功之后必有重赏！\r使用快捷完成功能需消耗一个合肥令和两个天威令。\r注：战场结束时请勿使用快捷完成功能，否则有可能造成损失。^ffffff",
		eventtype = {4},  -- 活动的类型 1为推荐 2为节日 3为社交
		reward = {79829}, --奖励的物品ID
		quickFinishTaskID = 31259, --快速完成任务ID
		quickFinishItemID = 80382,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 5,		----快速完成需要消耗的道具数量
		minlevel = 110,       --显示此活动玩家的最小等级
		maxlevel = 130,      --显示此活动玩家的最高等级
		icon = "CB\\EventIcon\\qianli.dds",  --活动图标
		taskAnd = nil,    --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		taskOr = {31259}  --完成的任务ID，可用逗号隔开，完成一个则视为活动完成
	}
EventList[34]	 = {
		name = "虎牢关群英会", --活动名称
		isNew = false,        --无视
		type = "^ff9c00战场",  --阵营的文本显示
		level = "英雄40级",        --等级的文本显示
		MaxDayNum = 1,        --每日次数 -1为无
		MaxWeekNum = -1,        --每周次数 -1为无
		time = "全天",   --活动时间的文本显示
		weekday = {0,1,2,3,4,5,6},  --周几开启，0为周日！
		starttime = nil, --！！一定要加{}！！活动的开启时间，若有多段开启时间，则用逗号隔开
		duration	= nil,   --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		autopath = "", --自动寻路的NPCid
		content = "前往虎牢关群英会（英雄级），向董卓发起挑战，\r成功之后必有重赏！\r使用快捷完成功能需消耗一个讨逆令和两个天威令。\r注：战场结束时请勿使用快捷完成功能，否则有可能造成损失。^ffffff",
		eventtype = {4},  -- 活动的类型 1为推荐 2为节日 3为社交
		reward = {79829}, --奖励的物品ID
		quickFinishTaskID = 31260, --快速完成任务ID
		quickFinishItemID = 80382,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 5,		----快速完成需要消耗的道具数量
		minlevel = 120,       --显示此活动玩家的最小等级
		maxlevel = 130,      --显示此活动玩家的最高等级
		icon = "CB\\EventIcon\\qianli.dds",  --活动图标
		taskAnd = nil,    --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		taskOr = {31260}  --完成的任务ID，可用逗号隔开，完成一个则视为活动完成
	}
EventList[35]	 = {
		name = "华容道", --活动名称
		isNew = false,        --无视
		type = "^ff9c00战场",  --阵营的文本显示
		level = "英雄16级",        --等级的文本显示
		MaxDayNum = 1,        --每日次数 -1为无
		MaxWeekNum = -1,        --每周次数 -1为无
		time = "全天",   --活动时间的文本显示
		weekday = {0,1,2,3,4,5,6},  --周几开启，0为周日！
		starttime = nil, --！！一定要加{}！！活动的开启时间，若有多段开启时间，则用逗号隔开
		duration	= nil,   --！！不能加{}！！活动的持续时间（分钟），如8点到10点，则这里填写120
		autopath = "", --自动寻路的NPCid
		content = "前往华容道，护送曹操进行撤退，\r成功之后必有重赏！\r使用快捷完成功能需消耗一个华容道护送令和两个天威令。\r注：战场结束时请勿使用快捷完成功能，否则有可能造成损失。^ffffff",
		eventtype = {4},  -- 活动的类型 1为推荐 2为节日 3为社交
		reward = {79829}, --奖励的物品ID
		quickFinishTaskID = 31261, --快速完成任务ID
		quickFinishItemID = 80382,	--快速完成需要消耗的道具ID
		quickFinishItemNum = 5,		----快速完成需要消耗的道具数量
		minlevel = 96,       --显示此活动玩家的最小等级
		maxlevel = 130,      --显示此活动玩家的最高等级
		icon = "CB\\EventIcon\\qianli.dds",  --活动图标
		taskAnd = nil,    --完成的任务ID，可用逗号隔开，都完成则视为活动完成
		taskOr = {31261}  --完成的任务ID，可用逗号隔开，完成一个则视为活动完成
	}
	


--九宫格中战场推荐列表
BattleList = {n =23}
BattleList[1]	 = {
		id = 237,
		idTask = 0,
		limitCount = 0,
		idIllustrated = nil,
		minLevel = 1,
		maxLevel = 15
	}
BattleList[2]	 = {
		id = 948,
		idTask = 26669,
		limitCount = 0,
		idIllustrated = nil,
		minLevel = 5,
		maxLevel = 130
	}
BattleList[3]	 = {
		id = 252,
		idTask = 0,
		limitCount = 0,
		idIllustrated = nil,
		minLevel = 15,
		maxLevel = 25
	}
BattleList[4]	 = {
		id = 278,
		idTask = 0,
		limitCount = 0,
		idIllustrated = nil,
		minLevel = 25,
		maxLevel = 35
	}
BattleList[5]	 = {
		id = 996,
		idTask = 0,
		limitCount = 0,
		idIllustrated = nil,
		minLevel = 35,
		maxLevel = 45
	}
BattleList[6]	 = {
		id = 332,
		idTask = 0,
		limitCount = 0,
		idIllustrated = nil,
		minLevel = 45,
		maxLevel = 55
	}
BattleList[7]	 = {
		id = 275,
		idTask = 0,
		limitCount = 0,
		idIllustrated = nil,
		minLevel = 55,
		maxLevel = 65
	}
BattleList[8]	 = {
		id = 294,
		idTask = 0,
		limitCount = 0,
		idIllustrated = nil,
		minLevel = 65,
		maxLevel = 75
	}
BattleList[9]	 = {
		id = 299,
		idTask = 0,
		limitCount = 5,
		idIllustrated = {9,10,11,12,13,14,15},
		minLevel = 66,
		maxLevel = 80
	}
BattleList[10]	 = {
		id = 380,
		idTask = 0,
		limitCount = 5,
		idIllustrated = nil,
		minLevel = 68,
		maxLevel = 80
	}
BattleList[11]	 = {
		id = 291,
		idTask = 0,
		limitCount = 0,
		idIllustrated = nil,
		minLevel = 75,
		maxLevel = 80
	}
BattleList[12]	 = {
		id = 540,
		idTask = 17503,
		limitCount = 1,
		idIllustrated = nil,
		minLevel = 81,
		maxLevel = 85
	}
BattleList[13]	 = {
		id = 905,
		idTask = 0,
		limitCount = 0,
		idIllustrated = nil,
		minLevel = 81,
		maxLevel = 95
	}
BattleList[14]	 = {
		id = 904,
		idTask = 23039,
		limitCount = 3,
		idIllustrated = {399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,434},
		minLevel = 111,
		maxLevel = 130
	}
BattleList[15]	 = {
		id = 372,
		idTask = 0,
		limitCount = 2,
		idIllustrated = nil,
		minLevel = 85,
		maxLevel = 95
	}
BattleList[16]	 = {
		id = 759,
		idTask = 0,
		limitCount = 6,
		idIllustrated = {438},
		minLevel = 96,
		maxLevel = 110
	}
BattleList[17]	 = {
		id = 277,
		idTask = 0,
		limitCount = 1,
		idIllustrated = {430},
		minLevel = 110,
		maxLevel = 120
	}
BattleList[18]	 = {
		id = 950,
		idTask = 24719,
		limitCount = 2,
		idIllustrated = {431},
		minLevel = 110,
		maxLevel = 130
	}
BattleList[19]	 = {
		id = 953,
		idTask = 0,
		limitCount = 1,
		idIllustrated = {433},
		minLevel = 110,
		maxLevel = 120
	}
BattleList[20]	 = {
		id = 906,
		idTask = 23259,
		limitCount = 1,
		idIllustrated = {435},
		minLevel = 115,
		maxLevel = 130
	}
BattleList[21]	 = {
		id = 907,
		idTask = 0,
		limitCount = 1,
		idIllustrated = {436},
		minLevel = 115,
		maxLevel = 130
	}
BattleList[22]	 = {
		id = 933,
		idTask = 0,
		limitCount = 1,
		idIllustrated = {437},
		minLevel = 120,
		maxLevel = 130
	}
BattleList[23]	 = {
		id = 952,
		idTask = 24847,
		limitCount = 2,
		idIllustrated = {432},
		minLevel = 120,
		maxLevel = 130
	}





------------
--往下是主模块
--------------------
function Win_EventList:Init ()
	self:RegisterEvent(WM_LBUTTONDBLCLK, self.OnLButtonDBClick)
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE)
	self.m_eventListTable = {}		-- iLine -> iEvent, iLine 从1开始
	math.randomseed (os.time())
end

function Win_EventList:ShowDialog ()
	self:RefreshList()
	self:RefreshCurLineInfo()
end

--------------------
--根据九宫格已选活动更新界面行号到活动序号的查找表 (m_eventListTable)
--------------------
function Win_EventList:RefreshEventListTable ()
	local curEvents = {}
	if Win_EventBoxApi then
		local t = {Win_EventBoxApi.GetCurEvents()}
		for i = 1, #t do
			curEvents[t[i]] = true
		end
	end
	local eventListTable = self.m_eventListTable
	for k, _ in pairs(eventListTable) do
		eventListTable[k] = nil
	end
	for i = 1, EventList.n do
		if EventList[i] and EventList[i].isNew then
			if not curEvents[i] then
				eventListTable[#eventListTable+1] = i
			end
		end
	end
	for i = 1, EventList.n do
		if EventList[i] and not EventList[i].isNew then
			if not curEvents[i] then
				eventListTable[#eventListTable+1] = i
			end
		end
	end
end

--------------------
--显示活动列表
--------------------
function Win_EventList:RefreshList()
	self:RefreshEventListTable()

	local eventListTable = self.m_eventListTable
	local shownEvents = {}
	for i = 1, #eventListTable do
		local event = EventList[eventListTable[i]]
		shownEvents[#shownEvents+1] = event.name .."\t".. event.type .."\t".. event.level .."\t".. event.time
	end
	DlgApi.SetListText (self.this , "Lst_EventList", shownEvents)
end

--------------------
--返回特定活动信息给客户端
--------------------
function Win_EventList:GetEventInfo(iEvent)
	local event = EventList[iEvent]
	local result = {}
	result.name = event.name
	result.autopath = "活动发放人：" .. convertValue(event.autopath)
	result.description = ("活动时间：%s\r活动内容：%s"):format(event.time, event.content)
	result.icon = event.icon
	result.reward = event.reward

	result.quickFinishItemID = event.quickFinishItemID
	result.quickFinishItemNum = event.quickFinishItemNum

	return result
end

function Win_EventList:GetEventDayInfo(iEvent)
	local event = EventList[iEvent]
	local result = {}
	result.starttime = event.starttime
	result.duration = event.duration
	result.eventtype = event.eventtype
	return result
end

--------------------
--返回完成条件相关信息
--------------------
function Win_EventList:GetAllEventCondition ()
	local result = {}
	for iEvent = 1, EventList.n do
		local event = EventList[iEvent]
		if event then
			local condition = {}
			condition.MaxDayNum = event.MaxDayNum
			condition.MaxWeekNum = event.MaxWeekNum
			condition.taskAnd = event.taskAnd
			condition.taskOr = event.taskOr
			condition.weekday = event.weekday
			condition.minlevel = event.minlevel
			condition.maxlevel = event.maxlevel
            condition.quickFinishTaskID = event.quickFinishTaskID
			condition.showday = event.showday
			condition.hideday = event.hideday
			condition.loopStart = event.loopStart
			condition.loopEnd = event.loopEnd
			condition.loopPeriod = event.loopPeriod

			result[iEvent] = condition
		end
	end
	return result
end

--------------------
--战场
--------------------
function Win_EventList:GetAllBattleInfo ()
	local result = {}
	for iBattle = 1, BattleList.n do
		local battle = BattleList[iBattle]
		if battle then
			local info = {}
			info.id = battle.id
			info.idTask = battle.idTask
			info.limitCount = battle.limitCount
			info.idIllustrated = battle.idIllustrated
			info.minLevel = battle.minLevel
			info.maxLevel = battle.maxLevel

			result[iBattle] = info
		end
	end
	return result
end

--------------------
--更新状态栏显示
--------------------
-- bClear: 清空状态栏，如当列表为空
function Win_EventList:RefreshCurLineInfo()
	local iLine = DlgApi.GetListCurLine(self.this , "Lst_EventList") + 1
	local iEvent = self.m_eventListTable[iLine]
	if iEvent then
		local event = EventList[iEvent]
		local content = event.content:gsub("\r", "")
		GameApi.CovertTextArea(self.this, "Txt_EventDesc", ("活动发放人：%s\r活动内容：%s"):format(convertValue(event.autopath), content))
	else
		DlgApi.SetItemText (self.this, "Txt_EventDesc", "")
	end
end

--------------------
--以下为鼠标事件
--------------------
function Win_EventList:OnLButtonDown(objName)
--显示活动详细内容
	if objName == "Lst_EventList" then
		self:RefreshCurLineInfo()
--寻径NPC
	elseif objName == "Txt_EventDesc" then
		local posX , posY = GameApi.GetCursorPos()
		local NpcID = DlgApi.GetItemLink (self.this, "Txt_EventDesc", posX, posY)
		if NpcID ~= nil then
			GameApi.BeginAutoSearchPath(NpcID)
		end
	end
end
--鼠标移动到寻径处变成手的形状
function Win_EventList:OnMOUSEMOVE()
	local posX, posY = GameApi.GetCursorPos()
	local result = DlgApi.GetItemLink(self.this, "Txt_EventDesc", posX, posY)
		if result == nil then
			GameApi.ScriptChangeCursor(0)
		else
			GameApi.ScriptChangeCursor(14)
		end
	return true
end

--------------------
--双击某行活动，插入九宫格
--------------------
function Win_EventList:OnLButtonDBClick(objName)
	if objName == "Lst_EventList" then
		local iLine = DlgApi.GetListCurLine(self.this , "Lst_EventList") + 1
		local iEvent = self.m_eventListTable[iLine]
		if iEvent then
			if Win_EventBoxApi then
				Win_EventBoxApi.SetEventGrid(iEvent)
				self:RefreshList()
				self:RefreshCurLineInfo()
			end
		end
	end
end

_G.Win_EventList = PLUN(Win_EventList, "Win_EventList")

