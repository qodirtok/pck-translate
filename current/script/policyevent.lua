---------------------------------------------------------------
--  created:   2013.8.3
--  author:    fengzichen
--


--  对策略事件的响应函数 ---------------------------------------------------------------

local GameApi = GameApi
local Format = string.format


PolicyEventHandler = {}
ParamRes = {}

local EVENT_TYPE_PLAY_SFX = 1		-- 播放一个2D音效
local EVENT_TYPE_PLAY_CG  = 2		-- 播放一段CG动画
local EVENT_TYPE_PLAY_GFX = 3		-- 播放一个屏幕中心2D光效
local EVENT_TYPE_GangMessage = 4	-- 提示获得了多少点军团贡献度

-- param1, param2均为number
function PolicyEventHandler:OnPolicyEvent(param1, param2)
    if param1 == EVENT_TYPE_PLAY_SFX then
        GameApi.Play2DAutoSound(ParamRes.SfxID2File[param2])
    elseif param1 == EVENT_TYPE_PLAY_CG then
        GameApi.PlayCameraPath(ParamRes.CGID2File[param2])
    elseif param1 == EVENT_TYPE_PLAY_GFX then
        GameApi.Play2DAutoScreenGFX(ParamRes.GfxID2File[param2], 0.5, 0.5)
	elseif param1 == EVENT_TYPE_GangMessage then
		local prop = GameApi.GetPlayerFullProp(0)
		if prop.gang_id > 0 then
			GameApi.AddChatMessage(GP_CHAT_FACTION,Format("增加了竞技军团贡献度%d点",param2))
		end
    end
end

--param是NPC的ID
function PolicyEventHandler:PlayNPCSound(param)
    math.randomseed(os.time())
    local len = table.getn(NPC_Sfx_MapTable[param])
    if len > 0 then
		--lua的在随机时有问题，第一个随机出来的数总是一样的，但第二个就是对的
		--所以额外加这一句
        math.random(1,len)
    	local id = NPC_Sfx_MapTable[param][math.random(1,len)]
    	GameApi.Play2DAutoSound(ParamRes.SfxID2File[id])
    end
end

