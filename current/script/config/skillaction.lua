---程序预定义行为调用字段相关信息
--skillid：	    技能id组，多个技能ID可以配置相同的动作， 
--skillname：   技能喊话名
--skillsoucer： 技能喊话名连入资源
--skillprocess: 技能施放过程。
--skillstage：	技能施放阶段:0,1,2,3,4,一个技能最大5段效果组，技能表中填写每段触发概率,中断关系按技能逻辑触发，技能中断后不调用下阶段动画。
--drift：       位移:0.无位移；1.有位移；2.位移攻击(直接飞踢，这个不确定，神武有类似技能)；
--drifttype：   位移类型:1.跑步;2.跑步加残影;3.闪现;4.直接出现;
--driftstage：	位移阶段:0.位移开始;1.位移中;2.位移结束;
--driftpoint：	位移位置:0.1.敌正前方;2.目标正后方;3.目标前方;4.目标后方;5.目标右方;6.目标左方;
--attcktime：   施放技能阶段：0.施放开始;1.施放中间;2.施放结束;
--act：	        调用序列帧动作名
--actpower：    调用序列帧动作重复播放倍率
--sfx：	        调用音效资源名
--gfx：	        调用特效资源名
--gfxtype：	    特效类型:0.一次性;1.始终持续型;3.播放一段时间；2.自身飞向目标;
--piont：       特效挂点:0.头顶;1.自身中心;2.脚底;3.己方中心位置;4.对方中心位置;5.面朝左,自身正前方;5.面朝右,自身正前方;
--acthoming     战斗归位：0.不归位；1.归位
--homing：	    归位:0.不需要归位；1.随机； 2.面向反方向跑步；3.面向反方跑步加残影； 4.闪现；不转向直接回来
--buffgroup:    效果组

act = {}                          --动作序列
act[1] = {name = "攻击1"}
act[2] = {name = "战斗跑"}
act[3] = {name = "被打后仰"}
act[4] = {name = "呤唱"}

sfx = {}                           --音效
sfx[1] = {name = "横扫千军"}
sfx[2] = {name = "后发制人"}
sfx[3] = {name = "刀砍声"}
sfx[4] = {name = "喊声"}

gfx = {}                          --光效
gfx[1] = {name = "战斗喊话通用底板"}
gfx[2] = {name = "后发状态光效"}
gfx[3] = {name = "被横扫千军砍中"}
gfx[4] = {name = "横扫千军剑气"}
gfx[4] = {name = "封印"}
gfx[5] = {name = "恢复光效"}

--范列
--skillid[] =                          --技能ID，是否考虑用数组填入多个ID，在同样外形的怪物，使用技能不同时使用该脚本配置。
--{
	--skillname = 技能名字,            --出现技能施放者头顶。
	--skillsoucer = 战斗喊话通用底板,  --不同技能释放时，资源底板可任意替换。
	--sfx = 音效名字,                  --可以是喊声，技能名。
    --skillstage[1] =                  --技能阶段1
	--{
	--  drift[1]=                      --位移：1位移
    --  {
	--   drift = 1,                    --位移:1.跑步
	--	 driftpoint=1,                 --位移位置:1.敌正前方
	--  },	
    --  attcktime[1] =                --施放技能开始阶段
	--	{
	--	sfx = xx,                   --挥刀喊声
	--	act = xx,                  --挥刀动作
	--  gfx = xx,          
    --  point = x,                     	
	--	}，
	--	attcktime[2] =                --施放技能过程阶段，没有动作或光效就不配置。
	--	{
	--	}，
	--	attcktime[3] =                --施放技能结束阶段，没有动作或光效就不配置。
	--	{		
	--	}，
	--	attcked = x，                 --调用下面目标受击效果
	--},
	--actpower = x，                  --重复阶段x次，并调用三次被击效果。
	--skillstage[2] =                 --2——5的流程靠技能表中的公式概率触发，不满足不触发。
	--{
	--},
    --skillstage[3] = 
	--{
	--},
	--skillstage[4] = 
	--{
	--},
	--skillstage[5] = 
	--{
	--},
	--homing = x,                      --归位：技能播放结束，归位。
--}

