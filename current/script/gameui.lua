local UIManTemplate = UIManTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local Format = string.format

local invite_leader_id
local request_leader_id
local click_player_id
local invite_player_id
local request_player_id
local join_member_id
local leave_member_id

local teaminfo, selfid

GameUI = UIManTemplate:new({this = "GameUI"});

function GameUI:Init()
	self:RegisterEvent(LUA_EVENT_LOADING_SETWORLD, self.OnEventLoadingSetWorld);
	self:RegisterEvent(LUA_EVENT_LOADING_SETPROGRESS, self.OnEventLoadingSetProgress);

	self:RegisterEvent(LUA_EVENT_TEAM_INVITE, self.OnEventTeamInvite);
	self:RegisterEvent(LUA_EVENT_TEAM_REJECTINVITE, self.OnEventTeamRejectInvite);
	self:RegisterEvent(LUA_EVENT_TEAM_SELFJOIN, self.OnEventSelfJoin);
	self:RegisterEvent(LUA_EVENT_TEAM_SELFLEAVE, self.OnEventSelfLeave);
	self:RegisterEvent(LUA_EVENT_TEAM_REQUEST, self.OnEventTeamRequest);
	self:RegisterEvent(LUA_EVENT_TEAM_REJECTREQUEST, self.OnEventTeamRejectRequest);
	self:RegisterEvent(LUA_EVENT_TEAM_MEMBERJOIN, self.OnEventTeamMemberJoin);
	self:RegisterEvent(LUA_EVENT_TEAM_MEMBERLEAVE, self.OnEventTeamMemberLeave);
	self:RegisterEvent(LUA_EVENT_TEAM_MEMBERLOGIN, self.OnEventTeamMemberLogin);
	self:RegisterEvent(LUA_EVENT_TEAM_MEMBERLOGOUT, self.OnEventTeamMemberLogout);
	self:RegisterEvent(LUA_EVENT_TEAM_CHANGELEADER, self.OnEventTeamChangeLeader);
	self:RegisterEvent(LUA_EVENT_TEAM_CHANGELOOTRULE, self.OnEventTeamChangeLootRule);

	self:RegisterEvent(LUA_EVENT_RBTNCLICK_PLAYER, self.OnEventRBtnClickPlayer);
	self:RegisterEvent(LUA_EVENT_LOOT_OPEN, self.OnEventLootOpen);
	self:RegisterEvent(LUA_EVENT_OPERATION_CANCEL, self.OnEventOperationCancel);

  	self:AddMessageboxCB("MsgBox_TeamInvite", self.OnMsgBoxTeamInvite);
  	self:AddMessageboxCB("MsgBox_TeamRequest", self.OnMsgBoxTeamRequest);
end

function GameUI:Release()

end

function GameUI:Tick()

	--获取玩家当前队伍状态,是否为队长及是否在队伍中
	teaminfo = GameApi.GetTeamInfo();
	selfid = GameApi.GetSelfID();
	if teaminfo.leader_id ~= selfid then
		--自己不是队长（或没有队伍）
		local isleader = false
	else
		--自己是队长
		local isleader = true
	end
	if teaminfo.leader_id == 0 then
		--没有队伍（队伍被解散）
		local isdiscard = true
	else
		--队伍没被解散
		local isdiscard = false
	end

	--等级Max时/开世界地图时不显示经验条的闪烁特效
	local ret = GameApi.GetPlayerBasicProp(0)
	if ret.level >= Max_Level or DlgApi.IsDialogShow("Win_WorldMap") or DlgApi.IsDialogShow("Win_WorldMap2") then
	    DlgApi.ShowItem("Win_ExpBar", "gfx", false)
	end

end

function GameUI:ProcessEvent()

end

function GameUI:OnEventLoadingSetWorld(event, id, mapfile)
    math.randomseed(os.time())
	math.random()
	local ran1 = math.random(table.getn(LDG_TIP))
	local ran2 = math.random(LDG_PicNum)
	local tip = Format(LDG_TITLE, LDG_TIP[ran1])
	DlgApi.SetItemText("Win_Loading", "Txt_Tip", tip);
	if id == 0 then
		DlgApi.SetImageFile("Win_Loading", "Img_Loading", Format("MapLoading\\a%d.dds", ran2), 1);
	else
		DlgApi.SetImageFile("Win_Loading", "Img_Loading", Format("MapLoading\\%s.dds", mapfile), 1);
	end
end

function GameUI:OnEventLoadingSetProgress(event, progress)
	DlgApi.SetProgress("Win_Loading", "Prgs_Loading", progress);
end

--收到组队邀请时
--1.弹出消息框
function GameUI:OnEventTeamInvite(event, leader_id, leader_name)
    invite_leader_id = leader_id;
	DlgApi.PopupMessageBox(MB_YESNO, "MsgBox_TeamInvite", Format(TEXT_TEAM_INVITE, leader_name));
end

--组队邀请被拒绝时
--1.聊天框中显示消息
function GameUI:OnEventTeamRejectInvite(event, player_id, player_name)
	invite_player_id = player_id;
	GameApi.AddChatMessage(GP_CHAT_MISC, Format(TEXT_TEAM_INVITE_REJECT, player_name));
end

--加入队伍时
--1.显示TeamMain及TeamMate窗口
--2.指定TeamMain及TeamMate窗口位置
--3.聊天框中显示消息
function GameUI:OnEventSelfJoin(event)
    GameApi.AddChatMessage(GP_CHAT_MISC, TEXT_TEAM_SELF_JOIN);
	DlgApi.ShowDialog("Win_TeamMain", true);
  	--DlgApi.SetDialogPosition("Win_TeamMain", 0, 0, "", AUIDIALOG_ALIGN_INSIDE, AUIDIALOG_ALIGN_LEFT, AUIDIALOG_ALIGN_INSIDE, AUIDIALOG_ALIGN_CENTER);
    --[[DlgApi.ShowDialog("Win_TeamMate1", true);
    DlgApi.SetDialogPosition("Win_TeamMate1", 0, 0, "Win_TeamMain", AUIDIALOG_ALIGN_OUTSIDE, AUIDIALOG_ALIGN_RIGHT, AUIDIALOG_ALIGN_INSIDE, AUIDIALOG_ALIGN_TOP);
    local tn = teaminfo.members;
    for k=2, tn do
		DlgApi.ShowDialog(Format("Win_TeamMate%d", k), true);
		DlgApi.SetDialogPosition(Format("Win_TeamMate%d", k), 0, 0, Format("Win_TeamMate%d", k-1), AUIDIALOG_ALIGN_INSIDE, AUIDIALOG_ALIGN_LEFT, AUIDIALOG_ALIGN_OUTSIDE, AUIDIALOG_ALIGN_BOTTOM);
	end]]
end

--离开队伍时
--1.关闭TeamMain及TeamMate窗口
--2.聊天框中显示消息
function GameUI:OnEventSelfLeave(event)
    GameApi.AddChatMessage(GP_CHAT_MISC, TEXT_TEAM_SELF_LEAVE);
    DlgApi.ShowDialog("Win_TeamMain", false);
    for i=1,9 do
		DlgApi.ShowDialog(Format("Win_TeamMate%d", i), false);
	end
end

--收到入队申请时
--1.弹出消息框
function GameUI:OnEventTeamRequest(event, player_id, player_name)
	request_player_id = player_id;
	DlgApi.PopupMessageBox(MB_YESNO, "MsgBox_TeamRequest", Format(TEXT_TEAM_REQUEST, player_name));
end

--入队申请被拒绝时
--1.聊天框中显示消息
function GameUI:OnEventTeamRejectRequest(event, leader_id, leader_name)
	request_leader_id = leader_id;
	GameApi.AddChatMessage(GP_CHAT_MISC, Format(TEXT_TEAM_REQUEST_REJECT, leader_name));
end

--有玩家加入队伍
--1.聊天框中显示消息
--2.增加一个TeamMate窗口
function GameUI:OnEventTeamMemberJoin(event, member_id, member_name)
	join_member_id = member_id;
	GameApi.AddChatMessage(GP_CHAT_MISC, Format(TEXT_TEAM_MEMBER_JOIN, member_name));
	DlgApi.ShowDialog(Format("Win_TeamMate%d", teaminfo.members), true);
end

--有玩家离开队伍
--1.如果队伍解散,聊天框中显示消息,关闭TeamMain及所有TeamMate窗口
--2.否则,聊天框中显示消息,减少一个TeamMate窗口
function GameUI:OnEventTeamMemberLeave(event, member_id, member_name)
	leave_member_id = member_id;
	if isdiscard then
    	DlgApi.ShowDialog("Win_TeamMain", false);
    	GameApi.AddChatMessage(GP_CHAT_MISC, Format(TEXT_TEAM_DISCARD, member_name));
    	for j=1,9 do
			DlgApi.ShowDialog(Format("Win_TeamMate%d", j), false);
		end
	else
    	GameApi.AddChatMessage(GP_CHAT_MISC, Format(TEXT_TEAM_MEMBER_LEAVE, member_name));
		DlgApi.ShowDialog(Format("Win_TeamMate%d", teaminfo.members + 1), false);
	end
end

--队友登入游戏
--1.聊天框中显示消息
function GameUI:OnEventTeamMemberLogin(event, member_id, member_name)
    GameApi.AddChatMessage(GP_CHAT_MISC, Format(TEXT_TEAM_MEMBER_LOGIN, member_name));
end

--队友登出游戏
--1.聊天框中显示消息
function GameUI:OnEventTeamMemberLogout(event, member_id, member_name)
    GameApi.AddChatMessage(GP_CHAT_MISC, Format(TEXT_TEAM_MEMBER_LOGOUT, member_name));
end

--队长改变
--1.聊天框中显示消息
function GameUI:OnEventTeamChangeLeader(event, leader_id, leader_name)
	GameApi.AddChatMessage(GP_CHAT_MISC, Format(TEXT_TEAM_CHANGE_LEADER, leader_name));
end

--分配规则改变
--1.聊天框中显示消息
function GameUI:OnEventTeamChangeLootRule(event, mainrule, subrule)
    if mainrule ~= 1 then
        GameApi.AddChatMessage(GP_CHAT_MISC, Format(TEXT_TEAM_CHANGELOOT_FREE, GNR_LOOTRULE_FREE));
    else
        local rolllevel = GNR_ROLLLEVEL_2;
        if subrule == 3 then
            rolllevel = GNR_ROLLLEVEL_3;
        else
        		if subrule == 4 then
            	rolllevel = GNR_ROLLLEVEL_4;
            end
        end
        GameApi.AddChatMessage(GP_CHAT_MISC, Format(TEXT_TEAM_CHANGELOOT_TEAM, GNR_LOOTRULE_TEAM, rolllevel));
    end
end

--目标头像上点右键
--1.弹出QuickAction窗口
function GameUI:OnEventRBtnClickPlayer(event, player_id)
  	click_player_id = player_id;
	local x, y = GameApi.GetCursorPos();
	DlgApi.PopupPlayerMenu(player_id, x, y);
--	DlgApi.ShowDialog("Win_QuickAction", true);
--	DlgApi.SetDialogPosition("Win_QuickAction", x, y);
end

--拾取LOOT
--1.弹出Loot窗口
function GameUI:OnEventLootOpen(event)
	DlgApi.ShowDialog("Win_Loot", true);
	local x, y = GameApi.GetCursorPos();
	DlgApi.SetDialogPosition("Win_Loot", x, y);
end

--关闭当前操作窗口
function GameUI:OnEventOperationCancel(event)
	DlgApi.ShowDialog("Win_Loot", false);
	DlgApi.ShowDialog("Win_Shop", false);
	DlgApi.ShowDialog("Win_Teach", false);
	DlgApi.ShowDialog("Win_NPC", false);
end

--组队邀请消息框
function GameUI:OnMsgBoxTeamInvite(name, bret)
	if bret then
		GameApi.TeamAcceptInvite(invite_leader_id);
	else
		GameApi.TeamRejectInvite(invite_leader_id);
	end
end

--入队申请消息框
function GameUI:OnMsgBoxTeamRequest(name, bret)
	if bret then
		GameApi.TeamAcceptRequest(request_player_id);
	else
		GameApi.TeamRejectRequest(request_player_id);
	end
end

