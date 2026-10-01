local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local Format = string.format
local AllTitle = {} -- 活动标题选项（显示包括：类别,活动名称,活动事件）



local AllTitle1 = {}
local AllTitle2= {}
local AllTitle3= {}
local DefultTitle = {}
local DefultContent = {}
local SelectContent = {}
local SelectTitle = {}
local ShowIcon = {}
local ShowHint = {}
local NpcID = ""

Win_EventMain = DlgTemplate:new({this = "Win_EventMain"})

--说明
-- 安活动类别分类



--  帮派 Type = 1
-- 个人 Type = 2
-- 工资 Type = 3
-- 阵营 Type = 4
-- 风雅 Type = 5
-- 战场 Type = 6
-- 军团 Type = 7
-- 押镖 Type = 8
-- 平乱 Type = 9
-- 奇遇 Type = 10
-- 婚姻 Type = 11

--安活动事件分类



-- 特殊 Class = 1
-- 每月 Class = 2
-- 每周 Class = 3
-- 全天 Class = 4
-- 每日 Class = 5
--------------------------------------------
--界面初始化



--------------------------------------------
function Win_EventMain:Init()
	self:RegisterEvent("Btn_System", self.OnSystem)
	self:RegisterEvent("Btn_Guild", self.OnGuild)
	self:RegisterEvent("Btn_SelfEdit", self.OnSelfEdit)
	self:RegisterEvent("Cbo_taxis", self.Ontaxis)
	self:RegisterEvent("Btn_Close", self.OnClose)
	self:RegisterEvent(WM_LBUTTONDOWN, self.OnLButtonDown);
	self:RegisterEvent(WM_MOUSEMOVE, self.OnMOUSEMOVE);
	DlgApi.SetListText(self.this, "Cbo_taxis", {"^fffd44类型排序", "^ff765c时间排序"})
	DlgApi.SetListCurLine(self.this, "Cbo_taxis", 0)

	DlgApi.ShowItem("Win_BattleScore5_Help", "Gfx_Highlight", false)
	DlgApi.EnableItem(self.this, "Btn_Guild", true)
	DlgApi.EnableItem(self.this, "Btn_SelfEdit", true)
	for t3 = 1, 42 do -- 选择日期按钮不可按



	DlgApi.EnableItem(self.this, Format("%s%d", "Btn_Day", t3), false)
	end

	local AllTitle2, DefultContent1 = Win_EventMain:ShowDefultEvent() -- 默认显示当天活动，按活动类型排序
	DlgApi.SetListText(self.this, "List_Title", AllTitle2)

	local y, m, w, d, t = Win_EventMain:Date(Year, Month, Week, Day, Time) -- 显示当天日期
	DlgApi.SetItemText(self.this, "Lab_YMD", Format("%s年%s月%s日", tostring(y), tostring(m), tostring(d)))

	local day1 = Win_EventMain:FristDay() -- 显示当月日历
	local daynum1 = Win_EventMain:DayNum()
	local showicon1, showhint1 = Win_EventMain:ShowIcon()
	for i = 1, daynum1 do
	days = day1 + i
	DlgApi.SetItemText(self.this, Format("%s%d", "Label_Date", days), tostring(i))
	DlgApi.EnableItem(self.this, Format("%s%d", "Btn_Day", days), true)
	--活动图标悬浮提示
	DlgApi.SetItemHint(self.this, Format("%s%d" , "Btn_Day", days), showhint1[i])
	DlgApi.SetImageFile(self.this, Format("%s%d" , "Img_Date", days), showicon1[i], 1)
	end
	-- string.gsub(string.gsub(showicon1[i]), "CB\\EventIcon\\", ""), ".dds", "")

	for o = 1, 42 do -- 隐藏日期提示按钮
	self:RegisterEvent(Format("%s%d", "Btn_Day", o), self.OnSelectBtn)
	DlgApi.ShowItem(self.this, Format("%s%d", "Img_Select", o), false)
	end

	local day2 = day1 + d  -- 显示当天日期提示
	DlgApi.ShowItem(self.this, Format("%s%d", "Img_Select", day2), true)
end

--------------------------------------------
--活动信息资料库



--------------------------------------------

EventLibery = {}

EventLibery[1] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 1,
				   Class = 3,
				   TypeTxt = "^84ff00结义",
				   Name = "^84ff00草船借箭",
				   TimeTxt = "^ff765c每周日 19点开始",
				   Content = "^fff600时间：^ffffff每周日19点\r^fff600等级： ^ffffff12级以上\r^fff600NPC：#81784#\r^fff600描述：^ffffff草船借箭活动是以结义为单位，每周日进行的趣味性竞技比赛。根据结义内所有参与玩家所获得的积分进行排名，按照排名发放各种丰厚奖励。上周结义总贡献排名前100结义的结义长可以为本结义报名参加本周的草船借箭活动。每周只有60个结义名额能够参加草船借箭活动，报满60个之后，未报名的结义无法报名。",
				   QuestId = "",
				   Icon = ""}
EventLibery[2] =	 {Year = 2015,
				  Week = {0,1,2,3,4,5,6},
				  Type = 1,
				  Class = 1,
				  TypeTxt = "^fff600最新",
				  Name = "^fff600一马当先",
				  TimeTxt = "^efce9e每日一次",
				  Content = "^fff600时间：^efce9e2015年2月9日--12月31日\r^fff600等级： ^ffffff16级以上\r^fff600NPC：#92178#\r描述：^ffffff欧阳兰兰最近总觉得有不明的暗影在长安城中的大小屋顶上晃动，想要找人帮她调查此事。请拥有一马当先回归凭证的玩家带上两个帮手前往长安城找她，事成之后她必有重谢！\r^fff600（任务必须3人组队才能接取，且队长必须有“一马当先回流凭证”）",
				  QuestId = "",
				  Icon = ""}
EventLibery[3] =	 {Year = 2015,
				  Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				  Type = 1,
				  Class = 3,
				  TypeTxt = "^fff962平乱",
				  Name = "^fff962英雄之路",
				  TimeTxt ="^efce9e每周日 15点到23点 ",
				  Content = "^fff600时间：^ffffff每周日 15点、17点、19点、21点、23点\r^fff600注意：活动持续1小时，组队效率更高！1小时后所有活动相关内容都会消失！如果没有及时完成，请在下次活动开启时继续完成。\r^fff600等级：^ffffff英雄级\r^fff600NPC：#74817#\r^ffffff英雄之路：\r河北出现很多奇怪的女子，还有大批的贼人，又赶上鼹鼠灾，天灾人祸民不聊生！\r手足无措的村民（河北-179，-145）希望各位英雄和朋友们一起来拯救村民！详情请询问手足无措的村民。",
				  QuestId = "",
				  Icon = ""}
EventLibery[4] =	 {Year = 2015,
				  Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				  Type = 1,
				  Class = 2,
				  TypeTxt = "^8cd656平乱",
				  Name = "^8cd656桃园告急",
				  TimeTxt ="^ff765c每天 14点到22点",
				  Content = "^fff600时间：^ffffff每天 14点、16点、18点、20点、22点\r^fff600注意：活动持续1小时，组队效率更高！1小时后所有叛乱分子都会消失！如果没有及时完成，请在下次活动开启时继续完成。\r^fff600等级：^ffffff16-80级\r^fff600NPC：#72651#\r活动线路：新手线（1-5线）^ffffff桃园告急：\r不明身份的叛乱分子乔装打扮，从清凉驿潜入，一直到桃园村都有他们的踪迹。有的化妆成杂耍团，有的化妆成道士，偷袭村民，桃园卫兵（348，121）希望有英雄和朋友们一起来拯救村民！！详情请见桃园卫兵处的活动指引。",
				  QuestId = "",
				  Icon = ""}
EventLibery[5] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 3,
				   TypeTxt = "^ff9c00阵营",
				   Name = "^ff9c00国战",
				   TimeTxt = "^8d76ff周六 20点到22点",
				   Content = "^fff600时间：^ffffff每周六20点到22点\r^fff600等级： ^ffffff英雄1级以上（阵营）\r^fff600NPC：^ffffff各阵营大厅中的演军官\r^fff600描述：^ffffff英雄1级以上已加入阵营的玩家可以从未央宫传送到各军大营,从各阵营演军官处的国战服务申请进入对应阵营国战。",
				   QuestId = "",
				   Icon = ""}

