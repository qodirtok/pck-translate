local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
--local n = GetCurBattleInfo()

Win_BattleGuide = DlgTemplate:new({this = "Win_BattleGuide"})

function Win_BattleGuide:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
end

function Win_BattleGuide:ShowDialog ()
	self.n = GameApi.GetCurBattleInfo()
	self.p = 1
	self:UpdatePage()
end
---------------
-- First page hides left turn, last page hides right turn
---------------
function Win_BattleGuide:UpdatePage()
	if self.p == 1 then
		DlgApi.ShowItem ( self.this, "Btn_PageLeft", false )
	else
		DlgApi.ShowItem ( self.this, "Btn_PageLeft", true )
	end
	if self.p == #BattleGuide[self.n] then
		DlgApi.ShowItem ( self.this, "Btn_PageRight", false )
	else
		DlgApi.ShowItem ( self.this, "Btn_PageRight", true )
	end
	if BattleGuide[self.n][self.p] ~= nil then
		GameApi.CovertTextArea ( self.this, "Txt_Text", BattleGuide[self.n][self.p].text )
		DlgApi.SetImageFile ( self.this, "Img_Image", BattleGuide[self.n][self.p].image, 1 )
	end
end
---------------
-- Page Turn
---------------
function Win_BattleGuide:OnLButtonDown(objName)
	local newp
	if objName == "Btn_PageLeft" then
		newp = self.p - 1
	elseif objName == "Btn_PageRight" then
		newp = self.p + 1
	end
	if BattleGuide[self.n][newp] ~= nil then
		self.p = newp
		self:UpdatePage()
	end
---------------
--NPC寻径
---------------
	if objName == "Txt_Text" then
		local mouseX, mouseY = GameApi.GetCursorPos()
		local npcID = DlgApi.GetItemLink ( self.this, "Txt_Text", mouseX, mouseY )
		if npcID ~= nil then
			GameApi.ScriptChangeCursor(0)
			GameApi.BeginAutoSearchPath(npcID)
		else
			GameApi.ScriptChangeCursor(14)
		end
	end
end
------------------
--战场指引内容表 见text.lua
------------------