--物品拿起放下音效
function GameUI:GetItemSound(bDown, idClass, idMainType, idSubType)
	local ICON_SOUND_PATH = {}
    ICON_SOUND_PATH[29] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[34] = {takeupsound = "SFX\\Interface\\宝石饰品拿起.wav", dropsound = "SFX\\Interface\\宝石饰品放下.wav"}
    ICON_SOUND_PATH[33] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[30] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[31] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[32] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[25] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[21] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[18] = {takeupsound = "SFX\\Interface\\卷轴拿起.wav", dropsound = "SFX\\Interface\\卷轴放下.wav"}
    ICON_SOUND_PATH[8] = {takeupsound = "SFX\\Interface\\矿石拿起.wav", dropsound = "SFX\\Interface\\矿石放下.wav"}
    ICON_SOUND_PATH[9] = {takeupsound = "SFX\\Interface\\木材拿起.wav", dropsound = "SFX\\Interface\\木材放下.wav"}
    ICON_SOUND_PATH[10] = {takeupsound = "SFX\\Interface\\宝石饰品拿起.wav", dropsound = "SFX\\Interface\\宝石饰品放下.wav"}
    ICON_SOUND_PATH[16] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[28] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[11] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[20] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[19] = {takeupsound = "SFX\\Interface\\卷轴拿起.wav", dropsound = "SFX\\Interface\\卷轴放下.wav"}
    ICON_SOUND_PATH[6] = {takeupsound = "SFX\\Interface\\卷轴拿起.wav", dropsound = "SFX\\Interface\\卷轴放下.wav"}
    ICON_SOUND_PATH[4] = {takeupsound = "SFX\\Interface\\卷轴拿起.wav", dropsound = "SFX\\Interface\\卷轴放下.wav"}
    ICON_SOUND_PATH[24] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[23] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[5] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[2] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[7] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[3] = {takeupsound = "SFX\\Interface\\药剂类拿起.wav", dropsound = "SFX\\Interface\\药剂类放下.wav"}
    ICON_SOUND_PATH[27] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[26] = {takeupsound = "SFX\\Interface\\卷轴拿起.wav", dropsound = "SFX\\Interface\\卷轴放下.wav"}
    ICON_SOUND_PATH[17] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_SOUND_PATH[22] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}

	local ICON_EQUIP_SOUND_PATH = {}
    ICON_EQUIP_SOUND_PATH[120] = {takeupsound = "SFX\\Interface\\铠甲拿起.wav", dropsound = "SFX\\Interface\\铠甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[123] = {takeupsound = "SFX\\Interface\\宝石饰品拿起.wav", dropsound = "SFX\\Interface\\宝石饰品放下.wav"}
    ICON_EQUIP_SOUND_PATH[121] = {takeupsound = "SFX\\Interface\\皮甲拿起.wav", dropsound = "SFX\\Interface\\皮甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[117] = {takeupsound = "SFX\\Interface\\布甲拿起.wav", dropsound = "SFX\\Interface\\布甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[118] = {takeupsound = "SFX\\Interface\\宝石饰品拿起.wav", dropsound = "SFX\\Interface\\宝石饰品放下.wav"}
    ICON_EQUIP_SOUND_PATH[119] = {takeupsound = "SFX\\Interface\\宝石饰品拿起.wav", dropsound = "SFX\\Interface\\宝石饰品放下.wav"}
    ICON_EQUIP_SOUND_PATH[3246] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_EQUIP_SOUND_PATH[3247] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_EQUIP_SOUND_PATH[105] = {takeupsound = "SFX\\Interface\\皮甲拿起.wav", dropsound = "SFX\\Interface\\皮甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[106] = {takeupsound = "SFX\\Interface\\铠甲拿起.wav", dropsound = "SFX\\Interface\\铠甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[107] = {takeupsound = "SFX\\Interface\\皮甲拿起.wav", dropsound = "SFX\\Interface\\皮甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[108] = {takeupsound = "SFX\\Interface\\皮甲拿起.wav", dropsound = "SFX\\Interface\\皮甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[109] = {takeupsound = "SFX\\Interface\\皮甲拿起.wav", dropsound = "SFX\\Interface\\皮甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[110] = {takeupsound = "SFX\\Interface\\皮甲拿起.wav", dropsound = "SFX\\Interface\\皮甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[111] = {takeupsound = "SFX\\Interface\\皮甲拿起.wav", dropsound = "SFX\\Interface\\皮甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[112] = {takeupsound = "SFX\\Interface\\皮甲拿起.wav", dropsound = "SFX\\Interface\\皮甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[113] = {takeupsound = "SFX\\Interface\\皮甲拿起.wav", dropsound = "SFX\\Interface\\皮甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[114] = {takeupsound = "SFX\\Interface\\皮甲拿起.wav", dropsound = "SFX\\Interface\\皮甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[115] = {takeupsound = "SFX\\Interface\\皮甲拿起.wav", dropsound = "SFX\\Interface\\皮甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[116] = {takeupsound = "SFX\\Interface\\皮甲拿起.wav", dropsound = "SFX\\Interface\\皮甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[124] = {takeupsound = "SFX\\Interface\\布甲拿起.wav", dropsound = "SFX\\Interface\\布甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[125] = {takeupsound = "SFX\\Interface\\布甲拿起.wav", dropsound = "SFX\\Interface\\布甲放下.wav"}
    ICON_EQUIP_SOUND_PATH[127] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_EQUIP_SOUND_PATH[129] = {takeupsound = "SFX\\Interface\\宝石饰品拿起.wav", dropsound = "SFX\\Interface\\宝石饰品放下.wav"}
    ICON_EQUIP_SOUND_PATH[128] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_EQUIP_SOUND_PATH[126] = {takeupsound = "SFX\\Interface\\通用道具拿起.wav", dropsound = "SFX\\Interface\\通用道具放下.wav"}
    ICON_EQUIP_SOUND_PATH[87] = {takeupsound = "SFX\\Interface\\长重拿起.wav", dropsound = "SFX\\Interface\\长重放下.wav"}
    ICON_EQUIP_SOUND_PATH[88] = {takeupsound = "SFX\\Interface\\长轻拿起.wav", dropsound = "SFX\\Interface\\长轻放下.wav"}
    ICON_EQUIP_SOUND_PATH[89] = {takeupsound = "SFX\\Interface\\长轻拿起.wav", dropsound = "SFX\\Interface\\长轻放下.wav"}
    ICON_EQUIP_SOUND_PATH[90] = {takeupsound = "SFX\\Interface\\长重拿起.wav", dropsound = "SFX\\Interface\\长重放下.wav"}
    ICON_EQUIP_SOUND_PATH[91] = {takeupsound = "SFX\\Interface\\长重拿起.wav", dropsound = "SFX\\Interface\\长重放下.wav"}
    ICON_EQUIP_SOUND_PATH[92] = {takeupsound = "SFX\\Interface\\长轻拿起.wav", dropsound = "SFX\\Interface\\长轻放下.wav"}
    ICON_EQUIP_SOUND_PATH[93] = {takeupsound = "SFX\\Interface\\单短拿起.wav", dropsound = "SFX\\Interface\\单短放下.wav"}
    ICON_EQUIP_SOUND_PATH[94] = {takeupsound = "SFX\\Interface\\单短拿起.wav", dropsound = "SFX\\Interface\\单短放下.wav"}
    ICON_EQUIP_SOUND_PATH[95] = {takeupsound = "SFX\\Interface\\钩拿起.wav", dropsound = "SFX\\Interface\\钩放下.wav"}
    ICON_EQUIP_SOUND_PATH[96] = {takeupsound = "SFX\\Interface\\锤斧拿起.wav", dropsound = "SFX\\Interface\\锤斧放下.wav"}
    ICON_EQUIP_SOUND_PATH[97] = {takeupsound = "SFX\\Interface\\锤斧拿起.wav", dropsound = "SFX\\Interface\\锤斧放下.wav"}
    ICON_EQUIP_SOUND_PATH[98] = {takeupsound = "SFX\\Interface\\爪拿起.wav", dropsound = "SFX\\Interface\\爪放下.wav"}
    ICON_EQUIP_SOUND_PATH[99] = {takeupsound = "SFX\\Interface\\盾拿起.wav", dropsound = "SFX\\Interface\\盾放下.wav"}
    ICON_EQUIP_SOUND_PATH[100] = {takeupsound = "SFX\\Interface\\夺拿起.wav", dropsound = "SFX\\Interface\\夺放下.wav"}
    ICON_EQUIP_SOUND_PATH[101] = {takeupsound = "SFX\\Interface\\木材拿起.wav", dropsound = "SFX\\Interface\\木材放下.wav"}
    ICON_EQUIP_SOUND_PATH[102] = {takeupsound = "SFX\\Interface\\舞拿起.wav", dropsound = "SFX\\Interface\\舞放下.wav"}
    ICON_EQUIP_SOUND_PATH[103] = {takeupsound = "SFX\\Interface\\舞拿起.wav", dropsound = "SFX\\Interface\\舞放下.wav"}
    ICON_EQUIP_SOUND_PATH[104] = {takeupsound = "SFX\\Interface\\弓拿起.wav", dropsound = "SFX\\Interface\\弓放下.wav"}

    if idClass == 1 then
    	tsound = ICON_EQUIP_SOUND_PATH[idSubType].takeupsound
    	dsound = ICON_EQUIP_SOUND_PATH[idSubType].dropsound
    else
    	tsound = ICON_SOUND_PATH[idClass].takeupsound
    	dsound = ICON_SOUND_PATH[idClass].dropsound
    end
    if bDown then
		return dsound
	else
		return tsound
	end
end

--生产技能升级提示
function GameUI:GetProduceSkillDesc(idSkill, iLevel)
    local Produce = {}
	Produce[1077] = {Name = TEXT_PRODUCESKILL_SKILLTYPE1, OpenLv = 1, LearnNeedLv = {20}, LearnNPCid = {1915}} --驯养
	Produce[1078] = {Name = TEXT_PRODUCESKILL_SKILLTYPE2, OpenLv = 6, LearnNeedLv = {5,15,24,36,48,63}, LearnNPCid = {1923,1924,1924,1924,1924,1924}} --烹饪
	Produce[1079] = {Name = TEXT_PRODUCESKILL_SKILLTYPE3, OpenLv = 6, LearnNeedLv = {8,20,34,48,58,68}, LearnNPCid = {1917,1918,1918,1918,1918,1918}} --铁匠
	Produce[1080] = {Name = TEXT_PRODUCESKILL_SKILLTYPE4, OpenLv = 5, LearnNeedLv = {8,20,34,48,58}, LearnNPCid = {1919,1920,1920,1920,1920}} --裁缝
	Produce[1081] = {Name = TEXT_PRODUCESKILL_SKILLTYPE5, OpenLv = 4, LearnNeedLv = {22,34,48,58}, LearnNPCid = {1927,1928,1928,1928}} --巧匠
	Produce[1082] = {Name = TEXT_PRODUCESKILL_SKILLTYPE6, OpenLv = 6, LearnNeedLv = {19,24,34,44,53,71}, LearnNPCid = {1925,1926,1926,1926,1926,1926}} --药师
	Produce[1083] = {Name = TEXT_PRODUCESKILL_SKILLTYPE7, OpenLv = 6, LearnNeedLv = {9,15,28,40,48,65}, LearnNPCid = {1929,1930,1930,1930,1930,1930}} --急救
	Produce[1084] = {Name = TEXT_PRODUCESKILL_SKILLTYPE8, OpenLv = 1, LearnNeedLv = {22}, LearnNPCid = {1932}} --工匠
	local ProduceLvName = {TEXT_PRODUCESKILL_SKILLLEVELTYPE1, TEXT_PRODUCESKILL_SKILLLEVELTYPE2, TEXT_PRODUCESKILL_SKILLLEVELTYPE3, TEXT_PRODUCESKILL_SKILLLEVELTYPE4, TEXT_PRODUCESKILL_SKILLLEVELTYPE5, TEXT_PRODUCESKILL_SKILLLEVELTYPE6}
	local LearnNpcName = {}
	LearnNpcName[1077] = TEXT_PRODUCESKILL_NPCNAME1
	LearnNpcName[1078] = TEXT_PRODUCESKILL_NPCNAME2
	LearnNpcName[1079] = TEXT_PRODUCESKILL_NPCNAME3
	LearnNpcName[1080] = TEXT_PRODUCESKILL_NPCNAME4
	LearnNpcName[1081] = TEXT_PRODUCESKILL_NPCNAME5
	LearnNpcName[1082] = TEXT_PRODUCESKILL_NPCNAME6
	LearnNpcName[1083] = TEXT_PRODUCESKILL_NPCNAME7
	LearnNpcName[1084] = TEXT_PRODUCESKILL_NPCNAME8
	local LearnNpcMap = {}
	LearnNpcMap[1077] = GNR_MAP_NAME7
	LearnNpcMap[1078] = GNR_MAP_NAME7
	LearnNpcMap[1079] = GNR_MAP_NAME7
	LearnNpcMap[1080] = GNR_MAP_NAME7
	LearnNpcMap[1081] = GNR_MAP_NAME7
	LearnNpcMap[1082] = GNR_MAP_NAME7
	LearnNpcMap[1083] = GNR_MAP_NAME7
	LearnNpcMap[1084] = GNR_MAP_NAME7

	local LearnLv = Produce[idSkill].LearnNeedLv
	local LearnNpc = Produce[idSkill].LearnNPCid
    if iLevel >= Produce[idSkill].OpenLv then
        helpstring = ""
    else
        helpname = Produce[idSkill].Name
        helplevel = LearnLv[iLevel + 1]
        helplevelname = ProduceLvName[iLevel + 1]
        produceskillnpcid = LearnNpc[iLevel + 1]
		produceskillnpcname = LearnNpcName[idSkill]
		produceskillnpchome = LearnNpcMap[idSkill]
		helpstring = Format(AUI_PRODUCESKILL_TIP, helplevel, produceskillnpchome, helplevelname, helpname)
	end
	return helpstring, produceskillnpcid
end

--职业升阶提示
function GameUI:GetProfLevelUpDesc(idProf, iLevel)
	local PROFLEVEL_HELP_NPCID = {}
	PROFLEVEL_HELP_NPCID[1] = {3996,1910,1910,1910,1910,1910,1910,1910,1910,1910}
	PROFLEVEL_HELP_NPCID[2] = {3996,3365,3365,3365,3365,3365,3365,3365,3365,3365}
	PROFLEVEL_HELP_NPCID[3] = {3996,3366,3366,3366,3366,3366,3366,3366,3366,3366}
	PROFLEVEL_HELP_NPCID[4] = {3996,3367,3367,3367,3367,3367,3367,3367,3367,3367}
	PROFLEVEL_HELP_NPCID[5] = {3996,3368,3368,3368,3368,3368,3368,3368,3368,3368}
	PROFLEVEL_HELP_NPCID[6] = {3996,3369,3369,3369,3369,3369,3369,3369,3369,3369}
	PROFLEVEL_HELP_NPCID[7] = {3996,3370,3370,3370,3370,3370,3370,3370,3370,3370}
	PROFLEVEL_HELP_NPCID[8] = {3996,3371,3371,3371,3371,3371,3371,3371,3371,3371}
	PROFLEVEL_HELP_NPCID[9] = {3996,3372,3372,3372,3372,3372,3372,3372,3372,3372}
	PROFLEVEL_HELP_NPCID[10] = {3996,3373,3373,3373,3373,3373,3373,3373,3373,3373}
	PROFLEVEL_HELP_NPCID[11] = {3996,3374,3374,3374,3374,3374,3374,3374,3374,3374}
	PROFLEVEL_HELP_NPCID[12] = {3996,3375,3375,3375,3375,3375,3375,3375,3375,3375}
	PROFLEVEL_HELP_NPCID[13] = {3996,3376,3376,3376,3376,3376,3376,3376,3376,3376}
	PROFLEVEL_HELP_NPCID[14] = {3996,3377,3377,3377,3377,3377,3377,3377,3377,3377}
	PROFLEVEL_HELP_NPCID[15] = {3996,3378,3378,3378,3378,3378,3378,3378,3378,3378}
	PROFLEVEL_HELP_NPCID[16] = {3996,3379,3379,3379,3379,3379,3379,3379,3379,3379}
	PROFLEVEL_HELP_NPCID[17] = {3996,3380,3380,3380,3380,3380,3380,3380,3380,3380}
	PROFLEVEL_HELP_NPCID[18] = {3996,3381,3381,3381,3381,3381,3381,3381,3381,3381}
	local TEXT_PROFHELP_NPC1 = Format("%s%s", GNR_MAP_NAME1, "%s")
	local TEXT_PROFHELP_NPC2 = Format("%s%s", GNR_MAP_NAME7, "%s")
	local PROFLEVEL_HELP_NPCNAME = {}
	PROFLEVEL_HELP_NPCNAME[1] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[2] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[3] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[4] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[5] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[6] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[7] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[8] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[9] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[10] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[11] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[12] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[13] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[14] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[15] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[16] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[17] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}
	PROFLEVEL_HELP_NPCNAME[18] = {TEXT_PROFHELP_NPC1,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2,TEXT_PROFHELP_NPC2}

	proflevelnpcname = PROFLEVEL_HELP_NPCNAME[idProf][iLevel+1]
	proflevelnpcid = PROFLEVEL_HELP_NPCID[idProf][iLevel+1]
	if idProf == 0 then
		Profhelpstring = AUI_CHARACTER_PROFNILHELP
	else
		if iLevel + 1 == Max_iLevel then
			Profhelpstring = AUI_CHARACTER_PROFMAXHELP
		else
			Profhelpstring = Format(AUI_CHARACTER_PROFHELP, proflevelnpcname)
		end
	end
	return Profhelpstring, proflevelnpcid
end

--战场信息
function GameUI:GetBattleInfo(idTemplate)
	local War = {}
--测试
    War[160] = {Pic = "CB\\BattleField\\颖川之战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION161 , Aname = AUI_BATTLEFIELD_ANAME161 , Bname = AUI_BATTLEFIELD_BNAME161 , AWin = AUI_BATTLEFIELD_AWIN161 , BWin = AUI_BATTLEFIELD_BWIN161 , ALost = AUI_BATTLEFIELD_ALOST161 , BLost = AUI_BATTLEFIELD_BLOST161 }
    War[161] = {Pic = "CB\\BattleField\\颖川之战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION161 , Aname = AUI_BATTLEFIELD_ANAME161 , Bname = AUI_BATTLEFIELD_BNAME161 , AWin = AUI_BATTLEFIELD_AWIN161 , BWin = AUI_BATTLEFIELD_BWIN161 , ALost = AUI_BATTLEFIELD_ALOST161 , BLost = AUI_BATTLEFIELD_BLOST161 }
    War[210] = {Pic = "CB\\BattleField\\颖川之战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION210 , Aname = AUI_BATTLEFIELD_ANAME210 , Bname = AUI_BATTLEFIELD_BNAME210 , AWin = AUI_BATTLEFIELD_AWIN210 , BWin = AUI_BATTLEFIELD_BWIN210 , ALost = AUI_BATTLEFIELD_ALOST210 , BLost = AUI_BATTLEFIELD_BLOST210 }
    War[211] = {Pic = "CB\\BattleField\\颖川之战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION211 , Aname = AUI_BATTLEFIELD_ANAME211 , Bname = AUI_BATTLEFIELD_BNAME211 , AWin = AUI_BATTLEFIELD_AWIN211 , BWin = AUI_BATTLEFIELD_BWIN211 , ALost = AUI_BATTLEFIELD_ALOST211 , BLost = AUI_BATTLEFIELD_BLOST211 }
    War[221] = {Pic = "CB\\BattleField\\颖川之战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION221 , Aname = AUI_BATTLEFIELD_ANAME221 , Bname = AUI_BATTLEFIELD_BNAME221 , AWin = AUI_BATTLEFIELD_AWIN221 , BWin = AUI_BATTLEFIELD_BWIN221 , ALost = AUI_BATTLEFIELD_ALOST221 , BLost = AUI_BATTLEFIELD_BLOST221 }
    War[222] = {Pic = "CB\\BattleField\\落凤坡之战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION222 , Aname = AUI_BATTLEFIELD_ANAME222 , Bname = AUI_BATTLEFIELD_BNAME222 , AWin = AUI_BATTLEFIELD_AWIN222 , BWin = AUI_BATTLEFIELD_BWIN222 , ALost = AUI_BATTLEFIELD_ALOST222 , BLost = AUI_BATTLEFIELD_BLOST222 }
    War[223] = {Pic = "CB\\BattleField\\尚香解救战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION223 , Aname = AUI_BATTLEFIELD_ANAME223 , Bname = AUI_BATTLEFIELD_BNAME223 , AWin = AUI_BATTLEFIELD_AWIN223 , BWin = AUI_BATTLEFIELD_BWIN223 , ALost = AUI_BATTLEFIELD_ALOST223 , BLost = AUI_BATTLEFIELD_BLOST223 }
    War[227] = {Pic = "CB\\BattleField\\黄巾之乱.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION227 , Aname = AUI_BATTLEFIELD_ANAME227 , Bname = AUI_BATTLEFIELD_BNAME227 , AWin = AUI_BATTLEFIELD_AWIN227 , BWin = AUI_BATTLEFIELD_BWIN227 , ALost = AUI_BATTLEFIELD_ALOST227 , BLost = AUI_BATTLEFIELD_BLOST227 }
    War[237] = {Pic = "CB\\BattleField\\黄巾之乱.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION237 , Aname = AUI_BATTLEFIELD_ANAME237 , Bname = AUI_BATTLEFIELD_BNAME237 , AWin = AUI_BATTLEFIELD_AWIN237 , BWin = AUI_BATTLEFIELD_BWIN237 , ALost = AUI_BATTLEFIELD_ALOST237 , BLost = AUI_BATTLEFIELD_BLOST237 }
--国战
	War[241] = {Pic = "CB\\BattleField\\国战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION241 , Aname = AUI_BATTLEFIELD_ANAME241 , Bname = AUI_BATTLEFIELD_BNAME241 , AWin = AUI_BATTLEFIELD_AWIN241 , BWin = AUI_BATTLEFIELD_BWIN241 , ALost = AUI_BATTLEFIELD_ALOST241 , BLost = AUI_BATTLEFIELD_BLOST241 }
	War[362] = {Pic = "CB\\BattleField\\国战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION362 , Aname = AUI_BATTLEFIELD_ANAME362 , Bname = AUI_BATTLEFIELD_BNAME362 , AWin = AUI_BATTLEFIELD_AWIN362 , BWin = AUI_BATTLEFIELD_BWIN362 , ALost = AUI_BATTLEFIELD_ALOST362 , BLost = AUI_BATTLEFIELD_BLOST362 }

    War[252] = {Pic = "CB\\BattleField\\西凉缭乱.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION252 , Aname = AUI_BATTLEFIELD_ANAME252 , Bname = AUI_BATTLEFIELD_BNAME252 , AWin = AUI_BATTLEFIELD_AWIN252 , BWin = AUI_BATTLEFIELD_BWIN252 , ALost = AUI_BATTLEFIELD_ALOST252 , BLost = AUI_BATTLEFIELD_BLOST252 }
    War[253] = {Pic = "CB\\BattleField\\曹操传.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION253 , Aname = AUI_BATTLEFIELD_ANAME253 , Bname = AUI_BATTLEFIELD_BNAME253 , AWin = AUI_BATTLEFIELD_AWIN253 , BWin = AUI_BATTLEFIELD_BWIN253 , ALost = AUI_BATTLEFIELD_ALOST253 , BLost = AUI_BATTLEFIELD_BLOST253 }
    War[254] = {Pic = "CB\\BattleField\\虎牢关群英会.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION254 , Aname = AUI_BATTLEFIELD_ANAME254 , Bname = AUI_BATTLEFIELD_BNAME254 , AWin = AUI_BATTLEFIELD_AWIN254 , BWin = AUI_BATTLEFIELD_BWIN254 , ALost = AUI_BATTLEFIELD_ALOST254 , BLost = AUI_BATTLEFIELD_BLOST254 }
    War[255] = {Pic = "CB\\BattleField\\刘备传.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION255 , Aname = AUI_BATTLEFIELD_ANAME255 , Bname = AUI_BATTLEFIELD_BNAME255 , AWin = AUI_BATTLEFIELD_AWIN255 , BWin = AUI_BATTLEFIELD_BWIN255 , ALost = AUI_BATTLEFIELD_ALOST255 , BLost = AUI_BATTLEFIELD_BLOST255 }
	War[256] = {Pic = "CB\\BattleField\\濮阳之战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION256 , Aname = AUI_BATTLEFIELD_ANAME256 , Bname = AUI_BATTLEFIELD_BNAME256 , AWin = AUI_BATTLEFIELD_AWIN256 , BWin = AUI_BATTLEFIELD_BWIN256 , ALost = AUI_BATTLEFIELD_ALOST256 , BLost = AUI_BATTLEFIELD_BLOST256 }
    War[265] = {Pic = "CB\\BattleField\\孙权传.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION265 , Aname = AUI_BATTLEFIELD_ANAME265 , Bname = AUI_BATTLEFIELD_BNAME265 , AWin = AUI_BATTLEFIELD_AWIN265 , BWin = AUI_BATTLEFIELD_BWIN265 , ALost = AUI_BATTLEFIELD_ALOST265 , BLost = AUI_BATTLEFIELD_BLOST265 }
	War[266] = {Pic = "CB\\BattleField\\典韦传.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION266 , Aname = AUI_BATTLEFIELD_ANAME266 , Bname = AUI_BATTLEFIELD_BNAME266 , AWin = AUI_BATTLEFIELD_AWIN266 , BWin = AUI_BATTLEFIELD_BWIN266 , ALost = AUI_BATTLEFIELD_ALOST266 , BLost = AUI_BATTLEFIELD_BLOST266 }
    War[267] = {Pic = "CB\\BattleField\\暗袭定军山.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION267 , Aname = AUI_BATTLEFIELD_ANAME267 , Bname = AUI_BATTLEFIELD_BNAME267 , AWin = AUI_BATTLEFIELD_AWIN267 , BWin = AUI_BATTLEFIELD_BWIN267 , ALost = AUI_BATTLEFIELD_ALOST267 , BLost = AUI_BATTLEFIELD_BLOST267 }
	War[268] = {Pic = "CB\\BattleField\\荆襄撤退战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION268 , Aname = AUI_BATTLEFIELD_ANAME268 , Bname = AUI_BATTLEFIELD_BNAME268 , AWin = AUI_BATTLEFIELD_AWIN268 , BWin = AUI_BATTLEFIELD_BWIN268 , ALost = AUI_BATTLEFIELD_ALOST268 , BLost = AUI_BATTLEFIELD_BLOST268 }
--华容道
    War[274] = {Pic = "CB\\BattleField\\赵云传.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION275 , Aname = AUI_BATTLEFIELD_ANAME275 , Bname = AUI_BATTLEFIELD_BNAME275 , AWin = AUI_BATTLEFIELD_AWIN275 , BWin = AUI_BATTLEFIELD_BWIN275 , ALost = AUI_BATTLEFIELD_ALOST275 , BLost = AUI_BATTLEFIELD_BLOST275 }
    War[275] = {Pic = "CB\\BattleField\\赵云传.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION275 , Aname = AUI_BATTLEFIELD_ANAME275 , Bname = AUI_BATTLEFIELD_BNAME275 , AWin = AUI_BATTLEFIELD_AWIN275 , BWin = AUI_BATTLEFIELD_BWIN275 , ALost = AUI_BATTLEFIELD_ALOST275 , BLost = AUI_BATTLEFIELD_BLOST275 }
	War[279] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION279 , Aname = AUI_BATTLEFIELD_ANAME279 , Bname = AUI_BATTLEFIELD_BNAME279 , AWin = AUI_BATTLEFIELD_AWIN279 , BWin = AUI_BATTLEFIELD_BWIN279 , ALost = AUI_BATTLEFIELD_ALOST279 , BLost = AUI_BATTLEFIELD_BLOST279 }
	War[280] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION280 , Aname = AUI_BATTLEFIELD_ANAME280 , Bname = AUI_BATTLEFIELD_BNAME280 , AWin = AUI_BATTLEFIELD_AWIN280 , BWin = AUI_BATTLEFIELD_BWIN280 , ALost = AUI_BATTLEFIELD_ALOST280 , BLost = AUI_BATTLEFIELD_BLOST280 }
	War[281] = {Pic = "CB\\BattleField\\蒋干盗书.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION281 , Aname = AUI_BATTLEFIELD_ANAME281 , Bname = AUI_BATTLEFIELD_BNAME281 , AWin = AUI_BATTLEFIELD_AWIN281 , BWin = AUI_BATTLEFIELD_BWIN281 , ALost = AUI_BATTLEFIELD_ALOST281 , BLost = AUI_BATTLEFIELD_BLOST281 }
	War[277] = {Pic = "CB\\BattleField\\合肥之战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION277 , Aname = AUI_BATTLEFIELD_ANAME277 , Bname = AUI_BATTLEFIELD_BNAME277 , AWin = AUI_BATTLEFIELD_AWIN277 , BWin = AUI_BATTLEFIELD_BWIN277 , ALost = AUI_BATTLEFIELD_ALOST277 , BLost = AUI_BATTLEFIELD_BLOST277 }
    War[278] = {Pic = "CB\\BattleField\\益州攻克战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION278 , Aname = AUI_BATTLEFIELD_ANAME278 , Bname = AUI_BATTLEFIELD_BNAME278 , AWin = AUI_BATTLEFIELD_AWIN278 , BWin = AUI_BATTLEFIELD_BWIN278 , ALost = AUI_BATTLEFIELD_ALOST278 , BLost = AUI_BATTLEFIELD_BLOST278 }
    War[291] = {Pic = "CB\\BattleField\\轩辕遗迹.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION291 , Aname = AUI_BATTLEFIELD_ANAME291 , Bname = AUI_BATTLEFIELD_BNAME291 , AWin = AUI_BATTLEFIELD_AWIN291 , BWin = AUI_BATTLEFIELD_BWIN291 , ALost = AUI_BATTLEFIELD_ALOST291 , BLost = AUI_BATTLEFIELD_BLOST291 }
    War[292] = {Pic = "CB\\BattleField\\幻想八阵图.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION292 , Aname = AUI_BATTLEFIELD_ANAME292 , Bname = AUI_BATTLEFIELD_BNAME292 , AWin = AUI_BATTLEFIELD_AWIN292 , BWin = AUI_BATTLEFIELD_BWIN292 , ALost = AUI_BATTLEFIELD_ALOST292 , BLost = AUI_BATTLEFIELD_BLOST292 }
    War[293] = {Pic = "CB\\BattleField\\楼兰古殿.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION293 , Aname = AUI_BATTLEFIELD_ANAME293 , Bname = AUI_BATTLEFIELD_BNAME293 , AWin = AUI_BATTLEFIELD_AWIN293 , BWin = AUI_BATTLEFIELD_BWIN293 , ALost = AUI_BATTLEFIELD_ALOST293 , BLost = AUI_BATTLEFIELD_BLOST293 }
    War[294] = {Pic = "CB\\BattleField\\项王魔域.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION294 , Aname = AUI_BATTLEFIELD_ANAME294 , Bname = AUI_BATTLEFIELD_BNAME294 , AWin = AUI_BATTLEFIELD_AWIN294 , BWin = AUI_BATTLEFIELD_BWIN294 , ALost = AUI_BATTLEFIELD_ALOST294 , BLost = AUI_BATTLEFIELD_BLOST294 }
    War[297] = {Pic = "CB\\BattleField\\蒋干盗书.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION297 , Aname = AUI_BATTLEFIELD_ANAME297 , Bname = AUI_BATTLEFIELD_BNAME297 , AWin = AUI_BATTLEFIELD_AWIN297 , BWin = AUI_BATTLEFIELD_BWIN297 , ALost = AUI_BATTLEFIELD_ALOST297 , BLost = AUI_BATTLEFIELD_BLOST297 }
	War[298] = {Pic = "CB\\BattleField\\桃园.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION298 , Aname = AUI_BATTLEFIELD_ANAME298 , Bname = AUI_BATTLEFIELD_BNAME298 , AWin = AUI_BATTLEFIELD_AWIN298 , BWin = AUI_BATTLEFIELD_BWIN298 , ALost = AUI_BATTLEFIELD_ALOST298 , BLost = AUI_BATTLEFIELD_BLOST298 }
	War[304] = {Pic = "CB\\BattleField\\牧羊传.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION304 , Aname = AUI_BATTLEFIELD_ANAME304 , Bname = AUI_BATTLEFIELD_BNAME304 , AWin = AUI_BATTLEFIELD_AWIN304 , BWin = AUI_BATTLEFIELD_BWIN304 , ALost = AUI_BATTLEFIELD_ALOST304 , BLost = AUI_BATTLEFIELD_BLOST304 }
	War[306] = {Pic = "CB\\BattleField\\西域蜃楼城.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION306 , Aname = AUI_BATTLEFIELD_ANAME306 , Bname = AUI_BATTLEFIELD_BNAME306 , AWin = AUI_BATTLEFIELD_AWIN306 , BWin = AUI_BATTLEFIELD_BWIN306 , ALost = AUI_BATTLEFIELD_ALOST306 , BLost = AUI_BATTLEFIELD_BLOST306 }
	War[308] = {Pic = "CB\\BattleField\\曹植传.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION308 , Aname = AUI_BATTLEFIELD_ANAME308 , Bname = AUI_BATTLEFIELD_BNAME308 , AWin = AUI_BATTLEFIELD_AWIN308 , BWin = AUI_BATTLEFIELD_BWIN308 , ALost = AUI_BATTLEFIELD_ALOST308 , BLost = AUI_BATTLEFIELD_BLOST308 }
--赛马
	War[311] = {Pic = "CB\\BattleField\\赛马场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION311 , Aname = AUI_BATTLEFIELD_ANAME311 , Bname = AUI_BATTLEFIELD_BNAME311 , AWin = AUI_BATTLEFIELD_AWIN311 , BWin = AUI_BATTLEFIELD_BWIN311 , ALost = AUI_BATTLEFIELD_ALOST311 , BLost = AUI_BATTLEFIELD_BLOST311 }
	War[312] = {Pic = "CB\\BattleField\\赛马场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION312 , Aname = AUI_BATTLEFIELD_ANAME312 , Bname = AUI_BATTLEFIELD_BNAME312 , AWin = AUI_BATTLEFIELD_AWIN312 , BWin = AUI_BATTLEFIELD_BWIN312 , ALost = AUI_BATTLEFIELD_ALOST312 , BLost = AUI_BATTLEFIELD_BLOST312 }
	War[313] = {Pic = "CB\\BattleField\\赛马场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION313 , Aname = AUI_BATTLEFIELD_ANAME313 , Bname = AUI_BATTLEFIELD_BNAME313 , AWin = AUI_BATTLEFIELD_AWIN313 , BWin = AUI_BATTLEFIELD_BWIN313 , ALost = AUI_BATTLEFIELD_ALOST313 , BLost = AUI_BATTLEFIELD_BLOST313 }
--濮阳2
	War[299] = {Pic = "CB\\BattleField\\濮阳之战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION299 , Aname = AUI_BATTLEFIELD_ANAME299 , Bname = AUI_BATTLEFIELD_BNAME299 , AWin = AUI_BATTLEFIELD_AWIN299 , BWin = AUI_BATTLEFIELD_BWIN299 , ALost = AUI_BATTLEFIELD_ALOST299 , BLost = AUI_BATTLEFIELD_BLOST299 }
	War[317] = {Pic = "CB\\BattleField\\濮阳之战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION317 , Aname = AUI_BATTLEFIELD_ANAME317 , Bname = AUI_BATTLEFIELD_BNAME317 , AWin = AUI_BATTLEFIELD_AWIN317 , BWin = AUI_BATTLEFIELD_BWIN317 , ALost = AUI_BATTLEFIELD_ALOST317 , BLost = AUI_BATTLEFIELD_BLOST317 }
--魇魂洞
	War[318] = {Pic = "CB\\BattleField\\魇魂洞.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION318 , Aname = AUI_BATTLEFIELD_ANAME318 , Bname = AUI_BATTLEFIELD_BNAME318 , AWin = AUI_BATTLEFIELD_AWIN318 , BWin = AUI_BATTLEFIELD_BWIN318 , ALost = AUI_BATTLEFIELD_ALOST318 , BLost = AUI_BATTLEFIELD_BLOST318 }
--无双07殇楚离歌
	War[325] = {Pic = "CB\\BattleField\\殇楚离歌.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION325 , Aname = AUI_BATTLEFIELD_ANAME325 , Bname = AUI_BATTLEFIELD_BNAME325 , AWin = AUI_BATTLEFIELD_AWIN325 , BWin = AUI_BATTLEFIELD_BWIN325 , ALost = AUI_BATTLEFIELD_ALOST325 , BLost = AUI_BATTLEFIELD_BLOST325 }
--竞技场
	War[334] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION334 , Aname = AUI_BATTLEFIELD_ANAME334 , Bname = AUI_BATTLEFIELD_BNAME334 , AWin = AUI_BATTLEFIELD_AWIN334 , BWin = AUI_BATTLEFIELD_BWIN334 , ALost = AUI_BATTLEFIELD_ALOST334 , BLost = AUI_BATTLEFIELD_BLOST334 }
	War[335] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION335 , Aname = AUI_BATTLEFIELD_ANAME335 , Bname = AUI_BATTLEFIELD_BNAME335 , AWin = AUI_BATTLEFIELD_AWIN335 , BWin = AUI_BATTLEFIELD_BWIN335 , ALost = AUI_BATTLEFIELD_ALOST335 , BLost = AUI_BATTLEFIELD_BLOST335 }
	War[348] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION348 , Aname = AUI_BATTLEFIELD_ANAME348 , Bname = AUI_BATTLEFIELD_BNAME348 , AWin = AUI_BATTLEFIELD_AWIN348 , BWin = AUI_BATTLEFIELD_BWIN348 , ALost = AUI_BATTLEFIELD_ALOST348 , BLost = AUI_BATTLEFIELD_BLOST348 }
--马超传
	War[333] = {Pic = "CB\\BattleField\\马超传.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION333 , Aname = AUI_BATTLEFIELD_ANAME333 , Bname = AUI_BATTLEFIELD_BNAME333 , AWin = AUI_BATTLEFIELD_AWIN333 , BWin = AUI_BATTLEFIELD_BWIN333 , ALost = AUI_BATTLEFIELD_ALOST333 , BLost = AUI_BATTLEFIELD_BLOST333 }
--麦城之战
	War[351] = {Pic = "CB\\BattleField\\麦城之战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION351 , Aname = AUI_BATTLEFIELD_ANAME351 , Bname = AUI_BATTLEFIELD_BNAME351 , AWin = AUI_BATTLEFIELD_AWIN351 , BWin = AUI_BATTLEFIELD_BWIN351 , ALost = AUI_BATTLEFIELD_ALOST351 , BLost = AUI_BATTLEFIELD_BLOST351 }
--貂蝉传
	War[352] = {Pic = "CB\\BattleField\\貂蝉传.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION352 , Aname = AUI_BATTLEFIELD_ANAME352 , Bname = AUI_BATTLEFIELD_BNAME352 , AWin = AUI_BATTLEFIELD_AWIN352 , BWin = AUI_BATTLEFIELD_BWIN352 , ALost = AUI_BATTLEFIELD_ALOST352 , BLost = AUI_BATTLEFIELD_BLOST352 }
--夏口之战
	War[353] = {Pic = "CB\\BattleField\\江夏之战.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION353 , Aname = AUI_BATTLEFIELD_ANAME353 , Bname = AUI_BATTLEFIELD_BNAME353 , AWin = AUI_BATTLEFIELD_AWIN353 , BWin = AUI_BATTLEFIELD_BWIN353 , ALost = AUI_BATTLEFIELD_ALOST353 , BLost = AUI_BATTLEFIELD_BLOST353 }
--卧龙九天
	War[354] = {Pic = "CB\\BattleField\\卧龙九天.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION354 , Aname = AUI_BATTLEFIELD_ANAME354 , Bname = AUI_BATTLEFIELD_BNAME354 , AWin = AUI_BATTLEFIELD_AWIN354 , BWin = AUI_BATTLEFIELD_BWIN354 , ALost = AUI_BATTLEFIELD_ALOST354 , BLost = AUI_BATTLEFIELD_BLOST354 }
	War[380] = {Pic = "CB\\BattleField\\曹植传.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION380 , Aname = AUI_BATTLEFIELD_ANAME380 , Bname = AUI_BATTLEFIELD_BNAME380 , AWin = AUI_BATTLEFIELD_AWIN380 , BWin = AUI_BATTLEFIELD_BWIN380 , ALost = AUI_BATTLEFIELD_ALOST380 , BLost = AUI_BATTLEFIELD_BLOST380 }
--跨服竞技
	War[521] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION521 , Aname = AUI_BATTLEFIELD_ANAME521 , Bname = AUI_BATTLEFIELD_BNAME521 , AWin = AUI_BATTLEFIELD_AWIN521 , BWin = AUI_BATTLEFIELD_BWIN521 , ALost = AUI_BATTLEFIELD_ALOST521 , BLost = AUI_BATTLEFIELD_BLOST521 }
	War[522] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION522 , Aname = AUI_BATTLEFIELD_ANAME522 , Bname = AUI_BATTLEFIELD_BNAME522 , AWin = AUI_BATTLEFIELD_AWIN522 , BWin = AUI_BATTLEFIELD_BWIN522 , ALost = AUI_BATTLEFIELD_ALOST522 , BLost = AUI_BATTLEFIELD_BLOST522 }
	War[523] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION523 , Aname = AUI_BATTLEFIELD_ANAME523 , Bname = AUI_BATTLEFIELD_BNAME523 , AWin = AUI_BATTLEFIELD_AWIN523 , BWin = AUI_BATTLEFIELD_BWIN523 , ALost = AUI_BATTLEFIELD_ALOST523 , BLost = AUI_BATTLEFIELD_BLOST523 }
	War[524] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION524 , Aname = AUI_BATTLEFIELD_ANAME524 , Bname = AUI_BATTLEFIELD_BNAME524 , AWin = AUI_BATTLEFIELD_AWIN524 , BWin = AUI_BATTLEFIELD_BWIN524 , ALost = AUI_BATTLEFIELD_ALOST524 , BLost = AUI_BATTLEFIELD_BLOST524 }
	War[525] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION525 , Aname = AUI_BATTLEFIELD_ANAME525 , Bname = AUI_BATTLEFIELD_BNAME525 , AWin = AUI_BATTLEFIELD_AWIN525 , BWin = AUI_BATTLEFIELD_BWIN525 , ALost = AUI_BATTLEFIELD_ALOST525 , BLost = AUI_BATTLEFIELD_BLOST525 }
	War[526] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION526 , Aname = AUI_BATTLEFIELD_ANAME526 , Bname = AUI_BATTLEFIELD_BNAME526 , AWin = AUI_BATTLEFIELD_AWIN526 , BWin = AUI_BATTLEFIELD_BWIN526 , ALost = AUI_BATTLEFIELD_ALOST526 , BLost = AUI_BATTLEFIELD_BLOST526 }
	War[527] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION527 , Aname = AUI_BATTLEFIELD_ANAME527 , Bname = AUI_BATTLEFIELD_BNAME527 , AWin = AUI_BATTLEFIELD_AWIN527 , BWin = AUI_BATTLEFIELD_BWIN527 , ALost = AUI_BATTLEFIELD_ALOST527 , BLost = AUI_BATTLEFIELD_BLOST527 }
	War[528] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION528 , Aname = AUI_BATTLEFIELD_ANAME528 , Bname = AUI_BATTLEFIELD_BNAME528 , AWin = AUI_BATTLEFIELD_AWIN528 , BWin = AUI_BATTLEFIELD_BWIN528 , ALost = AUI_BATTLEFIELD_ALOST528 , BLost = AUI_BATTLEFIELD_BLOST528 }
	War[529] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION529 , Aname = AUI_BATTLEFIELD_ANAME529 , Bname = AUI_BATTLEFIELD_BNAME529 , AWin = AUI_BATTLEFIELD_AWIN529 , BWin = AUI_BATTLEFIELD_BWIN529 , ALost = AUI_BATTLEFIELD_ALOST529 , BLost = AUI_BATTLEFIELD_BLOST529 }
	War[530] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION530 , Aname = AUI_BATTLEFIELD_ANAME530 , Bname = AUI_BATTLEFIELD_BNAME530 , AWin = AUI_BATTLEFIELD_AWIN530 , BWin = AUI_BATTLEFIELD_BWIN530 , ALost = AUI_BATTLEFIELD_ALOST530 , BLost = AUI_BATTLEFIELD_BLOST530 }
	War[531] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION531 , Aname = AUI_BATTLEFIELD_ANAME531 , Bname = AUI_BATTLEFIELD_BNAME531 , AWin = AUI_BATTLEFIELD_AWIN531 , BWin = AUI_BATTLEFIELD_BWIN531 , ALost = AUI_BATTLEFIELD_ALOST531 , BLost = AUI_BATTLEFIELD_BLOST531 }
	War[532] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION532 , Aname = AUI_BATTLEFIELD_ANAME532 , Bname = AUI_BATTLEFIELD_BNAME532 , AWin = AUI_BATTLEFIELD_AWIN532 , BWin = AUI_BATTLEFIELD_BWIN532 , ALost = AUI_BATTLEFIELD_ALOST532 , BLost = AUI_BATTLEFIELD_BLOST532 }
	War[533] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION533 , Aname = AUI_BATTLEFIELD_ANAME533 , Bname = AUI_BATTLEFIELD_BNAME533 , AWin = AUI_BATTLEFIELD_AWIN533 , BWin = AUI_BATTLEFIELD_BWIN533 , ALost = AUI_BATTLEFIELD_ALOST533 , BLost = AUI_BATTLEFIELD_BLOST533 }
	War[534] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION534 , Aname = AUI_BATTLEFIELD_ANAME534 , Bname = AUI_BATTLEFIELD_BNAME534 , AWin = AUI_BATTLEFIELD_AWIN534 , BWin = AUI_BATTLEFIELD_BWIN534 , ALost = AUI_BATTLEFIELD_ALOST534 , BLost = AUI_BATTLEFIELD_BLOST534 }
	War[535] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION535 , Aname = AUI_BATTLEFIELD_ANAME535 , Bname = AUI_BATTLEFIELD_BNAME535 , AWin = AUI_BATTLEFIELD_AWIN535 , BWin = AUI_BATTLEFIELD_BWIN535 , ALost = AUI_BATTLEFIELD_ALOST535 , BLost = AUI_BATTLEFIELD_BLOST535 }
	War[536] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION536 , Aname = AUI_BATTLEFIELD_ANAME536 , Bname = AUI_BATTLEFIELD_BNAME536 , AWin = AUI_BATTLEFIELD_AWIN536 , BWin = AUI_BATTLEFIELD_BWIN536 , ALost = AUI_BATTLEFIELD_ALOST536 , BLost = AUI_BATTLEFIELD_BLOST536 }
-- 无双09过关斩将
	War[540] = {Pic = "CB\\BattleField\\竞技场.dds", introduction = AUI_BATTLEFIELD_INTRODUCTION540 , Aname = AUI_BATTLEFIELD_ANAME540 , Bname = AUI_BATTLEFIELD_BNAME540 , AWin = AUI_BATTLEFIELD_AWIN540 , BWin = AUI_BATTLEFIELD_BWIN540 , ALost = AUI_BATTLEFIELD_ALOST540 , BLost = AUI_BATTLEFIELD_BLOST540 }

--首领模式战场--
	War[326] = War[237]
	War[327] = War[252]
	War[328] = War[254]
	War[329] = War[293]
	War[330] = War[291]
	War[331] = War[294]
	War[332] = War[281]
	War[336] = War[325]
	War[372] = War[354]	
----------------

	War_pic = War[idTemplate].Pic
	War_introduction = War[idTemplate].introduction
	War_Aname = War[idTemplate].Aname
	War_Bname = War[idTemplate].Bname
	War_Awin = War[idTemplate].AWin
	War_Bwin = War[idTemplate].BWin
	War_Alost = War[idTemplate].ALost
	War_Blost = War[idTemplate].BLost
	return War_pic,War_introduction,War_Aname,War_Bname,War_Awin,War_Bwin,War_Alost,War_Blost
end

--战场结束信息
function GameUI:GetBattleEndInfo(idTemplate,iCamp,bWin)--idtemplate(战场ID）icamp(1,2,攻方守方）bwin（1,0,-1,胜,平,负）
	local WarEnd = {}
	WarEnd[161] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 10,WinItemNameA = 9599,WinItemNumA = 4,WinItemNameB = 9598,WinItemNumB = 4,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 9599,LostItemNumA = 1,LostItemNameB = 9598,LostItemNumB = 1,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 9599,DrawItemNumA = 2,DrawItemNameB = 9598,DrawItemNumB = 2,WinEXP = 35000,LostEXP = 5000,DrawEXP = 10000}
	WarEnd[210] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 5,WinItemNameA = 9383,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 6000,LostEXP = 1000,DrawEXP = 0}
	WarEnd[211] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 5,WinItemNameA = 9384,WinItemNumA = 2,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 9384,DrawItemNumA = 1,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 10000,LostEXP = 2000,DrawEXP = 4000}
	WarEnd[221] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 10,WinItemNameA = 9469,WinItemNumA = 2,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 9469,DrawItemNumA = 1,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 12000,LostEXP = 3000,DrawEXP = 5000}
	WarEnd[222] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 5,WinItemNameA = 11906,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 12000,LostEXP = 2500,DrawEXP = 5000}
	WarEnd[223] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 12462,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 8000,LostEXP = 1500,DrawEXP = 2000}
	WarEnd[227] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 13002,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 30000,LostEXP = 5000,DrawEXP = 8000}
	WarEnd[237] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 10,WinItemNameA = 13017,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 100000,LostEXP = 6000,DrawEXP = 30000}
	WarEnd[252] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 10,WinItemNameA = 13928,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 7000,LostEXP = 1000,DrawEXP = 1500}
	WarEnd[254] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 15,WinItemNameA = 14353,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 150000,LostEXP = 10000,DrawEXP = 50000}
	WarEnd[253] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 13959,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 50000,LostEXP = 5000,DrawEXP = 10000}
	WarEnd[255] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 15562,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 50000,LostEXP = 5000,DrawEXP = 10000}
	WarEnd[256] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 15564,WinItemNumA = 1,WinItemNameB = 15564,WinItemNumB = 1,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 17066,LostItemNumA = 1,LostItemNameB = 17066,LostItemNumB = 1,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 17066,DrawItemNumA = 2,DrawItemNameB = 17066,DrawItemNumB = 1,WinEXP = 50000,LostEXP = 40000,DrawEXP = 30000}
	WarEnd[266] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 80000,LostEXP = 10000,DrawEXP = 20000}
	WarEnd[268] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 15,WinItemNameA = 19392,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 50000,LostEXP = 5000,DrawEXP = 10000}
	WarEnd[267] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 100000,LostEXP = 60000,DrawEXP = 0}
	WarEnd[275] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 20794,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 80000,LostEXP = 10000,DrawEXP = 20000}
	WarEnd[265] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 21192,WinItemNumA = 2,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 60000,LostEXP = 5000,DrawEXP = 10000}
	WarEnd[281] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 22034,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 20000,LostEXP = 10000,DrawEXP = 20000}
	WarEnd[277] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 24846,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 60000,LostEXP = 20000,DrawEXP = 0}
	WarEnd[278] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 24847,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 100000,LostEXP = 30000,DrawEXP = 0}
	WarEnd[291] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 27149,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 400000,LostEXP = 120000,DrawEXP = 0}
	WarEnd[292] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = AUI_BATTLEFIELD_EXP292,LostEXP = 0,DrawEXP = 0}
	WarEnd[293] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 27150,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 1900000,LostEXP = 500000,DrawEXP = 0}
	WarEnd[294] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 27151,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 900000,LostEXP = 250000,DrawEXP = 0}
	WarEnd[298] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[299] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 27447,WinItemNumA = 3,WinItemNameB = 27447,WinItemNumB = 3,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 27447,LostItemNumA = 2,LostItemNameB = 27447,LostItemNumB = 2,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 15564,DrawItemNumA = 1,DrawItemNameB = 15564,DrawItemNumB = 1,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[308] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 28276,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 200000,LostEXP = 0,DrawEXP = 50000}
	WarEnd[306] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 27360,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 700000,LostEXP = 0,DrawEXP = 300000}
	WarEnd[304] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = AUI_BATTLEFIELD_EXP304,LostEXP = 0,DrawEXP = 0}
	WarEnd[317] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 27447,WinItemNumA = 3,WinItemNameB = 27447,WinItemNumB = 3,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 27447,LostItemNumA = 2,LostItemNameB = 27447,LostItemNumB = 2,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 15564,DrawItemNumA = 1,DrawItemNameB = 15564,DrawItemNumB = 1,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
--魇魂洞
	WarEnd[318] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
--无双07殇楚离歌
	WarEnd[325] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 31382,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = AUI_BATTLEFIELD_EXP325,LostEXP = AUI_BATTLEFIELD_EXP325,DrawEXP = AUI_BATTLEFIELD_EXP325}

	--ID:279竞技场12人（积分）
	WarEnd[279] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 3,LostEXP = 1,DrawEXP = 2}
	--ID:280竞技场1人（积分）
	WarEnd[280] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 3,LostEXP = 1,DrawEXP = 2}
	--国战
	WarEnd[241] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 150,WinItemNameA = 15593,WinItemNumA = 2,WinItemNameB = 15593,WinItemNumB = 2,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 50,LostItemNameA = 15593,LostItemNumA = 1,LostItemNameB = 15593,LostItemNumB = 1,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 100,DrawItemNameA = 15593,DrawItemNumA = 1,DrawItemNameB = 15593,DrawItemNumB = 1,WinEXP = 200000,LostEXP = 50000,DrawEXP = 100000}
	WarEnd[362] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 150,WinItemNameA = 15593,WinItemNumA = 2,WinItemNameB = 15593,WinItemNumB = 2,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 50,LostItemNameA = 15593,LostItemNumA = 1,LostItemNameB = 15593,LostItemNumB = 1,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 100,DrawItemNameA = 15593,DrawItemNumA = 1,DrawItemNameB = 15593,DrawItemNumB = 1,WinEXP = 200000,LostEXP = 50000,DrawEXP = 100000}

	--竞技场
	WarEnd[334] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 31665,WinItemNumA = 1,WinItemNameB = 31665,WinItemNumB = 1,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = AUI_BATTLEFIELD_EXP334,LostEXP = AUI_BATTLEFIELD_EXP334,DrawEXP = 0}
	WarEnd[335] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = AUI_BATTLEFIELD_EXP335,LostEXP = 0,DrawEXP = 0}
	WarEnd[348] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 31665,WinItemNumA = 1,WinItemNameB = 31665,WinItemNumB = 1,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = AUI_BATTLEFIELD_EXP348,LostEXP = AUI_BATTLEFIELD_EXP348,DrawEXP = 0}
