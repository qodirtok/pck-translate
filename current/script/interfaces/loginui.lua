local UIManTemplate = UIManTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local Format = string.format

LoginUI = UIManTemplate:new({this = "LoginUI"});

function LoginUI:Init()
	self:RegisterEvent(LUA_EVENT_LOADING_SETWORLD, self.OnEventLoadingSetWorld);
	self:RegisterEvent(LUA_EVENT_LOADING_SETPROGRESS, self.OnEventLoadingSetProgress);
	if DlgApi.IsDialogShow("Win_Login") then
		DlgApi.ShowDialog("Win_Restriction1", true)
	else
		DlgApi.ShowDialog("Win_Restriction1", false)
	end
end

function LoginUI:Release()

end

function LoginUI:Tick()
end


function LoginUI:ProcessEvent()

end

function LoginUI:OnEventLoadingSetWorld(event, id, mapfile)
    math.randomseed(os.time())
	math.random()
	local ran1 = math.random(table.getn(LDG_TIP))
	local ran2 = math.random(LDG_PicNum)
	local tip = Format(LDG_TITLE, LDG_TIP[ran1])
	DlgApi.SetItemText("Win_Loading", "Txt_Tip", tip);
	if id == 0 then
		DlgApi.SetImageFile("Win_Loading", "Img_Loading", Format("MapLoading\\a%d.dds", ran2), 1);
	else
		DlgApi.SetImageFile("Win_Loading", "Img_Loading", Format("MapLoading\\%s.dds", mapfile), 1);
	end
end

function LoginUI:OnEventLoadingSetProgress(event, progress)
	DlgApi.SetProgress("Win_Loading", "Prgs_Loading", progress);
end