EventLibery[6] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 3,
				   Class = 3,
				   TypeTxt = "^84ff00风雅",
				   Name = "^84ff00神州赛马大会",
				   TimeTxt = "^8d76ff周六 21点半开始",
				   Content = "^fff600时间：^ffffff周六21点半\r^fff600等级： ^ffffff60级以上\r^fff600NPC：^ffffff战场管理员\r^fff600描述：^ffffff60级以上玩家从服务器6线登陆,与战场管理员对话并消耗一个神州·赛马令牌,即可加入赛马活动。同时允许玩家观战,不消耗任何物品。",
				   QuestId = "",
				   Icon = ""}
EventLibery[7] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 8,
				   Class = 3,
				   TypeTxt = "^ffa083奇遇",
				   Name = "^ffa083怪物攻城",
				   TimeTxt = "^8d76ff周六 16点到18点",
				   Content = "^fff600时间：^ffffff每周六16点到18点\r^fff600等级： ^ffffff英雄1级以上\r^fff600描述：^ffffff洛阳北邙地宫中的各种妖邪进攻洛阳新城，为报洛阳居民安全，请义士们拿起手中的武器，捍卫洛阳新城吧！",
				   QuestId = "",
				   Icon = ""}
EventLibery[8] =	 {Year = 2015,
				  Day = {1,2,3,4,5,6,7},
				  Type = 1,
				  Class = 2,
				  TypeTxt = "^fff600工资",
				  Name = "^fff600每月工资",
				  TimeTxt = "^d181ff每月 ",
				  Content = "^fff600时间：^ffffff每月1日到7日\r^fff600等级： ^ffffff16级以上\r^fff600NPC：^ffffff#24526#\r^fff600描述：^ffffff可到长安未央宫门口或冀州城内找到【值日功曹】领取工资【灵气值】。工资根据玩家级别、在线时间、官阶高低等而有所区别。灵气值可在古币商人处购买各种物品。",
				  QuestId = "",
				  Icon = ""}
EventLibery[9] =	 {Year = 2015,
				  Week = {0,1,2,3,4,5,6},
				  Type = 5,
				  Class = 4,
				  TypeTxt = "^ffa083奇遇",
				  Name = "^ffa083神州探宝",
				  TimeTxt = "^ff765c每日 12点到24点",
				  Content = "^fff600时间：^efce9e12点-24点\r^fff600条件：^ffffff英雄1级以上\r^fff600NPC：^ffffff#64878#\r^fff600描述：^ffffff与林一处上交“探宝司南”可开启神州探宝历程，每日可上交一次。寻宝过程中有可能会惊动神州探宝事件哦！",
				  QuestId = "",
				  Icon = ""}
EventLibery[10] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 7,
				   Class = 4,
				   TypeTxt = "^8cd656平乱",
				   Name = "^8cd656击杀张梁",
				   TimeTxt = "^ff765c每日 12点到20点",
				   Content = "^fff600时间：^ffffff每天12：00-22：00\r^fff600描述：^ffffff黄巾将军“张梁”随机在2线楼兰沙海逞凶作乱,众志成城的军团千万不能错过高难度的挑战所带来惊喜巨奖。",
				   QuestId = "",
				   Icon = ""}
EventLibery[11] =	 {Year = 2015,
				  Week = {0,1,2,3,4,5,6},
				  Type = 5,
				  Class = 4,
				  TypeTxt = "^84ff00风雅",
				  Name = "^efce9e洛阳渔乐",
				  TimeTxt = "^ff765c每日 15点到24点",
				  Content = "^fff600时间：^efce9e15点-24点\r^fff600条件：^ffffff英雄1级以上\r^fff600NPC：^ffffff#51461#\r^fff600描述：^ffffff可与洛阳新城内的垂钓搜集者处领取鱼饵，开始洛阳垂钓。",
				  QuestId = "",
				  Icon = ""}
EventLibery[12] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 3,
				   Class = 4,
				   TypeTxt = "^84ff00风雅",
				   Name = "^84ff00舌战群儒",
				   TimeTxt = "^ff765c每日 19点半开始",
				   Content = "^fff600时间：^ffffff每日19：30\r^fff600等级： ^ffffff无等级限制\r^fff600描述：^ffffff活动时间内在线玩家会收到活动邀请。接受邀请,参加答题,获得海量经验,博览天下知识。",
				   QuestId = "",
				   Icon = ""}
EventLibery[13] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 4,
				   Class = 4,
				   TypeTxt = "^deff00战场",
				   Name = "^deff00领取征战令",
				   TimeTxt = "^ff765c每日 20点到23点",
				   Content = "^fff600时间：^ffffff每日20点到23点\r^fff600等级： ^ffffff58级以上\r^fff600NPC：^ffffff#9512#或#8305#\r^fff600描述：^ffffff玩家可于长安未央宫韩彬或马元义处领取2枚征战令,凭此令2枚进入濮阳之战·英雄级或界桥之战，可在战场结束后获得大量阅历和文武功勋，以及两张濮阳征战奖励函。",
				   QuestId = "",
				   Icon = ""}
EventLibery[14] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 3,
				   Class = 4,
				   TypeTxt = "^84ff00风雅",
				   Name = "^84ff00关中赛马大会",
				   TimeTxt = "^ff765c每日 21点半开始",
				   Content = "^fff600时间：^ffffff每日21点半\r^fff600等级： ^ffffff60级以上\r^fff600NPC：^ffffff战场管理员\r^fff600描述：^ffffff60级以上玩家在6、7、8线登陆,与战场管理员对话并消耗一个关中·赛马令牌,即可加入赛马活动。同时允许玩家观战,不消耗任何物品。",
				   QuestId = "",
				   Icon = ""}
EventLibery[15] =	 {Year = 2015,
				  Week = {0,1,2,3,4,5,6},
				  Type = 1,
				  Class = 5,
				  TypeTxt = "^fff600工资",
				  Name = "^fff600每日点卯",
				  TimeTxt = "^efce9e全天 ",
				  Content = "^fff600时间：^efce9e全天\r^fff600等级： ^ffffff16级以上\r^fff600NPC：^ffffff#26447#\r^fff600描述：^ffffff每日可到未央宫门前梁昭处点卯,有活力值和历练奖励。",
				  QuestId = "",
				  Icon = ""}
EventLibery[16] =	 {Year = 2015,
				  Week = {0,1,2,3,4,5,6},
				  Type = 1,
				  Class = 5,
				  TypeTxt = "^fff600风雅",
				  Name = "^fff600莫问今朝",
				  TimeTxt = "^efce9e12点到16点，20点到24点 ",
				  Content = "^fff600时间：^efce9e全天\r^fff600等级： ^ffffff英雄1级以上\r^fff600NPC：^ffffff#51467#\r^fff600描述：^ffffff组起你的队伍来，帮助逍遥隐士解决困扰他多年的难题吧，有丰厚的奖励在等着你们。",
				  QuestId = "",
				  Icon = ""}
EventLibery[17] =	 {Year = 2015,
				   Week = {0,1,2,3,4,5,6},
				   Type = 3,
				   Class = 5,
				   TypeTxt = "^84ff00风雅",
				   Name = "^84ff00每日钓鱼",
				   TimeTxt = "^efce9e全天 ",
				   Content = "^fff600时间：^efce9e全天\r^fff600等级： ^ffffff16级以上\r^fff600NPC：^ffffff#9163#\r^fff600描述：^ffffff每日可在长安孔融处领取鱼饵,于3线-14线的河北桃园村池塘,参加每天垂钓活动。",
				   QuestId = "",
				   Icon = ""}
EventLibery[18] =	 {Year = 2015,
				   Week = {0,1,2,3,4,5,6},
				   Type = 6,
				   Class = 5,
				   TypeTxt = "^ceff8a押镖",
				   Name = "^ceff8a镖银递送",
				   TimeTxt = "^efce9e全天 ",
				   Content = "^fff600时间：^efce9e全天\r^fff600等级： ^ffffff16级以上\r^fff600NPC：^ffffff#26894#\r^fff600描述：^ffffff玩家每天都可在长安总镖头佟威处领取一个“福威镖单”。持有“福威镖单”的玩家组队后,找到各大主城分局镖头,由队长领取任务。",
				   QuestId = "",
				   Icon = ""}
EventLibery[19] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 7,
				   Class = 4,
				   TypeTxt = "^8cd656平乱",
				   Name = "^8cd656击杀张宝",
				   TimeTxt = "^efce9e全天 ",
				   Content = "^fff600时间：^ffffff每天21：00\r^fff600描述：^ffffff黄巾将军“张宝”在2线殇之雪域逞凶作乱,众志成城的英雄千万不能错过高难度的挑战所带来惊喜巨奖。",
				   QuestId = "",
				   Icon = ""}