skillid[100] =                         --模拟横扫千军
{
	skillname = 横扫千军,              --出现技能施放者头顶
	skillsoucer = 战斗喊话通用底板,
	sfx = 横扫千军,
	drift[1] =                         --有位移
	    {
		drifttype = 1,                 --跑步位移
		driftpoint =1,                 --位移到敌正前方
		}
	skillprocess =                     -- 技能释放过程
	 {
       skillstage[1] = 
	   {   
	    attcktime=
		   {
		    attcktime[1] =             -- 施放技能开始阶段
		     {
		      sfx = 喊声,              -- 挥刀喊声
		      act = 攻击1,             -- 挥刀动作
		      gfx = 横扫千军剑气,      -- 发出一道横扫的剑气。
	          point = 5,               -- 挂在人物面朝的正前方，GFX从这个点像外发出。
		      attcked = 1，            -- 目标效果
		     }，
		    attcktime[2] =             -- 施放技能中间阶段
		     {
		     }，
		  attcktime[3] =               -- 施放技能结束阶段
		     {		
		     }，
	   },
	   acthoming = 1,                  -- 战斗移动到敌前方后，使用技能。此时需不需在放完技能后回到出生位置，0，不需要，1需要。
	   actpower = 3，                  -- 重复三次攻击动作与特效，调用三次被击效果	
	  },		
	  skillstage[2] =                   --2——5的流程靠技能表中的公式概率触发，不满足不触发。
	   {
	   },
      skillstage[3] = 
	   {
	   },
	  skillstage[4] = 
	   {
	   },
	  skillstage[5] = 
	   {
	   },
	},
	homing = 2,                       --整个流程结束后，角色面朝后方跑回出生点。若中间技能阶段没有播出则跳过，直接到归位。
}

skillid[101] =                        --模拟后发制人，逻辑由问题没有想清楚，待定。
{
	skillname = 后发制人,             --出现技能施放者头顶
	skillsoucer = 战斗喊话通用底板,
	sfx = 后发制人,
    skillstage[1] = 
	{
	    drift = 0,                    --无位移
		attcktime[1] =                --开始施放技能
		{
		sfx = 喊声,
		act = 呤唱,
		}，
		attcktime[2] =                --施放技能中
		{
		gfx = 恢复光效, 
        piont =1 ,		
		}，
		attcktime[3] =                --结束施放技能
		{		
		}，
		attcked = 0，                 
		actpower = 1，
		homing = 0,
	},
	skillstage[2] = 
	{
	    drift = 1,                    --跑步位移
		driftpoint=3,                 --位移到目标正前方
		driftstage=2,                 --位移阶段
		attcktime[1] =                --开始施放技能
		{
		sfx = 喊声,
		act = 攻击1,
		}，
		attcktime[2] =                --施放技能中
		{
		}，
		attcktime[3] =                --结束施放技能
		{		
		}，
		attcked = 2，                 --目标效果
		actpower = 1，
		homing = 1,
	},
    skillstage[3] = 
	{
	},
	skillstage[4] = 
	{
	},
	skillstage[5] = 
	{
	},
}

skillid[102] =                        --模拟千蜘手
{
	skillname = 千蜘手,             --出现技能施放者头顶
	skillsoucer = 战斗喊话通用底板,
	sfx = 千蜘手,
    skillstage[1] = 
	{
	    drift = 0,                    --无位移
		attcktime[1] =                --开始施放技能
		{
		sfx = 喊声,
		act = 攻击1,
		}，
		attcktime[2] =                --施放技能中
		{		
		}，
		attcktime[3] =                --结束施放技能
		{		
		}，
		attcked = 3，                 
		actpower = 1，
		homing = 0,
	},
	skillstage[2] = 
	{
	},
    skillstage[3] = 
	{
	},
	skillstage[4] = 
	{
	},
	skillstage[5] = 
	{
	},
}


attcked[1] = 
{
    act = 受击,                          --受击动作
    sfx = 刀砍声，                       --受击音效
	gfx = 被横扫千军砍中，               --受击特效，被横少千军砍中特效
	piont = 1，                          --把这个特效挂在自身中心
}

attcked[2] = 
{
    act = 受击,                          --受击动作
    sfx = 刀砍声，                       --受击音效
	gfx = 刀光，                        --受击特效，被横少千军砍中特效
	piont = 1，                          --把这个特效挂在自身中心
	
}

attcked[3] = 
{
    act = 受击,                          --受击动作
    sfx = 刀砍声，                       --受击音效
	gfx = 蜘蛛，                        --受击特效，被横少千军砍中特效
	piont = 1，                          --把这个特效挂在自身中心
	
}

buffgroup[1] =                           --物理封印，根据效果组存在                    
{
    gfx =  封印，
	gfxtype = 1，                        --始终存在，效果组不存在时消失 
    point = 2,                           --脚底              
}

buffgroup[2] =                           --后发制人
{
    gfx = 后发制人
	gfxtype = 0，                        --闪烁一次 
    point = 1,                           --身体中心              
}

