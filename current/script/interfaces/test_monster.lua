local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local Format = string.format


Win_DesTest = DlgTemplate:new({this = "Win_DesTest"})


function Win_DesTest:Init()

end

local title = {
"生命值",
"攻击力",
"防御力",
"命中",
"致命一击率",
"致命一击伤害 ",
"眩晕抗性 ",
"沉默抗性 ",
"禁食抗性 ",
"缴械抗性",
"击退抗性 ",
"直接伤害抗性",
"间接伤害抗性",
"普攻时间间隔",
"忽视防御伤害",
"基础伤害倍率"
}


function Win_DesTest:Tick()
	if DlgApi.IsDialogShow(self.this) then
		if GameApi.GetMonsterBasicProp(1) ~= nil then
			local lista = {}
			for i = 1, 16 do
				table.insert(lista, i, string.format("%s\t%s", title[i], tostring(GameApi.GetMonsterBasicProp(i))))
			end
		DlgApi.SetListText(self.this, "List_Msg", lista)
		end
	end
end