--马超传
	WarEnd[333] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 32769,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
--麦城之战
	WarEnd[351] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 33001,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 33000,DrawItemNumA = 1,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = AUI_BATTLEFIELD_EXP351,LostEXP = AUI_BATTLEFIELD_EXP351,DrawEXP = AUI_BATTLEFIELD_EXP351}
--貂蝉传
	WarEnd[352] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = AUI_BATTLEFIELD_EXP352,LostEXP = AUI_BATTLEFIELD_EXP352,DrawEXP = AUI_BATTLEFIELD_EXP352}
--夏口之战
	WarEnd[353] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 43600,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 1000000,LostEXP = 200000,DrawEXP = 500000}
--卧龙九天（隆中奇情）
	WarEnd[354] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 36695,WinItemNumA = 1,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 3000000,LostEXP = 0,DrawEXP = 0}
--4d战场
	WarEnd[380] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 40498,WinItemNumA = 3,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 40498,DrawItemNumA = 1,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 2000000,LostEXP = 1000000,DrawEXP = 500000}

	--跨服竞技
	WarEnd[521] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[522] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[523] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[524] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[525] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[526] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[527] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[528] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[529] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[530] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[531] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[532] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[533] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[534] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[535] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
	WarEnd[536] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}
-- 无双09过关斩将	
	WarEnd[540] = {WinExploit1 = 0,WinExploit2 = 0,WinExploit = 0,WinReputation = 0,WinItemNameA = 0,WinItemNumA = 0,WinItemNameB = 0,WinItemNumB = 0,LostExploit1 = 0,LostExploit2 = 0,LostExploit = 0,LostReputation = 0,LostItemNameA = 0,LostItemNumA = 0,LostItemNameB = 0,LostItemNumB = 0,DrawExploit1 = 0,DrawExploit2 = 0,DrawExploit = 0,DrawReputation = 0,DrawItemNameA = 0,DrawItemNumA = 0,DrawItemNameB = 0,DrawItemNumB = 0,WinEXP = 0,LostEXP = 0,DrawEXP = 0}

