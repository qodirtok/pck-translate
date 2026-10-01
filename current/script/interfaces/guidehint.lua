local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local SecretarySystemRemind = SecretarySystemRemind
local IStr = INTERFACE_STRING_TABLE

GfxIDFile =
{
	-- [param2的值] = "对应2D光效文件的路径"
	-- 光效会在播完后自动释放，不要配置“无限循环”的光效
	[1] = "程序联入\\指向绿箭头右.gfx",
	[2] = "程序联入\\指向红箭头.gfx",

}

NpcHook =
{
	[1] = "",
}

local datamember =
{
	this = "Win_GuideHint",
	m_curEvent = 0,
	m_curMsgIndex = 0,
	m_counter = 0,
	m_bUsed  = false,
	b_IsFirst = true,
	m_bArrangeFirst = true,
	m_bTaskArrangeFirst = true,
}


Win_GuideHint= DlgTemplate:new(datamember)

function Win_GuideHint:Init()

	self:RegisterEvent("Btn_Close", self.OnCmdClose)

    self:RegisterEvent(LEVT_FIRST_ENTER_GAME, self.EnterGame)
		self:RegisterEvent(LEVT_FIRST_OPEN_ACCEPT_TASK,	self.ShowHintDlg)
		
		self:RegisterEvent(LEVT_FIRST_SWITCHTO_FASHION,	self.ShowHintDlg)
		self:RegisterEvent(LEVT_FIRST_OPEN_SKILL,	self.ShowHintDlg)
		self:RegisterEvent(LEVT_FIRST_KILL_MONSTER,	self.ShowHintDlg)
		self:RegisterEvent(LEVT_FIRST_GAIN_SPEC_ITEM,	self.ShowHintDlgWithArg)

		self:RegisterEvent(LEVT_FIRST_USE_SPEC_ITEM, self.ShowHintDlgWithArg)
		self:RegisterEvent(LEVT_FIRST_EQUIP_SPEC_ITEM, self.ShowHintDlgWithArg)
		self:RegisterEvent(LEVT_FIRST_ACCEPT_SPEC_TASK, self.ShowHintDlgWithArg)
		self:RegisterEvent(LEVT_FIRST_FINISH_SPEC_TASK, self.ShowHintDlgWithArg)
		self:RegisterEvent(LEVT_FIRST_FAIL_SPEC_TASK, self.ShowHintDlgWithArg)
		self:RegisterEvent(LEVT_FIRST_COMPLETE_SPEC_TASK, self.ShowHintDlgWithArg)

		DlgApi.ShowItem ("Win_QuestMinion", "Gfx_FirstEnter", false)
		DlgApi.ShowItem ("Win_Equipment", "Gfx_1", false)
		DlgApi.ShowItem ("Win_Main", "Gfx_1", false)
		DlgApi.ShowItem("Win_NPC2", "Gfx_1", false)
		DlgApi.ShowItem("Win_SpecialChannel", "Gfx_1", false)
		--DlgApi.ShowItem("Win_QuestMinion", "Gfx_1", false)
end

---------------------------------------------------------------------------------
--	弹出提示的相应函数

---------------------------------------------------------------------------------

function Win_GuideHint:OnPupEventHint(event)
    if SecretarySystemRemind[event] then
 	    DlgApi.SetItemText(self.this, "Txt_Hint", SecretarySystemRemind[event]);
       	DlgApi.ShowDialog(self.this, true);
    end
end

function Win_GuideHint:OnPupArgEventHint(event, id)
    if (SecretarySystemRemind[event] and SecretarySystemRemind[event][id]) then
        DlgApi.SetItemText(self.this, "Txt_Hint", SecretarySystemRemind[event][id] or "");
        DlgApi.ShowDialog(self.this, true);
    end
end

----------------------------------------------------------------------------------
--	控件激活与对话框操作相关响应函数

----------------------------------------------------------------------------------



----------------------------------------------------------------------------------
--	此对话框管理相关函数
----------------------------------------------------------------------------------

function Win_GuideHint:OnCmdClose()
	DlgApi.ShowDialog(self.this,false);
	self.m_counter = 0;
	self.m_bUsed  = false;
end

function Win_GuideHint:Tick(dwDeltaTime)
    self.m_counter  = self.m_counter + dwDeltaTime;
    if( self.m_counter > 20000 ) then
        self.m_counter = 0;
        self.m_bUsed = false;
        DlgApi.ShowDialog(self.this, false);
	end
end


function Win_GuideHint:ShowHintDlg(event)

	if(event == LEVT_FIRST_ENTER_GAME) then
		--DlgApi.ShowDialog ("Win_ScriptHelp2", true)
	end
		if(event == LEVT_FIRST_OPEN_ACCEPT_TASK) then
		--DlgApi.ShowDialog ("Win_ScriptHelp3", true)
	end
		if(event == LEVT_FIRST_SWITCHTO_FASHION) then
		DlgApi.ShowItem ("Win_Equipment", "Gfx_1", false) --  16点击切换时装按钮后，光效消失
		DlgApi.ShowDialog ("Win_ScriptHelp21", true)
	end
		if(event == LEVT_FIRST_OPEN_SKILL) then
		--DlgApi.ShowDialog ("Win_ScriptHelp9", true)
	end
		if(event == LEVT_FIRST_KILL_MONSTER) then
		DlgApi.ShowDialog ("Win_ScriptHelp5", true)  --5 显示拾取提示界面
		DlgApi.ShowItem("Win_QuestMinion", "Gfx_FirstEnter", false) --7 关闭寻路点击提示
	end
