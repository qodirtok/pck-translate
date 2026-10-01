--[[

QTE Format:
QTETable[id] = {
	keys = { key1, key2, key3, ...},
	gfx = "程序联入\\xxxx.gfx",
	qte_time = 2000,
}

id: Current QTE ID
keys: Key Sequence
gfx: Prompt Light Effect
qte_time: QTE Duration (milliseconds)

]]--

local up = 0
local down = 1
local left = 2
local right = 3

QTETable = {}
QTETable[1] = {
	keys = { left, right, left, right, left, right, left, right, left, right, },
	gfx = "界面\\QTE_左右方向光效.gfx",
	gfx_ok = "界面\\qte_成功.gfx",
	qte_time = 2000,
}
QTETable[2] = {
	keys = { left, right, left, right, },
	gfx = "界面\\QTE_左右方向光效.gfx",
	gfx_ok = "界面\\qte_成功.gfx",
	qte_time = 4000,
}



QTEFunc = {}
-- Get QTE Resource
function QTEFunc:GetRes(id)
	if QTETable[id] == nil then
		return nil
	end
	
	return QTETable[id]
end