EventLibery[20] =	 {Year = 2015,
				   Week = {0,1,2,3,4,5,6},
				   Type = 9,
				   Class = 5,
				   TypeTxt = "^ff4ca4姻缘",
				   Name = "^ff4ca4领取鸳鸯令",
				   TimeTxt = "^efce9e全天 ",
				   Content = "^fff600时间：^efce9e全天\r^fff600条件：^ffffff夫妻二人组队\r^fff600NPC：^ffffff#12820#\r^fff600描述：^ffffff与关中长安城的红娘对话可领取到鸳鸯令,领取时必须夫妻二人组队,并且是队长与红娘对话方可获得【鸳鸯令】,队长获得【鸳鸯令】后可以开启获得今日婚姻任务。夫妻两人完成任务后可分别获得【相思豆】和【历练值】的奖励。",
				   QuestId = "",
				   Icon = ""}
EventLibery[21] =	 {Year = 2015,
				   Week = {0,1,2,3,4,5,6},
				   Type = 9,
				   Class = 5,
				   TypeTxt = "^ff4ca4姻缘",
				   Name = "^ff4ca4红豆采摘",
				   TimeTxt = "^efce9e全天 ",
				   Content = "^fff600时间：^efce9e全天\r^fff600条件：^ffffff夫妻二人组队\r^fff600NPC：^ffffff#12820#\r^fff600描述：^ffffff夫妻双方组队后可以在关中长安城－红娘处领取到婚姻任务。",
				   QuestId = "",
				   Icon = ""}
EventLibery[22] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   TypeTxt = "^ff9c00阵营",
				   Name = "^ff9c00白帝城争夺战",
				   TimeTxt = "^efce9e每周三",
				   Content = "^fff600时间：^ffffff每周三20点到22点\r^fff600等级： ^ffffff60级以上\r^fff600描述：^ffffff两百年前的蜀帝公孙述在白帝城复活，三国将士可以赶往白帝城，决定白帝城要塞的归属权。争夺战中有可能会获得鸿羽、碎羽、君王九锡、战魂物品和大量名望。占领国还可以获得特殊的占领任务。",
				   QuestId = "",
				   Icon = ""}
EventLibery[23] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   TypeTxt = "^ff9c00阵营",
				   Name = "^ff9c00白帝城跑商",
				   TimeTxt = "^efce9e每周四、周五",
				   Content = "^fff600时间：^ffffff每周四、周五20点到22点\r^fff600等级： ^ffffff60级以上\r^fff600描述：^ffffff白帝城为长江贸易要地，每周的两次大集市可以获得巨额利润。名望80000以上玩家可以参与此活动。跑商中获得的金露珠可以换取各种跑商称号、宝物成长玉、爵位成长道具。",
				   QuestId = "",
				   Icon = ""}
EventLibery[24] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   TypeTxt = "^ff9c00阵营",
				   Name = "^ff9c00赤壁前哨战",
				   TimeTxt = "^efce9e每周日",
				   Content = "^fff600时间：^ffffff每周日16点到18点\r^fff600等级： ^ffffff60-80级\r^fff600描述：^ffffff魏蜀吴三国水军在赤壁集结，经过一周的后勤准备，终于在3线赤壁开启前哨战。参与可以获得海量历练、名望、高级秘文、聚星旗等丰厚奖励。",
				   QuestId = "",
				   Icon = ""}
EventLibery[25] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   TypeTxt = "^ff9c00阵营",
				   Name = "^ff9c00赤壁决战",
				   TimeTxt = "^efce9e每周日",
				   Content = "^fff600时间：^ffffff每周日20-22点\r^fff600等级： ^ffffff英雄等级以上\r^fff600描述：^ffffff魏蜀吴三国水军在赤壁集结，经过一周的后勤准备，终于在6线赤壁开启决战。参与可以获得海量阅历、名望、高级秘文、聚星旗等丰厚奖励，甚至有可能获得混沌神石。",
				   QuestId = "",
				   Icon = ""}
EventLibery[26] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   loopStartM = 1,
				   loopStartD = 11,
				   loopEndM = 1,
				   loopEndD = 17,
				   loopPeriod = 28,	
				   TypeTxt = "^84ff00风雅",
				   Name = "^ff9c00抢新娘",
				   TimeTxt = "^efce9e本周六、周日",
				   Content = "^fff600时间：^ffffff本周六、周日\r^fff600等级：^ffffff16+\r^fff600NPC：#81380#\r^ffffff霸王寨的大王“王天霸”强抢民女“林萧萧”，准备拜堂当妾室。林萧萧父亲林慕白拜托各位英雄去救救他的女儿，前往霸王寨喜宴抢回新娘。",
				   QuestId = "",
				   Icon = ""}
EventLibery[27] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   loopStartM = 1,
				   loopStartD = 25,
				   loopEndM = 1,
				   loopEndD = 31,
				   loopPeriod = 28,	
				   TypeTxt = "^84ff00风雅",
				   Name = "^ff9c00将相之才",
				   TimeTxt = "^efce9e本周六、周日",
				   Content = "^fff600时间：^ffffff本周六、周日\r^fff600等级：^ffffff16+\r^fff600NPC：#86793#\r^ffffff时值乱世群雄并起，\r魏蜀吴三国已成三足鼎立之势。\r请各路英豪速速向本国使者报到，\r前往试炼场与各路英雄一决胜负。",
				   QuestId = "",
				   Icon = ""}
EventLibery[28] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   loopStartM = 1,
				   loopStartD = 4,
				   loopEndM = 1,
				   loopEndD = 10,
				   loopPeriod = 28,	
				   TypeTxt = "^84ff00风雅",
				   Name = "^ff9c00冬岛问命",
				   TimeTxt = "^efce9e本周六、周日",
				   Content = "^fff600时间：^ffffff本周六、周日\r^fff600等级：^ffffff16+\r^fff600NPC：#82016#\r^ffffff前往神秘的冬岛，问天命，卜吉凶。\r此行凶险，诸神脾气古怪，可能遇到多种不同的待遇。\r若天之所向，则可获得宝物；若天之所逆，有可能受到雷公的惩罚。",
				   QuestId = "",
				   Icon = ""}
EventLibery[29] =	 {Year = 2015,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   loopStartM = 1,
				   loopStartD = 18,
				   loopEndM = 1,
				   loopEndD = 24,
				   loopPeriod = 28,	
				   TypeTxt = "^84ff00风雅",
				   Name = "^ff9c00武斗盛宴",
				   TimeTxt = "^efce9e本周六、周日",
				   Content = "^fff600时间：^ffffff本周六、周日 10点、11点、14点、18点\r^fff600等级：^ffffff16+\r^fff600NPC：#82572#\r^ffffff前往演武场，与诸侯手下众位名将一同迎战吕布。\r吕布及其手下皆骁勇善战，各路豪杰需小心应对。\r吕布及其手下只会攻击诸位将领及其手下士兵，将领是否能成功坚持到最后，是决定最后奖励的关键因素。",
				   QuestId = "",
				   Icon = ""}	  	
EventLibery[30] =	 {Year = 2015,
				   Month = {12},
				   Day = {24,25,26},
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   TypeTxt = "^fff600最新",
				   Name = "^fff600红装点缀长青旁",
				   TimeTxt = "^efce9e全天",
				   Content = "^fff600时间：^ffffff2015年12月24日-2015年12月26日\r^fff600等级：^ffffff16+\r^fff600NPC：#89265#\r^ffffff亲力亲为，为自己打造一个不一样的圣诞节。",
				   QuestId = "",
				   Icon = ""}
EventLibery[31] =	 {Year = 2015,
				   Month = {12},
				   Day = {24},
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   TypeTxt = "^fff600最新",
				   Name = "^fff600平安夜",
				   TimeTxt = "^efce9e21点至21点半",
				   Content = "^fff600时间：^ffffff2015年12月24日，21点至21点半。\r^fff600等级：^ffffff16+\r^fff6000通过天陨泉传送使，传送至云梦。\r^ffffff小淘气带着红苹果在云梦要和大家玩游戏，红苹果可在圣诞老人处购买大礼包哦~！",
				   QuestId = "",
				   Icon = ""}
EventLibery[32] =	 {Year = 2016,
				   Month = {1},
				   Day = {1,2,3},
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   TypeTxt = "^fff600最新",
				   Name = "^fff600年画藏福",
				   TimeTxt = "^efce9e全天",
				   Content = "^fff600时间：^ffffff2016年1月1日-2016年1月3日\r^fff600等级：^ffffff16+\r^fff600NPC：#89265#\r^ffffff无霜心血来潮要收集年画，想让关中书生许南行帮忙画一幅元旦年画。",
				   QuestId = "",
				   Icon = ""}