ParamRes.SfxID2File =
{
	[1] = "sfx\\动画语音\\甘宁传\\龙夺.wav",
	[2] = "sfx\\动画语音\\甘宁传\\眩晕喝.wav",
	[3] = "sfx\\动画语音\\甘宁传\\踏浪.wav",
	[4] = "sfx\\动画语音\\甘宁传\\破金之刃.wav",
	[5] = "sfx\\动画语音\\甘宁传\\看我分身.wav",
	[6] = "sfx\\动画语音\\甘宁传\\不把财宝给我抢回来别活着回来见我.wav",
	[7] = "sfx\\动画语音\\甘宁传\\还是败给你们了我锦帆贼甘拜下风.wav",
	[8] = "sfx\\动画语音\\甘宁传\\江河之蛟.wav",
	[9] = "sfx\\动画语音\\甘宁传\\竟敢踢翻我的酒坛.wav",
	[10] = "sfx\\动画语音\\甘宁传\\来人把他们的船给炸了.wav",
	[11] = "sfx\\动画语音\\甘宁传\\龙王出来帮我消灭他们.wav",
	[12] = "sfx\\动画语音\\甘宁传\\谁敢打我财宝主意.wav",
	[13] = "sfx\\动画语音\\甘宁传\\虽然我倒下了锦帆贼的行动不会停止.wav",
	[14] = "sfx\\动画语音\\甘宁传\\我的力量源源不绝.wav",
	[15] = "sfx\\动画语音\\甘宁传\\我先退下了再次遇见你们不会输.wav",
	[16] = "sfx\\动画语音\\甘宁传\\兄弟们上把我财宝抢回来.wav",
	[17] = "sfx\\动画语音\\甘宁传\\顺我者猖.wav",
	[18] = "sfx\\动画语音\\甘宁传\\擒龙断.wav",
	[19] = "sfx\\动画语音\\敲墙声.wav",
	[20] = "sfx\\动画语音\\惊叹1.wav",
	[21] = "sfx\\动画语音\\惊叹2.wav",
	[22] = "sfx\\动画语音\\惊叹2.wav",
	[23] = "sfx\\动画语音\\语音文件\\NPC\\男\\常规13-天.wav",
	[24] = "sfx\\动画语音\\语音文件\\NPC\\女\\常规37-栩.wav",
	[25] = "sfx\\动画语音\\语音文件\\NPC\\男\\常规34-崟.wav",
	[26] = "sfx\\动画语音\\语音文件\\NPC\\女\\常规19-末.wav",
	[27] = "sfx\\动画语音\\语音文件\\NPC\\男\\常规29-崟.wav",
	[28] = "sfx\\动画语音\\语音文件\\NPC\\男\\常规23-ZC.wav",
	[29] = "sfx\\动画语音\\语音文件\\NPC\\男\\常规31-骁.wav",
	[30] = "sfx\\动画语音\\语音文件\\NPC\\男\\常规17-崟.wav",
	[31] = "sfx\\动画语音\\语音文件\\NPC\\男\\常规32-崟.wav",
	[32] = "sfx\\动画语音\\语音文件\\NPC\\男\\常规11-天.wav",
	[33] = "sfx\\动画语音\\语音文件\\NPC\\男\\常规18-崟.wav",
	[34] = "sfx\\动画语音\\语音文件\\NPC\\男\\常规33-鑫.wav",
	[35] = "sfx\\动画语音\\语音文件\\NPC\\男\\常规41-天.wav",
	[36] = "sfx\\动画语音\\语音文件\\NPC\\男\\常规7-ZC.wav",
	[37] = "sfx\\动画语音\\语音文件\\开篇-天.wav",
	[38]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规10-天.wav",
	[39]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规4-天.wav",
	[40]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规7-天.wav",
	[41]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规51-崟.wav",
	[42]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规7-天.wav",
	[43]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规52-骁.wav",
	[44]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规7-骁.wav",
	[45]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规6-天.wav",
	[46]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规11-ZC.wav",
	[47]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规14-ZC.wav",
	[48]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规26-骁.wav",
	[49]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规13-栩.wav",
	[50]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规5-栩.wav",
	[51]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规45-娜.wav",
	[52]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规47-骁.wav",
	[53]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规50-天.wav",
    [54]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规42-末.wav",
	[55]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规7-娜.wav",
	[56]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规15-ZC.wav",
	[57]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规55-栩.wav",
	[58]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规26-鑫.wav",
	[59]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规21-末.wav",
	[60]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规27-栩.wav",
	[61]  = "sfx\\动画语音\\语音文件\\孙尚香\\孙尚香1-末.wav",
	[62]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规55-娜.wav",



---
 [101]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规3-鑫.wav",
 [102]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规29-骁.wav",
 [103]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规12-天.wav",
 [104]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规35-崟.wav",
 [105]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规37-栩.wav",
 [106]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规34-鑫.wav",
 [107]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规13-天.wav",
 [108]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规4-鑫.wav",
 [109]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规48-骁.wav",
 [110]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规38-栩.wav",
 [111]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规17-末.wav",
 [112]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规30-箫.wav",
 [113]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规25-末.wav",
 [114]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规49-娜.wav",
 [115]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规43-天.wav",
 [116]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规54-鑫.wav",
 [117]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规53-栩.wav",
 [118]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规46-天.wav",
 [119]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规2-ZC.wav",
 [120]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规2-骁.wav",
 [121]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规1-鑫.wav",
 [122]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规55-末.wav",
 [123]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规15-鑫.wav",
 [124]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规24-天.wav",
 [125]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规30-崟.wav",
 [126]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规2-娜.wav",
 [127]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规13-ZC.wav",



 ---
 [201]  = "sfx\\动画语音\\语音文件\\安何生\\安何生1_天.wav",
 [202]  = "sfx\\动画语音\\语音文件\\张飞\\张飞4_骁.wav",
 [203]  = "sfx\\动画语音\\语音文件\\张飞\\张飞1_骁.wav",
 [204]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规1-娜.wav",
 [205]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规10-崟.wav",
 [206]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规39-骁.wav",
 [207]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规8-崟.wav",
 [208]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规5-娜.wav",
 [209]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规28-末.wav",
 [210]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规3-末.wav",
 [211]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规29-鑫.wav",
 [212]  = "sfx\\动画语音\\语音文件\\诸葛亮\\诸葛亮1_天.wav",
 [213]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规57-崟.wav",
 [214]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规32-娜.wav",
 [215]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规9-ZC.wav",
 [216]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规49-鑫.wav",
 [217]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规14-鑫.wav",
 [218]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规30-天.wav",
 [219]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规49-天.wav",
 [220]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规1-末.wav",
 [221]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规13-箫.wav",
 [222]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规33-箫.wav",
 [223]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规18-鑫.wav",
 [224]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规23-骁.wav",
 [225]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规53-天.wav",
 [226]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规6-骁.wav",
 [227]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规12-娜.wav",
 [228]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规25-鑫.wav",
 [229]  = "sfx\\动画语音\\语音文件\\典韦\\典韦1_天.wav",
 [230]  = "sfx\\动画语音\\语音文件\\太史慈\\太史慈1_骁.wav",
 [231]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规1-天.wav",
 [232]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规6-末.wav",
 [233]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规56-ZC.wav",
 [234]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规28-鑫.wav",
 [235]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规44-崟.wav",
 [236]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规22-末.wav",
 [237]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规23-天.wav",
 [238]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规14-骁.wav",
 [239]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规27-骁.wav",
 [240]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规27-鑫.wav",
 [241]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规27-天.wav",
 [242]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规25-天.wav",
 [243]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规13-末.wav",
 [244]  = "sfx\\动画语音\\语音文件\\甘宁\\甘宁1_天.wav",
 [245]  = "sfx\\动画语音\\语音文件\\马超\\马超2_天.wav",
 [246]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规23-末.wav",
 [247]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规58-娜.wav",
 [248]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规42-骁.wav",
 [249]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规2-鑫.wav",
 [250]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规13-鑫.wav",
 [251]  = "sfx\\动画语音\\语音文件\\徐晃\\徐晃1_骁.wav",
 [252]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规39-天.wav",
 [253]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规26-娜.wav",
 [254]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规21-ZC.wav",
 [255]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规39-鑫.wav",
 [256]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规10-末.wav",
 [257]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规7-末.wav",
 [258]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规21-天.wav",
 [259]  = "sfx\\动画语音\\语音文件\\NPC\\女\\常规16-娜.wav",
 [260]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规31-天.wav",
 [261]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规33-天.wav",
 [262]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规13-骁.wav",
 [263]  = "sfx\\动画语音\\语音文件\\孙尚香\\孙尚香2_箫.wav",
 [264]  = "sfx\\动画语音\\语音文件\\吕布\\吕布4_骁.wav",
 [265]  = "sfx\\动画语音\\语音文件\\NPC\\男\\常规16-崟.wav",
 [266]  = "sfx\\动画语音\\语音文件\\周瑜\\周瑜1_天.wav",
 [267]  = "sfx\\动画语音\\语音文件\\周瑜\\周瑜2_天.wav",
 [268]  = "sfx\\动画语音\\语音文件\\周瑜\\周瑜3_天.wav",
 [269]  = "sfx\\动画语音\\语音文件\\吕蒙\\吕蒙1_骁.wav",
 [270]  = "sfx\\动画语音\\语音文件\\甘宁\\甘宁2_天.wav",
 [271]  = "sfx\\动画语音\\语音文件\\刘备\\刘备2_骁.wav",
 [272]  = "sfx\\动画语音\\语音文件\\赵云\\赵云2_天.wav",
 [273]  = "sfx\\动画语音\\语音文件\\赵云\\赵云3_天.wav",


 ---
 [301] = "sfx\\动画语音\\七星阵\\马岱低难.wav",
 [302] = "sfx\\动画语音\\七星阵\\马岱高难.wav",
 [303] = "sfx\\动画语音\\七星阵\\马岱开场白1.wav",
 [304] = "sfx\\动画语音\\七星阵\\马岱开场白2.wav",
 [305] = "sfx\\动画语音\\七星阵\\姜维低难度.wav",
 [306] = "sfx\\动画语音\\七星阵\\姜维低高度.wav",
 [307] = "sfx\\动画语音\\七星阵\\姜维开场白.wav",
 [308] = "sfx\\动画语音\\七星阵\\姜维军旗阵护体.wav",
 [309] = "sfx\\动画语音\\七星阵\\魏延低难.wav",
 [310] = "sfx\\动画语音\\七星阵\\魏延高难.wav",
 [311] = "sfx\\动画语音\\七星阵\\魏延开场白.wav",
 [312] = "sfx\\动画语音\\七星阵\\魏延放大招.wav",
 [313] = "sfx\\动画语音\\七星阵\\魏延狂暴.wav",
 [314] = "sfx\\动画语音\\七星阵\\诸葛亮幻像开场白.wav",
 [315] = "sfx\\动画语音\\七星阵\\诸葛亮幻像结束.wav",
 [316] = "sfx\\动画语音\\七星阵\\诸葛亮开场.wav",
 [317] = "sfx\\动画语音\\七星阵\\诸葛亮七星灯阵.wav",
 [318] = "sfx\\动画语音\\七星阵\\诸葛亮草木皆兵.wav",
 [319] = "sfx\\动画语音\\七星阵\\诸葛亮结束.wav",
 [320] = "sfx\\动画语音\\七星阵\\诸葛亮大世界指引1.wav",
 [321] = "sfx\\动画语音\\七星阵\\诸葛亮大世界指引2.wav",
 [322] = "sfx\\动画语音\\七星阵\\神奇商人.wav",
 [323] = "sfx\\动画语音\\七星阵\\马肖.wav",
 [324] = "sfx\\动画语音\\七星阵\\裕仁.wav",
 [325] = "sfx\\动画语音\\七星阵\\诸葛亮.wav",

}

