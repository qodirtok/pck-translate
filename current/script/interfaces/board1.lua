local DlgTemplate = DlgTemplate
local DlgApi = DlgApi
local GameApi = GameApi

Win_Board1 = DlgTemplate:new({this = "Win_Board1"})

-----------------------------------
--界面初始化
-----------------------------------

function Win_Board1:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE)
end

function Win_Board1:ShowDialog()
	GameApi.CovertTextArea (self.this, "Txt_Autopath", "#72209#")
	GameApi.CovertTextArea (self.this, "Txt_Autopath2", Board3)
end

-----------------------------------
--寻径
-----------------------------------
function Win_Board1:OnLButtonDown(objName)
	if objName == "Txt_Autopath" then
		local posX , posY = GameApi.GetCursorPos()
		local NpcID = DlgApi.GetItemLink (self.this, "Txt_Autopath", posX, posY)
		if NpcID ~= nil then
			GameApi.BeginAutoSearchPath(NpcID)
		end
	end
	if objName == "Txt_Autopath2" then
		local posX , posY = GameApi.GetCursorPos()
		local NpcID = DlgApi.GetItemLink (self.this, "Txt_Autopath2", posX, posY)
		if NpcID ~= nil then
			GameApi.BeginAutoSearchPath(NpcID)
		end
	end
end

function Win_Board1:OnMOUSEMOVE()
	local posX1, posY1 = GameApi.GetCursorPos()
	local posX2, posY2 = GameApi.GetCursorPos()
	local result = DlgApi.GetItemLink(self.this, "Txt_Autopath", posX1, posY1)
	local result2 = DlgApi.GetItemLink(self.this, "Txt_Autopath2", posX2, posY2)
	if result ~= nil or result2 ~= nil then
		GameApi.ScriptChangeCursor(14)
	else
		GameApi.ScriptChangeCursor(0)
	end
	return true
end

