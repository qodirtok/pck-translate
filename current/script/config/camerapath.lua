CameraPath = {};

local DP_SHOW_ALL  		= 0 --display player
local DP_HIDE_ALL  		= 1	--hide player
local DP_SHOW_SELF 		= 2	--only me
local DP_SHOW_OTHER 	= 3	--only others
local DO_NOTHING		= 0	--do nothing by default（camera operation）
local PAUSE				= 1	--pause
local RESUME			= 2 --goon
local STOP				= 3	--stop

--默认
CameraPath["default"] =
{
--  id                = 181,  			--camera id, start from 1
	indexOnlyShowOnce = -1,    			--index for onlyshowonce, [1,128] 只显示一次的动画，需在服务器储存ID，目前有128个储存位置，依据需要将数值从1-128填写，-1为不记录。
    onlyShowOnce      = false,          --是否只显示一次该动画
    canEscClose       = false,          --是否可以ESC取消
    disableOtherKey   = false,          --是否屏蔽玩家所有按键
    showUI            = false,          --是否显示UI界面
    showPlayers       = DP_HIDE_ALL,    --是否显示玩家与佣兵，三选一：显示玩家与佣兵:DP_SHOW_ALL, 不显示玩家与佣兵:DP_HIDE_ALL , 只显示自己与自己的佣兵:DP_SHOW_SELF
    showNPC           = false,          --是否显示NPC
    showMonster       = false,          --是否显示怪物
    showModelName     = false,          --是否显示模型名字
    cancelAutoPath    = false,          --是否自动停止自动寻路
    resetAllCamera    = false,			--is reset cameras with onlyshowonce true
	beginFadeTime     ={ 1000,500,3000,}, --->B、cont B、<-B（ms） 动画最开始时的黑屏渐进渐出效果（单位毫秒），三项数值分别为（屏幕变全黑的时间，黑色的持续时间，从黑变正常的时间）
	endFadeTime		  ={ 1000,500,1000,}, --动画结束时黑屏的渐进渐出效果，参数设置同上。
	race			  = {},				-- nil or empty means no limit
	prof			  = {},				-- nil or empty means no limit
	gender			  = {},				-- nil or empty means no limit
	playerMinLevel	  = 0,				-- nil or zero means no limit
	playerMaxLevel	  = 0,				-- nil or zero means no limit
}

----------------配置模板----------------------------------------------------------

CameraPath["OverlookCity"] =				--城市观光类
{
    canEscClose       	= true,
    showPlayers       	= DP_SHOW_ALL,
    showNPC           	= true,
    showMonster       	= true,
    cancelAutoPath    	= true,
    disableOtherKey     = true,
}

CameraPath["OverlookBattlefield"] =			--战场观光类
{
    canEscClose       	= true, 			--是否允许按ESC退出，允许ESC退出:true  , 不允许ESC退出:false
    disableOtherKey   	= true,				--是否允许按其他按键，不允许按其他按键:true  , 允许按其他按键:false
    showPlayers       	= DP_SHOW_ALL, 		--是否显示玩家与佣兵，三选一：显示玩家与佣兵:DP_SHOW_ALL, 不显示玩家与佣兵:DP_HIDE_ALL , 只显示自己与自己的佣兵:DP_SHOW_SELF
    showNPC           	= true, 			--是否显示NPC，显示NPC:true, 不显示NPC:false
    showMonster       	= true, 			--是否显示怪物，显示怪物:true, 不显示怪物:false
    cancelAutoPath    	= true, 			--是否中断自动寻径，中断自动寻径:true, 不中断自动寻径:false
}

CameraPath["DynBattleGuid"] =				--副本指示
{
    canEscClose       	= true, 			--是否允许按ESC退出，允许ESC退出:true  , 不允许ESC退出:false
    disableOtherKey   	= true,				--是否允许按其他按键，不允许按其他按键:true  , 允许按其他按键:false
    showPlayers       	= DP_SHOW_ALL, 		--是否显示玩家与佣兵，三选一：显示玩家与佣兵:DP_SHOW_ALL, 不显示玩家与佣兵:DP_HIDE_ALL , 只显示自己与自己的佣兵:DP_SHOW_SELF
    showNPC           	= true, 			--是否显示NPC，显示NPC:true, 不显示NPC:false
    showMonster       	= true, 			--是否显示怪物，显示怪物:true, 不显示怪物:false
    cancelAutoPath    	= true, 			--是否中断自动寻径，中断自动寻径:true, 不中断自动寻径:false
}