ParamRes.GfxID2File =
{
	-- [param2的值] = "对应2D光效文件的路径"
	-- 光效会在播完后自动释放，不要配置“无限循环”的光效
	--[1] = "程序联入\\回城界面效果.gfx",
}

ParamRes.CGID2File =
{
	-- [param2的值] = 动画ID
	-- [1] = 91654,
	[1] = 9254, -- 甘宁传难度一
	[2] = 9261, -- 甘宁传入场
	[3] = 9264, -- 甘宁传难度五
	[4] = 9268, -- 甘宁传难度四
	[5] = 9270, -- 甘宁传难度二
	[6] = 9271, -- 甘宁传难度三
	[7] = 9317, -- 测试路径
	[8] = 9458, -- 雪域魔王城动画
	[9] = 9475, -- 留芳村动画
	[10] = 9463, -- 楼兰城动画
	[11] = 9496, -- 开篇动画
	[12] = 9500, -- 任务“逃亡”动画
	[13] = 9568, -- 活动宣传长安地图
	[14] = 9505, -- 黄巾之乱开场动画
	[15] = 9522, -- 西凉缭乱开场动画
	[16] = 9556, -- 南中争霸战开场动画
	[17] = 9565, -- 蒋干盗书开场动画
	[18] = 9566, -- 河北动画
	[19] = 9570, -- 西凉动画
	[20] = 9581, -- 巴蜀动画
	[21] = 9584, -- 南蛮动画
	[22] = 9586, -- 江南动画
	[23] = 9587, -- 荆襄动画
	[24] = 9601, -- 官渡动画1
	[25] = 9602, -- 官渡动画2
	[26] = 9610, -- 蒋干盗书开始
	[27] = 9619; -- 黄巾之乱中途指引
	[28] = 9732; -- 黄忠传关羽战黄忠
	[29] = 9912; -- 五周年活动动画
	[30] = 10390; -- 七星阵01区低难动画
	[31] = 10386; -- 七星阵01区高难动画
	[32] = 10393; -- 七星阵01区BOSS动画
	[33] = 10396; -- 七星阵02区水域动画
	[34] = 10399; -- 七星阵02区低难动画
	[35] = 10401; -- 七星阵02区高难动画
	[36] = 10218; -- 七星阵02区BOSS动画
	[37] = 10404; -- 七星阵03区高难动画
	[38] = 10403; -- 七星阵03区低难动画
	[39] = 10407; -- 七星阵03区BOSS动画
	[40] = 10411; -- 七星阵04区低难动画
	[41] = 10412; -- 七星阵04区高难动画
	[42] = 10427; -- 七星阵04区BOSS动画
	[43] = 10416; -- 七星阵05区BOSS动画
}

