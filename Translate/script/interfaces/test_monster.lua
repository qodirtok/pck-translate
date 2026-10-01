local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local Format = string.format


Win_DesTest = DlgTemplate:new({this = "Win_DesTest"})


function Win_DesTest:Init()

end

local title = {
"HP",
"Attack",
"Defense",
"Accuracy",
"Crit Rate",
"Crit Damage ",
"Stun Resist ",
"Silence Resist ",
"Food Debuff Resist ",
"Disarm Resist",
"Knockback Resist ",
"Direct Damage Resist",
"Indirect Damage Resist",
"Basic Attack Interval",
"Defense Ignore Damage",
"Base Damage Multiplier"
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
