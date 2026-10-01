local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

local Win_FlipcardInfo = DlgTemplate:new({this = "Win_FlipcardInfo"})

function Win_FlipcardInfo:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE)
end

function Win_FlipcardInfo:ShowDialog()
	GameApi.CovertTextArea (self.this, "TextArea_Info", CardInfo)
end

function Win_FlipcardInfo:OnLButtonDown(objName)
	if objName == "Btn_Position" then
		local DialogPos = DlgApi.GetItemRect(self.this, "Img_Frame2")
		DlgApi.ShowDialog (self.this, false)
		DlgApi.ShowDialog ("Win_FlipcardInfo", true)
		DlgApi.SetDialogPosition ("Win_FlipcardInfo", DialogPos.x, DialogPos.y)
	end
	if objName == "TextArea_Info" then
		local posX , posY = GameApi.GetCursorPos()
		local NpcID = DlgApi.GetItemLink (self.this, "TextArea_Info", posX, posY)
		if NpcID ~= nil then
			GameApi.BeginAutoSearchPath(NpcID)
		end
	end
end

function Win_FlipcardInfo:OnMOUSEMOVE()
	local posX, posY = GameApi.GetCursorPos()
	local result = DlgApi.GetItemLink(self.this, "TextArea_Info", posX, posY)
		if result == nil then
			GameApi.ScriptChangeCursor(0)
		else
			GameApi.ScriptChangeCursor(14)
		end
	return true
end

_G.Win_FlipcardInfo = Win_FlipcardInfo
