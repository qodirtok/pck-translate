local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_SceneParamInfo = DlgTemplate:new({this = "Win_SceneParamInfo"})

SceneParamInfo = {}

--[[  
场景参数显示窗口SceneParamInfo.xml的配置文件，若在此配置了数据，会有提示窗显示对应地图的相关参数
-- 配置文件格式
-- instance 1607 的参数信息
SceneParamInfo[1607] = {

	-- 区域 #1 的场景参数，一个场景可对应多个区域
	{
		MinX = -1000, MaxX = 1000, MinY = -1000, MaxY = 1000, MinZ = -1000, MaxZ = 1000,
		--全局参数
		GlobalParam = { 
		{id = 1999, name = "这是全局参数1999的名字", desc = "这是全局参数1999的描述", },
		{id = 2000, name = "这是全局参数2000的名字", desc = "这是全局参数2000的描述", },
		},
		--场景参数
		SceneParam = {
		{ id = 10, name = "这是场景参数10的名字", desc = "这是场景参数10的描述", },
		{ id = 20, name = "这是场景参数20的名字", desc = "这是场景参数20的描述", },
		},
	},
}
]]--
SceneParamInfo[1188] = {
	{
		--本区域范围
		MinX = -1000, MaxX = 1000, MinY = -1000, MaxY = 1000, MinZ = -1000, MaxZ = 1000,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 16, name = "闯塔方", desc = "挑战死亡次数",}, 
		{ id = 17, name = "进度", desc = "当前挑战层数",},
		},
	},
}

SceneParamInfo[1189] = {
	{
		--本区域范围
		MinX = -1000, MaxX = 1000, MinY = -1000, MaxY = 1000, MinZ = -1000, MaxZ = 1000,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 16, name = "闯塔方", desc = "挑战死亡次数",}, 
		{ id = 17, name = "进度", desc = "当前挑战层数",},
		},
	},
}

SceneParamInfo[1190] = {
	{
		--本区域范围
		MinX = -1000, MaxX = 1000, MinY = -1000, MaxY = 1000, MinZ = -1000, MaxZ = 1000,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 16, name = "闯塔方", desc = "挑战死亡次数",}, 
		{ id = 17, name = "进度", desc = "当前挑战层数",},
		},
	},
}

SceneParamInfo[1191] = {
	{
		--本区域范围
		MinX = -1000, MaxX = 1000, MinY = -1000, MaxY = 1000, MinZ = -1000, MaxZ = 1000,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 16, name = "闯塔方", desc = "挑战死亡次数",}, 
		{ id = 17, name = "进度", desc = "当前挑战层数",},
		},
	},
}

SceneParamInfo[1192] = {
	{
		--本区域范围
		MinX = -1000, MaxX = 1000, MinY = -1000, MaxY = 1000, MinZ = -1000, MaxZ = 1000,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 16, name = "闯塔方", desc = "挑战死亡次数",}, 
		{ id = 17, name = "进度", desc = "当前挑战层数",},
		},
	},
}

SceneParamInfo[1193] = {
	{
		--本区域范围
		MinX = -1000, MaxX = 1000, MinY = -1000, MaxY = 1000, MinZ = -1000, MaxZ = 1000,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 16, name = "闯塔方", desc = "挑战死亡次数",}, 
		{ id = 17, name = "进度", desc = "当前挑战层数",},
		},
	},
}

SceneParamInfo[1194] = {
	{
		--本区域范围
		MinX = -1000, MaxX = 1000, MinY = -1000, MaxY = 1000, MinZ = -1000, MaxZ = 1000,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 16, name = "闯塔方", desc = "挑战死亡次数",}, 
		{ id = 17, name = "进度", desc = "当前挑战层数",},
		},
	},
}

SceneParamInfo[1195] = {
	{
		--本区域范围
		MinX = -1000, MaxX = 1000, MinY = -1000, MaxY = 1000, MinZ = -1000, MaxZ = 1000,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 16, name = "闯塔方", desc = "挑战死亡次数",}, 
		{ id = 17, name = "进度", desc = "当前挑战层数",},
		},
	},
}

SceneParamInfo[1196] = {
	{
		--本区域范围
		MinX = -1000, MaxX = 1000, MinY = -1000, MaxY = 1000, MinZ = -1000, MaxZ = 1000,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 16, name = "闯塔方", desc = "挑战死亡次数",}, 
		{ id = 17, name = "进度", desc = "当前挑战层数",},
		},
	},
}