CameraPath["OverlookLittleGame"] =			--小游戏
{
	showUI            	= true, 			--是否显示界面，显示界面:true  , 不显示界面:false
    showPlayers       	= DP_SHOW_ALL, 		--是否显示玩家与佣兵，三选一：显示玩家与佣兵:DP_SHOW_ALL, 不显示玩家与佣兵:DP_HIDE_ALL , 只显示自己与自己的佣兵:DP_SHOW_SELF
    showNPC           	= true, 			--是否显示NPC，显示NPC:true, 不显示NPC:false
    showMonster       	= true, 			--是否显示怪物，显示怪物:true, 不显示怪物:false
}

CameraPath["OverlookTask"] =				--任务类
{
	disableOtherKey   	= true,				--是否允许按其他按键，不允许按其他按键:true  , 允许按其他按键:false
	showPlayers 		= DP_SHOW_ALL,		--是否显示玩家与佣兵，三选一：显示玩家与佣兵:DP_SHOW_ALL, 不显示玩家与佣兵:DP_HIDE_ALL , 只显示自己与自己的佣兵:DP_SHOW_SELF
	cancelAutoPath     	= true, 			--是否中断自动寻径，中断自动寻径:true, 不中断自动寻径:false
}

CameraPath["OverlookTask_NPC"] =
{
	disableOtherKey   	= true,				--是否允许按其他按键，不允许按其他按键:true  , 允许按其他按键:false
	showPlayers 		= DP_SHOW_ALL,		--是否显示玩家与佣兵，三选一：显示玩家与佣兵:DP_SHOW_ALL, 不显示玩家与佣兵:DP_HIDE_ALL , 只显示自己与自己的佣兵:DP_SHOW_SELF
	cancelAutoPath     	= true, 			--是否中断自动寻径，中断自动寻径:true, 不中断自动寻径:false
	showNPC           	= true,
	showMonster       	= true,
}



---------------实际曲线--------------------------------------------------------