--首领模式战场--
	WarEnd[326] = WarEnd[237]
	WarEnd[327] = WarEnd[252]
	WarEnd[328] = WarEnd[254]
	WarEnd[329] = WarEnd[293]
	WarEnd[330] = WarEnd[291]
	WarEnd[331] = WarEnd[294]
	WarEnd[332] = WarEnd[281]
	WarEnd[336] = WarEnd[325]
	WarEnd[372] = WarEnd[354]
----------------

		if bWin == 1 then
		Exploit1 = WarEnd[idTemplate].WinExploit1
		Exploit2 = WarEnd[idTemplate].WinExploit2
		Exploit = WarEnd[idTemplate].WinExploit
		Reputation = WarEnd[idTemplate].WinReputation
		EXP = WarEnd[idTemplate].WinEXP
			if iCamp == 1 then
			ItemName = WarEnd[idTemplate].WinItemNameA
			ItemNum = WarEnd[idTemplate].WinItemNumA
			else
			ItemName = WarEnd[idTemplate].WinItemNameB
			ItemNum = WarEnd[idTemplate].WinItemNumB
			end
		else
			if bWin == 0 then
			Exploit1 = WarEnd[idTemplate].DrawExploit1
			Exploit2 = WarEnd[idTemplate].DrawExploit2
			Exploit = WarEnd[idTemplate].DrawExploit
			Reputation = WarEnd[idTemplate].DrawReputation
			EXP = WarEnd[idTemplate].DrawEXP
				if iCamp == 1 then
			ItemName = WarEnd[idTemplate].DrawItemNameA
			ItemNum = WarEnd[idTemplate].DrawItemNumA
				else
			ItemName = WarEnd[idTemplate].DrawItemNameB
			ItemNum = WarEnd[idTemplate].DrawItemNumB
				end
			else
			Exploit1 = WarEnd[idTemplate].LostExploit1
			Exploit2 = WarEnd[idTemplate].LostExploit2
			Exploit = WarEnd[idTemplate].LostExploit
			Reputation = WarEnd[idTemplate].LostReputation
			EXP = WarEnd[idTemplate].LostEXP
				if iCamp == 1 then
			ItemName = WarEnd[idTemplate].LostItemNameA
			ItemNum = WarEnd[idTemplate].LostItemNumA
				else
			ItemName = WarEnd[idTemplate].LostItemNameB
			ItemNum = WarEnd[idTemplate].LostItemNumB
				end
			end
		end
	return Exploit1,Exploit2,Exploit,Reputation,ItemName,ItemNum,EXP
end