EventLibery[33] =	 {Year = 2016,
				   Month = {1},
				   Day = {4},
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   TypeTxt = "^fff600最新",
				   Name = "^fff600福禄寿",
				   TimeTxt = "^efce9e全天",
				   Content = "^fff600时间：^ffffff2016年1月4日\r^fff600等级：^ffffff16+\r^fff600NPC：#89265#\r^ffffff凑齐“福禄寿”三个字在无霜处兑换奖励。",
				   QuestId = "",
				   Icon = ""}
EventLibery[34] =	 {Year = 2016,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 1,
				   Class = 3,
				   TypeTxt = "^84ff00结义",
				   Name = "^84ff00草船借箭",
				   TimeTxt = "^ff765c每周日 19点开始",
				   Content = "^fff600时间：^ffffff每周日19点\r^fff600等级： ^ffffff12级以上\r^fff600NPC：#81784#\r^fff600描述：^ffffff草船借箭活动是以结义为单位，每周日进行的趣味性竞技比赛。根据结义内所有参与玩家所获得的积分进行排名，按照排名发放各种丰厚奖励。上周结义总贡献排名前100结义的结义长可以为本结义报名参加本周的草船借箭活动。每周只有60个结义名额能够参加草船借箭活动，报满60个之后，未报名的结义无法报名。",
				   QuestId = "",
				   Icon = ""}
EventLibery[35] =	 {Year = 2016,
				  Week = {0,1,2,3,4,5,6},
				  Type = 1,
				  Class = 1,
				  TypeTxt = "^fff600最新",
				  Name = "^fff600一马当先",
				  TimeTxt = "^efce9e每日一次",
				  Content = "^fff600时间：^efce9e2015年2月9日--12月31日\r^fff600等级： ^ffffff16级以上\r^fff600NPC：#92178#\r描述：^ffffff欧阳兰兰最近总觉得有不明的暗影在长安城中的大小屋顶上晃动，想要找人帮她调查此事。请拥有一马当先回归凭证的玩家带上两个帮手前往长安城找她，事成之后她必有重谢！\r^fff600（任务必须3人组队才能接取，且队长必须有“一马当先回流凭证”）",
				  QuestId = "",
				  Icon = ""}
EventLibery[36] =	 {Year = 2016,
				  Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				  Type = 1,
				  Class = 3,
				  TypeTxt = "^fff962平乱",
				  Name = "^fff962英雄之路",
				  TimeTxt ="^efce9e每周日 15点到23点 ",
				  Content = "^fff600时间：^ffffff每周日 15点、17点、19点、21点、23点\r^fff600注意：活动持续1小时，组队效率更高！1小时后所有活动相关内容都会消失！如果没有及时完成，请在下次活动开启时继续完成。\r^fff600等级：^ffffff英雄级\r^fff600NPC：#74817#\r^ffffff英雄之路：\r河北出现很多奇怪的女子，还有大批的贼人，又赶上鼹鼠灾，天灾人祸民不聊生！\r手足无措的村民（河北-179，-145）希望各位英雄和朋友们一起来拯救村民！详情请询问手足无措的村民。",
				  QuestId = "",
				  Icon = ""}
EventLibery[37] =	 {Year = 2016,
				  Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				  Type = 1,
				  Class = 2,
				  TypeTxt = "^8cd656平乱",
				  Name = "^8cd656桃园告急",
				  TimeTxt ="^ff765c每天 14点到22点",
				  Content = "^fff600时间：^ffffff每天 14点、16点、18点、20点、22点\r^fff600注意：活动持续1小时，组队效率更高！1小时后所有叛乱分子都会消失！如果没有及时完成，请在下次活动开启时继续完成。\r^fff600等级：^ffffff16-80级\r^fff600NPC：#72651#\r活动线路：新手线（1-5线）^ffffff桃园告急：\r不明身份的叛乱分子乔装打扮，从清凉驿潜入，一直到桃园村都有他们的踪迹。有的化妆成杂耍团，有的化妆成道士，偷袭村民，桃园卫兵（348，121）希望有英雄和朋友们一起来拯救村民！！详情请见桃园卫兵处的活动指引。",
				  QuestId = "",
				  Icon = ""}
EventLibery[38] =	 {Year = 2016,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 3,
				   TypeTxt = "^ff9c00阵营",
				   Name = "^ff9c00国战",
				   TimeTxt = "^8d76ff周六 20点到22点",
				   Content = "^fff600时间：^ffffff每周六20点到22点\r^fff600等级： ^ffffff英雄1级以上（阵营）\r^fff600NPC：^ffffff各阵营大厅中的演军官\r^fff600描述：^ffffff英雄1级以上已加入阵营的玩家可以从未央宫传送到各军大营,从各阵营演军官处的国战服务申请进入对应阵营国战。",
				   QuestId = "",
				   Icon = ""}

EventLibery[39] =	 {Year = 2016,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 3,
				   Class = 3,
				   TypeTxt = "^84ff00风雅",
				   Name = "^84ff00神州赛马大会",
				   TimeTxt = "^8d76ff周六 21点半开始",
				   Content = "^fff600时间：^ffffff周六21点半\r^fff600等级： ^ffffff60级以上\r^fff600NPC：^ffffff战场管理员\r^fff600描述：^ffffff60级以上玩家从服务器6线登陆,与战场管理员对话并消耗一个神州·赛马令牌,即可加入赛马活动。同时允许玩家观战,不消耗任何物品。",
				   QuestId = "",
				   Icon = ""}
EventLibery[40] =	 {Year = 2016,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 8,
				   Class = 3,
				   TypeTxt = "^ffa083奇遇",
				   Name = "^ffa083怪物攻城",
				   TimeTxt = "^8d76ff周六 16点到18点",
				   Content = "^fff600时间：^ffffff每周六16点到18点\r^fff600等级： ^ffffff英雄1级以上\r^fff600描述：^ffffff洛阳北邙地宫中的各种妖邪进攻洛阳新城，为报洛阳居民安全，请义士们拿起手中的武器，捍卫洛阳新城吧！",
				   QuestId = "",
				   Icon = ""}
EventLibery[41] =	 {Year = 2016,
				  Day = {1,2,3,4,5,6,7},
				  Type = 1,
				  Class = 2,
				  TypeTxt = "^fff600工资",
				  Name = "^fff600每月工资",
				  TimeTxt = "^d181ff每月 ",
				  Content = "^fff600时间：^ffffff每月1日到7日\r^fff600等级： ^ffffff16级以上\r^fff600NPC：^ffffff#24526#\r^fff600描述：^ffffff可到长安未央宫门口或冀州城内找到【值日功曹】领取工资【灵气值】。工资根据玩家级别、在线时间、官阶高低等而有所区别。灵气值可在古币商人处购买各种物品。",
				  QuestId = "",
				  Icon = ""}
EventLibery[42] =	 {Year = 2016,
				  Week = {0,1,2,3,4,5,6},
				  Type = 5,
				  Class = 4,
				  TypeTxt = "^ffa083奇遇",
				  Name = "^ffa083神州探宝",
				  TimeTxt = "^ff765c每日 12点到24点",
				  Content = "^fff600时间：^efce9e12点-24点\r^fff600条件：^ffffff英雄1级以上\r^fff600NPC：^ffffff#64878#\r^fff600描述：^ffffff与林一处上交“探宝司南”可开启神州探宝历程，每日可上交一次。寻宝过程中有可能会惊动神州探宝事件哦！",
				  QuestId = "",
				  Icon = ""}
EventLibery[43] =	 {Year = 2016,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 7,
				   Class = 4,
				   TypeTxt = "^8cd656平乱",
				   Name = "^8cd656击杀张梁",
				   TimeTxt = "^ff765c每日 12点到20点",
				   Content = "^fff600时间：^ffffff每天12：00-22：00\r^fff600描述：^ffffff黄巾将军“张梁”随机在2线楼兰沙海逞凶作乱,众志成城的军团千万不能错过高难度的挑战所带来惊喜巨奖。",
				   QuestId = "",
				   Icon = ""}
EventLibery[44] =	 {Year = 2016,
				  Week = {0,1,2,3,4,5,6},
				  Type = 5,
				  Class = 4,
				  TypeTxt = "^84ff00风雅",
				  Name = "^efce9e洛阳渔乐",
				  TimeTxt = "^ff765c每日 15点到24点",
				  Content = "^fff600时间：^efce9e15点-24点\r^fff600条件：^ffffff英雄1级以上\r^fff600NPC：^ffffff#51461#\r^fff600描述：^ffffff可与洛阳新城内的垂钓搜集者处领取鱼饵，开始洛阳垂钓。",
				  QuestId = "",
				  Icon = ""}
