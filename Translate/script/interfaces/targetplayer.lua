local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local Format = string.format

Win_TargetPlayer = DlgTemplate:new({this = "Win_TargetPlayer"})

function Win_TargetPlayer:Init()
end


---------------------------------------
-- When character portrait shows, determine adjustment plan
---------------------------------------
function Win_TargetPlayer:Tick()
	local x = 0
	if DlgApi.IsDialogShow(self.this) and DlgApi.IsItemShow(self.this,"Img_Head1") == false then
		x = 1
		Win_TargetPlayer:HeadPos(x)
	elseif DlgApi.IsDialogShow(self.this) and DlgApi.IsItemShow(self.this,"Img_Head1") == true then
		x = 2
		Win_TargetPlayer:HeadPos(x)
	end
end

---------------------------------------
-- Modify widget coordinates
---------------------------------------
function Win_TargetPlayer:HeadPos(tp)
	local scalex
	scalex = DlgApi.GetWindowScale()
	local WinPosSwitch = {}
	local WinPosSwitch = DlgApi.GetItemRect(self.this, "Img_Head1")
	if tp == 1 and WinPosSwitch.y>=12 then
		DlgApi.SetItemPos(self.this, "Img_Head", WinPosSwitch.x * scalex, (WinPosSwitch.y - 12) * scalex)
		DlgApi.SetItemPos(self.this, "Img_Head2", WinPosSwitch.x * scalex, (WinPosSwitch.y - 12) * scalex)
	elseif tp == 2 then
		DlgApi.SetItemPos(self.this, "Img_Head", WinPosSwitch.x * scalex, WinPosSwitch.y * scalex)
		DlgApi.SetItemPos(self.this, "Img_Head2", WinPosSwitch.x * scalex, WinPosSwitch.y * scalex)
	end
end