--积分类战场结束信息（表现奖励部分）
function GameUI:GetBattleEndScoreInfo(idTemplate, score)
	local ScoreWarEnd = {}
	--ID:256濮阳之战（积分）
	ScoreWarEnd[256] = {
    	LvScore = {0, 1, 2, 3, 6, 12},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 17066, 15564, 15564, 15564},
    	EndItemNum = {0, 0, 1, 1, 1, 1},
    	EndEXP = {0, 50000, 80000, 100000, 120000, 200000},
    	}
	--ID:279竞技场12人（积分）
	ScoreWarEnd[279] = {
    	LvScore = {0, 1, 5, 10, 15, 20},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	--ID:281蒋干传（积分）
	ScoreWarEnd[281] = {
    	LvScore = {0, 1, 5, 10, 15, 20},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	--ID:280竞技场1人（积分）
	ScoreWarEnd[280] = {
    	LvScore = {0, 1, 5, 10, 15, 20},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	--ID:241国战战场
	ScoreWarEnd[241] = {
    	LvScore = {0, 1, 5, 30, 80, 150},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 22672, 22671, 22670, 22669, 22668},
    	EndItemNum = {0, 1, 1, 1, 1, 1},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[362] = {
    	LvScore = {0, 1, 5, 30, 80, 150},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 22672, 22671, 22670, 22669, 22668},
    	EndItemNum = {0, 1, 1, 1, 1, 1},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}    	
	--ID:334擂台大会（积分）
	ScoreWarEnd[334] = {
    	LvScore = {0, 1, 3, 5, 10, 15},
    	EndReputation = {0, 10, 20, 25, 30, 35},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	--ID:335竞技英雄战（积分）
	ScoreWarEnd[335] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	--ID:348
	ScoreWarEnd[348] = {
    	LvScore = {0, 1, 3, 5, 10, 15},
    	EndReputation = {0, 2, 4, 5, 6, 7},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	--ID:521－536跨服竞技（积分）
	ScoreWarEnd[521] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[522] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[523] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[524] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[525] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[526] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[527] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[528] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[529] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[530] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[531] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[532] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[533] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[534] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[535] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}
	ScoreWarEnd[536] = {
    	LvScore = {0, 0, 0, 0, 0, 0},
    	EndReputation = {0, 0, 0, 0, 0, 0},
    	EndItemName = {0, 0, 0, 0, 0, 0},
    	EndItemNum = {0, 0, 0, 0, 0, 0},
    	EndEXP = {0, 0, 0, 0, 0, 0},
    	}

--首领模式积分战场--
	ScoreWarEnd[332] = ScoreWarEnd[281]
----------------

	local NowLvScore = ScoreWarEnd[idTemplate].LvScore
	local NowReputation = ScoreWarEnd[idTemplate].EndReputation
	local NowItemName = ScoreWarEnd[idTemplate].EndItemName
	local NowItemNum = ScoreWarEnd[idTemplate].EndItemNum
	local NowEXP = ScoreWarEnd[idTemplate].EndEXP
	local lv

	for k = 1, 6 do
		if score >= NowLvScore[k] then
			lv = k;
		else
		    lv = k - 1;
		    break;
		end
	end

	Reputation = NowReputation[lv]
	ItemName = NowItemName[lv]
	ItemNum = NowItemNum[lv]
	EXP = NowEXP[lv]
	return Reputation,ItemName,ItemNum,EXP
end

--资质假技能级别和激活变亮的显示
function GameUI:GetAttributeInfo(nLevel1,nLevel2,nLevel3,nLevel4,nLevel5,nLevel6, nParam)
	SkillOpenPoint = {3, 8, 11, 20, 25, 49, 60, 81, 100}
	SkillMaxLevel = {30, 15, 10, 2, 4, 2, 1, 1, 1}
	SkillLevel = {nLevel1, nLevel2, nLevel5, nLevel4, nLevel3, nLevel6}	--界面1～6排序并非按照6个技能的id次序
	if nParam <= 100 or nParam > 700 then
	    SkillType = 0
		ShowLv = nil
	elseif nParam <= 200 then SkillType = 1
	elseif nParam >200 and nParam <= 300 then SkillType = 2
	elseif nParam >300 and nParam <= 400 then SkillType = 3
	elseif nParam >400 and nParam <= 500 then SkillType = 4
	elseif nParam >500 and nParam <= 600 then SkillType = 5
	elseif nParam >600 then SkillType = 6
	end
	if SkillType ~= 0 then
		SkillNo = nParam - SkillType * 100
		if SkillLevel[SkillType] < SkillOpenPoint[SkillNo] then ShowLv = nil
		else
			for i = 1, SkillMaxLevel[SkillNo] do
				if SkillLevel[SkillType] >= SkillOpenPoint[SkillNo] * i then
			    	ShowLv = i
				else break end
			end
		end
	end
    if ShowLv ~= nil then
		DlgApi.ShowItem("Win_SkillAttribute", Format("AttTxt_%d", nParam), true)
    	DlgApi.ShowItem("Win_SkillAttribute", Format("Mask_%d", nParam), false)
    else
		DlgApi.ShowItem("Win_SkillAttribute", Format("AttTxt_%d", nParam), false)
    	DlgApi.ShowItem("Win_SkillAttribute", Format("Mask_%d", nParam), true)
    end
	return ShowLv
end

--天赋及资质界面上的职业剩余点数显示
--uType = 0时,计算天赋界面主职业剩余点数
--nCharLevel:角色等级
--nLevel    :主职业等级
--nRestPoint:主职业剩余天赋点数
--uType = 1时,计算天赋界面副职业剩余点数
--nCharLevel:角色等级
--nLevel    :副职业等级
--nRestPoint:副职业剩余天赋点数
--uType = 3时,计算资质界面剩余点数
--nCharLevel:角色等级
--nLevel    :主职业等级
--nRestPoint:主职业剩余天赋点数
function GameUI:GetRestPoint(uType, nCharLevel, nLevel, nRestPoint)
	if uType == 0 then
		if nCharLevel >= 61 and nLevel >= 62 then
			if nRestPoint > (nCharLevel - 60) * 5 then
			    ShowPoint = nRestPoint - (nCharLevel - 60) * 5
			else
				ShowPoint = 0
			end
		else
		    ShowPoint = nRestPoint
		end
	elseif uType == 1 then
		ShowPoint = nRestPoint
	elseif uType == 3 then
    	if nCharLevel >= 61 and nLevel >= 62 then
    		if nRestPoint > (nCharLevel - 60) * 5 then
    		    ShowPoint = (nCharLevel - 60) * 5
    		else
    			ShowPoint = nRestPoint
    		end
    	else
    	    ShowPoint = 0
    	end
	end
	return ShowPoint
end

--LevelHelpString1~7
--最近更新内容
function GameUI:GetLevelHelp1(level, prof1, prof1level, prof2, prof2level)
	LevelHelpString = TEXT_NEWHELP_CONTENT
	return LevelHelpString
end

--兵种LevelHelp
function GameUI:GetLevelHelp2(level, prof1, prof1level, prof2, prof2level)
	--各兵种的升阶NPC（对应ProfLevel为1,2,12,22,32,42,52,62,72,82）
	local ProfUpNPC = {}
	ProfUpNPC[1] = {3996,1910,1910,1910,1910,1910,1910,1910,1910,1910}
	ProfUpNPC[2] = {3996,3365,3365,3365,3365,3365,3365,3365,3365,3365}
	ProfUpNPC[3] = {3996,3366,3366,3366,3366,3366,3366,3366,3366,3366}
	ProfUpNPC[4] = {3996,3367,3367,3367,3367,3367,3367,3367,3367,3367}
	ProfUpNPC[5] = {3996,3368,3368,3368,3368,3368,3368,3368,3368,3368}
	ProfUpNPC[6] = {3996,3369,3369,3369,3369,3369,3369,3369,3369,3369}
	ProfUpNPC[7] = {3996,3370,3370,3370,3370,3370,3370,3370,3370,3370}
	ProfUpNPC[8] = {3996,3371,3371,3371,3371,3371,3371,3371,3371,3371}
	ProfUpNPC[9] = {3996,3372,3372,3372,3372,3372,3372,3372,3372,3372}
	ProfUpNPC[10] = {3996,3373,3373,3373,3373,3373,3373,3373,3373,3373}
	ProfUpNPC[11] = {3996,3374,3374,3374,3374,3374,3374,3374,3374,3374}
	ProfUpNPC[12] = {3996,3375,3375,3375,3375,3375,3375,3375,3375,3375}
	ProfUpNPC[13] = {3996,3376,3376,3376,3376,3376,3376,3376,3376,3376}
	ProfUpNPC[14] = {3996,3377,3377,3377,3377,3377,3377,3377,3377,3377}
	ProfUpNPC[15] = {3996,3378,3378,3378,3378,3378,3378,3378,3378,3378}
	ProfUpNPC[16] = {3996,3379,3379,3379,3379,3379,3379,3379,3379,3379}
	ProfUpNPC[17] = {3996,3380,3380,3380,3380,3380,3380,3380,3380,3380}
	ProfUpNPC[18] = {3996,3381,3381,3381,3381,3381,3381,3381,3381,3381}
	--职业前缀
	local ProfFirstName = {}
	ProfFirstName[1] = {GNR_PROFLEVEL_NAME1_0, GNR_PROFLEVEL_NAME1_1, GNR_PROFLEVEL_NAME1_2, GNR_PROFLEVEL_NAME1_3, GNR_PROFLEVEL_NAME1_4, GNR_PROFLEVEL_NAME1_5, GNR_PROFLEVEL_NAME1_6, GNR_PROFLEVEL_NAME1_7, GNR_PROFLEVEL_NAME1_8, GNR_PROFLEVEL_NAME1_9}
    ProfFirstName[2] = {GNR_PROFLEVEL_NAME2_0, GNR_PROFLEVEL_NAME2_1, GNR_PROFLEVEL_NAME2_2, GNR_PROFLEVEL_NAME2_3, GNR_PROFLEVEL_NAME2_4, GNR_PROFLEVEL_NAME2_5, GNR_PROFLEVEL_NAME2_6, GNR_PROFLEVEL_NAME2_7, GNR_PROFLEVEL_NAME2_8, GNR_PROFLEVEL_NAME2_9}
    ProfFirstName[3] = {GNR_PROFLEVEL_NAME3_0, GNR_PROFLEVEL_NAME3_1, GNR_PROFLEVEL_NAME3_2, GNR_PROFLEVEL_NAME3_3, GNR_PROFLEVEL_NAME3_4, GNR_PROFLEVEL_NAME3_5, GNR_PROFLEVEL_NAME3_6, GNR_PROFLEVEL_NAME3_7, GNR_PROFLEVEL_NAME3_8, GNR_PROFLEVEL_NAME3_9}
    ProfFirstName[4] = {GNR_PROFLEVEL_NAME4_0, GNR_PROFLEVEL_NAME4_1, GNR_PROFLEVEL_NAME4_2, GNR_PROFLEVEL_NAME4_3, GNR_PROFLEVEL_NAME4_4, GNR_PROFLEVEL_NAME4_5, GNR_PROFLEVEL_NAME4_6, GNR_PROFLEVEL_NAME4_7, GNR_PROFLEVEL_NAME4_8, GNR_PROFLEVEL_NAME4_9}
    ProfFirstName[5] = {GNR_PROFLEVEL_NAME5_0, GNR_PROFLEVEL_NAME5_1, GNR_PROFLEVEL_NAME5_2, GNR_PROFLEVEL_NAME5_3, GNR_PROFLEVEL_NAME5_4, GNR_PROFLEVEL_NAME5_5, GNR_PROFLEVEL_NAME5_6, GNR_PROFLEVEL_NAME5_7, GNR_PROFLEVEL_NAME5_8, GNR_PROFLEVEL_NAME5_9}
    ProfFirstName[6] = {GNR_PROFLEVEL_NAME6_0, GNR_PROFLEVEL_NAME6_1, GNR_PROFLEVEL_NAME6_2, GNR_PROFLEVEL_NAME6_3, GNR_PROFLEVEL_NAME6_4, GNR_PROFLEVEL_NAME6_5, GNR_PROFLEVEL_NAME6_6, GNR_PROFLEVEL_NAME6_7, GNR_PROFLEVEL_NAME6_8, GNR_PROFLEVEL_NAME6_9}
    ProfFirstName[7] = {GNR_PROFLEVEL_NAME7_0, GNR_PROFLEVEL_NAME7_1, GNR_PROFLEVEL_NAME7_2, GNR_PROFLEVEL_NAME7_3, GNR_PROFLEVEL_NAME7_4, GNR_PROFLEVEL_NAME7_5, GNR_PROFLEVEL_NAME7_6, GNR_PROFLEVEL_NAME7_7, GNR_PROFLEVEL_NAME7_8, GNR_PROFLEVEL_NAME7_9}
    ProfFirstName[8] = {GNR_PROFLEVEL_NAME8_0, GNR_PROFLEVEL_NAME8_1, GNR_PROFLEVEL_NAME8_2, GNR_PROFLEVEL_NAME8_3, GNR_PROFLEVEL_NAME8_4, GNR_PROFLEVEL_NAME8_5, GNR_PROFLEVEL_NAME8_6, GNR_PROFLEVEL_NAME8_7, GNR_PROFLEVEL_NAME8_8, GNR_PROFLEVEL_NAME8_9}
    ProfFirstName[9] = {GNR_PROFLEVEL_NAME9_0, GNR_PROFLEVEL_NAME9_1, GNR_PROFLEVEL_NAME9_2, GNR_PROFLEVEL_NAME9_3, GNR_PROFLEVEL_NAME9_4, GNR_PROFLEVEL_NAME9_5, GNR_PROFLEVEL_NAME9_6, GNR_PROFLEVEL_NAME9_7, GNR_PROFLEVEL_NAME9_8, GNR_PROFLEVEL_NAME9_9}
    ProfFirstName[10] = {GNR_PROFLEVEL_NAME10_0, GNR_PROFLEVEL_NAME10_1, GNR_PROFLEVEL_NAME10_2, GNR_PROFLEVEL_NAME10_3, GNR_PROFLEVEL_NAME10_4, GNR_PROFLEVEL_NAME10_5, GNR_PROFLEVEL_NAME10_6, GNR_PROFLEVEL_NAME10_7, GNR_PROFLEVEL_NAME10_8, GNR_PROFLEVEL_NAME10_9}
    ProfFirstName[11] = {GNR_PROFLEVEL_NAME11_0, GNR_PROFLEVEL_NAME11_1, GNR_PROFLEVEL_NAME11_2, GNR_PROFLEVEL_NAME11_3, GNR_PROFLEVEL_NAME11_4, GNR_PROFLEVEL_NAME11_5, GNR_PROFLEVEL_NAME11_6, GNR_PROFLEVEL_NAME11_7, GNR_PROFLEVEL_NAME11_8, GNR_PROFLEVEL_NAME11_9}
    ProfFirstName[12] = {GNR_PROFLEVEL_NAME12_0, GNR_PROFLEVEL_NAME12_1, GNR_PROFLEVEL_NAME12_2, GNR_PROFLEVEL_NAME12_3, GNR_PROFLEVEL_NAME12_4, GNR_PROFLEVEL_NAME12_5, GNR_PROFLEVEL_NAME12_6, GNR_PROFLEVEL_NAME12_7, GNR_PROFLEVEL_NAME12_8, GNR_PROFLEVEL_NAME12_9}
    ProfFirstName[13] = {GNR_PROFLEVEL_NAME13_0, GNR_PROFLEVEL_NAME13_1, GNR_PROFLEVEL_NAME13_2, GNR_PROFLEVEL_NAME13_3, GNR_PROFLEVEL_NAME13_4, GNR_PROFLEVEL_NAME13_5, GNR_PROFLEVEL_NAME13_6, GNR_PROFLEVEL_NAME13_7, GNR_PROFLEVEL_NAME13_8, GNR_PROFLEVEL_NAME13_9}
    ProfFirstName[14] = {GNR_PROFLEVEL_NAME14_0, GNR_PROFLEVEL_NAME14_1, GNR_PROFLEVEL_NAME14_2, GNR_PROFLEVEL_NAME14_3, GNR_PROFLEVEL_NAME14_4, GNR_PROFLEVEL_NAME14_5, GNR_PROFLEVEL_NAME14_6, GNR_PROFLEVEL_NAME14_7, GNR_PROFLEVEL_NAME14_8, GNR_PROFLEVEL_NAME14_9}
    ProfFirstName[15] = {GNR_PROFLEVEL_NAME15_0, GNR_PROFLEVEL_NAME15_1, GNR_PROFLEVEL_NAME15_2, GNR_PROFLEVEL_NAME15_3, GNR_PROFLEVEL_NAME15_4, GNR_PROFLEVEL_NAME15_5, GNR_PROFLEVEL_NAME15_6, GNR_PROFLEVEL_NAME15_7, GNR_PROFLEVEL_NAME15_8, GNR_PROFLEVEL_NAME15_9}
    ProfFirstName[16] = {GNR_PROFLEVEL_NAME16_0, GNR_PROFLEVEL_NAME16_1, GNR_PROFLEVEL_NAME16_2, GNR_PROFLEVEL_NAME16_3, GNR_PROFLEVEL_NAME16_4, GNR_PROFLEVEL_NAME16_5, GNR_PROFLEVEL_NAME16_6, GNR_PROFLEVEL_NAME16_7, GNR_PROFLEVEL_NAME16_8, GNR_PROFLEVEL_NAME16_9}
    ProfFirstName[17] = {GNR_PROFLEVEL_NAME17_0, GNR_PROFLEVEL_NAME17_1, GNR_PROFLEVEL_NAME17_2, GNR_PROFLEVEL_NAME17_3, GNR_PROFLEVEL_NAME17_4, GNR_PROFLEVEL_NAME17_5, GNR_PROFLEVEL_NAME17_6, GNR_PROFLEVEL_NAME17_7, GNR_PROFLEVEL_NAME17_8, GNR_PROFLEVEL_NAME17_9}
    ProfFirstName[18] = {GNR_PROFLEVEL_NAME18_0, GNR_PROFLEVEL_NAME18_1, GNR_PROFLEVEL_NAME18_2, GNR_PROFLEVEL_NAME18_3, GNR_PROFLEVEL_NAME18_4, GNR_PROFLEVEL_NAME18_5, GNR_PROFLEVEL_NAME18_6, GNR_PROFLEVEL_NAME18_7, GNR_PROFLEVEL_NAME18_8, GNR_PROFLEVEL_NAME18_9}
	--职业后缀
	local ProfNextName = {GNR_PROFRANK_NAME0, GNR_PROFRANK_NAME1, GNR_PROFRANK_NAME2, GNR_PROFRANK_NAME3, GNR_PROFRANK_NAME4, GNR_PROFRANK_NAME5, GNR_PROFRANK_NAME6, GNR_PROFRANK_NAME7, GNR_PROFRANK_NAME8, GNR_PROFRANK_NAME9}
	--每阶0段时的职业等级
	local Prof0ClassLevel = {1,2,12,22,32,42,52,62,72,82}
	--升阶时人物等级
	local ProfUpLv = {10,20,30,40,50,60,61}
	--选职业NPC ID
	SelectNPC = 4968
	--学骑乘NPC ID
	RideNPC = 3352

	local MainFirstName = ProfFirstName[prof1]
	local SubFirstName = ProfFirstName[prof2]
	local MainProfNPC = ProfUpNPC[prof1]
	local SubProfNPC = ProfUpNPC[prof2]
	local Main_Rank, Sub_Rank, Main_Class, Sub_Class, MainCanRankUp, SubCanRankUp = 0, 0, 0, 0, 0, 0
	local Max_Rank = Max_iLevel
	--计算主兵种rank和class
	if prof1 ~= 0 then
    	for i = 1, Max_Rank do
    	    if prof1level >= Prof0ClassLevel[i] then
    	        Main_Rank = i
    	    else Main_Rank = i - 1 break end
    	end
    	Main_Class = prof1level - Prof0ClassLevel[Main_Rank] + 1
    	if prof1level == 1 or Main_Class == 10 then
    	    if level >= ProfUpLv[Main_Rank] and prof1level < Max_ProfLevel then
    	        MainCanRankUp = 1
    	    end
    	end
	end
	--计算副兵种rank和class
	if prof2 ~= 0 then
    	for k = 1, Max_Rank do
    	    if prof2level >= Prof0ClassLevel[k] then
    	        Sub_Rank = k
    	    else Sub_Rank = k - 1 break end
    	end
    	Sub_Class = prof2level - Prof0ClassLevel[Sub_Rank] + 1
    	if prof2level == 1 or Sub_Class == 10 then
    	    if level >= ProfUpLv[Sub_Rank] and prof2level < Max_ProfLevel then
    	        SubCanRankUp = 1
    	    end
    	end
    end
	--计算可选副兵种时兵种等级的rank和class
	for j = 1, Max_Rank do
	    if SelSubLv >= Prof0ClassLevel[j] then
	        Sel_Rank = j
	    else Sel_Rank = j - 1 break end
	end
	Sel_Class = SelSubLv - Prof0ClassLevel[Sel_Rank] + 1
	--计算副兵种开始获得专精点时兵种等级的rank和class
	for l = 1, Max_Rank do
	    if DowerSubLv >= Prof0ClassLevel[l] then
	        SD_Rank = l
	    else SD_Rank = l - 1 break end
	end
	SD_Class = DowerSubLv - Prof0ClassLevel[SD_Rank] + 1
	--计算建议提升到的兵种等级的rank和class,人物等级到61级后直接建议提升ProfLevel到62
	if level >= 61 then
		if prof1level <= 61 then
    		Sug_Rank = 8
    		Sug_Class = 0
		end
	else
		if level >= 10 and level - 8 > prof1level then
    	for m = 1, Max_Rank do
    	    if level - 8 >= Prof0ClassLevel[m] then
    	        Sug_Rank = m
    	    else Sug_Rank = m - 1 break end
    	end
    	Sug_Class = level - 8 - Prof0ClassLevel[Sug_Rank] + 1
    	end
	end

	--兵种提示
	local ProfString, MainProfString, SubProfString = "", "", ""
	if prof1 == 0 then
	    MainProfString = Format(TEXT_PROFHELP_MAINPROFNIL, SelectNPC)
	else
	    local NowMainString, MainSugString = "", ""
		NowMainString = Format(TEXT_PROFHELP_NOWMAINPROF, MainFirstName[Main_Rank], ProfNextName[Main_Class])
		if prof1level >= Max_ProfLevel then
		    MainSugString = TEXT_PROFHELP_MAINPROFMAX
		else
		    if MainCanRankUp == 1 then
		    	MainSugString = Format(TEXT_PROFHELP_MAINSUGGEST2, MainProfNPC[Main_Rank], MainFirstName[Main_Rank + 1], ProfNextName[1])
			else
				if Sug_Rank~= nil then
					MainSugString = Format(TEXT_PROFHELP_MAINSUGGEST1, MainFirstName[Sug_Rank], ProfNextName[Sug_Class])
				else MainSugString = "" end
			end
		end
		MainProfString = Format("%s%s", NowMainString, MainSugString)
	end
	if prof2 == 0 then
	    if prof1 == 0 then
	        SubProfString = TEXT_PROFHELP_SUBPROFNIL3
	    else
	        if prof1level < SelSubLv then
	        	SubProfString = Format(TEXT_PROFHELP_SUBPROFNIL2, MainFirstName[Sel_Rank], ProfNextName[Sel_Class])
	        else SubProfString = Format(TEXT_PROFHELP_SUBPROFNIL1, SelectNPC) end
	    end
	else
	    local NowSubString, SubSugString = "", ""
		NowSubString = Format(TEXT_PROFHELP_NOWSUBPROF, SubFirstName[Sub_Rank], ProfNextName[Sub_Class])
		if prof2level >= Max_ProfLevel then
		    SubSugString = TEXT_PROFHELP_SUBPROFMAX
		else
		    if SubCanRankUp == 1 then
		    	SubSugString = Format(TEXT_PROFHELP_SUBSUGGEST, SubProfNPC[Sub_Rank], SubFirstName[Sub_Rank + 1], ProfNextName[1])
			else SubSugString = "" end
		end
		SubProfString = Format("%s%s", NowSubString, SubSugString)
	end
	if prof1 ~= 0 and prof2 ~= 0 then
	    if prof1level <= prof2level and prof2level < Max_ProfLevel then
	        ProfString = Format("        %s\r        %s\r        %s", MainProfString, SubProfString, TEXT_PROFHELP_SUGGEST)
	    else ProfString = Format("        %s\r        %s", MainProfString, SubProfString) end
	else ProfString = Format("        %s\r        %s", MainProfString, SubProfString)
	end

	--技能学习提示
	local SkillString, SkillSugString, RideSugString, LearnNPC= "", "", "", ""
	local LearnNPC = 0
	--河北地图技能学习NPC(lv：2/4 6/8 10 12/14,大于15时去长安学技能)
	if prof1 ~= 0 then
    	if level <= 4 then
    	    LearnNPC = 3346
    	else if level <= 8 then
    	    LearnNPC = 3348
    	    else if level <= 10 then
    	        LearnNPC = 1882
    		    else if level <= 14 then
    		        LearnNPC = 1882
    				else
    				    LearnNPC = MainProfNPC[2]
    				end
    			end
    		end
    	end
    	--人物等级上限开到100级,实际有技能学的等级只到80级
    	for i = 1, 80/2 do
    	    if level/2 == i then SkillSugString = Format(TEXT_PROFHELP_LEARNSKILL, LearnNPC) break
    	    else if level/2 < i then SkillSugString = TEXT_PROFHELP_LEARNNIL break end
    	    end
    	end
    	if level > 80 then SkillSugString = TEXT_PROFHELP_LEARNNIL end
	else
	    SkillSugString = TEXT_PROFHELP_LEARNNIL
	end
	if level < 20 then
	    RideSugString = Format(TEXT_PROFHELP_LEARNRIDE, RideNPC)
	end
	SkillString = Format("        %s%s", SkillSugString, RideSugString)

	--专精提示
	local MainDowerString, SubDowerString = "", ""
	if prof1 == 0 then
		MainDowerString = TEXT_PROFHELP_MAINDOWERNIL
	else
		if prof1level >= 61 then
	    	MainDowerString = Format(TEXT_PROFHELP_MAINDOWER1, 60)
		else MainDowerString = Format("%s%s", Format(TEXT_PROFHELP_MAINDOWER1, prof1level - 1), TEXT_PROFHELP_MAINDOWER2) end
	end
	if prof2 == 0 then
		SubDowerString = TEXT_PROFHELP_SUBDOWERNIL
	else
	    if prof2level >= 61 then
			SubDowerString = Format(TEXT_PROFHELP_SUBDOWER1, 25)
	    else
	        if prof2level >= DowerSubLv then
	            SubDowerString = Format("%s%s", Format(TEXT_PROFHELP_SUBDOWER1, prof2level - DowerSubLv + 1), TEXT_PROFHELP_SUBDOWER2)
	        else
	            SubDowerString = Format("%s%s", Format(TEXT_PROFHELP_SUBDOWER1, 0), Format(TEXT_PROFHELP_SUBDOWER3, SubFirstName[SD_Rank], ProfNextName[SD_Class]))
	        end
	    end
	end

	--资质提示
	local IntDowerString = ""
	if prof1 ~= 0 then
	    if level >= 61 and prof1level >= 62 then
	        if level >= Max_Level then
	            IntDowerString = Format("\r%s\r        %s", TEXT_PROFHELP_TITLE4, Format(TEXT_PROFHELP_INTDOWER1, (level - 60) * 5))
	        else IntDowerString = Format("\r%s\r        %s%s", TEXT_PROFHELP_TITLE4, Format(TEXT_PROFHELP_INTDOWER1, (level - 60) * 5), TEXT_PROFHELP_INTDOWER2) end
	    end
	end

	LevelHelpString = Format("%s\r%s\r%s\r%s\r%s\r        %s\r        %s%s", TEXT_PROFHELP_TITLE1, ProfString, TEXT_PROFHELP_TITLE2, SkillString, TEXT_PROFHELP_TITLE3, MainDowerString, SubDowerString, IntDowerString)
	return LevelHelpString
end

--任务LevelHelp
function GameUI:GetLevelHelp3(level, prof1, prof1level, prof2, prof2level)
	LevelHelpString = ""
	return LevelHelpString
end

--日常活动LevelHelp
function GameUI:GetLevelHelp4(level, prof1, prof1level, prof2, prof2level)
	--各个日常活动的资料表
	local Meet = {}
	Meet[1] = {NeedLv = 1, MeetNPCid = 0, Name = TEXT_MEET_NAME1, Note = TEXT_MEET_NOTE1}
	Meet[2] = {NeedLv = 1, MeetNPCid = 0, Name = TEXT_MEET_NAME2, Note = TEXT_MEET_NOTE2}
	Meet[3] = {NeedLv = 8, MeetNPCid = 14873, Name = TEXT_MEET_NAME3, Note = TEXT_MEET_NOTE3}
	Meet[4] = {NeedLv = 16, MeetNPCid = 9013, Name = TEXT_MEET_NAME4, Note = TEXT_MEET_NOTE4}
	Meet[5] = {NeedLv = 16, MeetNPCid = 9163, Name = TEXT_MEET_NAME5, Note = TEXT_MEET_NOTE5}
	Meet[6] = {NeedLv = 16, MeetNPCid = 9163, Name = TEXT_MEET_NAME6, Note = TEXT_MEET_NOTE6}
	Meet[7] = {NeedLv = 40, MeetNPCid = 3167, Name = TEXT_MEET_NAME7, Note = TEXT_MEET_NOTE7}
	Meet[8] = {NeedLv = 58, MeetNPCid = 0, Name = TEXT_MEET_NAME8, Note = TEXT_MEET_NOTE8}

	local MeetString = {}
	local String1, String2 = "", ""
	local AllMeetString = ""

	local n = 0
	while true do
	    n = n + 1
	    if Meet[n] == nil then n = n - 1 break end
	end
	for i = 1, n do
		if level >= Meet[i].NeedLv then
		    String1 = Format(TEXT_MEETHELP_CONTENT1, Meet[i].Name, Meet[i].Note)
		    if Meet[i].MeetNPCid ~= 0 then
		        String2 = Format(TEXT_MEETHELP_CONTENT2, Meet[i].MeetNPCid)
		    else
		        String2 = ""
		    end
		    MeetString[i] = Format("%s%s\r", String1, String2)
		else
		    MeetString[i] = ""
		end
		AllMeetString = Format("%s%s", AllMeetString, MeetString[i])
	end
	if AllMeetString ~= "" then
	    LevelHelpString = AllMeetString
	else
	    LevelHelpString = TEXT_MEETHELP_NIL
	end
	return LevelHelpString
end

--装备LevelHelp
function GameUI:GetLevelHelp5(level, prof1, prof1level, prof2, prof2level)
	--各阶装备的等级需求表(1武器2衣服3护肩4护腿5鞋6腰带7护腕)
	local EquipNeedLevel = {}
	EquipNeedLevel[1] = {1, 8, 22, 36, 50, 60, 60, 70, 80, 90, 100, 256} --武器
	EquipNeedLevel[2] = {2, 8, 22, 36, 50, 60, 60, 70, 80, 90, 100, 256} --衣服
	EquipNeedLevel[3] = {4, 13, 27, 41, 54, 60, 60, 70, 80, 90, 100, 256} --护肩
	EquipNeedLevel[4] = {5, 15, 29, 43, 56, 60, 60, 70, 80, 90, 100, 256} --护腿
	EquipNeedLevel[5] = {3, 10, 24, 38, 52, 60, 60, 70, 80, 90, 100, 256} --鞋
	EquipNeedLevel[6] = {6, 18, 32, 46, 57, 60, 60, 70, 80, 90, 100, 256} --腰带
	EquipNeedLevel[7] = {7, 20, 34, 48, 58, 60, 60, 70, 80, 90, 100, 256} --护腕
	--装备品级名称
	local EquipLevelName = {GNR_EQUIPLEVEL_NAME0, GNR_EQUIPLEVEL_NAME1, GNR_EQUIPLEVEL_NAME2, GNR_EQUIPLEVEL_NAME3, GNR_EQUIPLEVEL_NAME4, GNR_EQUIPLEVEL_NAME5, GNR_EQUIPLEVEL_NAME6, GNR_EQUIPLEVEL_NAME7, GNR_EQUIPLEVEL_NAME8, GNR_EQUIPLEVEL_NAME9, GNR_EQUIPLEVEL_NAME10}
	--装备位置名称
	local EquipGridName = {GNR_EQUIPGRID_NAME1, GNR_EQUIPGRID_NAME2, GNR_EQUIPGRID_NAME3, GNR_EQUIPGRID_NAME4, GNR_EQUIPGRID_NAME5, GNR_EQUIPGRID_NAME6, GNR_EQUIPGRID_NAME7}

	local EquipString = {}
	local CanChangeGrid, CanChangeString, AllEquipString = "", "", ""

	local Now_eLv, n = 0, 0
	while true do
	    n = n + 1
	    if EquipNeedLevel[n] == nil then n = n - 1 break end
	end
	for eId = 1, n do
		for eLv = 1, Max_EquipLevel + 1 do
			if level >= EquipNeedLevel[eId][eLv] then
				Now_eLv = eLv;
			else
		    	Now_eLv = eLv - 1;
		    	break;
			end
		end
		NowString = Format(TEXT_EQUIPHELP_NOWEQUIP, EquipGridName[eId], EquipLevelName[Now_eLv])
		if EquipNeedLevel[eId][Now_eLv + 1] > Max_Level or Now_eLv >= Max_EquipLevel + 1 then
		    NextString = ""
		else
			NextString = Format(TEXT_EQUIPHELP_NEXTEQUIP, EquipGridName[eId], EquipNeedLevel[eId][Now_eLv + 1])
		end
		EquipString[eId] = Format("%s%s\r", NowString, NextString)
		AllEquipString = Format("%s%s", AllEquipString, EquipString[eId])
		for eLvAG = 1, Max_EquipLevel + 1 do
			if level == EquipNeedLevel[eId][eLvAG] then
			   	CanChangeGrid = Format("%s%s", CanChangeGrid, Format("%s%s", EquipGridName[eId], " "));
				break;
			end
		end
	end

	if CanChangeGrid == "" then
	    CanChangeString = ""
	else
	    CanChangeString = Format("%s\r\r", Format(TEXT_EQUIPHELP_CANCHANGE, CanChangeGrid));
	end

	LevelHelpString = Format("%s%s", CanChangeString, AllEquipString)
	return LevelHelpString
end

--生产技能LevelHelp
function GameUI:GetLevelHelp6(level, prof1, prof1level, prof2, prof2level)
	--各个生产技能的资料表,OpenLv开放生产等级,LearnNeedLv学习的等级要求,LearnNeedSkill学习的生产熟练度要求,LearnNPCid学习的NPC的ID
	local Produce = {}
	Produce[1] = {Name = TEXT_PRODUCESKILL_SKILLTYPE1, Note = TEXT_PRODUCESKILL_NOTE1, OpenLv = 1, LearnNeedLv = {20}, LearnNeedSkill = {0}, LearnNPCid = {1915}} --驯养
	Produce[2] = {Name = TEXT_PRODUCESKILL_SKILLTYPE2, Note = TEXT_PRODUCESKILL_NOTE2, OpenLv = 6, LearnNeedLv = {5,15,24,36,48,63}, LearnNeedSkill = {0,15,35,60,90,120}, LearnNPCid = {1923,1924,1924,1924,1924,1924}} --烹饪
	Produce[3] = {Name = TEXT_PRODUCESKILL_SKILLTYPE3, Note = TEXT_PRODUCESKILL_NOTE3, OpenLv = 6, LearnNeedLv = {8,20,34,48,58,68}, LearnNeedSkill = {0,15,35,60,90,120}, LearnNPCid = {1917,1918,1918,1918,1918,1918}} --铁匠
	Produce[4] = {Name = TEXT_PRODUCESKILL_SKILLTYPE4, Note = TEXT_PRODUCESKILL_NOTE4, OpenLv = 5, LearnNeedLv = {8,20,34,48,58}, LearnNeedSkill = {0,15,35,60,90}, LearnNPCid = {1919,1920,1920,1920,1920}} --裁缝
	Produce[5] = {Name = TEXT_PRODUCESKILL_SKILLTYPE5, Note = TEXT_PRODUCESKILL_NOTE5, OpenLv = 4, LearnNeedLv = {22,34,48,58}, LearnNeedSkill = {0,15,35,60}, LearnNPCid = {1927,1928,1928,1928}} --巧匠
	Produce[6] = {Name = TEXT_PRODUCESKILL_SKILLTYPE6, Note = TEXT_PRODUCESKILL_NOTE6, OpenLv = 6, LearnNeedLv = {19,24,34,44,53,71}, LearnNeedSkill = {0,15,35,60,90,120}, LearnNPCid = {1925,1926,1926,1926,1926,1926}} --药师
	Produce[7] = {Name = TEXT_PRODUCESKILL_SKILLTYPE7, Note = TEXT_PRODUCESKILL_NOTE7, OpenLv = 6, LearnNeedLv = {9,15,28,40,48,65}, LearnNeedSkill = {0,15,35,60,90,120}, LearnNPCid = {1929,1930,1930,1930,1930,1930}} --急救
	Produce[8] = {Name = TEXT_PRODUCESKILL_SKILLTYPE8, Note = TEXT_PRODUCESKILL_NOTE8, OpenLv = 1, LearnNeedLv = {22}, LearnNeedSkill = {0}, LearnNPCid = {1932}} --工匠
	local ProduceLvName = {TEXT_PRODUCESKILL_SKILLLEVELTYPE1, TEXT_PRODUCESKILL_SKILLLEVELTYPE2, TEXT_PRODUCESKILL_SKILLLEVELTYPE3, TEXT_PRODUCESKILL_SKILLLEVELTYPE4, TEXT_PRODUCESKILL_SKILLLEVELTYPE5, TEXT_PRODUCESKILL_SKILLLEVELTYPE6}

	local ProduceString = {}
	local AllProduceString = ""
	local n, Now_pLv = 0, 0
	while true do
	    n = n + 1
	    if Produce[n] == nil then n = n - 1 break end
	end
	for i = 1, n do
		local LearnLv = Produce[i].LearnNeedLv
		local LearnNpc = Produce[i].LearnNPCid
		for pLv = 1, Produce[i].OpenLv do
			if level >= LearnLv[pLv] then
				Now_pLv = pLv;
			else
		    	Now_pLv = pLv - 1;
		    	break;
			end
		end
		if Now_pLv==0 then
			ProduceString[i] = Format(TEXT_PRODUCEHELP_SKILLINFO, Produce[i].Name, Produce[i].Note, Format(TEXT_PRODUCEHELP_FIRSTINFO, LearnLv[1]))
		else
		    ProduceString[i] = Format(TEXT_PRODUCEHELP_SKILLINFO, Produce[i].Name, Produce[i].Note, Format(TEXT_PRODUCEHELP_LEARNINFO, ProduceLvName[Now_pLv], LearnNpc[Now_pLv]))
		end
		AllProduceString = Format("%s%s\r", AllProduceString, ProduceString[i])
	end
	LevelHelpString = AllProduceString
	return LevelHelpString
end

--战场LevelHelp
function GameUI:GetLevelHelp7(level, prof1, prof1level, prof2, prof2level)
	--各个战场的资料表
	local Battle = {}
	Battle[1] = {Name = TEXT_BATTLE_NAME1, NeedLv = 58, Type = 1}
	Battle[2] = {Name = TEXT_BATTLE_NAME2, NeedLv = 60, Type = 1}
	Battle[3] = {Name = TEXT_BATTLE_NAME3, NeedLv = 20, Type = 2}
	Battle[4] = {Name = TEXT_BATTLE_NAME4, NeedLv = 40, Type = 2}
	Battle[5] = {Name = TEXT_BATTLE_NAME5, NeedLv = 50, Type = 2}
	Battle[6] = {Name = TEXT_BATTLE_NAME6, NeedLv = 50, Type = 2}
	Battle[7] = {Name = TEXT_BATTLE_NAME7, NeedLv = 58, Type = 2}
	Battle[8] = {Name = TEXT_BATTLE_NAME8, NeedLv = 25, Type = 3}
	Battle[9] = {Name = TEXT_BATTLE_NAME9, NeedLv = 60, Type = 3}
	Battle[10] = {Name = TEXT_BATTLE_NAME10, NeedLv = 60, Type = 3}
	Battle[11] = {Name = TEXT_BATTLE_NAME11, NeedLv = 30, Type = 4}
	Battle[12] = {Name = TEXT_BATTLE_NAME12, NeedLv = 55, Type = 4}
	Battle[13] = {Name = TEXT_BATTLE_NAME13, NeedLv = 58, Type = 4}
	Battle[14] = {Name = TEXT_BATTLE_NAME14, NeedLv = 58, Type = 4}
	Battle[15] = {Name = TEXT_BATTLE_NAME15, NeedLv = 58, Type = 4}
	Battle[16] = {Name = TEXT_BATTLE_NAME16, NeedLv = 58, Type = 4}
	Battle[17] = {Name = TEXT_BATTLE_NAME17, NeedLv = 58, Type = 4}
	Battle[18] = {Name = TEXT_BATTLE_NAME18, NeedLv = 48, Type = 4}
	Battle[19] = {Name = TEXT_BATTLE_NAME19, NeedLv = 60, Type = 2}
	Battle[20] = {Name = TEXT_BATTLE_NAME20, NeedLv = 65, Type = 2}
	Battle[21] = {Name = TEXT_BATTLE_NAME21, NeedLv = 70, Type = 2}
	Battle[22] = {Name = TEXT_BATTLE_NAME22, NeedLv = 61, Type = 3}
	Battle[23] = {Name = TEXT_BATTLE_NAME23, NeedLv = 68, Type = 3}
	Battle[24] = {Name = TEXT_BATTLE_NAME24, NeedLv = 75, Type = 3}
	local BattleType = {TEXT_BATTLEHELP_BATTLETYPE1, TEXT_BATTLEHELP_BATTLETYPE2, TEXT_BATTLEHELP_BATTLETYPE3, TEXT_BATTLEHELP_BATTLETYPE4}

	local BattleString = {}
	local AllBattleString = ""
	local n = 0
	while true do
	    n = n + 1
	    if Battle[n] == nil then n = n - 1 break end
	end
	for i = 1, n do
	    --等级大于入场等级在10级以内的战场均为推荐战场
		if level >= Battle[i].NeedLv and level <= Battle[i].NeedLv + 10 then
			TypeID = Battle[i].Type
			BattleString[i] = Format("%s\r", Format(TEXT_BATTLEHELP_BATTLEINFO, Battle[i].NeedLv, BattleType[TypeID], Battle[i].Name))
		else
			BattleString[i] = ""
		end
		AllBattleString = Format("%s%s", AllBattleString, BattleString[i])
	end
	if AllBattleString ~= "" then
	    LevelHelpString = Format("%s\r%s", TEXT_BATTLEHELP_TITLE, AllBattleString)
	else
	    LevelHelpString = TEXT_BATTLEHELP_NIL
	end
	return LevelHelpString
end

--官职LevelHelp（暂时不用）
--function GameUI:GetLevelHelp7(level, prof1, prof1level, prof2, prof2level)
--	--各品官职的资料表(等级需求/NPCid/官职名/官品Level/官职类型：军职文官武官/需要文勋武勋/消耗功勋值)
--	local Position = {}
--    Position[1] = {NeedLv = 10, QuestNPCid = 2484, Name = TEXT_POSITION_NAME1, Lv = 0, Type = 0, NeedExploit = 0, UseExploit = 0}
--    Position[2] = {NeedLv = 20, QuestNPCid = 2485, Name = TEXT_POSITION_NAME2, Lv = 0, Type = 0, NeedExploit = 0, UseExploit = 50}
--    Position[3] = {NeedLv = 30, QuestNPCid = 2219, Name = TEXT_POSITION_NAME3, Lv = 0, Type = 0, NeedExploit = 0, UseExploit = 100}
--    Position[4] = {NeedLv = 40, QuestNPCid = 2489, Name = TEXT_POSITION_NAME4, Lv = 1, Type = 2, NeedExploit = 200, UseExploit = 200}
--    Position[5] = {NeedLv = 50, QuestNPCid = 2489, Name = TEXT_POSITION_NAME5, Lv = 2, Type = 2, NeedExploit = 600, UseExploit = 600}
--    Position[6] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME6, Lv = 3, Type = 2, NeedExploit = 2000, UseExploit = 2000}
--    Position[7] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME7, Lv = 4, Type = 2, NeedExploit = 10000, UseExploit = 6000}
--    Position[8] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME8, Lv = 4, Type = 2, NeedExploit = 10000, UseExploit = 6000}
--    Position[9] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME9, Lv = 5, Type = 2, NeedExploit = 20000, UseExploit = 8000}
--    Position[10] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME10, Lv = 5, Type = 2, NeedExploit = 20000, UseExploit = 8000}
--    Position[11] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME11, Lv = 5, Type = 2, NeedExploit = 20000, UseExploit = 8000}
--    Position[12] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME12, Lv = 5, Type = 2, NeedExploit = 20000, UseExploit = 8000}
--    Position[13] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME13, Lv = 6, Type = 2, NeedExploit = 35000, UseExploit = 15000}
--    Position[14] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME14, Lv = 6, Type = 2, NeedExploit = 35000, UseExploit = 15000}
--    Position[15] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME15, Lv = 6, Type = 2, NeedExploit = 35000, UseExploit = 15000}
--    Position[16] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME16, Lv = 6, Type = 2, NeedExploit = 35000, UseExploit = 15000}
--    Position[17] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME17, Lv = 7, Type = 2, NeedExploit = 65000, UseExploit = 30000}
--    Position[18] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME18, Lv = 7, Type = 2, NeedExploit = 65000, UseExploit = 30000}
--    Position[19] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME19, Lv = 7, Type = 2, NeedExploit = 65000, UseExploit = 30000}
--    Position[20] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME20, Lv = 7, Type = 2, NeedExploit = 65000, UseExploit = 30000}
--    Position[21] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME21, Lv = 8, Type = 2, NeedExploit = 120000, UseExploit = 60000}
--    Position[22] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME22, Lv = 8, Type = 2, NeedExploit = 120000, UseExploit = 60000}
--    Position[23] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME23, Lv = 8, Type = 2, NeedExploit = 120000, UseExploit = 60000}
--    Position[24] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME24, Lv = 8, Type = 2, NeedExploit = 120000, UseExploit = 60000}
--    Position[25] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME25, Lv = 9, Type = 2, NeedExploit = 200000, UseExploit = 100000}
--    Position[26] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME26, Lv = 9, Type = 2, NeedExploit = 200000, UseExploit = 100000}
--    Position[27] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME27, Lv = 9, Type = 2, NeedExploit = 200000, UseExploit = 100000}
--    Position[28] = {NeedLv = 60, QuestNPCid = 2489, Name = TEXT_POSITION_NAME28, Lv = 9, Type = 2, NeedExploit = 200000, UseExploit = 100000}
--    Position[29] = {NeedLv = 40, QuestNPCid = 2490, Name = TEXT_POSITION_NAME29, Lv = 1, Type = 1, NeedExploit = 200, UseExploit = 200}
--    Position[30] = {NeedLv = 50, QuestNPCid = 2490, Name = TEXT_POSITION_NAME30, Lv = 2, Type = 1, NeedExploit = 600, UseExploit = 600}
--    Position[31] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME31, Lv = 3, Type = 1, NeedExploit = 2000, UseExploit = 2000}
--    Position[32] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME32, Lv = 4, Type = 1, NeedExploit = 10000, UseExploit = 6000}
--    Position[33] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME33, Lv = 4, Type = 1, NeedExploit = 10000, UseExploit = 6000}
--    Position[34] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME34, Lv = 5, Type = 1, NeedExploit = 20000, UseExploit = 8000}
--    Position[35] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME35, Lv = 5, Type = 1, NeedExploit = 20000, UseExploit = 8000}
--    Position[36] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME36, Lv = 5, Type = 1, NeedExploit = 20000, UseExploit = 8000}
--    Position[37] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME37, Lv = 5, Type = 1, NeedExploit = 20000, UseExploit = 8000}
--    Position[38] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME38, Lv = 6, Type = 1, NeedExploit = 35000, UseExploit = 15000}
--    Position[39] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME39, Lv = 6, Type = 1, NeedExploit = 35000, UseExploit = 15000}
--    Position[40] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME40, Lv = 6, Type = 1, NeedExploit = 35000, UseExploit = 15000}
--    Position[41] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME41, Lv = 6, Type = 1, NeedExploit = 35000, UseExploit = 15000}
--    Position[42] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME42, Lv = 7, Type = 1, NeedExploit = 65000, UseExploit = 30000}
--    Position[43] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME43, Lv = 7, Type = 1, NeedExploit = 65000, UseExploit = 30000}
--    Position[44] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME44, Lv = 7, Type = 1, NeedExploit = 65000, UseExploit = 30000}
--    Position[45] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME45, Lv = 7, Type = 1, NeedExploit = 65000, UseExploit = 30000}
--    Position[46] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME46, Lv = 8, Type = 1, NeedExploit = 120000, UseExploit = 60000}
--    Position[47] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME47, Lv = 8, Type = 1, NeedExploit = 120000, UseExploit = 60000}
--    Position[48] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME48, Lv = 8, Type = 1, NeedExploit = 120000, UseExploit = 60000}
--    Position[49] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME49, Lv = 8, Type = 1, NeedExploit = 120000, UseExploit = 60000}
--    Position[50] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME50, Lv = 9, Type = 1, NeedExploit = 200000, UseExploit = 100000}
--    Position[51] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME51, Lv = 9, Type = 1, NeedExploit = 200000, UseExploit = 100000}
--    Position[52] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME52, Lv = 9, Type = 1, NeedExploit = 200000, UseExploit = 100000}
--    Position[53] = {NeedLv = 60, QuestNPCid = 2490, Name = TEXT_POSITION_NAME53, Lv = 9, Type = 1, NeedExploit = 200000, UseExploit = 100000}
--	local PositionLvName = {GNR_POSITION_LEVEL0, GNR_POSITION_LEVEL1, GNR_POSITION_LEVEL2, GNR_POSITION_LEVEL3, GNR_POSITION_LEVEL4, GNR_POSITION_LEVEL5, GNR_POSITION_LEVEL6, GNR_POSITION_LEVEL7, GNR_POSITION_LEVEL8, GNR_POSITION_LEVEL9}
--	local PositionTypeName = {GNR_POSITION_TYPE0, GNR_POSITION_TYPE1, GNR_POSITION_TYPE2}
--	local PositionExploit = {GNR_POSITION_EXPLOIT1, GNR_POSITION_EXPLOIT2}
--
--	local PositionString = {}
--	local AllPositionString, NeedExploitString = "", ""
--	local n = 0
--	while true do
--	    n = n + 1
--	    if Position[n] == nil then n = n - 1 break end
--	end
--	for i = 1, n do
--		if level >= Position[i].NeedLv and Position[i].Lv <= Max_PositionLevel then
--			LvID = Position[i].Lv
--			TypeID = Position[i].Type
--			if LvID ~= 0 then
--				NeedExploitString = Format(TEXT_POSITIONHELP_NEEDEXPLOIT, PositionExploit[TypeID], Position[i].NeedExploit)
--			else
--				NeedExploitString = ""
--			end
--		    PositionString[i] = Format(TEXT_POSITIONHELP_INFO, PositionLvName[LvID + 1], PositionTypeName[TypeID + 1], Position[i].Name, NeedExploitString, Format(TEXT_POSITIONHELP_USEEXPLOIT, Position[i].UseExploit), Format(TEXT_POSITIONHELP_NPCINFO, Position[i].QuestNPCid))
--		else
--		    PositionString[i] = ""
--		end
--		AllPositionString = Format("%s%s", AllPositionString, PositionString[i])
--	end
--	if AllPositionString ~= "" then
--	    LevelHelpString = AllPositionString
--	else
--	    LevelHelpString = TEXT_POSITIONHELP_NIL
--	end
--	return LevelHelpString
--end



 --<活动日历>