EventLibery[45] =	 {Year = 2016,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 3,
				   Class = 4,
				   TypeTxt = "^84ff00风雅",
				   Name = "^84ff00舌战群儒",
				   TimeTxt = "^ff765c每日 19点半开始",
				   Content = "^fff600时间：^ffffff每日19：30\r^fff600等级： ^ffffff无等级限制\r^fff600描述：^ffffff活动时间内在线玩家会收到活动邀请。接受邀请,参加答题,获得海量经验,博览天下知识。",
				   QuestId = "",
				   Icon = ""}
EventLibery[46] =	 {Year = 2016,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 4,
				   Class = 4,
				   TypeTxt = "^deff00战场",
				   Name = "^deff00领取征战令",
				   TimeTxt = "^ff765c每日 20点到23点",
				   Content = "^fff600时间：^ffffff每日20点到23点\r^fff600等级： ^ffffff58级以上\r^fff600NPC：^ffffff#9512#或#8305#\r^fff600描述：^ffffff玩家可于长安未央宫韩彬或马元义处领取2枚征战令,凭此令2枚进入濮阳之战·英雄级或界桥之战，可在战场结束后获得大量阅历和文武功勋，以及两张濮阳征战奖励函。",
				   QuestId = "",
				   Icon = ""}
EventLibery[47] =	 {Year = 2016,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 3,
				   Class = 4,
				   TypeTxt = "^84ff00风雅",
				   Name = "^84ff00关中赛马大会",
				   TimeTxt = "^ff765c每日 21点半开始",
				   Content = "^fff600时间：^ffffff每日21点半\r^fff600等级： ^ffffff60级以上\r^fff600NPC：^ffffff战场管理员\r^fff600描述：^ffffff60级以上玩家在6、7、8线登陆,与战场管理员对话并消耗一个关中·赛马令牌,即可加入赛马活动。同时允许玩家观战,不消耗任何物品。",
				   QuestId = "",
				   Icon = ""}
EventLibery[48] =	 {Year = 2016,
				  Week = {0,1,2,3,4,5,6},
				  Type = 1,
				  Class = 5,
				  TypeTxt = "^fff600工资",
				  Name = "^fff600每日点卯",
				  TimeTxt = "^efce9e全天 ",
				  Content = "^fff600时间：^efce9e全天\r^fff600等级： ^ffffff16级以上\r^fff600NPC：^ffffff#26447#\r^fff600描述：^ffffff每日可到未央宫门前梁昭处点卯,有活力值和历练奖励。",
				  QuestId = "",
				  Icon = ""}
EventLibery[49] =	 {Year = 2016,
				  Week = {0,1,2,3,4,5,6},
				  Type = 1,
				  Class = 5,
				  TypeTxt = "^fff600风雅",
				  Name = "^fff600莫问今朝",
				  TimeTxt = "^efce9e12点到16点，20点到24点 ",
				  Content = "^fff600时间：^efce9e全天\r^fff600等级： ^ffffff英雄1级以上\r^fff600NPC：^ffffff#51467#\r^fff600描述：^ffffff组起你的队伍来，帮助逍遥隐士解决困扰他多年的难题吧，有丰厚的奖励在等着你们。",
				  QuestId = "",
				  Icon = ""}
EventLibery[50] =	 {Year = 2016,
				   Week = {0,1,2,3,4,5,6},
				   Type = 3,
				   Class = 5,
				   TypeTxt = "^84ff00风雅",
				   Name = "^84ff00每日钓鱼",
				   TimeTxt = "^efce9e全天 ",
				   Content = "^fff600时间：^efce9e全天\r^fff600等级： ^ffffff16级以上\r^fff600NPC：^ffffff#9163#\r^fff600描述：^ffffff每日可在长安孔融处领取鱼饵,于3线-14线的河北桃园村池塘,参加每天垂钓活动。",
				   QuestId = "",
				   Icon = ""}
EventLibery[51] =	 {Year = 2016,
				   Week = {0,1,2,3,4,5,6},
				   Type = 6,
				   Class = 5,
				   TypeTxt = "^ceff8a押镖",
				   Name = "^ceff8a镖银递送",
				   TimeTxt = "^efce9e全天 ",
				   Content = "^fff600时间：^efce9e全天\r^fff600等级： ^ffffff16级以上\r^fff600NPC：^ffffff#26894#\r^fff600描述：^ffffff玩家每天都可在长安总镖头佟威处领取一个“福威镖单”。持有“福威镖单”的玩家组队后,找到各大主城分局镖头,由队长领取任务。",
				   QuestId = "",
				   Icon = ""}
EventLibery[52] =	 {Year = 2016,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 7,
				   Class = 4,
				   TypeTxt = "^8cd656平乱",
				   Name = "^8cd656击杀张宝",
				   TimeTxt = "^efce9e全天 ",
				   Content = "^fff600时间：^ffffff每天21：00\r^fff600描述：^ffffff黄巾将军“张宝”在2线殇之雪域逞凶作乱,众志成城的英雄千万不能错过高难度的挑战所带来惊喜巨奖。",
				   QuestId = "",
				   Icon = ""}
EventLibery[53] =	 {Year = 2016,
				   Week = {0,1,2,3,4,5,6},
				   Type = 9,
				   Class = 5,
				   TypeTxt = "^ff4ca4姻缘",
				   Name = "^ff4ca4领取鸳鸯令",
				   TimeTxt = "^efce9e全天 ",
				   Content = "^fff600时间：^efce9e全天\r^fff600条件：^ffffff夫妻二人组队\r^fff600NPC：^ffffff#12820#\r^fff600描述：^ffffff与关中长安城的红娘对话可领取到鸳鸯令,领取时必须夫妻二人组队,并且是队长与红娘对话方可获得【鸳鸯令】,队长获得【鸳鸯令】后可以开启获得今日婚姻任务。夫妻两人完成任务后可分别获得【相思豆】和【历练值】的奖励。",
				   QuestId = "",
				   Icon = ""}
EventLibery[54] =	 {Year = 2016,
				   Week = {0,1,2,3,4,5,6},
				   Type = 9,
				   Class = 5,
				   TypeTxt = "^ff4ca4姻缘",
				   Name = "^ff4ca4红豆采摘",
				   TimeTxt = "^efce9e全天 ",
				   Content = "^fff600时间：^efce9e全天\r^fff600条件：^ffffff夫妻二人组队\r^fff600NPC：^ffffff#12820#\r^fff600描述：^ffffff夫妻双方组队后可以在关中长安城－红娘处领取到婚姻任务。",
				   QuestId = "",
				   Icon = ""}
EventLibery[55] =	 {Year = 2016,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   TypeTxt = "^ff9c00阵营",
				   Name = "^ff9c00白帝城争夺战",
				   TimeTxt = "^efce9e每周三",
				   Content = "^fff600时间：^ffffff每周三20点到22点\r^fff600等级： ^ffffff60级以上\r^fff600描述：^ffffff两百年前的蜀帝公孙述在白帝城复活，三国将士可以赶往白帝城，决定白帝城要塞的归属权。争夺战中有可能会获得鸿羽、碎羽、君王九锡、战魂物品和大量名望。占领国还可以获得特殊的占领任务。",
				   QuestId = "",
				   Icon = ""}
EventLibery[56] =	 {Year = 2016,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   TypeTxt = "^ff9c00阵营",
				   Name = "^ff9c00白帝城跑商",
				   TimeTxt = "^efce9e每周四、周五",
				   Content = "^fff600时间：^ffffff每周四、周五20点到22点\r^fff600等级： ^ffffff60级以上\r^fff600描述：^ffffff白帝城为长江贸易要地，每周的两次大集市可以获得巨额利润。名望80000以上玩家可以参与此活动。跑商中获得的金露珠可以换取各种跑商称号、宝物成长玉、爵位成长道具。",
				   QuestId = "",
				   Icon = ""}
EventLibery[57] =	 {Year = 2016,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   TypeTxt = "^ff9c00阵营",
				   Name = "^ff9c00赤壁前哨战",
				   TimeTxt = "^efce9e每周日",
				   Content = "^fff600时间：^ffffff每周日16点到18点\r^fff600等级： ^ffffff60-80级\r^fff600描述：^ffffff魏蜀吴三国水军在赤壁集结，经过一周的后勤准备，终于在3线赤壁开启前哨战。参与可以获得海量历练、名望、高级秘文、聚星旗等丰厚奖励。",
				   QuestId = "",
				   Icon = ""}