NPC_Sfx_MapTable = {}
-- NPC_id, Sound_id 对应于 ParamRes.SfxID2File中的ID号
NPC_Sfx_MapTable[1913] = { 23}
NPC_Sfx_MapTable[1906] = { 24}
NPC_Sfx_MapTable[3354] = { 25}
NPC_Sfx_MapTable[1907] = { 26}
NPC_Sfx_MapTable[1909] = { 27}
NPC_Sfx_MapTable[49145] = { 28}
NPC_Sfx_MapTable[1932] = { 29}
NPC_Sfx_MapTable[19589] = { 30}
NPC_Sfx_MapTable[1918] = { 31}
NPC_Sfx_MapTable[23030] = { 32}
NPC_Sfx_MapTable[77878] = { 33}
NPC_Sfx_MapTable[76262] = { 34}
NPC_Sfx_MapTable[73042] = { 35}
NPC_Sfx_MapTable[27047] = { 36}
NPC_Sfx_MapTable[9013] = { 48}
NPC_Sfx_MapTable[30866] = { 38}
NPC_Sfx_MapTable[66208] = { 39}
NPC_Sfx_MapTable[78624] = { 40}
NPC_Sfx_MapTable[41907] = { 41}
NPC_Sfx_MapTable[29070] = { 42}
NPC_Sfx_MapTable[29069] = { 42}
NPC_Sfx_MapTable[4141] = { 43}
NPC_Sfx_MapTable[4138] = { 43}
NPC_Sfx_MapTable[4135] = { 43}
NPC_Sfx_MapTable[3355] = { 44}
NPC_Sfx_MapTable[6243] = { 45}
NPC_Sfx_MapTable[69294] = { 46}
NPC_Sfx_MapTable[69417] = { 47}
NPC_Sfx_MapTable[45212] = { 48}
NPC_Sfx_MapTable[66483] = { 49}
NPC_Sfx_MapTable[72851] = { 50}
NPC_Sfx_MapTable[12820] = { 51}
NPC_Sfx_MapTable[26894] = { 52}
NPC_Sfx_MapTable[79111] = { 43}
NPC_Sfx_MapTable[79110] = { 50}
NPC_Sfx_MapTable[21944] = { 50}
NPC_Sfx_MapTable[21945] = { 235}
NPC_Sfx_MapTable[21947] = { 110}
NPC_Sfx_MapTable[21951] = { 53}
NPC_Sfx_MapTable[22645] = { 54}
NPC_Sfx_MapTable[20032] = { 107}
NPC_Sfx_MapTable[22137] = { 55}
NPC_Sfx_MapTable[21943] = { 56}
NPC_Sfx_MapTable[22138] = { 226}
NPC_Sfx_MapTable[21954] = { 57}
NPC_Sfx_MapTable[21994] = { 237}
NPC_Sfx_MapTable[20208] = { 58}
NPC_Sfx_MapTable[20214] = { 59}
NPC_Sfx_MapTable[20210] = { 60}
NPC_Sfx_MapTable[11918] = { 61}
NPC_Sfx_MapTable[75460] = { 62}












