local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi

Win_QuestTIP = DlgTemplate:new({this = "Win_QuestTIP"})

function Win_QuestTIP:Init()
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown)
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
    self:SetText()
end

function Win_QuestTIP:ShowDialog ()
	for i = 1 , 20 do
	  DlgApi.ShowItem(self.this, "Txt_"..tostring(i), false)
	end
end

---------------
--配置文本内容
---------------
function Win_QuestTIP:SetText()
GameApi.CovertTextArea(self.this, "Txt_1", "A man with his family, driving a cart, is calling out to you for help by the roadside. Go see what trouble #80580# has gotten into.")
GameApi.CovertTextArea(self.this, "Txt_2", "A group of Yellow Turban bandits by the roadside seem to be fighting among themselves. Go see why they are besieging the Yellow Turban soldier named #80583#.")
GameApi.CovertTextArea(self.this, "Txt_3", "The escort guard #80734# seems to be in trouble and is calling for help. It is likely that the escort cart he was guarding has been robbed.")
GameApi.CovertTextArea(self.this, "Txt_4", "Due to conflicts between merchant caravans and Nanman residents, the various Nanman tribes have become very hostile toward Central Plains merchants. Lu Ning is one of the victims. He was captured by angry Nanman residents and thrown into a crocodile-infested pool in Nu Water Marsh. Find a way to rescue the poor Lu Ning and escape that terrifying place!")
GameApi.CovertTextArea(self.this, "Txt_5", "Lady Meng loves playing with elephants every day, but recently the elephants have been unhappy, as if something is on their minds. Help Lady Meng find out what is wrong. With your charm that delights everyone, you will surely find a way to make her happy!")
GameApi.CovertTextArea(self.this, "Txt_6", "In these chaotic times, filling one's stomach is a luxury for many. But there are always some who, after eating their fill, want to try rare delicacies. Ba Jie of Linjiang Village is such a person. Ignoring the water ghosts wandering around the village, he insisted on searching for river turtle eggs, only to fall into the hands of the water ghosts.")
GameApi.CovertTextArea(self.this, "Txt_7", "Zombies appear near Bowang Slope, and no one dares to approach. Yet here, under an overturned cart, snoring can be heard. It turns out that a farmer transporting vegetables was attacked by zombies on his way to Guanzhong. After his cart was overturned, he figured that since there were zombies everywhere, he might as well hide under the cart and survive on the food inside for now.")
GameApi.CovertTextArea(self.this, "Txt_8", "The prosperous Jiangnan region has attracted many merchants, but recently a group of bandits specifically targeting out-of-town merchants has appeared. They not only rob money but sometimes kidnap hostages for ransom. The person by the roadside, #80735#, appears to be one of the victims.")
GameApi.CovertTextArea(self.this, "Txt_9", "Recently there have been rumors that a mysterious knight-errant is robbing government grain supplies around Chang'an and using them to aid refugees in the city. Perhaps the person calling out to you is the legendary #80585#.")
GameApi.CovertTextArea(self.this, "Txt_10", "Merchants in Guanzhong are frequently visited by thieves. The merchant calling out over there, #80584#, seems to be in trouble.")
GameApi.CovertTextArea(self.this, "Txt_11", "Some people always believe their talents are unrecognized and harbor intense resentment toward those with smooth political careers. That person #80591# is clearly one of them.")
GameApi.CovertTextArea(self.this, "Txt_12", "Recently, foremen have been disappearing without reason, greatly affecting the city's construction progress. Many workers are secretly happy about this. But the laborer by the roadside seems unhappy. #80592# does not seem happy.")
GameApi.CovertTextArea(self.this, "Txt_13", "负责押送商会物资的镖师#80597#站在一辆被掀翻的马车旁，看起来好像遇到了麻烦。")
GameApi.CovertTextArea(self.this, "Txt_14", "A group of remnant soldiers has gathered outside the Sima family residence, and the servant #80595# is confronting them. If left unattended, the consequences could be unimaginable.")
GameApi.CovertTextArea(self.this, "Txt_15", "Talented individuals emerge in the Xiliang army. Another swift runner has appeared. Quickly find General #2680# and ask about it.")
GameApi.CovertTextArea(self.this, "Txt_16", "#80544# has always believed in the creed “To get rich, you must dare to take risks.” But when he was robbed at the gates of Liangzhou City, he finally realized that taking risks could be so terrifying.")
GameApi.CovertTextArea(self.this, "Txt_17", "Recently, thieves have been rampant in Chengdu City. Every day someone gets robbed, especially out-of-town merchants, with almost no exceptions. #80547# is one of them.")
GameApi.CovertTextArea(self.this, "Txt_18", "The quarry has recruited a large number of laborers. The Five Pecks of Rice believers, colluding with the government, have kept these workers under excessive labor, beating and kicking them at every turn. The workers have nowhere to voice their grievances. #80548# hopes someone can stand up for them.")
GameApi.CovertTextArea(self.this, "Txt_19", "A traveling merchant was hijacked right at the West Gate of Chengdu City. #80549# is anxiously pacing near the West Gate, hoping someone can help.")
end


---------------
--NPC寻径
---------------
function Win_QuestTIP:OnLButtonDown(objName)
	for i = 1 , 20 do
		if objName == "Txt_" .. tostring(i) then
			local mouseX, mouseY = GameApi.GetCursorPos()
			npcID = DlgApi.GetItemLink ( self.this, "Txt_" .. tostring(i), mouseX, mouseY )
			if npcID ~= nil then
				GameApi.BeginAutoSearchPath(npcID)
			end
	    end
	end
end


--------------------------------------------
--鼠标移动
--------------------------------------------
function Win_QuestTIP:OnMOUSEMOVE()
  for i = 1 , 20 do
   local posx1, posy1 = GameApi.GetCursorPos()
   local resault = DlgApi.GetItemLink(self.this, "Txt_" .. tostring(i), posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
  end
end