EventLibery[58] =	 {Year = 2016,
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   TypeTxt = "^ff9c00阵营",
				   Name = "^ff9c00赤壁决战",
				   TimeTxt = "^efce9e每周日",
				   Content = "^fff600时间：^ffffff每周日20-22点\r^fff600等级： ^ffffff英雄等级以上\r^fff600描述：^ffffff魏蜀吴三国水军在赤壁集结，经过一周的后勤准备，终于在6线赤壁开启决战。参与可以获得海量阅历、名望、高级秘文、聚星旗等丰厚奖励，甚至有可能获得混沌神石。",
				   QuestId = "",
				   Icon = ""}
EventLibery[59] =	 {Year = 2016,
				   Month = {1},
				   Day = {1},
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   TypeTxt = "^fff600最新",
				   Name = "^fff600许愿星",
				   TimeTxt = "^efce9e全天",
				   Content = "^fff600时间：^ffffff2016年1月1日\r^fff600等级：^ffffff16+\r^fff600NPC：#89265#\r^ffffff愿不语，情可依，梦终宁，愿成真。",
				   QuestId = "",
				   Icon = ""}
EventLibery[60] =	 {Year = 2016,
				   Month = {1},
				   Day = {1,2,3},
				   Time = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24},
				   Type = 2,
				   Class = 4,
				   TypeTxt = "^84ff00风雅",
				   Name = "^ff9c00将相之才",
				   TimeTxt = "^efce9e本周六、周日",
				   Content = "^fff600时间：^ffffff本周六、周日\r^fff600等级：^ffffff16+\r^fff600NPC：#86793#\r^ffffff时值乱世群雄并起，\r魏蜀吴三国已成三足鼎立之势。\r请各路英豪速速向本国使者报到，\r前往试炼场与各路英雄一决胜负。",
				   QuestId = "",
				   Icon = ""}
--------------------------------------------
--显示图标表格
--------------------------------------------
function Win_EventMain:ShowIcon()
showicon = {}
showicon[1] = {icon = "CB\\EventIcon\\yuegongzi.dds", Hint = "每月工资"}
showicon[2] = {icon = "CB\\EventIcon\\yuegongzi.dds", Hint = "每月工资"}
showicon[3] = {icon = "CB\\EventIcon\\yuegongzi.dds", Hint = "每月工资"}
showicon[4] = {icon = "CB\\EventIcon\\yuegongzi.dds", Hint = "每月工资"}
showicon[5] = {icon = "CB\\EventIcon\\yuegongzi.dds", Hint = "每月工资"}
showicon[6] = {icon = "CB\\EventIcon\\yuegongzi.dds", Hint = "每月工资"}
showicon[7] = {icon = "CB\\EventIcon\\yuegongzi.dds", Hint = "每月工资"}
showicon[8] = {icon = "CB\\EventIcon\\biaoyin.dds", Hint = "镖银递送"}
showicon[9] = {icon = "CB\\EventIcon\\zhoudiaoyu.dds", Hint = "洛阳渔乐"}
showicon[10] = {icon = "CB\\EventIcon\\guansaima.dds", Hint = "关中赛马大会"}
showicon[11] = {icon = "CB\\EventIcon\\shazhangliang.dds", Hint = "击杀张梁"}
showicon[12] = {icon = "CB\\EventIcon\\qianli.dds", Hint = "莫问今朝"}
showicon[13] = {icon = "CB\\EventIcon\\biaoyin.dds", Hint = "镖银递送"}
showicon[14] = {icon = "CB\\EventIcon\\hongdou.dds", Hint = "红豆采摘"}
showicon[15] = {icon = "CB\\EventIcon\\pingfan.dds", Hint = "惩凶平叛"}
showicon[16] = {icon = "CB\\EventIcon\\qianli.dds", Hint = "莫问今朝"}
showicon[17] = {icon = "CB\\EventIcon\\xunbao.dds", Hint = "神州探宝"}
showicon[18] = {icon = "CB\\EventIcon\\rigongzi.dds", Hint = "每日工资"}
showicon[19] = {icon = "CB\\EventIcon\\ridiaoyu.dds", Hint = "每日钓鱼"}
showicon[20] = {icon = "CB\\EventIcon\\pingfan.dds", Hint = "惩凶平叛"}
showicon[21] = {icon = "CB\\EventIcon\\guansaima.dds", Hint = "关中赛马大会"}
showicon[22] = {icon = "CB\\EventIcon\\hongdou.dds", Hint = "红豆采摘"}
showicon[23] = {icon = "CB\\EventIcon\\shezhan.dds", Hint = "舌战群儒"}
showicon[24] = {icon = "CB\\EventIcon\\xunbao.dds", Hint = "神州探宝"}
showicon[25] = {icon = "CB\\EventIcon\\fuwei.dds", Hint = "福威镖局押镖"}
showicon[26] = {icon = "CB\\EventIcon\\zhengzhanling.dds", Hint = "领取征战令"}
showicon[27] = {icon = "CB\\EventIcon\\yuanyangling.dds", Hint = "领取鸳鸯令"}
showicon[28] = {icon = "CB\\EventIcon\\xunbao.dds", Hint = "神州探宝"}
showicon[29] = {icon = "CB\\EventIcon\\pingluan.dds", Hint = "黄巾平乱"}
showicon[30] = {icon = "CB\\EventIcon\\zhengzhanling.dds", Hint = "领取征战令"}
showicon[31] = {icon = "CB\\EventIcon\\zhoudiaoyu.dds", Hint = "洛阳渔乐"}
showicon[32] = {icon = "CB\\EventIcon\\zhengzhanling.dds", Hint = "领取征战令"}
showicon[33] = {icon = "CB\\EventIcon\\biaoyin.dds", Hint = "镖银递送"}


local weekendIcon = "CB\\EventIcon\\shuizhan.dds"
local Hint = "赤壁水战"
local weekendIcon1 = "CB\\EventIcon\\guozhan.dds"
local Hint1 = "国战"
local weekendIcon2 = "CB\\EventIcon\\xiongnu.dds"
local Hint2 = "抗击匈奴"
local weekendIcon3 = "CB\\EventIcon\\xionglang.dds"
local Hint3 = "铲除凶狼"
local weekendIcon4 = "CB\\EventIcon\\guozhan.dds"
local Hint4 = "国战"
local weekendIcon5 = "CB\\EventIcon\\shensaima.dds"
local Hint5 = "神州赛马大会"
local weekendIcon6 = "CB\\EventIcon\\rigongzi.dds"
local Hint6 = "每日工资"

local daynum1 = Win_EventMain:DayNum()
local day1 = Win_EventMain:FristDay()
local day2
local day3
if 7 - day1 == 6 then
	day2 = 7
	day3 = 6
else
	day2 = 8 - day1
	day3 = 7 - day1
end
	for i = 1, daynum1 do
		for o1, p1 in ipairs(showicon) do
			if i == day2 then
				table.insert(ShowIcon, i, weekendIcon)
				table.insert(ShowHint, i, Hint)
			elseif i == day2 + 7 then
				table.insert(ShowIcon, i, weekendIcon)
				table.insert(ShowHint, i, Hint)
			elseif i == day2 + 14 then
				table.insert(ShowIcon, i, weekendIcon)
				table.insert(ShowHint, i, Hint)
			elseif i == day2 + 21 then
				table.insert(ShowIcon, i, weekendIcon)
				table.insert(ShowHint, i, Hint)
			elseif i == day2 + 28 then
				table.insert(ShowIcon, i, weekendIcon)
				table.insert(ShowHint, i, Hint)
			elseif i == day3 then
				table.insert(ShowIcon, i, weekendIcon1)
				table.insert(ShowHint, i, Hint1)
			elseif i == day3 + 7 then
				table.insert(ShowIcon, i, weekendIcon1)
				table.insert(ShowHint, i, Hint1)
			elseif i == day3 + 14 then
				table.insert(ShowIcon, i, weekendIcon1)
				table.insert(ShowHint, i, Hint1)
			elseif i == day3 + 21 then
				table.insert(ShowIcon, i, weekendIcon1)
				table.insert(ShowHint, i, Hint1)
			elseif i == day3 + 28 then
				table.insert(ShowIcon, i, weekendIcon1)
				table.insert(ShowHint, i, Hint1)
			else
				table.insert(ShowIcon, i, showicon[i].icon)
				table.insert(ShowHint, i, showicon[i].Hint)
			end
		end
	end
	return ShowIcon, ShowHint
end

--------------------------------------------
--获取本机时间（年月周日时）



