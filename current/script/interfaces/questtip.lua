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
GameApi.CovertTextArea(self.this, "Txt_1", "路边一个拖家带口、赶着马车的男子在大声的向你求救。不妨去看看#80580#到底遇到了什么麻烦。")
GameApi.CovertTextArea(self.this, "Txt_2", "路边的一伙黄巾贼寇貌似发生了内讧，不妨去看看他们为什么会围攻那个叫#80583#的黄巾士兵。")
GameApi.CovertTextArea(self.this, "Txt_3", "镖师#80734#貌似遇到了麻烦，正在喊人过去帮忙，估计他押运的镖车被人洗劫了。")
GameApi.CovertTextArea(self.this, "Txt_4", "由于商队和南蛮居民发生了冲突，导致南蛮的各个部落对中原商人产生了很大的敌意。吕宁就是其中的一个受害者。他被愤怒的南蛮居民抓住扔到了怒水泽到处是鳄鱼的水坑里。想办法把可怜的吕宁救出来，带他逃离那恐怖之地！")
GameApi.CovertTextArea(self.this, "Txt_5", "孟娘平日里最喜欢和大象们嬉戏了，但是最近大象们都闷闷不乐，好像有什么心事，帮孟娘去打听一下。你这么人见人爱、花见花开、车见车爆胎，一定有办法让孟娘高兴起来的！")
GameApi.CovertTextArea(self.this, "Txt_6", "在这个兵荒马乱的年代，填饱肚子对很多人来说都是一种奢望。但总是有一些人，在填饱肚子之余还总想尝试一些稀奇的美味。临江村的巴戒就是这样一个人，他不顾那些在村子周围游荡的水鬼，执意前去搜寻河龟蛋，结果落到了水鬼的手里。")
GameApi.CovertTextArea(self.this, "Txt_7", "博望坡附近僵尸出没，没有人愿意靠近。而就在这里，一辆被掀翻的马车下却传出了鼾声。原来是一个运送蔬菜的农户在前往关中的途中被僵尸袭击，车辆被掀翻后他觉得既然周围都是僵尸，不如就躲在车下，用车中的食物暂且偷生。")
GameApi.CovertTextArea(self.this, "Txt_8", "富庶的江南吸引了众多客商来此，但近来却出现了一批专门打劫外乡商人的劫匪，他们不光抢劫钱财，有时还会掳走人质索要赎金。路边的#80735#看来就是受害者之一。")
GameApi.CovertTextArea(self.this, "Txt_9", "最近有传闻说一个神秘的侠客正在长安周边抢劫官府的粮草，并用它来接济城内的难民。也许那个正在呼唤你的人就是传说中的#80585#。")
GameApi.CovertTextArea(self.this, "Txt_10", "关中的商人们经常被小偷光顾，那边那个正在呼喊的商人#80584#似乎遇到了麻烦。")
GameApi.CovertTextArea(self.this, "Txt_11", "一些人总认为自己怀才不遇，并对那些仕途坦荡的人保有浓烈的恨意。那个#80591#显然就是这种人。")
GameApi.CovertTextArea(self.this, "Txt_12", "最近总有工头无故失踪，使得筑城的进度大受影响，很多工人都在为此窃喜。但路边的苦工似乎并不高兴。#80592#似乎并不高兴。")
GameApi.CovertTextArea(self.this, "Txt_13", "负责押送商会物资的镖师#80597#站在一辆被掀翻的马车旁，看起来好像遇到了麻烦。")
GameApi.CovertTextArea(self.this, "Txt_14", "司马家的宅院外现在又聚集了一伙残兵，家丁#80595#正在与他们对峙着。如果置之不理的话，后果可能不堪设想。")
GameApi.CovertTextArea(self.this, "Txt_15", "西凉军中能人辈出，这又出了个飞毛腿，快去找到#2680#将军询问一下吧。")
GameApi.CovertTextArea(self.this, "Txt_16", "#80544#一直坚信“想发财就要敢冒险”这句信条，但是当他在凉州城门口被抢劫了的时候，他才明白原来冒险是那么恐怖的事情。")
GameApi.CovertTextArea(self.this, "Txt_17", "最近成都城内小偷猖獗，每天都有人被偷，尤其是外来的商人，几乎无一幸免。#80547#便是其中一个。")
GameApi.CovertTextArea(self.this, "Txt_18", "采石场征集了大批的苦工，而那些五斗米信徒和官府勾结让这些工人一直承受着超负荷的劳动，对工人们动不动就拳打脚踢，工人们有苦没处说。#80548#期盼着有人可以替他们出头。")
GameApi.CovertTextArea(self.this, "Txt_19", "好端端的行商临到成都西城门口被劫持了，#80549#焦急的在成都西城门口徘徊，希望有人可以帮他一把。")
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