SceneParamInfo[7] = {
	{
		--本区域范围
		MinX = -455, MaxX = -145, MinY = -1000, MaxY = 1000, MinZ = -168, MaxZ = 205,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 5550204, name = "魏", desc = "获得积分",}, 
		{ id = 5550205, name = "蜀", desc = "获得积分",},
		{ id = 5550206, name = "吴", desc = "获得积分",},
		},
	},
}

SceneParamInfo[1426] = {
	{
		--本区域范围
		MinX = -159, MaxX = -27, MinY = -1000, MaxY = 1000, MinZ = -238, MaxZ = 322,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 30, name = "挑战方", desc = "获得积分",}, 
		{ id = 31, name = "应战方", desc = "获得积分",},
		},
	},
}

SceneParamInfo[1427] = {
	{
		--本区域范围
		MinX = -344, MaxX = -117, MinY = -1000, MaxY = 1000, MinZ = -281, MaxZ = 300,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 30, name = "挑战方", desc = "获得积分",}, 
		{ id = 31, name = "应战方", desc = "获得积分",},
		},
	},
}

SceneParamInfo[1428] = {
	{
		--本区域范围
		MinX = -45, MaxX = 278, MinY = -1000, MaxY = 1000, MinZ = -316, MaxZ = 265,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 30, name = "挑战方", desc = "获得积分",}, 
		{ id = 31, name = "应战方", desc = "获得积分",},
		},
	},
}

SceneParamInfo[2201] = {
	{
		--本区域范围
		MinX = -512, MaxX = 512, MinY = -1000, MaxY = 1000, MinZ = -512, MaxZ = 512,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 32, name = "魏国", desc = "占领城池数量",},
		{ id = 33, name = "蜀国", desc = "占领城池数量",},
		{ id = 34, name = "吴国", desc = "占领城池数量",},
		},
	},
}

SceneParamInfo[2202] = {
	{
		--本区域范围
		MinX = -512, MaxX = 512, MinY = -1000, MaxY = 1000, MinZ = -512, MaxZ = 512,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 32, name = "魏国", desc = "占领城池数量",},
		{ id = 33, name = "蜀国", desc = "占领城池数量",},
		{ id = 34, name = "吴国", desc = "占领城池数量",},
		},
	},
}

SceneParamInfo[2203] = {
	{
		--本区域范围
		MinX = -512, MaxX = 512, MinY = -1000, MaxY = 1000, MinZ = -512, MaxZ = 512,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 32, name = "魏国", desc = "占领城池数量",},
		{ id = 33, name = "蜀国", desc = "占领城池数量",},
		{ id = 34, name = "吴国", desc = "占领城池数量",},
		},
	},
}

SceneParamInfo[2204] = {
	{
		--本区域范围
		MinX = -512, MaxX = 512, MinY = -1000, MaxY = 1000, MinZ = -512, MaxZ = 512,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 32, name = "魏国", desc = "占领城池数量",},
		{ id = 33, name = "蜀国", desc = "占领城池数量",},
		{ id = 34, name = "吴国", desc = "占领城池数量",},
		},
	},
}

SceneParamInfo[2205] = {
	{
		--本区域范围
		MinX = -512, MaxX = 512, MinY = -1000, MaxY = 1000, MinZ = -512, MaxZ = 512,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 32, name = "魏国", desc = "占领城池数量",},
		{ id = 33, name = "蜀国", desc = "占领城池数量",},
		{ id = 34, name = "吴国", desc = "占领城池数量",},
		},
	},
}

SceneParamInfo[2206] = {
	{
		--本区域范围
		MinX = -512, MaxX = 512, MinY = -1000, MaxY = 1000, MinZ = -512, MaxZ = 512,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 32, name = "魏国", desc = "占领城池数量",},
		{ id = 33, name = "蜀国", desc = "占领城池数量",},
		{ id = 34, name = "吴国", desc = "占领城池数量",},
		},
	},
}

SceneParamInfo[2207] = {
	{
		--本区域范围
		MinX = -512, MaxX = 512, MinY = -1000, MaxY = 1000, MinZ = -512, MaxZ = 512,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 32, name = "魏国", desc = "占领城池数量",},
		{ id = 33, name = "蜀国", desc = "占领城池数量",},
		{ id = 34, name = "吴国", desc = "占领城池数量",},
		},
	},
}

SceneParamInfo[2208] = {
	{
		--本区域范围
		MinX = -512, MaxX = 512, MinY = -1000, MaxY = 1000, MinZ = -512, MaxZ = 512,
		--全局参数
		GlobalParam = { 
		},
		--场景参数
		SceneParam = {
		{ id = 32, name = "魏国", desc = "占领城池数量",},
		{ id = 33, name = "蜀国", desc = "占领城池数量",},
		{ id = 34, name = "吴国", desc = "占领城池数量",},
		},
	},
}