--
NPC_Sfx_MapTable[64878] = {101}
NPC_Sfx_MapTable[49366] = {102}
NPC_Sfx_MapTable[49168] = {103}
NPC_Sfx_MapTable[65229] = {104}
NPC_Sfx_MapTable[65240] = {105}
NPC_Sfx_MapTable[64469] = {106}
NPC_Sfx_MapTable[3382] = {107}
NPC_Sfx_MapTable[66541] = {108}
NPC_Sfx_MapTable[65230] = {109}
NPC_Sfx_MapTable[65232] = {110}
NPC_Sfx_MapTable[64470] = {104}
NPC_Sfx_MapTable[65228] = {111}
NPC_Sfx_MapTable[65242] = {112}
NPC_Sfx_MapTable[58520] = {113}
NPC_Sfx_MapTable[58522] = {114}
NPC_Sfx_MapTable[58510] = {115}
NPC_Sfx_MapTable[58411] = {116}
NPC_Sfx_MapTable[51461] = {117}
NPC_Sfx_MapTable[68389] = {118}
NPC_Sfx_MapTable[49202] = {109}
NPC_Sfx_MapTable[49203] = {120}
NPC_Sfx_MapTable[49155] = {121}
NPC_Sfx_MapTable[49162] = {107}
NPC_Sfx_MapTable[49157] = {122}
NPC_Sfx_MapTable[49160] = {123}
NPC_Sfx_MapTable[65244] = {124}
NPC_Sfx_MapTable[49158] = {125}
NPC_Sfx_MapTable[49159] = {126}