--EventMsg = 活动列表
--Day = "日期"
--Level = 任务所需等级
--EventIcon = "活动图标"
--TopImage = "顶图标"
--Finish = "活动结束图标"
--Hint = "活动文字说明"
--NpcName = "活动npc名称"
--NpcID = "活动npcID"
--Note  = "活动说明"


function GameUI:GetEventView(Year,Month,Day,Level,Index)
--活动资料表
EventMsg = {}
--A指定日期活动
--EventMsg[1] = {Year = 2009, Month = 3, Date = 14, Level = 15, EventIcon="", TopImage="", Finish="", Hint="", NpcName = "", NpcID = "", Note  = ""}
--B每年活动
--EventMsg[2] = {Year = 0, Month = 3, Date = 14, Level = 15, EventIcon="", TopImage="", Finish="", Hint="", NpcName = "", NpcID = "", Note  = ""}
--C每月活动
--EventMsg[3] = {Year = 0, Month = 0, Date = 14, Level = 15, EventIcon="", TopImage="", Finish="", Hint="", NpcName = "", NpcID = "", Note  = ""}
--D每周活动
EventMsg[1] = {Week = {0},Level = 16, EventIcon="CB\\Calendar\\每日钓鱼.tga", TopImage="", Finish="", Hint= "^ff7d2f周末钓鱼大赛\r^fff962活动开始时间：19：00\r^fff962等级限制16级以上\r^ffffff活动期间，可在长安杨秋处（43，321）领取鱼饵，前往3线-14线\r的西凉明月池参加大赛。",NpcName = "", Note = ""}
EventMsg[2] = {Week = {6},Level = 60, EventIcon="CB\\Calendar\\神州赛马大会.tga", TopImage="", Finish="", Hint= "^ff7d2f神州赛马大会\r^fff962活动开始时间：21：30\r^fff962等级限制60级以上\r^ffffff60级以上玩家从服务器6线登陆，与战场管理员对话并消耗一个神州·赛\r马令牌，即可加入赛马活动。同时允许玩家观战，不消耗任何物品。",NpcName = "", Note = ""}
EventMsg[3] = {Week = {0},Level = 16, EventIcon="CB\\Calendar\\董卓行宫.tga", TopImage="", Finish="", Hint= "^ff7d2f董卓行宫\r^fff962活动开始时间：15：00\r^fff962等级限制16级以上\r^ffffff董卓劫掠巨大财富藏于行宫，如今，16级以上玩家可通过长安仙童\r凌瑶（132，192）进入行宫，寻宝探秘。",NpcName = "", Note = ""}
EventMsg[4] = {Week = {6},Level = 50, EventIcon="CB\\Calendar\\国战.tga", TopImage="", Finish="", Hint= "^ff7d2f国战\r^fff962活动开始时间：20：00\r^fff962等级限制50级以上\r^ffffff50级以上已加入阵营的玩家可以通过国战服务申请进入对应阵营国战。",NpcName = "", Note = ""}
EventMsg[5] = {Week = {6},Level = 60, EventIcon="CB\\Calendar\\抗击匈奴.tga", TopImage="", Finish="", Hint= "^ff7d2f抗击匈奴\r^fff962活动开始时间：20：00\r^fff962等级限制60级以上\r^ffffff国战开始后，60级以上强国玩家可在本阵营中军大帐中，由传令官处接到此\r任务并被传送到任务地图。",NpcName = "", Note = ""}
EventMsg[6] = {Week = {6},Level = 60, EventIcon="CB\\Calendar\\铲除凶狼.tga", TopImage="", Finish="", Hint= "^ff7d2f铲除凶狼\r^fff962活动开始时间：19：00\r^fff962等级限制60级以上\r^ffffff国战开始后，60级以上弱国玩家可在本阵营中军大帐中，由传令官处接到此\r任务并被传送到任务地图。",NpcName = "", Note = ""}
--F日常活动
EventMsg[7] = {Time = {20}, Level = 58, EventIcon="CB\\Calendar\\征战令大.tga", TopImage="", Finish="", Hint= "^ff7d2f领取征战令\r^fff962活动开始时间：20：00\r^fff962等级限制58级以上\r^ffffff玩家可于长安未央宫韩彬或马元义处领取2枚征战令，凭借此令在韩\r彬或马元义处领取“血染颍川”、“征战濮阳”，每领取1个任务消\r耗令牌1枚。也可在陈登或者陈圭处领取“征战濮阳贰”，每领取1\r个任务消耗令牌2枚。在濮阳之战贰内，也有某些使用征战令的特殊\r任务。",NpcName = "", Note = ""}
EventMsg[8] = {Time = {19}, Level = 0, EventIcon="CB\\Calendar\\舌战群儒大.tga", TopImage="", Finish="", Hint= "^ff7d2f舌战群儒\r^fff962活动开始时间：19：30\r^fff962无等级限制\r^ffffff每天活动开始后，在线玩家会收到活动邀请。接受邀请，参加答题，获\r得海量经验，博览天下知识。",NpcName = "", Note = ""}
EventMsg[9] = {Time = {21}, Level = 60, EventIcon="CB\\Calendar\\关中赛马大会大.tga", TopImage="", Finish="", Hint= "^ff7d2f关中赛马大会\r^fff962活动开始时间：21：30\r^fff962等级限制60级以上\r^ffffff60级以上玩家在6、7、8线登陆,与战场管理员对话并消耗一个关中·赛马令牌,\r即可加入赛马活动。同时允许玩家观战,不消耗任何物品。",NpcName = "",Note = ""}
--F日常活动
EventMsg[10] = {AllTime = 1, Level = 0, EventIcon="CB\\Calendar\\千里追凶.tga", TopImage="", Finish="", Hint= "^ff7d2f千里追凶\r^fff962无等级限制\r^ffffff每隔2小时凶徒现身各地。各地凶贼：9线，冀州城北郊，半撮毛；\r7线，凉州城外，半天云；6线，竹海附近，戈丹；5线，银坑山，\r布索；12线，钟陵，萧侯；15线，襄阳城外，冯异；1线，龙首\r原，于缺；3线，岐山原，常五；10线，鸿固原，李夏；11线，\r乐游原，焦孟；8线，龙首原，宋齐。",NpcName = "", Note = ""}
EventMsg[11] = {AllTime = 1, Level = 16, EventIcon="CB\\Calendar\\五丈原之战.tga", TopImage="", Finish="", Hint= "^ff7d2f每天寻宝\r^fff962等级限制16级以上\r^ffffff每天1次，可在长安南极子处开始寻宝之旅。",NpcName = "", Note = ""}
EventMsg[12] = {AllTime = 1, Level = 16, EventIcon="CB\\Calendar\\每日钓鱼.tga", TopImage="", Finish="", Hint= "^ff7d2f每天钓鱼\r^fff962等级限制16级以上\r^ffffff每天在长安孔融（43，321）处领取鱼饵，在3线-14线的河\r北桃园村池塘，参加每天垂钓活动。",NpcName = "", Note = ""}
EventMsg[13] = {AllTime = 1, Level = 40, EventIcon="CB\\Calendar\\乐府采风.tga", TopImage="", Finish="", Hint= "^ff7d2f乐府采风\r^fff962等级限制40级以上\r^ffffff长安祭酒师瑁有意重整乐府，40级以上玩家与师瑁对话，在其指引\r下到各地采诗官处领取乐府令。在该令引导下，2小时内收集10首\r诗歌，获得重赏。",NpcName = "", Note = ""}
EventMsg[14] = {AllTime = 1, Level = 58, EventIcon="CB\\Calendar\\五丈原之战.tga", TopImage="", Finish="", Hint= "^ff7d2f五丈原之战\r^fff962等级限制58级以上\r^ffffff58级以上加入魏蜀吴任一阵营的玩家，可在服务器二线参加五丈原\r争夺战。",NpcName = "", Note = ""}
EventMsg[15] = {AllTime = 1, Level = 16, EventIcon="CB\\Calendar\\镖银递送.tga", TopImage="", Finish="", Hint= "^ff7d2f镖银递送\r^fff962等级限制16级以上\r^ffffff每天一次，玩家与长安镖局大掌柜洪金（17，188）对话，帮助\r他找回前日镖局走镖遗失的物资，大掌柜必有重赏。",NpcName = "", Note = ""}
EventMsg[16] = {AllTime = 1, Level = 60, EventIcon="CB\\Calendar\\七巧锦囊.tga", TopImage="", Finish="", Hint= "^ff7d2f七巧锦囊\r^fff962等级限制60级以上\r^ffffff玩家视不同等级，每隔4小时可在长安北斗星君（136，192）处领取\r不同地图的七巧锦囊来开始寻宝之旅。（须在长安徐子易处做完前提\r任务夜观星象）。",NpcName = "", Note = ""}
EventMsg[17] = {AllTime = 1, Level = 61, EventIcon="CB\\Calendar\\神兵玄奇.tga", TopImage="", Finish="", Hint= "^ff7d2f神兵玄奇\r^fff962等级限制61级以上\r^ffffff61级以上玩家可与长安铸剑大师欧冶子（141，90）对话接受委托，寻\r找散落各地的星之玄铁。除获得历练外，更有望得到大师的推荐信\r以及百年玄铁、千年玄铁和万年玄铁。 ",NpcName = "", Note = ""}
EventMsg[18] = {AllTime = 1, Level = 65, EventIcon="CB\\Calendar\\江山如画.tga", TopImage="", Finish="", Hint= "^ff7d2f江山如画\r^fff962活动开始时间：17：00\r^fff962等级限制65级以上\r^ffffff65级以上两玩家组队，队长拥有“千里江山图序章之上”，队员拥\r有“千里江山图序章之下”，在长安城丹青生处（167 117）开启江\r山如画任务。（“序章”在神兵玄奇任务中有一定几率获得）",NpcName = "", Note = ""}
EventMsg[19] = {AllTime = 1, Level = 16, EventIcon="CB\\Calendar\\福威镖局押镖.tga", TopImage="", Finish="", Hint= "^ff7d2f福威镖局押镖\r^fff962等级限制16级以上\r^ffffff玩家每天都可在长安总镖头佟威处（22 187）领取一个“福威\r镖单”。持有“福威镖单”的玩家组队后，找到各大主城分局镖头，\r由队长领取任务。",NpcName = "", Note = ""}
EventMsg[20] = {AllTime = 1, Level = 70, EventIcon="CB\\Calendar\\魔王城制压战.tga", TopImage="", Finish="", Hint= "^ff7d2f魔王城制压战\r^fff962等级限制70级以上\r^ffffff70级以上加入魏蜀吴任一阵营的玩家，可在服务器二线参加魔王城\r压制战。",NpcName = "", Note = ""}
EventMsg[21] = {AllTime = 1, Level = 25, EventIcon="CB\\Calendar\\抗击匈奴.tga", TopImage="", Finish="", Hint= "^ff7d2f黄巾平乱\r^fff962等级限制25级以上\r^ffffff偶数整点黄巾余党于2线各地四处作乱，朝廷重金聘请侠义之士前去\r平乱。",NpcName = "", Note = ""}
--C每月活动
EventMsg[22] = {Year = 0, Month = 0, Date = 25, Level = 16, EventIcon="CB\\Calendar\\七巧锦囊.tga", TopImage="", Finish="", Hint= "^ff7d2f领工资\r^fff962活动开始时间：每月25日至当月月底\r^fff962等级限制16级以上\r^ffffff每月25号，玩家可到长安未央宫门口或冀州城内找到【值日功曹】领取工资【三国\r古币】。工资根据玩家级别、在线时间、官阶高低等而有所区别。三国古币可在古\r币商人处购买各种物品。",NpcName = "", Note = ""}


	local ViewMsg = ""
	local ViewEventIcon, ViewHint = "", ""
	local Num1, Num2 = 0, 0
	local DefaultMonthIcon = "CB\\Calendar\\月历活动提示.tga"
	local DefaultDayIcon = "CB\\Calendar\\日历活动提示.tga"
	local titlenum, n = 0, 0
	local EventTime = {}
	local EventWeek = {}


	--计算有几个活动资料
	while true do
	n = n + 1
	if EventMsg[n] == nil then n = n - 1 break end
	end

	if n == 0 then 	--检查如果没有活动资料,返回空值
	    ViewMsg = ""

	else
	 if Index == -1 then 
	   ViewMsg = Format("%s\r%s\r%s\r%s\r%s", "", "", "", "", "")
	 end 
    	if Day > 0 then --程序给的Day大于0,表示显示的是日历
    		--计算titlenum
    		titlenum = Index

    		--查找活动资料表
    	    for i = 1, n do
    	        local EventTime = EventMsg[i].Time
			    if EventTime ~= nil then --Time不为空时,表示的是每日活动,应显示在活动日历中
        	        for t = 1, 24 do --在每日活动中查找全部符合条件的条目
        	      		if	EventTime[t] == Index and Level >= EventMsg[i].Level then --等级判断,只显示当前等级可参加的活动？
        					--当同一格内显示活动数量超过1,显示默认日历活动图
        					Num1 = Num1 + 1
        					if Num1 == 1 then
        					    ViewEventIcon = EventMsg[i].EventIcon
        					else
        						ViewEventIcon = DefaultDayIcon
        					end
        					ViewHint = Format("%s\r\r%s", EventMsg[i].Hint, ViewHint)
        	      			break
        	      		end
        	        end
    	    	end
    	    end

    	elseif  Day < 0 then --程序给的Day小于0,表示显示的是月历

    		--使用蔡勒公式计算当日为星期几
            if Month < 3 then
                Cen = math.floor((Year-1)/100)
                MonthNum = Month + 12
                YearNum = Year - 1 - Cen*100
            else
                Cen = math.floor(Year/100)
                MonthNum = Month
                YearNum = Year - Cen*100
            end
            MonthDayFirst = (math.floor(Cen/4)-2*Cen+YearNum+math.floor(YearNum/4)+math.floor(26*(MonthNum+1)/10)) % 7  --计算每月第一天是星期几

			--计算当月天数DateNum
			DateNumTable = {31,28,31,30,31,30,31,31,30,31,30,31}
			if Month ~= 2 then
				DateNum = DateNumTable[Month]
			else
				if math.floor(Year/4) ==  Year/4 then
					if math.floor(Year/100) ==  Year/100 and math.floor(Year/400) ~=  Year/400 then
					    DateNum = 28
					else
					    DateNum = 29
					end
				else
				    DateNum = 28
				end
			end
			titlenum = Index - MonthDayFirst            --计算titlenum,此时titlenum等于日期

			if titlenum > 0 and titlenum <= DateNum then --如果titlenum小于0或者大于当月天数,则令titlenum等于-1
            	WeekDay = (math.floor(Cen/4)-2*Cen+YearNum+math.floor(YearNum/4)+math.floor(26*(MonthNum+1)/10)+titlenum-1) % 7 --计算当天是星期几

        		--查找活动资料表
    			for k = 1, n do
    			    local EventWeek = EventMsg[k].Week
    			    if EventWeek ~= nil then --Week不为空时,表示的是每周活动
        			    for w = 1, 7 do --在每周活动中查找全部符合条件的条目
        				    if Level >= EventMsg[k].Level then --等级判断,只显示当前等级可参加的活动？
        				   		 if titlenum == EventMsg[k].Date or EventWeek[w] == WeekDay then
            						--当同一格内显示活动数量超过1,显示默认月历活动图
                					 Num2 = Num2 + 1
                					 if Num2 == 1 then
                					     ViewEventIcon = EventMsg[k].EventIcon
                					 else
                					 	ViewEventIcon = DefaultMonthIcon
                					 end
                					 ViewHint = Format("%s\r\r%s", EventMsg[k].Hint, ViewHint)
                	      			 break
        				   		 end
        				    end
        			    end
        			else
        			    if EventMsg[k].Date ~= 0 then	--Week为空且Date不为空时,表示的是指定日期活动或每年活动或每月活动
        			    	if Level >= EventMsg[k].Level then --等级判断,只显示当前等级可参加的活动？
        			    		if EventMsg[k].Date == Index and (EventMsg[k].Month == Month or EventMsg[k].Month == 0) and (EventMsg[k].Year == Year or EventMsg[k].Year == 0) then
            						--当同一格内显示活动数量超过1,显示默认月历活动图
                					 Num2 = Num2 + 1
                					 if Num2 == 1 then
                					     ViewEventIcon = EventMsg[k].EventIcon
                					 else
                					 	ViewEventIcon = DefaultMonthIcon
                					 end
                					 ViewHint = Format("%s\r\r%s", EventMsg[k].Hint, ViewHint)
        			    		end
        			    	end
        			    end
    			    end
    			end
			else
			    titlenum = -1
			    ViewEventIcon, ViewHint = "", ""
			end
			
    	elseif  Day == 0 then --日常活动
			local d = 0
			local Temp = {}
        	titlenum = -1
        	for e = 1, n do
				if EventMsg[e].AllTime == 1 and Level >= EventMsg[e].Level then
					d = d + 1				  
					Temp[d] = EventMsg[e]
				end
        	end
        	if Index <= d then
            	ViewEventIcon = Temp[Index].EventIcon	
            	ViewHint = Temp[Index].Hint
        	else 
            	ViewEventIcon = ""	
            	ViewHint = ""
        	end
		end

    	if ViewEventIcon == "" then
    	    ViewHint = ""
    	end
    	if titlenum ~= -1 then
    		ViewMsg = Format("%s\r%s\r%s\r%s\r%s", titlenum, ViewEventIcon, "", "", ViewHint)
    	else
    	    ViewMsg = Format("%s\r%s\r%s\r%s\r%s", "", ViewEventIcon, "", "", ViewHint)  --titlenum等于-1时返回空字符串
    	end
   end