--------------------------------------------
function Win_EventMain:Date(Year, Month, Week, Day, Time)
local Year = tonumber(os.date("%Y"))
local Month = tonumber(os.date("%m"))
local Week = tonumber(os.date("%w"))
local Day = tonumber(os.date("%d"))
local Time = tonumber(string.sub(os.date("%X"),1,2))
return Year, Month, Week, Day, Time
end
--------------------------------------------
--显示当天全部活动信息
--------------------------------------------
function Win_EventMain:AllInfo()
local y, m, w, d, t = Win_EventMain:Date(Year, Month, Week, Day, Time)
local l = 0
local Name = ""
	for k1, v1 in ipairs(EventLibery) do
		if v1.QuestId ~= "" then
			local xname, goldbonus, expbonus, itembonus, extendnpc, completenpc, areatype, lvlowerlimit, lvlupperlimit, teamquest, xtitle, xnodo, fnum, tnum = GameApi.IvtrQuestInfo(v1.QuestId)
			Name = string.format("%s%s", tostring(tnum), v1.Name)
		else
			Name = v1.Name
		end
		local YLib = v1.Year
		local TypeTxt = v1.TypeTxt
		local TimeTxt = v1.TimeTxt
		local Content = v1.Content
		local Icon = v1.Icon
		
		if v1.loopPeriod ~= nil then
			local curTime = os.time{year = y, month = m, day = d, hour = 0, min = 0, sec = 0}
			local isNeedAdd = false
			local period = v1.loopPeriod*86400
			local startTime = 0
			local endTime = 0
			startTime = os.time{year = y, month = v1.loopStartM, day = v1.loopStartD, hour = 0, min =0, sec = 0}
			endTime = os.time{year = y, month = v1.loopEndM, day = v1.loopEndD, hour = 23, min = 59, sec = 59}
			if curTime >= startTime then			
				while true do
					if curTime >= startTime and curTime <= endTime then
						isNeedAdd = true
						break
					elseif curTime > endTime and curTime < startTime + period then
						break
					end
					startTime = startTime + period
					endTime = endTime + period			
				end
			end
			if isNeedAdd then
				l = l + 1
				AllTitle[l] = {}
				AllTitle[l].TypeTxt = TypeTxt
				AllTitle[l].Name = Name
				AllTitle[l].TimeTxt = TimeTxt
				AllTitle[l].Type = v1.Type
				AllTitle[l].Class = v1.Class
				AllTitle[l].Content = Content
				AllTitle[l].Icon = Icon
			end				
		elseif v1.Month ~= nil and v1.Day ~= nil and v1.Time ~= nil then  --计算特殊活动内容
			for x1, y1 in ipairs (v1.Month) do
				local MLib3 = y1
				for x2, y2 in ipairs (v1.Day) do
					local DLib3 = y2
					for x3, y3 in ipairs(v1.Time) do
						local TLib3 = y3
						if m == MLib3 and d == DLib3 and t == TLib3 then
						l = l + 1
						AllTitle[l] = {}
						AllTitle[l].Name = Name
						AllTitle[l].TimeTxt = TimeTxt
						AllTitle[l].Day = v1.Day
						AllTitle[l].Week = v1.Week
						AllTitle[l].Type = v1.Type
						AllTitle[l].Class = v1.Class
						AllTitle[l].Content = Content
						AllTitle[l].Icon = Icon
						break
						end
					end
				end
			end
		elseif v1.Week ~= nil and v1.Time ~= nil then --计算每周活动内容
			for k3, v3 in ipairs(v1.Week) do
				local WLib =  v3
				for k4, v4 in ipairs(v1.Time) do
					local TLib = v4
					if y == YLib and w == WLib and t == TLib then
					l = l + 1
					AllTitle[l] = {}
					AllTitle[l].Name = Name
					AllTitle[l].TimeTxt = TimeTxt
					AllTitle[l].Day = v1.Day
					AllTitle[l].Week = v1.Week
					AllTitle[l].Type = v1.Type
					AllTitle[l].Class = v1.Class
					AllTitle[l].Content = Content
					AllTitle[l].Icon = Icon
					break
					end
				end
			end
		elseif v1.Day ~= nil then
			for k2, v2 in ipairs(v1.Day) do
				local DLib = v2
				if y == YLib and d == DLib then      --计算每月活动内容
				l = l + 1
				AllTitle[l] = {}
				AllTitle[l].Name = Name
				AllTitle[l].TimeTxt = TimeTxt
				AllTitle[l].Day = v1.Day
				AllTitle[l].Week = v1.Week
				AllTitle[l].Type = v1.Type
				AllTitle[l].Class = v1.Class
				AllTitle[l].Content = Content
				AllTitle[l].Icon = Icon
				end
			end
		elseif v1.Week ~= nil then                    --计算全天活动内容
			for k5, v5 in ipairs(v1.Week) do
				local WLib1 = v5
				if y == YLib and w == WLib1 then
				l = l + 1
				AllTitle[l] = {}
				AllTitle[l].Name = Name
				AllTitle[l].TimeTxt = TimeTxt
				AllTitle[l].Day = v1.Day
				AllTitle[l].Week = v1.Week
				AllTitle[l].Type = v1.Type
				AllTitle[l].Class = v1.Class
				AllTitle[l].Content = Content
				AllTitle[l].Icon = Icon
				break
				end
			end
		elseif v1.Time ~= nil then                      --计算每日活动内容
			for k6, v6 in ipairs(v1.Time) do
				local TLib1 = v6
				if y == YLib and t == TLib1 then
				l = l + 1
				AllTitle[l] = {}
				AllTitle[l].Name = Name
				AllTitle[l].TimeTxt = TimeTxt
				AllTitle[l].Day = v1.Day
				AllTitle[l].Week = v1.Week
				AllTitle[l].Type = v1.Type
				AllTitle[l].Class = v1.Class
				AllTitle[l].Content = Content
				AllTitle[l].Icon = Icon
				break
				end
			end
		end
	end
	return AllTitle, AllContent, AllIcon
end
--------------------------------------------
--计算每个月有多少天



--------------------------------------------
function Win_EventMain:DayNum()
local y, m, w, d, t = Win_EventMain:Date(Year, Month, Week, Day, Time)
local DateNumTable = {31,28,31,30,31,30,31,31,30,31,30,31}
	if m ~= 2 then
	   DayNum = DateNumTable[m]
	else
		if math.floor(y/4) ==  y/4 then
			if math.floor(y/100) ==  y/100 and math.floor(y/400) ~=  y/400 then
				DayNum = 28
			else
				DayNum = 29
			end
		else
			DayNum = 28
		end
	end
	return DayNum
end

--------------------------------------------
--计算当月第1天是几号
--------------------------------------------
function Win_EventMain:FristDay()
local y, m, w, d, t = Win_EventMain:Date(Year, Month, Week, Day, Time)
	if m < 3 then
		c = math.floor((y - 1)/100)
		MonthNum = m + 12
		YearNum = y - 1 - c*100
	else
		c = math.floor(y/100)
		MonthNum = m
		YearNum = y - c*100
	end
	local FristWeek = (math.floor(c/4) - 2*c + YearNum + math.floor(YearNum/4) + math.floor(13*(MonthNum + 1)/5)) % 7
	return FristWeek
end
--------------------------------------------
--显示选择日期的活动



--------------------------------------------
function Win_EventMain:OnLButtonDown(objName)
local y, m, w, d, t = Win_EventMain:Date(Year, Month, Week, Day, Time)
local Defult, DefultContent = Win_EventMain:ShowDefultEvent()
local Alltitle1 = Win_EventMain:InfoSift1() -- 按类型排序



local Alltitle3 = Win_EventMain:InfoSift2() -- 按时间类型排序



local l = 0
local r = 0
	if objName == "Btn_EventHelp" then
		if DlgApi.IsDialogShow("Win_IntoHelp") then
			DlgApi.ShowDialog("Win_IntoHelp", false)
		else
			DlgApi.ShowDialog("Win_IntoHelp", true)
		end
	end
	if objName == "List_Title" then -- 显示选中活动内容
		local LineNum = DlgApi.GetListCurLine(self.this, "List_Title") + 1
		if next(SelectTitle) == nil then
		GameApi.CovertTextArea(self.this, "Txt_Content", DefultContent[LineNum])
		else
		GameApi.CovertTextArea(self.this, "Txt_Content", SelectContent[LineNum])
		end
	end


	if objName == "Txt_Content" then
	local posx2, posy2 = GameApi.GetCursorPos()
		NpcID = DlgApi.GetItemLink(self.this, "Txt_Content", posx2, posy2)
		if NpcID ~= nil then
		GameApi.BeginAutoSearchPath(NpcID)
		end
	end

	if objName == "Btn_Close" then -- 关闭活动日历界面
	DlgApi.ShowDialog("Win_EventMain", false)
	elseif objName == "List_Combo" then
		local LineNum1 = DlgApi.GetListCurLine(self.this, "List_Combo") + 1
		if LineNum1 == 1 then
			DlgApi.SetListText(self.this, "List_Title", Defult)
		elseif LineNum1 == 2 then
			for j2, k2 in ipairs(Alltitle3) do
				SelectTitle[j2] = Format("%s\t%s", k2.Name, k2.TimeTxt)
			end
			DlgApi.SetListText(self.this, "List_Title", SelectTitle)
		end
	end

	for o = 1, 42 do
		if objName == Format("%s%d", "Btn_Day", o) then -- 获取选中的日和周
				local SelcetBtn = string.gsub(objName, "Btn_Day", "")
				SelcetDay = tonumber(DlgApi.GetItemText(self.this, Format("%s%d", "Label_Date", SelcetBtn)))
			if m < 3 then
				c1 = math.floor((y - 1)/100)
				MonthNum1 = m + 12
				YearNum1 = y - 1 - c1*100
			else
				c1 = math.floor(y/100)
				MonthNum1 = m
				YearNum1 = y - c1*100
			end
			SelcetWeek = (math.floor(c1/4) - 2*c1 + YearNum1 + math.floor(YearNum1/4) + math.floor(13*(MonthNum1 + 1)/5) + tonumber(SelcetDay) - 1) % 7
        end
	end
	return true;