end

function Win_GuideHint:ShowHintDlgWithArg(event, id)
    if(event==LEVT_FIRST_ACCEPT_SPEC_TASK) then
	    if(id==25133) then
		   GameApi.Stop3DGfxByNPCTid() 	 --2 关闭NPC光效
		   DlgApi.ShowItem("Win_QuestMinion", "Gfx_FirstEnter", true) --3 第一次接受任务，提示寻路点击
		   GameApi.Play3DGfxByNPCTid(GfxIDFile[2], NpcHook[1], 77851)  --4 显示击杀NPC光效
		   DlgApi.ShowItem("Win_NPC2", "Gfx_1", false)
		 end
        if(id==666) then
		   DlgApi.ShowItem("Win_QuestMinion", "Gfx_FirstEnter", true)
	    end
	    if(id>=899 and id<= 916 )then
	   	   DlgApi.ShowItem("Win_NPC2", "Gfx_1", true)
		   GameApi.Play3DGfxByNPCTid(GfxIDFile[1], NpcHook[1], 3346)
		   --DlgApi.ShowItem("Win_QuestMinion", "Gfx_1", true)
	    end
		if(id==961 or id==929 or id==967 or id==970 or id==952 or id==982 or id==955 or id==945 or id==935 or id==958 or id==949 or id==932
		    or id==979 or id==942 or id==976 or id==938 or id==973 or id==964)then
	   	 --  DlgApi.ShowItem("Win_NPC2", "Gfx_1", true)
		   GameApi.Play3DGfxByNPCTid(GfxIDFile[1], NpcHook[1], 4992)
		   --DlgApi.ShowItem("Win_QuestMinion", "Gfx_1", true)
	    end

	end
    if(event==LEVT_FIRST_FINISH_SPEC_TASK) then

	  --[[ if(id==961 or id==929 or id==967 or id==970 or id==952 or id==982 or id==955 or id==945 or id==935 or id==958 or id==949 or id==932
		    or id==979 or id==942 or id==976 or id==938 or id==973 or id==964)then
		   DlgApi.ShowItem("Win_NPC2", "Gfx_1", false)
		   GameApi.Stop3DGfxByNPCTid()
        end]]--
	   if(id==25133) then
		   GameApi.Stop3DGfxByNPCTid() --8 关闭显示击杀NPC光效
		   GameApi.Play3DGfxByNPCTid(GfxIDFile[1], NpcHook[1], 77829)  --9 完成第一个任务显示光效点击NPC
		   DlgApi.ShowItem ("Win_QuestMinion", "Gfx_MouseClick", true) --10显示寻路npc 完成任务

		end
	   if(id>=899 and id<= 916 ) then
	   	   DlgApi.ShowItem("Win_NPC2", "Gfx_1", false)
		   GameApi.Stop3DGfxByNPCTid()

	  end
	end

    if(event==LEVT_FIRST_COMPLETE_SPEC_TASK) then
      if(id==666) then
		 DlgApi.ShowItem("Win_QuestMinion", "Gfx_FirstEnter", false)
	  end
	    if(id==961 or id==929 or id==967 or id==970 or id==952 or id==982 or id==955 or id==945 or id==935 or id==958 or id==949 or id==932
		    or id==979 or id==942 or id==976 or id==938 or id==973 or id==964)then
		 --  DlgApi.ShowItem("Win_NPC2", "Gfx_1", false)
		   GameApi.Stop3DGfxByNPCTid()
		   DlgApi.ShowDialog ("Win_ScriptHelp22", true)
        end

    end

	if(event==LEVT_FIRST_GAIN_SPEC_ITEM) then
	  if(id==30893 or id==30895 ) then
        DlgApi.ShowItem ("Win_Main", "Gfx_1", true) --11获得时装后，显示光效
	  end
	end
  if(event==LEVT_FIRST_USE_SPEC_ITEM) then
	--if(id==30893 or id==30895 ) then
		--   DlgApi.ShowItem ("Win_Equipment", "Gfx_1", true) -- 14第一次装备时装，显示按钮光效
		  -- DlgApi.ShowItem ("Win_Inventory", "Gfx_1", false )  -- 15第一次装备时装，隐藏装备时装按钮光效
	--end
  end
  if(event==LEVT_FIRST_EQUIP_SPEC_ITEM) then
	  if(id==30893 or id==30895 ) then
	     DlgApi.ShowItem ("Win_Equipment", "Gfx_1", true) -- 14第一次装备时装，显示按钮光效
	     DlgApi.ShowItem ("Win_Inventory", "Gfx_1", false )  -- 15第一次装备时装，隐藏装备时装按钮光效
	  end
	end
end

function Win_GuideHint:EnterGame(event)
		--DlgApi.ShowItem ("Win_QuestMinion", "Gfx_MouseClick", true)
		GameApi.Play3DGfxByNPCTid(GfxIDFile[1], NpcHook[1], 77829)  --1 进游戏显示光效点击NPC
		DlgApi.ShowItem("Win_NPC2", "Gfx_1", true)
end

function Win_GuideHint:OnTaskTraceStart(event)
		--DlgApi.ShowItem ("Win_QuestMinion", "Gfx_MouseClick", true)
end

function Win_GuideHint:OnTaskTraceEnd(event)
		--DlgApi.ShowItem ("Win_QuestMinion", "Gfx_MouseClick", false)
end