CameraPath[9254] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,500,3000,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,500,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 8000,        --该段持续的时间
    	text 				= "众人：又抢了一船的财宝，跟着大哥好生威风啊！",   --显示的字幕
    	showOneCharTime   	= 100,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
    [2] =
    {
    	time 				= 13000,
    	text 				= "甘宁：哈哈哈哈！来！喝酒！",
    	showOneCharTime   	= 130,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
	--[3] =
	--{
	--  playsound ="sfx\\123\\123.wav",   --播放一段声音，声音的播放需要单独出一段，且不需要时间定义，脚本读到此段时开始播放。
	--}
    [3] =
    {
    	time 				= 5000,
    	text 				= "",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
}

CameraPath[9261] =
{
    template = "OverlookBattlefield",
	showPlayers       	= DP_SHOW_ALL,
    showUI = false,
	beginFadeTime     ={ 0,500,2000,},
	endFadeTime		  ={ 1000,500,0,},
    [1] =                                                      --若使用字幕图片，需独立设置一段
    {
    	time 				= 9000,
    	fadeInTime	  		= 5500,                            --图片的渐进时间
    	fadeOutTime	  		= 2000,                            --图片渐出时间
		showimg             = "\\CB\\动画界面\\动画字幕\\甘宁传诗.tga",  --显示字幕图片，显示方式为逐渐出现
		scrPosX             = 580,                             --图片左上角的X坐标
		scrPosY             = 90,                             --图片左上角的Y坐标
    	cameraOperation		= RESUME,
    },
    [2] =
    {
    	time 				= 15000,
    	text 				= "",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
    [3] =
    {
    	time 				= 5000,
    	text 				= "",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
}


CameraPath[9264] =
{
    template = "OverlookBattlefield",
	showPlayers       	= DP_HIDE_ALL,
    showUI = false,
	beginFadeTime     ={ 0,500,3000,},
	endFadeTime		  ={ 2000,1000,0,},
    [1] =
    {
    	time 				= 5000,
    	text 				= "",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
    [2] =
    {
    	time 				= 15000,
    	text 				= "",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
    [3] =
    {
    	time 				= 5000,
    	text 				= "",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
}


CameraPath[9268] =
{
    template = "OverlookBattlefield",
	showPlayers       	= DP_HIDE_ALL,
    showUI = false,
	beginFadeTime     ={ 0,500,2000,},
	endFadeTime		  ={ 1800,500,0,},
	-- beginFadeTime     ={ 0,0,0,},
	-- endFadeTime		  ={  0,0,0,},
    [1] =
    {
    	time 				= 6300,
    	text 				= "",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
    [2] =
    {
    	time 				= 4000,
    	text 				= "甘宁：哈哈！让你们见识下我这水鸟的厉害！",
    	showOneCharTime   	= 50,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= PAUSE,
    },
    [3] =
    {
    	time 				= 100,
    	text 				= "",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= STOP,
    },
}

CameraPath[9270] =
{
    template = "OverlookBattlefield",
	showPlayers       	= DP_HIDE_ALL,
    showUI = false,
	beginFadeTime     ={ 0,500,1500,},
	endFadeTime		  ={ 1500,500,0,},
	[1] =
    {
    	time 				= 2500,
    	text 				= "",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
    [2] =
    {
    	time 				= 5000,
    	text 				= "甘宁：把这些宝贝都给我看好了！少了一件休怪老子翻脸！",
    	showOneCharTime   	= 70,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= PAUSE,
    },
    [3] =
    {
    	time 				= 1000,
    	text 				= "",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
}

CameraPath[9271] =
{
    template = "OverlookBattlefield",
	showPlayers       	= DP_HIDE_ALL,
    showUI = false,
	beginFadeTime     ={ 0,500,2000,},
	endFadeTime		  ={ 1500,500,0,},
    [1] =
    {
    	time 				= 2000,
    	text 				= "",
    	showOneCharTime   	= 70,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
    [2] =
    {
    	time 				= 10000,
    	text 				= "甘宁：来人，把船给我炸了！让这些毛贼有来无回！",
    	showOneCharTime   	= 70,
    	fadeInTime	  		= 1500,
    	fadeOutTime	  		= 1500,
    	cameraOperation		= PAUSE,
    },
    [3] =
    {
    	time 				= 15000,
    	text 				= "",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
}

CameraPath[9458] =
{
    template = "OverlookCity",
	showNPC           	= false,
	showMonster       	= false,
	beginFadeTime     ={ 0,500,1000,},
	endFadeTime		  ={ 1000,500,0,},
}

CameraPath[9475] =
{
    template = "OverlookCity",
	showNPC           	= false,
	showMonster       	= false,
	beginFadeTime     ={ 0,500,3000,},
	endFadeTime		  ={ 1000,500,0,},
}

CameraPath[9463] =
{
    template = "OverlookCity",
	showNPC           	= false,
	showMonster       	= false,
	beginFadeTime     ={ 0,500,3000,},
	endFadeTime		  ={ 1000,500,0,},
}

CameraPath[9496] =
{
    template = "OverlookTask_NPC",
	canEscClose       	= true,
	showPlayers       	= DP_HIDE_ALL,
	beginFadeTime     ={ 0,500,3000,},
	endFadeTime		  ={ 1000,500,0,},
    [1] =                                                      --若使用字幕图片，需独立设置一段
    {
    	time 				= 45000,
    	fadeInTime	  		= 5500,                            --图片的渐进时间
    	fadeOutTime	  		= 2000,                            --图片渐出时间
		showimg             = "\\CB\\动画界面\\动画字幕\\开篇文字.tga",  --显示字幕图片，显示方式为逐渐出现
		scrPosX             = 500,                             --图片左上角的X坐标
		scrPosY             = 90,                             --图片左上角的Y坐标
    	cameraOperation		= RESUME,
    },
	[2] =
    {
    	time 				= 5000,
    	text 				= "而这里，不过是又一个被战火洗礼的村庄。",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
}

CameraPath[9500] =
{
    template = "OverlookTask_NPC",
	showPlayers       	= DP_HIDE_ALL,
	beginFadeTime     ={ 0,500,3000,},
	endFadeTime		  ={ 1000,500,0,},
    [1] =
    {
    	time 				= 6000,
    	text 				= "看来村里的黄巾贼还有很多。",
    	showOneCharTime   	= 70,
    	fadeInTime	  		= 1500,
    	fadeOutTime	  		= 1500,
    	cameraOperation		= RESUME,
    },
	--[2] =
	--{
	--  playsound ="sfx\\123\\123.wav",   --播放安何生语音。
	--}
	[2] =
    {
    	time 				= 6000,
    	text 				= "安何生：我不想死啊！",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
	--[3] =
	--{
	--  playsound ="sfx\\123\\123.wav",   --播放张飞语音。
	--}
	[3] =
    {
    	time 				= 6000,
    	text 				= "张飞：大胆逆贼，纳命来！！！",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
}

CameraPath[9568] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	showNPC = false,
	showMonster = true,
	beginFadeTime     ={ 0,500,3000,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,1000,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 4200,        --该段持续的时间
    	text 				= "长安，三千繁华。",   --显示的字幕
    	showOneCharTime   	= 100,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,
    },
    [2] =
    {
    	time 				= 6600,
    	text 				= "拔剑笑看红尘，叹花开几度。长亭晚，斜阳暮，谁作伴江湖路？",
    	showOneCharTime   	= 130,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
    [3] =
    {
    	time 				= 4800,
    	text 				= "少年一世能狂，敢骂天地不仁！",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 100,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
    [4] =
    {
    	time 				= 4200,
    	text 				= "赤壁·英雄传，我们携手前行！",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 100,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },

	[5] =      --此段播图片官渡logo！
    {
    	time 				= 3000,
    	fadeInTime	  		= 0,                            --图片的渐进时间
    	fadeOutTime	  		= 0,                            --图片渐出时间
		showimg             = "\\CB\\动画界面\\动画字幕\\赤壁英雄传logo.tga",  --显示字幕图片
		scrPosX             = 120,                             --图片左上角的X坐标
		scrPosY             = 190,                             --图片左上角的Y坐标
    	cameraOperation		= PAUSE,
    },
	[6] =
    {
    	time 				= 10,
    	cameraOperation		= STOP,
    },
	}

CameraPath[9566] =
{
    template = "OverlookCity",
	showNPC           	= false,
	beginFadeTime     ={ 0,500,3000,},
	endFadeTime		  ={ 1000,500,0,},
	[1] =                                  --第一段镜头属性
    {
    	time 				= 8100,        --该段持续的时间
    	text 				= "忆往昔，天下豪杰聚桃园；看今朝，四海英雄图霸业！",   --显示的字幕
    	showOneCharTime   	= 100,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}

CameraPath[9570] =
{
    template = "OverlookCity",
	showNPC           	= false,
	beginFadeTime     ={ 0,500,3000,},
	endFadeTime		  ={ 1000,500,0,},
	[1] =                                  --第一段镜头属性
    {
    	time 				= 8100,        --该段持续的时间
    	text 				= "风卷黄沙，吹不散爱恨忠义；孤行大漠，走不完丹心一片！",   --显示的字幕
    	showOneCharTime   	= 100,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}

CameraPath[9581] =
{
    template = "OverlookCity",
	showNPC           	= false,
	beginFadeTime     ={ 0,500,3000,},
	endFadeTime		  ={ 1000,500,0,},
	[1] =                                  --第一段镜头属性
    {
    	time 				= 9500,        --该段持续的时间
    	text 				= "蜀道之难，难于上青天。蚕丛及鱼凫，开国何茫然！尔来四万八千岁，不与秦塞通人烟。",   --显示的字幕
    	showOneCharTime   	= 100,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}

CameraPath[9584] =
{
    template = "OverlookCity",
	showNPC           	= false,
	beginFadeTime     ={ 0,500,3000,},
	endFadeTime		  ={ 1000,500,0,},
	[1] =                                  --第一段镜头属性
    {
    	time 				= 8100,        --该段持续的时间
    	text 				= "短衣上战地，匹马逐秋风。莫作阶下囚，神威统南疆！",   --显示的字幕
    	showOneCharTime   	= 100,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}

CameraPath[9586] =
{
    template = "OverlookCity",
	showNPC           	= false,
	beginFadeTime     ={ 0,500,3000,},
	endFadeTime		  ={ 1000,500,0,},
	[1] =                                  --第一段镜头属性
    {
    	time 				= 4100,        --该段持续的时间
    	text 				= "江河奔流下，意气指江山。遇主犹年少，论功位已酬。",   --显示的字幕
    	showOneCharTime   	= 100,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}

CameraPath[9587] =
{
    template = "OverlookCity",
	showNPC           	= false,
	beginFadeTime     ={ 0,500,3000,},
	endFadeTime		  ={ 1000,500,0,},
	[1] =                                  --第一段镜头属性
    {
    	time 				= 4100,        --该段持续的时间
    	text 				= "中原地与荆襄近，四十余万兵筹边。却思仙人白玉笛，胡床醉倚烂柯山。",   --显示的字幕
    	showOneCharTime   	= 100,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}

CameraPath[9505] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,2000,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 500,500,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 3000,        --该段持续的时间
    	text 				= "张飞：这张角小儿，不可一世，他们的部队就在城下。",          --显示的字幕
    	showOneCharTime   	= 40,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
    [2] =
    {
    	time 				= 3000,
    	text 				= "张飞：愿尔等能铲除黄巾势力。",
    	showOneCharTime   	= 40,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
    [3] =
	{
		newPath = 9514,
	},

}
CameraPath[9514] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,1000,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 11000,        --该段持续的时间
    	text 				= "黄巾众：苍天已死，黄天当立，岁在甲子，天下大吉。",          --显示的字幕
    	showOneCharTime   	= 180,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
	[2] =
	{
		newPath = 9515,
	},
}
CameraPath[9515] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,1000,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 5000,        --该段持续的时间
    	text 				= "张角：听说有人闯入军中大帐，我们绝不畏惧。", --显示的字幕
    	showOneCharTime   	= 100,                                                 --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                               --字幕渐进时间
    	fadeOutTime	  		= 1000,                                               --字幕渐出时间
    	cameraOperation		= RESUME,                                             --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}

CameraPath[9522] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 200,300,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 4000,        --该段持续的时间
    	text 				= "马超：诸位今日密探羌营，请助我寻得阎行的行踪。", --显示的字幕
    	showOneCharTime   	= 50,                                               --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
	[2] =
	{
		newPath = 9591,
	},
}
CameraPath[9591] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},          --设置动画开始的黑屏效果
	endFadeTime		  ={ 200,300,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 3000,        --该段持续的时间
    	text 				= "马超:茫茫雪景中，隐约能看见阎行一行人的踪迹。",          --显示的字幕
    	showOneCharTime   	= 60,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
    [2] =
    {
    	time 				= 3000,
    	text 				= "马超：且慢，不急于上前，等阎行与长老碰头时，让他们人赃并获。",
    	showOneCharTime   	= 20,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
    [3] =
    {
    	time 				= 5000,
    	text 				= "马超：羌族生性狡诈，多会利用者西域地形，迎击来者,诸位小心应付。",
    	showOneCharTime   	= 50,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
	[4] =
	{
		newPath = 9592,
	},
}
CameraPath[9592] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 300,300,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 3900,        --该段持续的时间
    	text 				= "百夫长:阎兄，长老派我在此地恭候多时。",          --显示的字幕
    	showOneCharTime   	= 40,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
	[2] =
	{
		newPath = 9593,
	},
}
CameraPath[9593] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 100,100,0,},     --设置动画结束的黑屏效果
    [1] =
    {
    	time 				= 4000,
    	text 				= "阎行：这次的行动是秘密进行的，一路都得堤防周围耳目。",
    	showOneCharTime   	= 40,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
	[2] =
	{
		newPath = 9594,
	},
}

CameraPath[9594] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 200,300,0,},     --设置动画结束的黑屏效果
    [1] =
    {
    	time 				= 3900,
    	text 				= "百夫长：我知道，你快去见族长吧，他等你多时了。",
    	showOneCharTime   	= 40,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
	[2] =
	{
		newPath = 9555,
	},
}
CameraPath[9555] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},          --设置动画开始的黑屏效果
	endFadeTime		  ={ 200,200,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 5500,        --该段持续的时间
    	text 				= "",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[9556] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,1000,3000,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 2000,1000,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 10000,        --该段持续的时间
    	text 				= "孟获:来头不小啊，那么多人。",          --显示的字幕
    	showOneCharTime   	= 80,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
    [2] =
    {
    	time 				= 10000,
    	text 				= "孟获：木鹿你这是要与我一决雌雄。",
    	showOneCharTime   	= 100,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
	[3] =
	{
		newPath = 9561,
	},
}
CameraPath[9561] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 500,500,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 6000,        --该段持续的时间
    	text 				= "木鹿大王：哇呀呀呀，你这莽夫，今日我木鹿军非拿下你的项上人头不可。",          --显示的字幕
    	showOneCharTime   	= 60,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
	[2] =
	{
		newPath = 9562,
	},
}
CameraPath[9562] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 200,100,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 3000,        --该段持续的时间
    	text 				= "孟获：有本事你就来试试看，谁才是真正的南中之王。",          --显示的字幕
    	showOneCharTime   	= 40,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[9565] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,500,3000,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,500,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 1000,        --该段持续的时间
    	text 				= "",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
    [2] =
    {
    	time 				= 1000,
    	text 				= "",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
    [3] =
    {
    	time 				= 1000,
    	text 				= "",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
}


CameraPath[9601] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,500,3000,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,500,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 5500,        --该段持续的时间
    	text 				= "“本初豪气盖中华，官渡相持枉叹嗟。若使许攸谋见用，山河争得属曹家？”",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
    [2] =
    {
    	time 				= 5500,
    	text 				= "在这乱世之中，官渡战场之上，袁、曹两军僵持不下。",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
    [3] =
    {
    	time 				= 5500,
    	text 				= "最终的胜利将属于哪方，历史的车轮将驶向哪里，如今全掌握在你们的手中。",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
    [4] =
    {
    	time 				= 7500,
    	text 				= "拿起手中的兵器，去主宰这世界的命运吧！",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
}


CameraPath[9602] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,500,3000,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,500,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 5500,        --该段持续的时间
    	text 				= "“本初豪气盖中华，官渡相持枉叹嗟。若使许攸谋见用，山河争得属曹家？”",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
    [2] =
    {
    	time 				= 5500,
    	text 				= "在这乱世之中，官渡战场之上，袁、曹两军僵持不下。",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
    [3] =
    {
    	time 				= 5500,
    	text 				= "最终的胜利将属于哪方，历史的车轮将驶向哪里，如今全掌握在你们的手中。",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
    [4] =
    {
    	time 				= 8500,
    	text 				= "拿起手中的兵器，去主宰这世界的命运吧！",
    	showOneCharTime   	= 0,
    	fadeInTime	  		= 1000,
    	fadeOutTime	  		= 1000,
    	cameraOperation		= RESUME,
    },
}

CameraPath[9610] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,100,100,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 500,1000,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 5000,        --该段持续的时间
    	text 				= "蒋干：多多利用道具与地形技巧骗过卫兵，此乃上策",          --显示的字幕
    	showOneCharTime   	= 60,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}

CameraPath[9619] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,100,100,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 500,1000,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 19000,        --该段持续的时间
    	text 				= "",          --显示的字幕
    	showOneCharTime   	= 60,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 1000,                                             --字幕渐进时间
    	fadeOutTime	  		= 1000,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[9732] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	canEscClose       	= false,
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,100,100,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 500,500,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 30000,        --该段持续的时间
    	text 				= "关羽：待关某会会这老将！",          --显示的字幕
    	showOneCharTime   	= 500,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 100,                                             --字幕渐进时间
    	fadeOutTime	  		= 100,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[9912] =
{
    template = "OverlookCity",
	showNPC           	= false,
	showMonster       	= false,
	beginFadeTime     ={ 0,500,1000,},
	endFadeTime		  ={ 1000,500,0,},
	 [1] =                                  --第一段镜头属性
    {
    	time 				= 30000,        --该段持续的时间
    	text 				= "巴蜀山水美如画，人间仙境似桃源。",          --显示的字幕
    	showOneCharTime   	= 500,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 100,                                             --字幕渐进时间
    	fadeOutTime	  		= 100,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[10390] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,1000,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 6000,        --该段持续的时间
    	text 				= "马岱：士兵们，保住军旗。是你们能否成功御敌的关键。",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
	[2] =
	{
		newPath = 10391,
	},
}
CameraPath[10391] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,1000,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 4000,        --该段持续的时间
    	text 				= "马岱：我在后方兵马铺等候你们。", --显示的字幕
    	showOneCharTime   	= 0,                                                 --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                               --字幕渐进时间
    	fadeOutTime	  		= 0,                                               --字幕渐出时间
    	cameraOperation		= RESUME,                                             --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[10386] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,2000,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 500,500,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 4000,        --该段持续的时间
    	text 				= "马岱：此地乃天璇火池炼狱。",                     --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
     [2] =
	{
		newPath = 10387,
	},

}
CameraPath[10387] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,1000,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 3000,        --该段持续的时间
    	text 				= "马岱：平常用来训练士兵。",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
	[2] =
	{
		newPath = 10388,
	},
}
CameraPath[10388] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,1000,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 4000,        --该段持续的时间
    	text 				= "马岱：凭你们反应很难通过。", --显示的字幕
    	showOneCharTime   	= 0,                                                 --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                               --字幕渐进时间
    	fadeOutTime	  		= 0,                                               --字幕渐出时间
    	cameraOperation		= RESUME,                                             --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
	[2] =
	{
		newPath = 10389,
	},
}
CameraPath[10389] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,1000,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 5000,        --该段持续的时间
    	text 				= "马岱：当然，若你们能过来，本将军在兵马铺恭候各位。", --显示的字幕
    	showOneCharTime   	= 0,                                                 --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                               --字幕渐进时间
    	fadeOutTime	  		= 0,                                               --字幕渐出时间
    	cameraOperation		= RESUME,                                             --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[10393] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,2000,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 500,500,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 4000,        --该段持续的时间
    	text 				= "马岱：记住，七星阵不是何人都能随意出入的，你们将止步于七星山下的兵马铺。",  --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
     [2] =
	{
		newPath = 10394,
	},

}
CameraPath[10394] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,1000,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 6000,        --该段持续的时间
    	text 				= "马岱：本将军在铁马之上有护盾护身，无人能破...",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
	[2] =
	{
		newPath = 10395,
	},
}
CameraPath[10395] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,1000,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 5000,        --该段持续的时间
    	text 				= "马岱：凭你们手上的破铜烂铁更奈何不了我。", --显示的字幕
    	showOneCharTime   	= 0,                                                 --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                               --字幕渐进时间
    	fadeOutTime	  		= 0,                                               --字幕渐出时间
    	cameraOperation		= RESUME,                                             --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[10396] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,2000,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 500,500,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 4000,        --该段持续的时间
    	text 				= "姜维：士兵们，兵马铺已丢，快速撤三渡口，行船不用管了。",  --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
     [2] =
	{
		newPath = 10397,
	},

}
CameraPath[10397] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,1000,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 4000,        --该段持续的时间
    	text 				= "姜维：我已经把三渡口的机关给打开了。",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
	[2] =
	{
		newPath = 10398,
	},
}
CameraPath[10398] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,0,},     --设置动画开始的黑屏效果
	endFadeTime		  ={ 1000,1000,0,},     --设置动画结束的黑屏效果
    [1] =                                  --第一段镜头属性
    {
    	time 				= 6000,        --该段持续的时间
    	text 				= "姜维：士兵们速回天玑，将机关阵布好，准备迎接敌人。", --显示的字幕
    	showOneCharTime   	= 0,                                                 --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                               --字幕渐进时间
    	fadeOutTime	  		= 0,                                               --字幕渐出时间
    	cameraOperation		= RESUME,                                             --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[10399] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,500,1000,},
	endFadeTime		  ={ 1000,500,0,},
	 [1] =                                  --第一段镜头属性
    {
    	time 				= 14000,        --该段持续的时间
    	text 				= "姜维：接我滚木阵法，看看你们身法如何。",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[10401] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,500,1000,},
	endFadeTime		  ={ 1000,500,0,},
	 [1] =                                  --第一段镜头属性
    {
    	time 				= 14000,        --该段持续的时间
    	text 				= "姜维：这里藏着许多机关的秘密，你们能逐一排查吗？。",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[10218] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,500,1000,},
	endFadeTime		  ={ 1000,500,0,},
	 [1] =                                  --第一段镜头属性
    {
    	time 				= 10000,        --该段持续的时间
    	text 				= "姜维：我姜维可不会这么轻敌，军旗阵赐予我坚不可摧的躯体。",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[10403] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,500,1000,},
	endFadeTime		  ={ 1000,500,0,},
	 [1] =                                  --第一段镜头属性
    {
    	time 				= 9000,        --该段持续的时间
    	text 				= "魏延：山崖将埋葬你们，士兵们抗出大旗痛击敌军。",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[10404] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,500,1000,},
	endFadeTime		  ={ 1000,500,0,},
	 [1] =                                  --第一段镜头属性
    {
    	time 				= 8000,        --该段持续的时间
    	text 				= "金甲兵：将军叫我们死守这里，不能有半点疏忽，看我滚滚滚,唉哟...",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
	 [2] =                                  --第一段镜头属性
    {
    	newPath = 10405,
    },
}
CameraPath[10405] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,500,1000,},
	endFadeTime		  ={ 1000,500,0,},
	 [1] =                                  --第一段镜头属性
    {
    	time 				= 4000,        --该段持续的时间
    	text 				= "金甲兵：不小心撞上了，我去后方包扎一下。",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[10407] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,500,1000,},
	endFadeTime		  ={ 1000,500,0,},
	 [1] =                                  --第一段镜头属性
    {
    	time 				= 7000,        --该段持续的时间
    	text 				= "魏延：就是你们几个小子把前面的部队打得落花流水？",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
	 [2] =                                  --第一段镜头属性
    {
    	newPath = 10409,
    },
}
CameraPath[10409] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,500,1000,},
	endFadeTime		  ={ 1000,500,0,},
	 [1] =                                  --第一段镜头属性
    {
    	time 				= 5000,        --该段持续的时间
    	text 				= "魏延：来与我一战，你们休想活着离开本将军的浑天堡垒。",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
	 [2] =                                  --第一段镜头属性
    {
    	time 				= 4000,        --该段持续的时间
    	text 				= "魏延：我要触动浑天堡垒杀你们个片甲不留。",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[10411] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,500,1000,},
	endFadeTime		  ={ 1000,500,0,},
	 [1] =                                  --第一段镜头属性
    {
    	time 				= 9000,        --该段持续的时间
    	text 				= "诸葛亮：冰山巨石拦去路，你们能披荆斩棘一路向前吗？",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[10412] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,1000,},
	endFadeTime		  ={ 1000,500,0,},
	 [1] =                                  --第一段镜头属性
    {
    	time 				= 9000,        --该段持续的时间
    	text 				= "诸葛亮：来试试老夫的悬浮阵，浮板运动起来是可以置你们于死地的。",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}
CameraPath[10416] =
{
    template = "OverlookBattlefield",      --设置模板类型，此时会载入所有战场观光类的设置数据。
	showPlayers       	= DP_HIDE_ALL,     --设置隐藏所有玩家。
    showUI = false,                        --设置为隐藏UI及界面
	beginFadeTime     ={ 0,0,1000,},
	endFadeTime		  ={ 1000,500,0,},
	 [1] =                                  --第一段镜头属性
    {
    	time 				= 9000,        --该段持续的时间
    	text 				= "诸葛亮：败？怎么可能，这只是刚刚开始。",          --显示的字幕
    	showOneCharTime   	= 0,                                              --每个字符显示的时间，是否逐字出现
    	fadeInTime	  		= 0,                                             --字幕渐进时间
    	fadeOutTime	  		= 0,                                             --字幕渐出时间
    	cameraOperation		= RESUME,                                           --是否暂停摄像机移动，RESUME为恢复移动，PAUSE为暂停，实际上此处镜头未暂停，无需设置恢复。
    },
}