end
--------------------------------------------
--显示选择日期活动
--------------------------------------------
function Win_EventMain:OnSelectBtn()
DlgApi.SetItemText(self.this, "Txt_Content", "")
AllTitle2 = {}
AllTitle1 = {}
SelectTitle = {}
local Name = ""
local y, m, w, d, t = Win_EventMain:Date(Year, Month, Week, Day, Time)
local l = 0
	for k1, v1 in ipairs(EventLibery) do
		if v1.QuestId ~= "" then
			local xname, goldbonus, expbonus, itembonus, extendnpc, completenpc, areatype, lvlowerlimit, lvlupperlimit, teamquest, xtitle, xnodo, fnum, tnum = GameApi.IvtrQuestInfo(v1.QuestId)
			Name = string.format("%s%s", tostring(tnum), v1.Name)
		else
			Name = v1.Name
		end
		local YLib = v1.Year
		local TypeTxt = v1.TypeTxt
		local TimeTxt = v1.TimeTxt
		local Content = v1.Content
		local Icon = v1.Icon
		
		if v1.loopPeriod ~= nil then
			local curTime = os.time{year = y, month = m, day = SelcetDay, hour = 0, min = 0, sec = 0}
			local isNeedAdd = false
			local period = v1.loopPeriod*86400
			local startTime = 0
			local endTime = 0
			startTime = os.time{year = y, month = v1.loopStartM, day = v1.loopStartD, hour = 0, min =0, sec = 0}
			endTime = os.time{year = y, month = v1.loopEndM, day = v1.loopEndD, hour = 23, min = 59, sec = 59}
			if curTime >= startTime then			
				while true do
					if curTime >= startTime and curTime <= endTime then
						isNeedAdd = true
						break
					elseif curTime > endTime and curTime < startTime + period then
						break
					end
					startTime = startTime + period
					endTime = endTime + period			
				end
			end
			if isNeedAdd then
				l = l + 1
				AllTitle1[l] = {}
				AllTitle1[l].TypeTxt = TypeTxt
				AllTitle1[l].Name = Name
				AllTitle1[l].TimeTxt = TimeTxt
				AllTitle1[l].Type = v1.Type
				AllTitle1[l].Class = v1.Class
				AllTitle1[l].Content = Content
				AllTitle1[l].Icon = Icon
			end				
		elseif v1.Month ~= nil and v1.Day ~= nil and v1.Time ~= nil then  --计算特殊活动内容
			for x1, y1 in ipairs (v1.Month) do
				local MLib3 = y1
				for x2, y2 in ipairs (v1.Day) do
					local DLib3 = y2
					for x3, y3 in ipairs(v1.Time) do
						local TLib3 = y3
						if m == MLib3 and SelcetDay == DLib3 and t == TLib3 then
						l = l + 1
						AllTitle1[l] = {}
						AllTitle1[l].TypeTxt = TypeTxt
						AllTitle1[l].Name = Name
						AllTitle1[l].TimeTxt = TimeTxt
						AllTitle1[l].Type = v1.Type
						AllTitle1[l].Class = v1.Class
						AllTitle1[l].Content = Content
						AllTitle1[l].Icon = Icon
						break
						end
					end
				end
			end
		elseif v1.Day ~= nil then
			for k2, v2 in ipairs(v1.Day) do
				local DLib = v2
				if y == YLib and SelcetDay == DLib then      --计算每月活动内容
				l = l + 1
				AllTitle1[l] = {}
				AllTitle1[l].TypeTxt = TypeTxt
				AllTitle1[l].Name = Name
				AllTitle1[l].TimeTxt = TimeTxt
				AllTitle1[l].Type = v1.Type
				AllTitle1[l].Class = v1.Class
				AllTitle1[l].Content = Content
				AllTitle1[l].Icon = Icon
				end
			end
		elseif v1.Week ~= nil and v1.Time ~= nil then --计算每周活动内容
			for k3, v3 in ipairs(v1.Week) do
				local WLib =  v3
				for k4, v4 in ipairs(v1.Time) do
					local TLib = v4
					if y == YLib and SelcetWeek == WLib and t == TLib then
					l = l + 1
					AllTitle1[l] = {}
					AllTitle1[l].TypeTxt = TypeTxt
					AllTitle1[l].Name = Name
					AllTitle1[l].TimeTxt = TimeTxt
					AllTitle1[l].Type = v1.Type
					AllTitle1[l].Class = v1.Class
					AllTitle1[l].Content = Content
					AllTitle1[l].Icon = Icon
					break
					end
				end
			end
		elseif v1.Week ~= nil then                    --计算全天活动内容
			for k5, v5 in ipairs(v1.Week) do
				local WLib1 = v5
				if y == YLib and SelcetWeek == WLib1 then
				l = l + 1
				AllTitle1[l] = {}
				AllTitle1[l].TypeTxt = TypeTxt
				AllTitle1[l].Name = Name
				AllTitle1[l].TimeTxt = TimeTxt
				AllTitle1[l].Type = v1.Type
				AllTitle1[l].Class = v1.Class
				AllTitle1[l].Content = Content
				AllTitle1[l].Icon = Icon
				break
				end
			end
		elseif v1.Time ~= nil then                      --计算每日活动内容
			for k6, v6 in ipairs(v1.Time) do
				local TLib1 = v6
				if y == YLib and t == TLib1 then
				l = l + 1
				AllTitle1[l] = {}
				AllTitle1[l].TypeTxt = TypeTxt
				AllTitle1[l].Name = Name
				AllTitle1[l].TimeTxt = TimeTxt
				AllTitle1[l].Type = v1.Type
				AllTitle1[l].Class = v1.Class
				AllTitle1[l].Content = Content
				AllTitle1[l].Icon = Icon
				break
				end
			end
		end
	end
	for c1,t1 in ipairs(AllTitle1) do
	SelectTitle[c1] = Format("%s\t%s", t1.Name, t1.TimeTxt)
	SelectContent[c1] = string.gsub(t1.Content, "\\r", "\r")
	end
	DlgApi.SetListText(self.this, "List_Title", SelectTitle)
	GameApi.CovertTextArea(self.this, "Txt_Content", SelectContent[1])
end
--------------------------------------------
--显示默认活动日的活动
--------------------------------------------
function Win_EventMain:ShowDefultEvent()
	local AllTitle2 = Win_EventMain:AllInfo()
	for s1, w1 in ipairs(AllTitle2) do
	DefultTitle[s1] = Format("%s\t%s", w1.Name, w1.TimeTxt)
	DefultContent[s1] = w1.Content
	end
	return DefultTitle, DefultContent
end
--------------------------------------------
--按类型进行排序



--------------------------------------------
function Win_EventMain:InfoSift1()
	table.sort(AllTitle1, function(a,b) return a.Type < b.Type end)
	return AllTitle1
end
--------------------------------------------
--按时间类型进行排序



--------------------------------------------
function Win_EventMain:InfoSift2()
	table.sort(AllTitle1, function(a,b) return a.Class < b.Class end)
	return AllTitle1
end
--------------------------------------------
--鼠标移动
--------------------------------------------
function Win_EventMain:OnMOUSEMOVE()
local posx1, posy1 = GameApi.GetCursorPos()
local resault = DlgApi.GetItemLink(self.this, "Txt_Content", posx1, posy1)
	if resault == nil then
		GameApi.ScriptChangeCursor(0)
	else
		GameApi.ScriptChangeCursor(14)
	end
	return true;
end





