-- require "item_desc_text"
-- require "item_desc_utility"

-- 将模块赋予一个本地别名

local M = mod_utility

-- 获取某类物品描述文本
lua_item_desc = {}

---------------------------------获取材料类物品描述文本，其函数输入参数为如下结构的table
--[[
tab =
{
	context,			-- number
	name,				-- string
	name_color,			-- string
	count,				-- number
	bound,				-- number
	limited,			-- boolean
	expire_time,		-- number
	unit_price,			-- number
	total_price,		-- number
	exploit_price,		-- number
	req_item,		-- string
	req_item_cnt	-- number
}
--]]
function lua_item_desc:GetMaterialDesc (tab)

	strTab = MATERIAL_DESC
	str_desc = ""

	-- 名字和数量
	str_desc = str_desc .. M.GetNameCountText(tab)

	-- 绑定状态
	str_desc = str_desc .. M.GetBoundStateText(tab)

	-- 剩余时间
	str_desc = str_desc .. M.GetExpireTimeText(tab)

	-- 价格描述
	str_desc = str_desc .. M.GetContextPriceText(tab)


	return M.TrimLastReturn(str_desc)
end

---------------------------------获取配方卷轴类物品描述文本，其函数输入参数为如下结构的table
--[[
tab =
{
	context,			-- number
	name,				-- string
	name_color,			-- string
	count,				-- number
	bound,				-- number
	limited,			-- boolean
	expire_time,		-- number
	unit_price,			-- number
	total_price,		-- number
	exploit_price,		-- number
	req_item,			-- string
	req_item_cnt,		-- number
	have_learned,			-- boolean
	req_prod_skill,			-- string
	req_prod_skill_color,	-- number	???能否改boolean，意义
	req_prod_point,			-- number
	req_prod_point_color,	-- number	???能否改boolean，意义
	product_name,			-- string
	product_desc			-- string
}
--]]
function lua_item_desc:GetRecipeRollDesc (tab)

	strTab = RECIPEROLL_DESC
	str_desc = ""

	-- 名字和数量
	str_desc = str_desc .. M.GetNameCountText(tab)

	-- 绑定状态
	str_desc = str_desc .. M.GetBoundStateText(tab)

	-- 学习状态
	str_desc = str_desc .. M.GetRecipeLearnedText(tab)

	-- 生产技能名
	str_desc = str_desc .. M.GetProduceSkillNameText(tab)

	-- 生产熟练度
	str_desc = str_desc .. M.GetProduceSkillMasteryText(tab)

	-- 生产成品名
	str_desc = str_desc .. M.GetProductNameText(tab)

	--分隔线
	str_desc = str_desc .. "-------------------------"
	str_desc = str_desc .. string.format("\\r")

	-- 成品属性
	str_desc = str_desc .. M.GetProductDescText(tab)

	--分隔线
	str_desc = str_desc .. "-------------------------"
	str_desc = str_desc .. string.format("\\r")

	-- 剩余时间
	str_desc = str_desc .. M.GetExpireTimeText(tab)

	-- 价格描述
	str_desc = str_desc .. M.GetContextPriceText(tab)


	return M.TrimLastReturn(str_desc)
end



---------------------------------获取战魂物品描述文本，其函数输入参数为如下结构的table
--[[
tab =
{
	context,			-- number
	name,				-- string
	name_color,			-- string
	count,				-- number
	bound,				-- number
	limited,			-- boolean
	expire_time,		-- number
	unit_price,			-- number
	total_price,		-- number
	exploit_price,		-- number
	req_item,			-- string
	req_item_cnt,		-- number
	quality	            -- int
    property1	   		-- str
    property2			-- str
    property3			-- str
    property4			-- str
    genius1				-- int
    genius2				-- int
    genius3				-- int
    genius4				-- int
    level				-- int
    levelup				-- int
    upperlimit			-- int
    flevel				-- int
    fporperty1			-- str
    fporperty2			-- str
    fporperty3			-- str
    fporperty4			-- str
    sporperty			-- str
    skillname1			-- str
    skilllevel1			-- int
    skillname2			-- str
    skilllevel2			-- int
    skillname3			-- str
    skilllevel3			-- int
    skillname4			-- str
    skilllevel4			-- int
    skillname5			-- str
    skilllevel5			-- int
    skillname6			-- str
    skilllevel6			-- int
    skillname7			-- str
    skilllevel7			-- int
    skillname8			-- str
    skilllevel8			-- int
    damage				-- int
    criticalattack		-- int
}
--]]
function lua_item_desc:GetAnimaDesc(tab)

	strTab = WARANIMA_DESC
	str_desc = ""

	-- 名字和数量
	str_desc = str_desc .. M.GetAnimaNameText(tab)

	-- 绑定状态
	str_desc = str_desc .. M.GetBoundStateText(tab)

	-- 战魂类型
	str_desc = str_desc .. M.GetAnimaTid(tab)

	-- 等级限制
	str_desc = str_desc .. M.GetLevelLimit(tab)

	-- 附加属性
	str_desc = str_desc .. M.GetAnimaFproperty(tab)

	-- 	炼魂属性
	str_desc = str_desc ..M.GetAnimaSporp(tab)
	str_desc = str_desc .. "--------------------------"
	str_desc = str_desc .. string.format("\\r")

	-- 等级相关
	str_desc = str_desc .. M.GetAnimaLevel(tab)

	-- 属性
	str_desc = str_desc .. M.GetAnimaProperty(tab)

	-- 资质等级
	str_desc = str_desc .. M.GetAnimaGenLv(tab)

	-- 资质
	str_desc = str_desc .. M.GetAnimaGenius(tab)

	-- 伤害属性
	str_desc = str_desc .. M.GetAnimaDamage(tab)

	-- 技能
	str_desc = str_desc .. M.GetAnimaSkill(tab)
	str_desc = str_desc .. "--------------------------"

	-- 价格描述
	str_desc = str_desc .. string.format("\\r")
	str_desc = str_desc .. M.GetContextPriceText(tab)
	return M.TrimLastReturn(str_desc)
end
-- for test
--[[
tab1= {
	context = 2,
	name = "完美宝钻",
	name_color = 6,
	count = 15,
	bound = 2,
	limited = true,
	expire_time = 12786,
	unit_price = 35,
	total_price =1234335,
	exploit_price = 3,
	require_item = "配方2",
	require_item_cnt = 1
}
tab2= {
	context = 1 ,
	name = "配方·好东西",
	name_color = 3,
	count = 1,
	bound = 0,
	limited = false,
	expire_time = 0,
	unit_price = 35,
	total_price = 35,
	exploit_price = 10,
	require_item = "配方2",
	require_item_cnt = 1,
	have_learned = 1,
	req_prod_skill = 巧匠,
	req_prod_skill_color = 1,
	req_prod_point = 60,
	req_prod_point_color = 0,
	product_name = "好东西",
	product_desc = "好东西\\r真的好东西"
}
--io.write(lua_item_desc:GetMaterialDesc(tab1))

--strdescription = lua_item_desc:GetMaterialDesc(tab)
--StdPrint(strdescription)
--]]