--
NPC_Sfx_MapTable[77891] = {203}
NPC_Sfx_MapTable[1650] = {204}
NPC_Sfx_MapTable[26260] = {126}
NPC_Sfx_MapTable[3346] = {124}
NPC_Sfx_MapTable[1648] = {48}
NPC_Sfx_MapTable[3347] = {23}
NPC_Sfx_MapTable[66353] = {205}
NPC_Sfx_MapTable[1652] = {28}
NPC_Sfx_MapTable[1656] = {206}
NPC_Sfx_MapTable[1651] = {207}
NPC_Sfx_MapTable[1654] = {208}
NPC_Sfx_MapTable[1653] = {209}
NPC_Sfx_MapTable[3258] = {210}
NPC_Sfx_MapTable[15995] = {211}
NPC_Sfx_MapTable[3261] = {124}
NPC_Sfx_MapTable[3252] = {212}
NPC_Sfx_MapTable[77829] = {103}
NPC_Sfx_MapTable[79342] = {211}
NPC_Sfx_MapTable[20431] = {52}
NPC_Sfx_MapTable[20434] = {29}
NPC_Sfx_MapTable[20430] = {118}
NPC_Sfx_MapTable[3307] = {48}
NPC_Sfx_MapTable[3264] = {121}
NPC_Sfx_MapTable[1923] = {213}
NPC_Sfx_MapTable[8097] = {214}
NPC_Sfx_MapTable[3267] = {215}
NPC_Sfx_MapTable[3308] = {38}
NPC_Sfx_MapTable[1875] = {102}
NPC_Sfx_MapTable[1921] = {216}
NPC_Sfx_MapTable[1876] = {217}
NPC_Sfx_MapTable[6687] = {218}
NPC_Sfx_MapTable[3348] = {219}
NPC_Sfx_MapTable[25440] = {219}
NPC_Sfx_MapTable[1735] = {220}
NPC_Sfx_MapTable[1736] = {221}
NPC_Sfx_MapTable[1919] = {222}
NPC_Sfx_MapTable[1917] = {223}
NPC_Sfx_MapTable[4985] = {218}
NPC_Sfx_MapTable[5399] = {218}
NPC_Sfx_MapTable[3996] = {48}
NPC_Sfx_MapTable[1661] = {224}
NPC_Sfx_MapTable[4992] = {106}
NPC_Sfx_MapTable[1882] = {219}
NPC_Sfx_MapTable[1660] = {225}
NPC_Sfx_MapTable[4975] = {118}
NPC_Sfx_MapTable[75477] = {116}
NPC_Sfx_MapTable[1657] = {226}
NPC_Sfx_MapTable[72305] = {227}
NPC_Sfx_MapTable[1929] = {228}
NPC_Sfx_MapTable[1658] = {229}
NPC_Sfx_MapTable[2484] = {230}
NPC_Sfx_MapTable[3270] = {231}
NPC_Sfx_MapTable[33361] = {232}
NPC_Sfx_MapTable[3385] = {233}
NPC_Sfx_MapTable[72302] = {234}
NPC_Sfx_MapTable[1662] = {235}
NPC_Sfx_MapTable[1655] = {236}
NPC_Sfx_MapTable[3165] = {237}
NPC_Sfx_MapTable[3288] = {39}
NPC_Sfx_MapTable[3285] = {231}
NPC_Sfx_MapTable[3152] = {217}
NPC_Sfx_MapTable[1877] = {238}
NPC_Sfx_MapTable[1881] = {102}
NPC_Sfx_MapTable[3282] = {239}
NPC_Sfx_MapTable[3279] = {240}
NPC_Sfx_MapTable[3276] = {241}
NPC_Sfx_MapTable[2676] = {231}--8.3
NPC_Sfx_MapTable[3921] = {242}
NPC_Sfx_MapTable[7416] = {211}
NPC_Sfx_MapTable[4977] = {218}
NPC_Sfx_MapTable[6723] = {226}
NPC_Sfx_MapTable[33368] = {207}
NPC_Sfx_MapTable[5436] = {34}
NPC_Sfx_MapTable[2677] = {103}
NPC_Sfx_MapTable[2678] = {227}
NPC_Sfx_MapTable[2679] = {243}
NPC_Sfx_MapTable[3927] = {244}
NPC_Sfx_MapTable[3924] = {38}
NPC_Sfx_MapTable[9507] = {29}
NPC_Sfx_MapTable[2680] = {245}
NPC_Sfx_MapTable[1891] = {108}
NPC_Sfx_MapTable[3352] = {124}
NPC_Sfx_MapTable[1925] = {228}
NPC_Sfx_MapTable[2687] = {240}
NPC_Sfx_MapTable[2685] = {241}
NPC_Sfx_MapTable[1887] = {31}
NPC_Sfx_MapTable[2691] = {246}
NPC_Sfx_MapTable[2797] = {222}
NPC_Sfx_MapTable[2683] = {247}
NPC_Sfx_MapTable[2689] = {234}
NPC_Sfx_MapTable[2803] = {231}
NPC_Sfx_MapTable[2485] = {23}
NPC_Sfx_MapTable[2681] = {43}
NPC_Sfx_MapTable[1889] = {110}
NPC_Sfx_MapTable[2699] = {57}
NPC_Sfx_MapTable[2784] = {248}
NPC_Sfx_MapTable[2690] = {234}
NPC_Sfx_MapTable[2696] = {249}
NPC_Sfx_MapTable[1885] = {108}
NPC_Sfx_MapTable[2700] = {122}
NPC_Sfx_MapTable[2701] = {250}
NPC_Sfx_MapTable[4117] = {238}
NPC_Sfx_MapTable[2694] = {38}
NPC_Sfx_MapTable[2697] = {40}
NPC_Sfx_MapTable[2704] = {103}
NPC_Sfx_MapTable[77944] = {251}
NPC_Sfx_MapTable[2203] = {252}--8.4
NPC_Sfx_MapTable[5437] = {217}
NPC_Sfx_MapTable[2460] = {253}
NPC_Sfx_MapTable[2202] = {205}
NPC_Sfx_MapTable[2204] = {206}
NPC_Sfx_MapTable[4814] = {238}
NPC_Sfx_MapTable[34130] = {254}
NPC_Sfx_MapTable[2461] = {23}
NPC_Sfx_MapTable[6724] = {226}
NPC_Sfx_MapTable[33369] = {207}
NPC_Sfx_MapTable[2201] = {38}
NPC_Sfx_MapTable[2220] = {250}
NPC_Sfx_MapTable[2211] = {116}
NPC_Sfx_MapTable[2213] = {205}
NPC_Sfx_MapTable[2209] = {29}
NPC_Sfx_MapTable[2212] = {250}
NPC_Sfx_MapTable[7417] = {108}
NPC_Sfx_MapTable[2207] = {231}
NPC_Sfx_MapTable[2208] = {104}
NPC_Sfx_MapTable[2206] = {255}
NPC_Sfx_MapTable[2210] = {256}
NPC_Sfx_MapTable[2215] = {227}
NPC_Sfx_MapTable[2230] = {210}--8.6
NPC_Sfx_MapTable[23355] = {231}
NPC_Sfx_MapTable[2227] = {237}
NPC_Sfx_MapTable[2228] = {58}
NPC_Sfx_MapTable[2229] = {248}
NPC_Sfx_MapTable[2219] = {38}
NPC_Sfx_MapTable[2223] = {250}
NPC_Sfx_MapTable[1895] = {102}
NPC_Sfx_MapTable[2221] = {25}
NPC_Sfx_MapTable[1896] = {47}
NPC_Sfx_MapTable[2226] = {257}
NPC_Sfx_MapTable[2225] = {116}
NPC_Sfx_MapTable[2224] = {252}
NPC_Sfx_MapTable[2232] = {231}
NPC_Sfx_MapTable[2234] = {38}
NPC_Sfx_MapTable[2242] = {46}
NPC_Sfx_MapTable[32841] = {258}
NPC_Sfx_MapTable[2235] = {248}
NPC_Sfx_MapTable[33363] = {259}
NPC_Sfx_MapTable[5082] = {207}
NPC_Sfx_MapTable[2487] = {230}
NPC_Sfx_MapTable[2488] = {231}
NPC_Sfx_MapTable[2238] = {119}
NPC_Sfx_MapTable[2231] = {260}
NPC_Sfx_MapTable[2244] = {237}
NPC_Sfx_MapTable[2233] = {250}
NPC_Sfx_MapTable[2236] = {122}
NPC_Sfx_MapTable[1900] = {238}
NPC_Sfx_MapTable[1901] = {211}
NPC_Sfx_MapTable[2239] = {120}
NPC_Sfx_MapTable[2240] = {244}
NPC_Sfx_MapTable[2440] = {103}
NPC_Sfx_MapTable[6442] = {32}
NPC_Sfx_MapTable[6444] = {261}
NPC_Sfx_MapTable[3405] = {39}
NPC_Sfx_MapTable[3406] = {106}
NPC_Sfx_MapTable[7340] = {38}
NPC_Sfx_MapTable[6709] = {226}
NPC_Sfx_MapTable[33370] = {207}
NPC_Sfx_MapTable[7226] = {44}
NPC_Sfx_MapTable[33364] = {259}
NPC_Sfx_MapTable[6708] = {207}
NPC_Sfx_MapTable[12450] = {28}--8.8
NPC_Sfx_MapTable[7221] = {204}
NPC_Sfx_MapTable[7222] = {220}
NPC_Sfx_MapTable[7339] = {23}
NPC_Sfx_MapTable[6439] = {262}
NPC_Sfx_MapTable[2703] = {227}
NPC_Sfx_MapTable[6434] = {263}
NPC_Sfx_MapTable[6433] = {264}
NPC_Sfx_MapTable[6436] = {113}
NPC_Sfx_MapTable[6440] = {247}
NPC_Sfx_MapTable[7223] = {217}
NPC_Sfx_MapTable[32851] = {258}
NPC_Sfx_MapTable[23357] = {44}
NPC_Sfx_MapTable[6431] = {262}
NPC_Sfx_MapTable[33370] = {45}
NPC_Sfx_MapTable[6709] = {265}
NPC_Sfx_MapTable[6423] = {228}
NPC_Sfx_MapTable[5438] = {222}
NPC_Sfx_MapTable[6430] = {32}
NPC_Sfx_MapTable[7418] = {234}
NPC_Sfx_MapTable[6422] = {58}
NPC_Sfx_MapTable[6429] = {204}
NPC_Sfx_MapTable[6421] = {120}
NPC_Sfx_MapTable[6432] = {221}
NPC_Sfx_MapTable[6428] = {103}
NPC_Sfx_MapTable[6425] = {249}
NPC_Sfx_MapTable[6426] = {247}
NPC_Sfx_MapTable[7115] = {121}
NPC_Sfx_MapTable[13511] = {39}
NPC_Sfx_MapTable[7119] = {231}
NPC_Sfx_MapTable[7118] = {32}
NPC_Sfx_MapTable[7120] = {224}
NPC_Sfx_MapTable[7129] = {119}
NPC_Sfx_MapTable[7511] = {228}
NPC_Sfx_MapTable[7132] = {58}
NPC_Sfx_MapTable[7138] = {48}
NPC_Sfx_MapTable[7134] = {55}
NPC_Sfx_MapTable[7121] = {110}
NPC_Sfx_MapTable[7122] = {56}
NPC_Sfx_MapTable[7124] = {230}
NPC_Sfx_MapTable[7478] = {119}
NPC_Sfx_MapTable[7125] = {48}
NPC_Sfx_MapTable[7469] = {103}
NPC_Sfx_MapTable[7128] = {268}
NPC_Sfx_MapTable[7126] = {269}
NPC_Sfx_MapTable[7131] = {215}
NPC_Sfx_MapTable[7137] = {250}
NPC_Sfx_MapTable[7133] = {270}
NPC_Sfx_MapTable[3163] = {40}
NPC_Sfx_MapTable[6803] = {120}
NPC_Sfx_MapTable[6802] = {205}
NPC_Sfx_MapTable[6810] = {250}
NPC_Sfx_MapTable[6811] = {212}
NPC_Sfx_MapTable[6822] = {271}
NPC_Sfx_MapTable[6820] = {272,273}
NPC_Sfx_MapTable[6815] = {121}
NPC_Sfx_MapTable[6813] = {125}
NPC_Sfx_MapTable[6812] = {120}
NPC_Sfx_MapTable[6814] = {103}
NPC_Sfx_MapTable[6819] = {236}
NPC_Sfx_MapTable[6816] = {51}
NPC_Sfx_MapTable[6833] = {224}
NPC_Sfx_MapTable[6834] = {119}
NPC_Sfx_MapTable[6835] = {120}
NPC_Sfx_MapTable[6836] = {38}
NPC_Sfx_MapTable[7239] = {121}
NPC_Sfx_MapTable[6837] = {262}
NPC_Sfx_MapTable[6830] = {231}
NPC_Sfx_MapTable[6829] = {231}
NPC_Sfx_MapTable[6825] = {228}
NPC_Sfx_MapTable[6826] = {120}


--
NPC_Sfx_MapTable[79372] = {121}
NPC_Sfx_MapTable[79373] = {107}
NPC_Sfx_MapTable[79374] = {40}
NPC_Sfx_MapTable[81784] = {325}--草船借箭
NPC_Sfx_MapTable[81847] = {322}
NPC_Sfx_MapTable[82817] = {324}