--测试程序返回值
--	ViewMsg = Format("%d\r%s\r%s\r%s\r%s", 0, "", "", "", Format("Yeah = %d\rMonth = %d\rDay = %d\rLevel = %d\rIndex = %d",Year,Month,Day,Level,Index))
	return ViewMsg
end

function GameUI:GetBattleAccessInfo(Id,Line)
BattleLineInfo = {}
BattleLineInfo[210] = {3,4,5}
BattleLineInfo[211] = {3,4,5}
BattleLineInfo[221] = {3,4,5}
BattleLineInfo[222] = {3,4,5}
BattleLineInfo[223] = {3,4,5}
BattleLineInfo[304] = {3,4,5}
BattleLineInfo[227] = {3,4,5}
BattleLineInfo[252] = {3,4,5}
BattleLineInfo[327] = {3,4,5}
BattleLineInfo[255] = {3,4,5}
BattleLineInfo[253] = {3,4,5}
BattleLineInfo[265] = {3,4,5}
BattleLineInfo[266] = {3,4,5}
BattleLineInfo[268] = {3,4,5}
BattleLineInfo[275] = {3,4,5}
BattleLineInfo[281] = {3,4,5}
BattleLineInfo[332] = {3,4,5}
BattleLineInfo[313] = {6}
BattleLineInfo[277] = {6,7,8}
BattleLineInfo[278] = {6,7,8}
BattleLineInfo[308] = {6,7,8}
BattleLineInfo[334] = {6,7,8}
BattleLineInfo[333] = {6,7,8}
BattleLineInfo[348] = {6,7,8}
BattleLineInfo[352] = {6,7,8}
BattleLineInfo[292] = {6,7,8,9,10}
BattleLineInfo[311] = {6,7,8,9,10}
BattleLineInfo[312] = {6,7,8,9,10}
BattleLineInfo[237] = {9,10}
BattleLineInfo[326] = {8,9,10}
BattleLineInfo[254] = {9,10}
BattleLineInfo[328] = {8,9,10}
BattleLineInfo[291] = {9,10}
BattleLineInfo[330] = {8,9,10}
BattleLineInfo[294] = {9,10}
BattleLineInfo[331] = {9,10}
BattleLineInfo[372] = {11,12,13}
BattleLineInfo[161] = {11,12,13}
BattleLineInfo[325] = {11,12,13}
BattleLineInfo[336] = {11,12,13}
BattleLineInfo[317] = {11,12,13}
BattleLineInfo[298] = {11,12,13}
BattleLineInfo[299] = {11,12,13}
BattleLineInfo[293] = {11,12,13}
BattleLineInfo[329] = {11,12,13}
BattleLineInfo[267] = {11,12,13}
BattleLineInfo[256] = {11,12,13}
BattleLineInfo[306] = {11,12,13}
BattleLineInfo[351] = {11,12,13}
BattleLineInfo[353] = {11,12,13}
BattleLineInfo[354] = {11,12,13}
BattleLineInfo[372] = {11,12,13}
BattleLineInfo[521] = {6,7,8,9,10}
BattleLineInfo[522] = {3}
BattleLineInfo[523] = {4}
BattleLineInfo[524] = {5}
BattleLineInfo[525] = {6}
BattleLineInfo[526] = {7}
BattleLineInfo[527] = {8}
BattleLineInfo[528] = {3}
BattleLineInfo[529] = {4}
BattleLineInfo[530] = {5}
BattleLineInfo[531] = {6}
BattleLineInfo[532] = {7}
BattleLineInfo[533] = {8}
BattleLineInfo[534] = {9}
BattleLineInfo[535] = {10}
BattleLineInfo[536] = {11}


--军团竞技赛
BattleLineInfo[279] = {15}


local l = 0
while true do
l = l + 1
	if BattleLineInfo[Id][l] == nil then
	   l = l - 1
	break
	end
end
	for i = 1, l do
		if Line == BattleLineInfo[Id][i] then
		   ReturnMsg = true
		   break
		else
		   ReturnMsg = false
		end
	end
	return ReturnMsg
end