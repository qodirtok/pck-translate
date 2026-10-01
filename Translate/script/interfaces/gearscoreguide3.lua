local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_GearScoreGuide3 = DlgTemplate:new({this = "Win_GearScoreGuide3"})

--初始化--

function Win_GearScoreGuide3:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
end

function Win_GearScoreGuide3:ShowDialog()
	GameApi.CovertTextArea(self.this, "Txt_TextArea", "Click the button to view detailed guidance!")

end
--------------------------------------------------------------------

function Win_GearScoreGuide3:OnLButtonDown(objName)
	for i = 1 , 6 do
		if objName == "Btn_" .. tostring(i) then

			GameApi.CovertTextArea(self.this, "Txt_TextArea", GearScoreGuide3[i].text)

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
function Win_GearScoreGuide3:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_TextArea", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end



GearScoreGuide3={}
--装备强化
GearScoreGuide3[1] = {text="^ff6fb3Enhancement Method:^ffffff Find #20287#, select Equipment Enhancement, and place the equipment inside to see the enhancement result and required items.\r\r^ff6fb3Acquiring Recipes:^ffffff Near #1928#, you can find NPCs selling weapon, armor, and accessory enhancement recipes. Learn them to craft the required enhancement items.\r\r"}


--秘文
GearScoreGuide3[2] = {text="^ff6fb3What are Inscriptions:^ffffff Inscribing equipment with Inscriptions can boost healing score. Inscriptions are powerful Inscription Spirit Pearls or Inscription Jade Pearls with innate attributes. Different Inscriptions on various equipment slots can form Inscription Curses for additional attribute bonuses.\r\r^ff6fb3How to Obtain and Equip Inscriptions:^ffffff Participate in battlefields and use a Cinnabar Brush to channel low-level Inscription Spirit Pearls. Purchase Enlightenment Stones at #19589# and activate inscription slots at #20286# to begin inscribing.\rFor more detailed inscription guidance and curse combinations, visit #1932#.\r\r^ff6fb3Inscriptions that Increase Healing Score:^ffffff\r^a800ffInscription - Dark: Healing Effect +2%^ffffff\r^a800ffInscription - Grace: Healing Effect +2% Healing Points +15^ffffff\r^ffffff\r\r"}


--符玉
GearScoreGuide3[3] = {text="^ff6fb3How to Obtain Talisman Jade:^ffffff Talisman Jade drops from battlefield and mob kills. Upgrade them to create higher-tier Talisman Jade.\r\r^ff6fb3Upgrading Talisman Jade:^ffffff At #1928#, select Learn Talisman Jade Recipe to learn how to upgrade Talisman Jade.\r\r^ff6fb3How to Attach Talisman Jade:^ffffff At #3354# or #20286#, select Attach Talisman Jade to add it to your equipment.\r\r"
}

--成长
GearScoreGuide3[4] = {text="^ff6fb3How to Grow Equipment:^ffffff Go to #20287#, select Equipment Growth, and place the equipment you want to grow to see the grown attributes and required items.\r\r^ff6fb3Required Items:^ffffff All items needed for equipment growth can be exchanged at #65229# using Dream Retention Fragments to purchase weapon materials.\r\r^ff6fb3Ways to Obtain Dream Retention Fragments:^ffffff\r1. Purchase from the Mall.\r2. Obtain from Daily Quest activities and battlefield.\r3. Claim from Daily Online Rewards."}

