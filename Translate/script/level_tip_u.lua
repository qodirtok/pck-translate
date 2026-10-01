local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

LevelTipKindList = {
	"Level", "Troop Type","Official Rank","Mentorship","Sworn Brotherhood",
}

LevelTipTabel = {

-- Level
{level = 11,maxlevel=130, Ptype = "Level", taskid = 24909},
{level = 17,maxlevel=130, Ptype = "Level", taskid = 24910},
{level = 21,maxlevel=130, Ptype = "Level", taskid = 24911},
{level = 28,maxlevel=130, Ptype = "Level", taskid = 24912},
{level = 32,maxlevel=130, Ptype = "Level", taskid = 24913},
{level = 35,maxlevel=130, Ptype = "Level", taskid = 24914},
{level = 38,maxlevel=130, Ptype = "Level", taskid = 24915},
{level = 42,maxlevel=130, Ptype = "Level", taskid = 24916},
{level = 46,maxlevel=130, Ptype = "Level", taskid = 24917},
{level = 49,maxlevel=130, Ptype = "Level", taskid = 24918},
{level = 53,maxlevel=130, Ptype = "Level", taskid = 24919},
{level = 56,maxlevel=130, Ptype = "Level", taskid = 24920},
{level = 59,maxlevel=130, Ptype = "Level", taskid = 24921},
{level = 60,maxlevel=130, Ptype = "Level", taskid = 24922},
{level = 67,maxlevel=130, Ptype = "Level", taskid = 24923},
{level = 71,maxlevel=130, Ptype = "Level", taskid = 24924},
{level = 77,maxlevel=130, Ptype = "Level", taskid = 24925},
{level = 80,maxlevel=130, Ptype = "Level", taskid = 24926},


-- Troop Type
{level = 10,maxlevel=130, Ptype = "Troop Type", taskid = 24934},
{level = 30,maxlevel=130, Ptype = "Troop Type", taskid = 24942},
{level = 40,maxlevel=130, Ptype = "Troop Type", taskid = 24943},
{level = 50,maxlevel=130, Ptype = "Troop Type", taskid = 24944},
{level = 60,maxlevel=130, Ptype = "Troop Type", taskid = 24945},
{level = 70,maxlevel=130, Ptype = "Troop Type", taskid = 24946},
{level = 80,maxlevel=130, Ptype = "Troop Type", taskid = 24947},
{level = 80,maxlevel=130, Ptype = "Troop Type", taskid = 24948},
{level = 80,maxlevel=130, Ptype = "Troop Type", taskid = 24949},


-- Official Rank
{level = 10,maxlevel=130, Ptype = "Official Rank", taskid = 24961},
{level = 20,maxlevel=130, Ptype = "Official Rank", taskid = 24962},
{level = 30,maxlevel=130, Ptype = "Official Rank", taskid = 24963},
{level = 40,maxlevel=130, Ptype = "Official Rank", taskid = 24964},
{level = 50,maxlevel=130, Ptype = "Official Rank", taskid = 24965},
{level = 60,maxlevel=130, Ptype = "Official Rank", taskid = 24966},
{level = 81,maxlevel=130, Ptype = "Official Rank", taskid = 24967},


-- Mentorship
{level = 15,maxlevel=39, Ptype = "Mentorship", taskid = 25028},
{level = 81,maxlevel=130, Ptype = "Mentorship", taskid = 24998},


-- Official Rank
{level = 25,maxlevel=130, Ptype = "Sworn Brotherhood", taskid = 24999},

}

LevelTipFunc = {}

-- 获得所有类别
function LevelTipFunc:GetKind()
	local ilist = {}
	local l = 0
	for k, v in ipairs(LevelTipKindList) do
		l = l + 1
		ilist[l] = v
	end

	return ilist
end

-- 获得tip列表
function LevelTipFunc:GetLevelTip(Type)
	local ret = GameApi.GetPlayerBasicProp(0)
	local ilist = {}
	local l = 0

	for k, v in ipairs(LevelTipTabel) do
		if ret.level >= v.level and ret.level<=v.maxlevel and Type == v.Ptype then
			l = l + 1
			ilist[l] = v.taskid
		end
	end

	return ilist
end
