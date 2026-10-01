local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_PetGuide = DlgTemplate:new({this = "Win_PetGuide"})

--初始化--

function Win_PetGuide:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
end

function Win_PetGuide:ShowDialog()
	GameApi.CovertTextArea(self.this, "Txt_TextArea", "欢迎来到护卫百科全卷！")
	DlgApi.SetImageFile(self.this, "Img_Image", "CB\\图片\\护卫指引图片\\指引标题图.tga", 1)
end
--------------------------------------------------------------------
--[[护卫百科全卷用表
--]]
--插入文字和图--

function Win_PetGuide:OnLButtonDown(objName)
	for i = 1 , 15 do
		if objName == "Btn_" .. tostring(i) then
			GameApi.CovertTextArea(self.this, "Txt_TextArea", PetGuide[i].text)
			DlgApi.SetImageFile(self.this, "Img_Image", PetGuide[i].image, 1)
		end
	end
	if objName == "Txt_TextArea" then
		local posx2, posy2 = GameApi.GetCursorPos()
		NpcID = DlgApi.GetItemLink(self.this, "Txt_TextArea", posx2, posy2)
		if NpcID ~= nil then
		GameApi.BeginAutoSearchPath(NpcID)
		end
	end
end

--------------------------------------------
--鼠标移动
--------------------------------------------
function Win_PetGuide:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_TextArea", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end

