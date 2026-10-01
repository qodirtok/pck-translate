math.randomseed(os.time())

---10月8日为主函数新增加了一个参数，两个返回值以及一段判断是否强制替换的判断代码（223～228）
---一个参数 "sta" 用来传入当前的状态（0.无,1.处于站立状态,2.......）
---两个返回值 "forceup" "forcedown" 用来传回是否强制替换上、下半身的动画
---10月25日注掉了武器位置相关的参数及信息
---11月1日为主函数新增加了2个参数，及一段返回技能动作的代码

---程序预定义行为调用的动作序列名称及相关信息 
---        name：调用的ECM序列名称
---   logictype：逻辑类型：1.移动类动作；2.非移动类动作（包括普通行为、演武、叠加等）；
---  forcespeed：强行调整动作播放速度，仅对1.2.4.类动作且非双人状态下有效，本项目前无效 
---              不指定时为标准值100，指定时取值范围50~300，小于100为减速，大于100为加速(无效)
---以下为范例 123
---ACTION_TYPE[1] = {name = "演武动作" , logictype = 2 , forcespeed = 120}
---ACTION_TYPE[2] = {name = "站立" , logictype = 1}
---ACTION_TYPE[3] = {name = "表情挥手" , logictype = 2}
---ACTION_TYPE[4] = {name = "受伤" , logictype = 2}
---ACTION_TYPE[5] = {name = "回转舞蹈" , logictype = 2}

ACTION_TYPE = {}
ACTION_TYPE[1] = {name = "站立" , logictype = 1}
ACTION_TYPE[2] = {name = "行走" , logictype = 1}
ACTION_TYPE[3] = {name = "奔跑" , logictype = 1}
ACTION_TYPE[4] = {name = "后退" , logictype = 1}
ACTION_TYPE[5] = {name = "起跳" , logictype = 1}
ACTION_TYPE[6] = {name = "跳跃循环" , logictype = 1}
ACTION_TYPE[7] = {name = "跳跃落地" , logictype = 1}
ACTION_TYPE[8] = {name = "普通攻击1" , logictype = 2}
ACTION_TYPE[9] = {name = "普通攻击2" , logictype = 2}
ACTION_TYPE[10] = {name = "原地旋转" , logictype = 1}
ACTION_TYPE[11] = {name = "使用技能" , logictype = 2}
ACTION_TYPE[12] = {name = "拾取" , logictype = 2}
ACTION_TYPE[13] = {name = "蹲下操作" , logictype = 2}
ACTION_TYPE[14] = {name = "演武动作" , logictype = 2}
ACTION_TYPE[15] = {name = "站立" , logictype = 1}
ACTION_TYPE[16] = {name = "站立操作" , logictype = 2}
ACTION_TYPE[17] = {name = "地面死亡" , logictype = 2}
ACTION_TYPE[18] = {name = "地面死亡循环" , logictype = 2}
ACTION_TYPE[19] = {name = "受伤" , logictype = 2}
ACTION_TYPE[20] = {name = "暴击受伤" , logictype = 2}
ACTION_TYPE[21] = {name = "闪避" , logictype = 2}
ACTION_TYPE[22] = {name = "格挡" , logictype = 2}
ACTION_TYPE[23] = {name = "复活" , logictype = 2}
ACTION_TYPE[24] = {name = "亲亲蜜蜜" , logictype = 2}
ACTION_TYPE[25] = {name = "回城" , logictype = 2}
ACTION_TYPE[26] = {name = "表情说话" , logictype = 2}
ACTION_TYPE[27] = {name = "表情手指" , logictype = 2}
ACTION_TYPE[28] = {name = "表情请求" , logictype = 2}
ACTION_TYPE[29] = {name = "表情挥手" , logictype = 2}
ACTION_TYPE[30] = {name = "表情普通" , logictype = 2}
ACTION_TYPE[31] = {name = "表情下跪抱拳" , logictype = 2}
ACTION_TYPE[32] = {name = "表情鼓掌" , logictype = 2}
ACTION_TYPE[33] = {name = "表情欢呼" , logictype = 2}
ACTION_TYPE[34] = {name = "表情害羞" , logictype = 2}
ACTION_TYPE[35] = {name = "表情亲吻" , logictype = 2}
ACTION_TYPE[36] = {name = "表情跳舞" , logictype = 2}
ACTION_TYPE[37] = {name = "驾驶动作_空闲" , logictype = 2}
ACTION_TYPE[38] = {name = "休闲" , logictype = 2}		--目前只有自己的休闲动作会传入脚本
ACTION_TYPE[39] = {name = "驾驶动作_左转" , logictype = 2}
ACTION_TYPE[40] = {name = "驾驶动作_右转" , logictype = 2}
ACTION_TYPE[41] = {name = "水中挣扎" , logictype = 1}
ACTION_TYPE[42] = {name = "水中死亡" , logictype = 2}
ACTION_TYPE[43] = {name = "水中死亡循环" , logictype = 2}
ACTION_TYPE[44] = {name = "被击退" , logictype = 1}
ACTION_TYPE[45] = {name = "易容" , logictype = 2}
ACTION_TYPE[46] = {name = "一级跳" , logictype = 1}
ACTION_TYPE[47] = {name = "二级跳" , logictype = 1}
ACTION_TYPE[48] = {name = "三级跳" , logictype = 1}
ACTION_TYPE[49] = {name = "跳跃循环" , logictype = 1}
ACTION_TYPE[50] = {name = "跳跃落地" , logictype = 1}
ACTION_TYPE[51] = {name = "麻痹" , logictype = 1}
ACTION_TYPE[52] = {name = "被拉" , logictype = 1}
ACTION_TYPE[53] = {name = "被击倒" , logictype = 1}
ACTION_TYPE[54] = {name = "被浮空" , logictype = 1}



---预定义ECM中的动作序列类型及相关信息
---     default：默认武器对应后缀类型

SEQUENCE_TYPE = {}
SEQUENCE_TYPE["使用技能"] = {default = "acttype"}
SEQUENCE_TYPE["站立"] = {default = "acttype"}
SEQUENCE_TYPE["原地旋转"] = {default = "acttype"}
SEQUENCE_TYPE["行走"] = {default = "acttype"}
SEQUENCE_TYPE["后退"] = {default = "acttype"}
SEQUENCE_TYPE["奔跑"] = {default = "acttype"}
SEQUENCE_TYPE["起跳"] = {default = "acttype"}
SEQUENCE_TYPE["跳跃循环"] = {default = "acttype"}
SEQUENCE_TYPE["跳跃落地"] = {default = "acttype"}
SEQUENCE_TYPE["加速跑"] = {default = "acttype"}
SEQUENCE_TYPE["战斗站立"] = {default = "acttype"}
SEQUENCE_TYPE["战斗原地旋转"] = {default = "acttype"}
SEQUENCE_TYPE["战斗行走"] = {default = "acttype"}
SEQUENCE_TYPE["战斗后退"] = {default = "acttype"}
SEQUENCE_TYPE["战斗奔跑"] = {default = "acttype"}
SEQUENCE_TYPE["战斗起跳"] = {default = "acttype"}
SEQUENCE_TYPE["战斗跳跃循环"] = {default = "acttype"}
SEQUENCE_TYPE["战斗跳跃落地"] = {default = "acttype"}
SEQUENCE_TYPE["战斗加速跑"] = {default = "acttype"}
SEQUENCE_TYPE["打坐"] = {default = "cmntype"}
SEQUENCE_TYPE["打坐循环"] = {default = "cmntype"}
SEQUENCE_TYPE["背后拔刀"] = {default = "hldtype"}
SEQUENCE_TYPE["闲置动作"] = {default = "acttype"}
SEQUENCE_TYPE["地面死亡"] = {default = "cmntype"}
SEQUENCE_TYPE["地面死亡循环"] = {default = "cmntype"}
SEQUENCE_TYPE["复活"] = {default = "cmntype"}
SEQUENCE_TYPE["拾取"] = {default = "cmntype"}
SEQUENCE_TYPE["拾取循环"] = {default = "cmntype"}
SEQUENCE_TYPE["站立操作"] = {default = "cmntype"}
SEQUENCE_TYPE["站立操作循环"] = {default = "cmntype"}
SEQUENCE_TYPE["蹲下操作"] = {default = "cmntype"}
SEQUENCE_TYPE["蹲下操作循环"] = {default = "cmntype"}
SEQUENCE_TYPE["普通攻击1"] = {default = "acttype"}
SEQUENCE_TYPE["普通攻击2"] = {default = "acttype"}
SEQUENCE_TYPE["轻击1"] = {default = "acttype"}
SEQUENCE_TYPE["轻击2"] = {default = "acttype"}
SEQUENCE_TYPE["重击1"] = {default = "acttype"}
SEQUENCE_TYPE["重击2"] = {default = "acttype"}
SEQUENCE_TYPE["格挡"] = {default = "acttype"}
SEQUENCE_TYPE["格挡循环"] = {default = "acttype"}
SEQUENCE_TYPE["特殊盾挡循环"] = {default = "acttype"}
SEQUENCE_TYPE["暗器准备"] = {default = "cmntype"}
SEQUENCE_TYPE["暗器投掷"] = {default = "cmntype"}
SEQUENCE_TYPE["弓准备1"] = {default = "cmntype"}
SEQUENCE_TYPE["弓准备2"] = {default = "cmntype"}
SEQUENCE_TYPE["弓准备3"] = {default = "cmntype"}
SEQUENCE_TYPE["弓准备4"] = {default = "cmntype"}
SEQUENCE_TYPE["弓准备5"] = {default = "cmntype"}
SEQUENCE_TYPE["弓准备6"] = {default = "cmntype"}
SEQUENCE_TYPE["弓射击1"] = {default = "cmntype"}
SEQUENCE_TYPE["弓射击2"] = {default = "cmntype"}
SEQUENCE_TYPE["弓射击3"] = {default = "cmntype"}
SEQUENCE_TYPE["弓射击4"] = {default = "cmntype"}
SEQUENCE_TYPE["弓射击5"] = {default = "cmntype"}
SEQUENCE_TYPE["弓射击6"] = {default = "cmntype"}
SEQUENCE_TYPE["法器准备"] = {default = "cmntype"}
SEQUENCE_TYPE["法器投掷"] = {default = "cmntype"}
SEQUENCE_TYPE["飞行吟唱"] = {default = "cmntype"}
SEQUENCE_TYPE["指向吟唱"] = {default = "cmntype"}
SEQUENCE_TYPE["自身吟唱"] = {default = "cmntype"}
SEQUENCE_TYPE["鼓舞吟唱"] = {default = "cmntype"}
SEQUENCE_TYPE["强化吟唱"] = {default = "cmntype"}
SEQUENCE_TYPE["近身准备"] = {default = "acttype"}
SEQUENCE_TYPE["近身准备1"] = {default = "acttype"}
SEQUENCE_TYPE["强力准备"] = {default = "acttype"}
SEQUENCE_TYPE["蓄力准备"] = {default = "acttype"}
SEQUENCE_TYPE["特殊准备"] = {default = "acttype"}
SEQUENCE_TYPE["飞行施放"] = {default = "cmntype"}
SEQUENCE_TYPE["指向施放"] = {default = "cmntype"}
SEQUENCE_TYPE["自身施放"] = {default = "cmntype"}
SEQUENCE_TYPE["鼓舞施放"] = {default = "cmntype"}
SEQUENCE_TYPE["强化施放"] = {default = "cmntype"}
SEQUENCE_TYPE["回转攻击"] = {default = "acttype"}
SEQUENCE_TYPE["突刺攻击"] = {default = "acttype"}
SEQUENCE_TYPE["击飞攻击"] = {default = "acttype"}
SEQUENCE_TYPE["跳跃攻击"] = {default = "acttype"}
SEQUENCE_TYPE["对空攻击"] = {default = "acttype"}
SEQUENCE_TYPE["对地攻击"] = {default = "acttype"}
SEQUENCE_TYPE["回转攻击特殊"] = {default = "acttype"}
SEQUENCE_TYPE["突刺攻击特殊"] = {default = "acttype"}
SEQUENCE_TYPE["击飞攻击特殊"] = {default = "acttype"}
SEQUENCE_TYPE["跳跃攻击特殊"] = {default = "acttype"}
SEQUENCE_TYPE["对空攻击特殊"] = {default = "acttype"}
SEQUENCE_TYPE["对地攻击特殊"] = {default = "acttype"}
SEQUENCE_TYPE["飞行持续"] = {default = "cmntype"}
SEQUENCE_TYPE["自身持续"] = {default = "cmntype"}
SEQUENCE_TYPE["回转攻击持续"] = {default = "cmntype"}
SEQUENCE_TYPE["回转攻击持续特殊"] = {default = "cmntype"}
SEQUENCE_TYPE["鼓舞持续"] = {default = "cmntype"}
SEQUENCE_TYPE["强化持续"] = {default = "cmntype"}
SEQUENCE_TYPE["闪避"] = {default = "acttype"}
SEQUENCE_TYPE["闪避1"] = {default = "acttype"}
SEQUENCE_TYPE["闪避特殊"] = {default = "cmntype"}
SEQUENCE_TYPE["受伤"] = {default = "cmntype"}
SEQUENCE_TYPE["暴击受伤"] = {default = "cmntype"}
SEQUENCE_TYPE["被晕眩循环"] = {default = "cmntype"}
SEQUENCE_TYPE["被冻结循环"] = {default = "cmntype"}
SEQUENCE_TYPE["被击倒"] = {default = "cmntype"}
SEQUENCE_TYPE["被击倒循环"] = {default = "cmntype"}
SEQUENCE_TYPE["被浮空"] = {default = "cmntype"}
SEQUENCE_TYPE["被浮空循环"] = {default = "cmntype"}
SEQUENCE_TYPE["瞬间起身"] = {default = "cmntype"}
SEQUENCE_TYPE["亲吻"] = {default = "cmntype"}
SEQUENCE_TYPE["表情手指"] = {default = "cmntype"}
SEQUENCE_TYPE["表情挥手"] = {default = "cmntype"}
SEQUENCE_TYPE["表情下跪抱拳"] = {default = "cmntype"}
SEQUENCE_TYPE["表情鼓掌"] = {default = "cmntype"}
SEQUENCE_TYPE["表情欢呼"] = {default = "cmntype"}
SEQUENCE_TYPE["表情请求"] = {default = "cmntype"}
SEQUENCE_TYPE["表情害羞"] = {default = "cmntype"}
SEQUENCE_TYPE["表情说话"] = {default = "cmntype"}
SEQUENCE_TYPE["表情跳舞"] = {default = "cmntype"}
SEQUENCE_TYPE["表情普通"] = {default = "cmntype"}
SEQUENCE_TYPE["表情亲吻"] = {default = "cmntype"}
SEQUENCE_TYPE["动作"] = {default = "cmntype"}
SEQUENCE_TYPE["亲亲蜜蜜"] = {default = "cmntype"}
SEQUENCE_TYPE["吃喝动作"] = {default = "cmntype"}
SEQUENCE_TYPE["回城"] = {default = "cmntype"}
SEQUENCE_TYPE["眨眼"] = {default = "cmntype"}
SEQUENCE_TYPE["演武动作"] = {default = "name"}
SEQUENCE_TYPE["演武站立"] = {default = "name"}
SEQUENCE_TYPE["疾风枪"] = {default = "acttype"}
SEQUENCE_TYPE["枪群攻"] = {default = "acttype"}
SEQUENCE_TYPE["八方冰雨"] = {default = "acttype"}
SEQUENCE_TYPE["长虹贯日"] = {default = "name"}
SEQUENCE_TYPE["长虹贯日吟唱"] = {default = "name"}
SEQUENCE_TYPE["长虹贯日施放"] = {default = "name"}
SEQUENCE_TYPE["风卷残云"] = {default = "acttype"}
SEQUENCE_TYPE["勾魂索命"] = {default = "acttype"}
SEQUENCE_TYPE["撼山震岳"] = {default = "acttype"}
SEQUENCE_TYPE["横扫千军"] = {default = "acttype"}
SEQUENCE_TYPE["虎入羊群"] = {default = "acttype"}
SEQUENCE_TYPE["金刚坠地"] = {default = "acttype"}
SEQUENCE_TYPE["狂风蔽日"] = {default = "acttype"}
SEQUENCE_TYPE["雷动九天"] = {default = "acttype"}
SEQUENCE_TYPE["力劈华山"] = {default = "acttype"}
SEQUENCE_TYPE["流星赶月"] = {default = "acttype"}
SEQUENCE_TYPE["龙牙碎金"] = {default = "acttype"}
SEQUENCE_TYPE["千钧棒起"] = {default = "acttype"}
SEQUENCE_TYPE["枪雷连刺"] = {default = "acttype"}
SEQUENCE_TYPE["青龙偃月"] = {default = "acttype"}
SEQUENCE_TYPE["神龙摆尾"] = {default = "acttype"}
SEQUENCE_TYPE["双龙绝命"] = {default = "acttype"}
SEQUENCE_TYPE["天宫旋舞"] = {default = "acttype"}
SEQUENCE_TYPE["星火燎原"] = {default = "acttype"}
SEQUENCE_TYPE["一箭双雕"] = {default = "acttype"}
SEQUENCE_TYPE["飞行吟唱火系"] = {default = "cmntype"}
SEQUENCE_TYPE["飞行吟唱冰系"] = {default = "cmntype"}
SEQUENCE_TYPE["飞行吟唱风系"] = {default = "cmntype"}
SEQUENCE_TYPE["飞行吟唱雷系"] = {default = "cmntype"}
SEQUENCE_TYPE["飞行施放火系"] = {default = "cmntype"}
SEQUENCE_TYPE["飞行施放冰系"] = {default = "cmntype"}
SEQUENCE_TYPE["飞行施放风系"] = {default = "cmntype"}
SEQUENCE_TYPE["飞行施放雷系"] = {default = "cmntype"}
SEQUENCE_TYPE["飞行持续火系"] = {default = "cmntype"}
SEQUENCE_TYPE["飞行持续冰系"] = {default = "cmntype"}
SEQUENCE_TYPE["飞行持续风系"] = {default = "cmntype"}
SEQUENCE_TYPE["飞行持续雷系"] = {default = "cmntype"}
SEQUENCE_TYPE["飞行持续舞"] = {default = "cmntype"}
SEQUENCE_TYPE["指向吟唱火系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向吟唱冰系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向吟唱风系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向吟唱雷系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向施放火系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向施放冰系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向施放风系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向施放雷系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向持续火系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向持续冰系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向持续风系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向持续雷系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向施放道具"] = {default = "cmntype"}
SEQUENCE_TYPE["加速"] = {default = "acttype"}
SEQUENCE_TYPE["腾跃"] = {default = "acttype"}
SEQUENCE_TYPE["强击"] = {default = "acttype"}
SEQUENCE_TYPE["冲刺"] = {default = "acttype"}
SEQUENCE_TYPE["冲刺1"] = {default = "acttype"}
SEQUENCE_TYPE["乱舞"] = {default = "acttype"}
SEQUENCE_TYPE["戟攻击1"] = {default = "acttype"}
SEQUENCE_TYPE["戟攻击2"] = {default = "acttype"}
SEQUENCE_TYPE["戟攻击3"] = {default = "acttype"}
SEQUENCE_TYPE["戟攻击4"] = {default = "acttype"}
SEQUENCE_TYPE["戟攻击5"] = {default = "acttype"}
SEQUENCE_TYPE["戟攻击6"] = {default = "acttype"}
SEQUENCE_TYPE["戟攻击7"] = {default = "acttype"}
SEQUENCE_TYPE["戟攻击8"] = {default = "acttype"}
SEQUENCE_TYPE["戟攻击9"] = {default = "acttype"}
SEQUENCE_TYPE["舞攻击1"] = {default = "acttype"}
SEQUENCE_TYPE["舞攻击2"] = {default = "acttype"}
SEQUENCE_TYPE["舞攻击3"] = {default = "acttype"}
SEQUENCE_TYPE["踢箱"] = {default = "cmntype"}
SEQUENCE_TYPE["踢箱循环"] = {default = "cmntype"}
SEQUENCE_TYPE["弓准备6"] = {default = "cmntype"}
SEQUENCE_TYPE["弓射击6"] = {default = "cmntype"}
SEQUENCE_TYPE["云雨之舞"] = {default = "cmntype"}
SEQUENCE_TYPE["钓鱼"] = {default = "cmntype"}
SEQUENCE_TYPE["钓鱼循环"] = {default = "cmntype"}
SEQUENCE_TYPE["采药"] = {default = "cmntype"}
SEQUENCE_TYPE["采药循环"] = {default = "cmntype"}
SEQUENCE_TYPE["踢箱"] = {default = "cmntype"}
SEQUENCE_TYPE["踢箱循环"] = {default = "cmntype"}
SEQUENCE_TYPE["舞蹈"] = {default = "cmntype"}
SEQUENCE_TYPE["舞蹈_演武动作"] = {default = "cmntype"}
SEQUENCE_TYPE["对空攻击"] = {default = "acttype"}
SEQUENCE_TYPE["对空引雷"] = {default = "acttype"}
SEQUENCE_TYPE["攻击1"] = {default = "acttype"}
SEQUENCE_TYPE["攻击2"] = {default = "acttype"}
SEQUENCE_TYPE["攻击3"] = {default = "acttype"}
SEQUENCE_TYPE["前突攻击"] = {default = "acttype"}
SEQUENCE_TYPE["收手式"] = {default = "acttype"}
SEQUENCE_TYPE["双旋转1"] = {default = "acttype"}
SEQUENCE_TYPE["双旋转2"] = {default = "acttype"}
SEQUENCE_TYPE["双旋转3"] = {default = "acttype"}
SEQUENCE_TYPE["跳跃冲锋"] = {default = "acttype"}
SEQUENCE_TYPE["跳跃冲锋起"] = {default = "acttype"}
SEQUENCE_TYPE["投掷"] = {default = "acttype"}
SEQUENCE_TYPE["旋风冲撞"] = {default = "acttype"}
SEQUENCE_TYPE["旋转攻击"] = {default = "acttype"}
SEQUENCE_TYPE["旋转攻击起"] = {default = "acttype"}
SEQUENCE_TYPE["战魂激发"] = {default = "cmntype"}
SEQUENCE_TYPE["休闲"] = {default = "acttype"}
SEQUENCE_TYPE["驾驶动作_空闲"] = {default = "cmntype"}
SEQUENCE_TYPE["驾驶动作_左转"] = {default = "cmntype"}
SEQUENCE_TYPE["驾驶动作_右转"] = {default = "cmntype"}
SEQUENCE_TYPE["飞叉投掷"] = {default = "acttype"}
SEQUENCE_TYPE["前突准备"] = {default = "acttype"}
SEQUENCE_TYPE["前突"] = {default = "acttype"}
SEQUENCE_TYPE["回旋刀投掷1"] = {default = "acttype"}
SEQUENCE_TYPE["回旋刀投掷2"] = {default = "acttype"}
SEQUENCE_TYPE["回旋刀投掷3"] = {default = "acttype"}
SEQUENCE_TYPE["回旋刀投掷4"] = {default = "acttype"}
SEQUENCE_TYPE["幻影击"] = {default = "acttype"}
SEQUENCE_TYPE["冲撞"] = {default = "acttype"}
SEQUENCE_TYPE["强攻蓄力"] = {default = "acttype"}
SEQUENCE_TYPE["冲刺蓄力"] = {default = "acttype"}
SEQUENCE_TYPE["大喝攻击"] = {default = "acttype"}
SEQUENCE_TYPE["乱舞攻击1"] = {default = "acttype"}
SEQUENCE_TYPE["乱舞攻击2"] = {default = "acttype"}
SEQUENCE_TYPE["乱舞连击1"] = {default = "acttype"}
SEQUENCE_TYPE["乱舞连击2"] = {default = "acttype"}
SEQUENCE_TYPE["乱舞连击3"] = {default = "acttype"}
SEQUENCE_TYPE["跳跃震击"] = {default = "acttype"}
SEQUENCE_TYPE["原地震击"] = {default = "acttype"}
SEQUENCE_TYPE["冲击波"] = {default = "acttype"}
SEQUENCE_TYPE["投掷炸弹"] = {default = "acttype"}
SEQUENCE_TYPE["诸葛连弩"] = {default = "acttype"}
SEQUENCE_TYPE["水中挣扎"] = {default = "acttype"}
SEQUENCE_TYPE["水中死亡"] = {default = "acttype"}
SEQUENCE_TYPE["水中死亡循环"] = {default = "acttype"}
SEQUENCE_TYPE["鬼魅之舞"] = {default = "acttype"}
SEQUENCE_TYPE["表情求签"] = {default = "acttype"}
SEQUENCE_TYPE["表情迷香"] = {default = "acttype"}
SEQUENCE_TYPE["表情酒壶"] = {default = "acttype"}
SEQUENCE_TYPE["表情送糖果"] = {default = "acttype"}
SEQUENCE_TYPE["表情唱歌"] = {default = "acttype"}
SEQUENCE_TYPE["召唤"] = {default = "acttype"}
SEQUENCE_TYPE["打雪仗"] = {default = "acttype"}
SEQUENCE_TYPE["挑起盖头"] = {default = "acttype"}
SEQUENCE_TYPE["表情南蛮短裤男舞蹈"] = {default = "cmntype"}
SEQUENCE_TYPE["表情南蛮短裙女舞蹈"] = {default = "cmntype"}
SEQUENCE_TYPE["醉酒"] = {default = "cmntype"}
SEQUENCE_TYPE["花环"] = {default = "cmntype"}
SEQUENCE_TYPE["舞蹈伞"] = {default = "cmntype"}
SEQUENCE_TYPE["舞蹈笛"] = {default = "cmntype"}
SEQUENCE_TYPE["饰品切换"] = {default = "acttype"}
SEQUENCE_TYPE["指向吟唱1风系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向吟唱1冰系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向吟唱2火系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向吟唱2雷系"] = {default = "cmntype"}
SEQUENCE_TYPE["指向施放1"] = {default = "cmntype"}
SEQUENCE_TYPE["指向施放2"] = {default = "cmntype"}
SEQUENCE_TYPE["舞蹈琴"] = {default = "cmntype"}
SEQUENCE_TYPE["舞蹈扇"] = {default = "cmntype"}
SEQUENCE_TYPE["休闲2"] = {default = "acttype"}
SEQUENCE_TYPE["被击退"] = {default = "cmntype"}
SEQUENCE_TYPE["被缠绕摔"] = {default = "cmntype"}
SEQUENCE_TYPE["休闲动作"] = {default = "cmntype"}
SEQUENCE_TYPE["新轻击3"] = {default = "cmntype"}
SEQUENCE_TYPE["重击3"] = {default = "cmntype"}
SEQUENCE_TYPE["新重击3"] = {default = "cmntype"}
SEQUENCE_TYPE["轻击3"] = {default = "cmntype"}
SEQUENCE_TYPE["轻击4"] = {default = "cmntype"}
SEQUENCE_TYPE["易容"] = {default = "cmntype"}
SEQUENCE_TYPE["百裂连棍新"] = {default = "acttype"}
SEQUENCE_TYPE["挑打"] = {default = "acttype"}
SEQUENCE_TYPE["逆打"] = {default = "acttype"}
SEQUENCE_TYPE["锋刺"] = {default = "acttype"}
SEQUENCE_TYPE["胡贯"] = {default = "acttype"}
SEQUENCE_TYPE["盾砸"] = {default = "acttype"}
SEQUENCE_TYPE["盾突"] = {default = "acttype"}
SEQUENCE_TYPE["援护"] = {default = "acttype"}
SEQUENCE_TYPE["被浮空摔"] = {default = "cmntype"}
SEQUENCE_TYPE["大风车"] = {default = "acttype"}
SEQUENCE_TYPE["一剑凌风"] = {default = "acttype"}
SEQUENCE_TYPE["御凤翔龙"] = {default = "acttype"}
SEQUENCE_TYPE["骤雨青荷"] = {default = "acttype"}
SEQUENCE_TYPE["一级跳"] = {default = "acttype"}
SEQUENCE_TYPE["二级跳"] = {default = "acttype"}
SEQUENCE_TYPE["三级跳"] = {default = "acttype"}
SEQUENCE_TYPE["速攻"] = {default = "acttype"}
SEQUENCE_TYPE["先攻"] = {default = "acttype"}
SEQUENCE_TYPE["先攻位移"] = {default = "acttype"}
SEQUENCE_TYPE["混环式"] = {default = "acttype"}
SEQUENCE_TYPE["连环击1"] = {default = "acttype"}
SEQUENCE_TYPE["连环击2"] = {default = "acttype"}
SEQUENCE_TYPE["连环击3"] = {default = "acttype"}
SEQUENCE_TYPE["连环击1远程"] = {default = "acttype"}
SEQUENCE_TYPE["连环击2远程"] = {default = "acttype"}
SEQUENCE_TYPE["连环击3远程"] = {default = "acttype"}
SEQUENCE_TYPE["乱环式"] = {default = "acttype"}
SEQUENCE_TYPE["撒手环起"] = {default = "acttype"}
SEQUENCE_TYPE["撒手环收"] = {default = "acttype"}
SEQUENCE_TYPE["旋风式"] = {default = "acttype"}
SEQUENCE_TYPE["御环式"] = {default = "acttype"}
SEQUENCE_TYPE["重击1新"] = {default = "acttype"}
SEQUENCE_TYPE["重击1蓄力"] = {default = "acttype"}
SEQUENCE_TYPE["破环式"] = {default = "acttype"}
SEQUENCE_TYPE["飞环式"] = {default = "acttype"}
SEQUENCE_TYPE["二踢脚1"] = {default = "acttype"}
SEQUENCE_TYPE["二踢脚2"] = {default = "acttype"}
SEQUENCE_TYPE["麻痹"] = {default = "acttype"}
SEQUENCE_TYPE["扇风"] = {default = "cmntype"}
SEQUENCE_TYPE["嘲讽技能光效"] = {default = "cmntype"}
SEQUENCE_TYPE["回锋斩"] = {default = "acttype"}
SEQUENCE_TYPE["烈风重斩"] = {default = "acttype"}
SEQUENCE_TYPE["风火轮"] = {default = "cmntype"}
SEQUENCE_TYPE["被浮空"] = {default = "cmntype"}
SEQUENCE_TYPE["被浮空循环"] = {default = "cmntype"}
SEQUENCE_TYPE["被击倒"] = {default = "cmntype"}
SEQUENCE_TYPE["金丝缠"] = {default = "acttype"}
SEQUENCE_TYPE["银蛇缚"] = {default = "acttype"}
SEQUENCE_TYPE["回龙乱"] = {default = "acttype"}
SEQUENCE_TYPE["缠颈打位移"] = {default = "acttype"}
SEQUENCE_TYPE["缠颈打位移打"] = {default = "acttype"}
SEQUENCE_TYPE["碎石鞭"] = {default = "acttype"}
SEQUENCE_TYPE["断魂鞭"] = {default = "acttype"}
SEQUENCE_TYPE["蓄力"] = {default = "acttype"}
SEQUENCE_TYPE["魅影鞭"] = {default = "acttype"}
SEQUENCE_TYPE["迷影鞭"] = {default = "acttype"}
SEQUENCE_TYPE["秋风扫"] = {default = "acttype"}
SEQUENCE_TYPE["落雁扫"] = {default = "acttype"}
SEQUENCE_TYPE["迎面扫"] = {default = "acttype"}
SEQUENCE_TYPE["摄魂扫"] = {default = "acttype"}
SEQUENCE_TYPE["飞萦绕"] = {default = "acttype"}
SEQUENCE_TYPE["残梦撩"] = {default = "acttype"}
SEQUENCE_TYPE["贯地击"] = {default = "acttype"}
SEQUENCE_TYPE["升龙击"] = {default = "acttype"}
SEQUENCE_TYPE["乱舞"] = {default = "acttype"}
SEQUENCE_TYPE["离心刺"] = {default = "acttype"}
SEQUENCE_TYPE["鞭挡"] = {default = "acttype"}
SEQUENCE_TYPE["鞭挡反击"] = {default = "acttype"}
SEQUENCE_TYPE["前滚攻击"] = {default = "acttype"}
SEQUENCE_TYPE["盾防"] = {default = "acttype"}
SEQUENCE_TYPE["重斩"] = {default = "acttype"}
SEQUENCE_TYPE["盾防轻击"] = {default = "acttype"}
SEQUENCE_TYPE["盾防裂地"] = {default = "acttype"}
SEQUENCE_TYPE["横扫连击1"] = {default = "acttype"}
SEQUENCE_TYPE["重击蓄力"] = {default = "acttype"}
SEQUENCE_TYPE["重击混乱"] = {default = "acttype"}
SEQUENCE_TYPE["盾反重击"] = {default = "acttype"}
SEQUENCE_TYPE["砸击"] = {default = "acttype"}
SEQUENCE_TYPE["盾防盾扫"] = {default = "acttype"}
SEQUENCE_TYPE["荡寇"] = {default = "acttype"}
SEQUENCE_TYPE["横劈"] = {default = "acttype"}
SEQUENCE_TYPE["爆破"] = {default = "acttype"}
SEQUENCE_TYPE["影闪"] = {default = "acttype"}
SEQUENCE_TYPE["怒刺"] = {default = "acttype"}
SEQUENCE_TYPE["突进"] = {default = "acttype"}
SEQUENCE_TYPE["狂风"] = {default = "acttype"}
SEQUENCE_TYPE["冰封"] = {default = "acttype"}
SEQUENCE_TYPE["霜冻"] = {default = "acttype"}
SEQUENCE_TYPE["贯刺"] = {default = "acttype"}
SEQUENCE_TYPE["扫袭"] = {default = "acttype"}
SEQUENCE_TYPE["锋斩"] = {default = "acttype"}
SEQUENCE_TYPE["清风"] = {default = "acttype"}
SEQUENCE_TYPE["神火"] = {default = "acttype"}
SEQUENCE_TYPE["怒砸"] = {default = "acttype"}
SEQUENCE_TYPE["对空速击"] = {default = "acttype"}
SEQUENCE_TYPE["挑刺"] = {default = "acttype"}
SEQUENCE_TYPE["甩枪"] = {default = "acttype"}
SEQUENCE_TYPE["降龙"] = {default = "acttype"}
SEQUENCE_TYPE["断愁军"] = {default = "acttype"}
SEQUENCE_TYPE["断愁破"] = {default = "acttype"}
SEQUENCE_TYPE["寸绝军"] = {default = "acttype"}
SEQUENCE_TYPE["寸绝破"] = {default = "acttype"}
SEQUENCE_TYPE["火袭怒"] = {default = "acttype"}
SEQUENCE_TYPE["火袭破"] = {default = "acttype"}
SEQUENCE_TYPE["寂灭"] = {default = "acttype"}
SEQUENCE_TYPE["斩铁"] = {default = "acttype"}
SEQUENCE_TYPE["蛇影"] = {default = "acttype"}
SEQUENCE_TYPE["速射"] = {default = "acttype"}
SEQUENCE_TYPE["力射"] = {default = "acttype"}
SEQUENCE_TYPE["平射2"] = {default = "acttype"}
SEQUENCE_TYPE["神射头"] = {default = "acttype"}
SEQUENCE_TYPE["散射"] = {default = "acttype"}
SEQUENCE_TYPE["神射"] = {default = "acttype"}
SEQUENCE_TYPE["前滚攻击"] = {default = "acttype"}
SEQUENCE_TYPE["大招"] = {default = "acttype"}
SEQUENCE_TYPE["后跃射击"] = {default = "acttype"}
SEQUENCE_TYPE["浮空射"] = {default = "acttype"}
SEQUENCE_TYPE["幻影射"] = {default = "acttype"}
SEQUENCE_TYPE["轻弩"] = {default = "acttype"}
SEQUENCE_TYPE["劲弩"] = {default = "acttype"}
SEQUENCE_TYPE["速射准备"] = {default = "acttype"}
SEQUENCE_TYPE["射击准备"] = {default = "ridetype"}
SEQUENCE_TYPE["弩射击"] = {default = "ridetype"}
SEQUENCE_TYPE["骑射站立"] = {default = "cmntype"}
SEQUENCE_TYPE["骑战射击1"] = {default = "ridetype"}
SEQUENCE_TYPE["骑战射击2"] = {default = "ridetype"}
SEQUENCE_TYPE["骑战射击3"] = {default = "ridetype"}
SEQUENCE_TYPE["骑战射击4"] = {default = "ridetype"}
SEQUENCE_TYPE["瞬杀怒"] = {default = "acttype"}
SEQUENCE_TYPE["瞬杀破"] = {default = "acttype"}
SEQUENCE_TYPE["瞬杀军"] = {default = "acttype"}
SEQUENCE_TYPE["迎面斩"] = {default = "acttype"}
SEQUENCE_TYPE["断月斩"] = {default = "acttype"}
SEQUENCE_TYPE["半月斩"] = {default = "acttype"}
SEQUENCE_TYPE["猛劈"] = {default = "acttype"}
SEQUENCE_TYPE["猛击"] = {default = "acttype"}
SEQUENCE_TYPE["舞兵"] = {default = "ridetype"}
SEQUENCE_TYPE["蓄势循环"] = {default = "acttype"}
SEQUENCE_TYPE["左旋击"] = {default = "acttype"}
SEQUENCE_TYPE["乱舞攻击1"] = {default = "acttype"}
SEQUENCE_TYPE["骑战暗器"] = {default = "ridetype"}
SEQUENCE_TYPE["马上嘲讽"] = {default = "acttype"}
SEQUENCE_TYPE["烈风重斩"] = {default = "ridetype"}
SEQUENCE_TYPE["刺击"] = {default = "ridetype"}
SEQUENCE_TYPE["瞬击"] = {default = "ridetype"}
SEQUENCE_TYPE["旋镖"] = {default = "ridetype"}
SEQUENCE_TYPE["马上投掷"] = {default = "ridetype"}
SEQUENCE_TYPE["冲刺"] = {default = "acttype"}
SEQUENCE_TYPE["缠绕"] = {default = "acttype"}
SEQUENCE_TYPE["跳劈"] = {default = "acttype"}
SEQUENCE_TYPE["瞬击"] = {default = "acttype"}
SEQUENCE_TYPE["刺杀"] = {default = "acttype"}
SEQUENCE_TYPE["砍翻"] = {default = "acttype"}
SEQUENCE_TYPE["马上鼓舞1"] = {default = "acttype"}
SEQUENCE_TYPE["马上鼓舞2"] = {default = "acttype"}
SEQUENCE_TYPE["马上鼓舞3"] = {default = "acttype"}
SEQUENCE_TYPE["震锤"] = {default = "acttype"}
SEQUENCE_TYPE["砸击"] = {default = "acttype"}
SEQUENCE_TYPE["旋风"] = {default = "acttype"}
SEQUENCE_TYPE["鞭枪决"] = {default = "ridetype"}
SEQUENCE_TYPE["回旋"] = {default = "ridetype"}
SEQUENCE_TYPE["寂灭"] = {default = "ridetype"}
SEQUENCE_TYPE["灵凤袭"] = {default = "acttype"}
SEQUENCE_TYPE["凝劲击"] = {default = "ridetype"}
SEQUENCE_TYPE["猛刺"] = {default = "ridetype"}
SEQUENCE_TYPE["鼓舞施放1"] = {default = "cmntype"}
SEQUENCE_TYPE["鼓舞施放2"] = {default = "cmntype"}
SEQUENCE_TYPE["猛击1"] = {default = "acttype"}
SEQUENCE_TYPE["蓄势循环1"] = {default = "acttype"}
SEQUENCE_TYPE["乘风剑飞剑"] = {default = "acttype"}
SEQUENCE_TYPE["乘风剑落剑"] = {default = "acttype"}
SEQUENCE_TYPE["追风"] = {default = "acttype"}
SEQUENCE_TYPE["截脉反击"] = {default = "acttype"}
SEQUENCE_TYPE["落剑弑"] = {default = "acttype"}
SEQUENCE_TYPE["御风剑"] = {default = "acttype"}
SEQUENCE_TYPE["一剑凌风闪"] = {default = "acttype"}
SEQUENCE_TYPE["一剑凌风蓄力"] = {default = "acttype"}


---预定义武器对应的名称及相关信息 
---        name：武器类型后缀
---     acttype：动作类型后缀
---     hldtype：手持类型后缀
---     cmntype：通用类型后缀

WEAPON_TYPE	=	{}
WEAPON_TYPE[1] = {name = "空手" , acttype = "空手" , hldtype = "双手" , cmntype = "通用" , ridetype = "空手"}
WEAPON_TYPE[2] = {name = "刀" , acttype = "长重" , hldtype = "单手" , cmntype = "通用" , ridetype = "长重"}
WEAPON_TYPE[3] = {name = "枪" , acttype = "长轻" , hldtype = "单手" , cmntype = "通用" , ridetype = "长轻"}
WEAPON_TYPE[4] = {name = "戟" , acttype = "长轻" , hldtype = "单手" , cmntype = "通用" , ridetype = "长轻"}
WEAPON_TYPE[5] = {name = "钺" , acttype = "长重" , hldtype = "单手" , cmntype = "通用" , ridetype = "长重"}
WEAPON_TYPE[6] = {name = "叉" , acttype = "双短" , hldtype = "单手" , cmntype = "通用" , ridetype = "叉"}
WEAPON_TYPE[7] = {name = "棍" , acttype = "长轻" , hldtype = "单手" , cmntype = "通用" , ridetype = "长轻"}
WEAPON_TYPE[8] = {name = "剑" , acttype = "单短" , hldtype = "单手" , cmntype = "通用" , ridetype = "单短"}
WEAPON_TYPE[9] = {name = "斧" , acttype = "双短" , hldtype = "双手" , cmntype = "通用" , ridetype = "双短"}
---以下三个双短部分改为单短，钩>锏>锤
---WEAPON_TYPE[10] = {name = "钩" , acttype = "单短" , hldtype = "单手" , cmntype = "通用" , ridetype = "单短"}
---WEAPON_TYPE[11] = {name = "锏" , acttype = "双短" , hldtype = "单手" , cmntype = "通用" , ridetype = "双短"}
---WEAPON_TYPE[12] = {name = "锤" , acttype = "双短" , hldtype = "单手" , cmntype = "通用" , ridetype = "锤"}
WEAPON_TYPE[10] = {name = "钩" , acttype = "双短" , hldtype = "双手" , cmntype = "通用" , ridetype = "双短"}
WEAPON_TYPE[11] = {name = "锏" , acttype = "双短" , hldtype = "双手" , cmntype = "通用" , ridetype = "双短"}
WEAPON_TYPE[12] = {name = "锤" , acttype = "双短" , hldtype = "双手" , cmntype = "通用" , ridetype = "锤"}
WEAPON_TYPE[13] = {name = "爪" , acttype = "空手" , hldtype = "双手" , cmntype = "通用" , ridetype = "空手"}
WEAPON_TYPE[14] = {name = "盾" , acttype = "空手" , hldtype = "双手" , cmntype = "通用" , ridetype = "盾"}
--环的hldtype 2012-10-22改为了单手
WEAPON_TYPE[15] = {name = "环" , acttype = "异类" , hldtype = "单手" , cmntype = "通用" , ridetype = "异类"}
WEAPON_TYPE[16] = {name = "杖" , acttype = "单短" , hldtype = "单手" , cmntype = "通用" , ridetype = "单短"}
WEAPON_TYPE[17] = {name = "舞" , acttype = "异类" , hldtype = "双手" , cmntype = "通用" , ridetype = "舞"}
WEAPON_TYPE[18] = {name = "扇" , acttype = "单短" , hldtype = "单手" , cmntype = "通用" , ridetype = "单短"}
WEAPON_TYPE[19] = {name = "弓" , acttype = "空手" , hldtype = "双手" , cmntype = "通用" , ridetype = "弓"}
WEAPON_TYPE[20] = {name = "鞭" , acttype = "单短" , hldtype = "单手" , cmntype = "通用" , ridetype = "锤"}
WEAPON_TYPE[21] = {name = "弩" , acttype = "单短" , hldtype = "单手" , cmntype = "通用" , ridetype = "弩"}

---预定义技能调用动作名，
---自动攻击指动作名无用，现在包括1,21,41,61,81,101,121,141,161,181,201,221,241,261,281,301,321,341,362
---        name：技能名
---         act：动作名表
---           　 每一段动作均为字符串，没有动作用空字符串""，
---forceextword：强行指动该动作中间词（用得较少，中间词为空时需要手写""）（仅对非双人状态下有效）
---              不指定情况下会人物的骑乘、双人状态进行调用
--- forcesuffix：强行指动该动作后缀（如果调用换其它类武器的动作）（仅对非双人状态下有效）
---              不指定情况下会按照动作对应装备武器的名字进行调用
---        例如：{"重击1"}，{"近身准备","回转攻击"}，{"近身准备","回转攻击",""}，{"近身准备","回转攻击","","普通攻击1"}
---        例如：forceextword = "" , forcesuffix = "长重"

SKILL_TYPE = {}
---普通攻击
SKILL_TYPE[1] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[21] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[41] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[61] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[81] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[101] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[121] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[141] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[161] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[181] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[201] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[221] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[241] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[261] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[281] = {name = "自动攻击" , act = {"飞行吟唱火系" , "飞行施放"}}
SKILL_TYPE[301] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[321] = {name = "自动攻击" , act = {"飞行吟唱冰系" , "飞行施放"}}
SKILL_TYPE[341] = {name = "自动攻击" , act = {"弓准备1" , "弓射击1"} , forcesuffix = "通用"}
SKILL_TYPE[362] = {name = "自动攻击" , act = {"" , "普通攻击1"}}
SKILL_TYPE[5109] = {name = "自动攻击" , act = {"" , "普通攻击1"}, forcesuffix = "鞭"}
SKILL_TYPE[5276] = {name = "自动攻击" , act = {"" , "普通攻击1"}, forcesuffix = "弩"}
---刀
SKILL_TYPE[2] = {name = "挑战" , act = {"" , "指向施放"}}
SKILL_TYPE[3] = {name = "速砍" , act = {"" , "轻击2"}}
SKILL_TYPE[4] = {name = "猛劈" , act = {"近身准备" , "猛劈" , ""} , forcesuffix = "长重"}
SKILL_TYPE[5] = {name = "断月斩" , act = {"" , "断月斩"} , forcesuffix = "长重"}
SKILL_TYPE[6] = {name = "半月斩" , act = {"近身准备" , "半月斩"} , forcesuffix = "长重"}
SKILL_TYPE[7] = {name = "圆月斩" , act = {"特殊准备" , "重击2"}}
SKILL_TYPE[8] = {name = "青龙偃月" , act = {"" , "青龙偃月"} , forcesuffix = "长重"}
SKILL_TYPE[9] = {name = "强攻" , act = {"" , "强化施放"}}
SKILL_TYPE[10] = {name = "鼓舞" , act = {"" , "强化施放"}}
SKILL_TYPE[11] = {name = "弧月斩" , act = {"强力准备" , "重击1"}}
SKILL_TYPE[12] = {name = "蓄力" , act = {"蓄力准备" , "" , "" , ""}}
SKILL_TYPE[13] = {name = "快跑" , act = {"" , ""}}
SKILL_TYPE[14] = {name = "格挡" , act = {"" , "格挡循环"}}
SKILL_TYPE[15] = {name = "突击" , act = {"强力准备" , "加速跑" , "轻击1"} , forcesuffix = "长重"}
SKILL_TYPE[16] = {name = "横抡" , act = {"" , "轻击1"}}
SKILL_TYPE[17] = {name = "迎面斩" , act = {"蓄力准备" , "迎面斩" , ""} , forcesuffix = "长重"}
SKILL_TYPE[18] = {name = "招架" , act = {"" , "格挡循环"}}
SKILL_TYPE[19] = {name = "速砍" , act = {"" , "轻击2"}}
SKILL_TYPE[1703] = {name = "龙爪阵" , act = {"飞行吟唱雷系" , "飞行施放雷系"}}
SKILL_TYPE[1704] = {name = "斗气之盾" , act = {"鼓舞施放" , ""} , forcesuffix = "通用"}
SKILL_TYPE[1705] = {name = "寸草不生" , act = {"" , "普通攻击2"}}
SKILL_TYPE[1706] = {name = "突破极限" , act = {"鼓舞施放" , ""} , forcesuffix = "通用"}
---枪
SKILL_TYPE[22] = {name = "挑战" , act = {"" , "指向施放"}}
SKILL_TYPE[23] = {name = "挑击" , act = {"" , "轻击1"}}
SKILL_TYPE[24] = {name = "劈砸" , act = {"蓄力准备" , "对地攻击"}}
SKILL_TYPE[25] = {name = "神威枪" , act = {"" , "跳跃攻击" }}
SKILL_TYPE[26] = {name = "疾风枪" , act = {"疾风枪" , ""}}
SKILL_TYPE[27] = {name = "回马枪" , act = {"蓄力准备" , "轻击2"}}
SKILL_TYPE[28] = {name = "骤雨青荷" , act = {"" , "骤雨青荷" } , forcesuffix = "长轻"}
SKILL_TYPE[29] = {name = "锐金" , act = {"" , "强化施放"}}
SKILL_TYPE[30] = {name = "激励" , act = {"" , "近身准备"}}
SKILL_TYPE[31] = {name = "暴雨梨花" , act = {"" , "枪群攻" , "" , "枪群攻" , "" , "枪群攻" , "" , "枪群攻" , "" , "枪群攻" , ""}}
SKILL_TYPE[32] = {name = "连击" , act = {"" , ""}}
SKILL_TYPE[33] = {name = "快跑" , act = {"" , ""}}
SKILL_TYPE[34] = {name = "格挡" , act = {"" , "格挡循环"}}
SKILL_TYPE[35] = {name = "突击" , act = {"特殊准备" , "普通攻击1" , ""}}
SKILL_TYPE[36] = {name = "突刺" , act = {"" , "普通攻击1"}}
SKILL_TYPE[37] = {name = "拨马回身" , act = {"" , "闪躲"}}
SKILL_TYPE[38] = {name = "风雷连刺" , act = {"" , "轻击1" , "重击1" , "普通攻击1" , "对地攻击" , ""}}
SKILL_TYPE[39] = {name = "空" , act = {"" , "强化施放"}}
SKILL_TYPE[40] = {name = "风雷连刺" , act = {"" , "轻击1" , "重击1" , "普通攻击1" , "对地攻击"}}
SKILL_TYPE[1707] = {name = "精准刺击" , act = {"对空攻击" , ""} , forcesuffix = "长轻"}
SKILL_TYPE[1708] = {name = "集中火力" , act = {"飞行吟唱雷系" , "飞行施放雷系"}}
SKILL_TYPE[1709] = {name = "疾风步" , act = {"" , "起跳"}}
SKILL_TYPE[1710] = {name = "凌波微步" , act = {"指向施放雷系" , ""} , forcesuffix = "通用"}
---戟
SKILL_TYPE[42]={name="挑战",act={"" , "指向施放"}}
SKILL_TYPE[43]={name="挑打",act={"" , "挑打"},forcesuffix = "戟"}
SKILL_TYPE[44]={name="逆打",act={"" , "逆打"},forcesuffix = "戟"}
SKILL_TYPE[45]={name="锋刺",act={"" , "锋刺"} , forcesuffix = "戟"}
SKILL_TYPE[46]={name="胡贯",act={"" , "胡贯"}, forcesuffix = "戟"}
SKILL_TYPE[47]={name="四方杀",act={"" , "重击2"}}
SKILL_TYPE[48]={name="勇战三英",act={"" , "戟攻击4" , "" , "" }}
SKILL_TYPE[49]={name="无畏",act={"" , "强化施放"}}
SKILL_TYPE[50]={name="夺命戟",act={"" , "普通攻击1"}}
SKILL_TYPE[51]={name="怒破斩",act={"蓄力准备" , "重击1"}}
SKILL_TYPE[52]={name="追魂戟",act={"戟攻击8" , ""}}
SKILL_TYPE[53]={name="虎虎生风",act={"" , ""}}
SKILL_TYPE[54]={name="格挡",act={"" , "格挡"}}
SKILL_TYPE[55] = {name = "突击" , act = {"强力准备" , "普通攻击1" , ""}}
SKILL_TYPE[56]={name="激励",act={"" , "指向施放"}}
SKILL_TYPE[57]={name="承接",act={"" , ""}}
SKILL_TYPE[1219]={name="威风八面",act={"" , "跳跃攻击"}}
SKILL_TYPE[1711] = {name = "飞将之怒" , act = {"" , "指向施放雷系"}}
SKILL_TYPE[1712] = {name = "夜战八方" , act = {"" , "强化施放"}}
SKILL_TYPE[1713] = {name = "极限冲锋" , act = {"" , "指向施放风系"}}
SKILL_TYPE[1714] = {name = "气势凌人" , act = {"双龙绝命" , ""} , forcesuffix = "空手"}
---钺
SKILL_TYPE[62] = {name = "挑战" , act = {"" , "指向施放"}}
SKILL_TYPE[63] = {name = "破斩" , act = {"" , "普通攻击1"}}
SKILL_TYPE[64] = {name = "割裂" , act = {"","攻击1"},forcesuffix = "钺"}
SKILL_TYPE[65] = {name = "回锋斩" , act = {"" , "回转攻击特殊"}}
SKILL_TYPE[66] = {name = "烈风斩" , act = {"","攻击2" , "攻击3","对空引雷",""} , forcesuffix = "钺"}
SKILL_TYPE[67] = {name = "破元击" , act = {"" , "轻击2"}}
SKILL_TYPE[68] = {name = "龙牙碎金" , act = {"" , "龙牙碎金"} , forcesuffix = "长重"}
SKILL_TYPE[69] = {name = "聚元化气" , act = {"" , "指向施放冰系"},forcesuffix = "通用"}
SKILL_TYPE[70] = {name = "鼓命" , act = {"" , "强化施放"},forcesuffix = "通用"}
SKILL_TYPE[71] = {name = "吸魂" , act = {"" , "飞行施放风系"},forcesuffix = "通用"}
SKILL_TYPE[72] = {name = "噬血" , act = {"" , "强化施放","强化施放","强化施放","强化施放","强化施放","强化施放","强化施放"},forcesuffix = "通用"}
SKILL_TYPE[73] = {name = "碎兵" , act = {"" , "重击2"}}
SKILL_TYPE[74] = {name = "格挡" , act = {"" , "格挡"}}
SKILL_TYPE[75] = {name = "急冲" , act = {"" , "旋风冲撞"},forcesuffix = "钺"}
SKILL_TYPE[76] = {name = "钩镰" , act = {"" , "指向施放火系"},forcesuffix = "通用"}
SKILL_TYPE[77] = {name = "离甲" , act = {"" , "回转攻击"}}
SKILL_TYPE[78] = {name = "虚杀式" , act = {"" , "神龙摆尾"},forcesuffix = "长轻"}
SKILL_TYPE[4941] = {name = "逆锋斩" , act = {"" , "回锋斩"},forcesuffix = "长重"}
SKILL_TYPE[4944] = {name = "烈风重斩" , act = {"" , "烈风重斩"},forcesuffix = "钺"}
---棍
SKILL_TYPE[102] = {name = "挑战" , act = {"" , "指向施放"}}
SKILL_TYPE[103] = {name = "速打" , act = {"" , "轻击1"}}
SKILL_TYPE[104] = {name = "连打" , act = {"" , "对空攻击" , "" , "" , "" , "" , ""}}
SKILL_TYPE[105] = {name = "强袭棍" , act = {"" , "轻击2"}}
SKILL_TYPE[106] = {name = "风火轮" , act = {"强力准备" , "风火轮" , "风火轮" , "风火轮" , "风火轮" , "风火轮"}}
SKILL_TYPE[107] = {name = "逆袭棍" , act = {"" , "强化施放"}}
SKILL_TYPE[108] = {name = "横扫千军" , act = {"" , "大风车" , "" , "" , "" , ""} , forcesuffix = "长重"}
SKILL_TYPE[109] = {name = "强攻" , act = {"" , "强化施放"}}
SKILL_TYPE[110] = {name = "昂扬" , act = {"" , "强化施放"}}
SKILL_TYPE[111] = {name = "雀落棍" , act = {"强力准备" , "回转攻击"}}
SKILL_TYPE[112] = {name = "连击" , act = {"" , ""}}
SKILL_TYPE[113] = {name = "快跑" , act = {"" , ""}}
SKILL_TYPE[114] = {name = "格挡" , act = {"" , "格挡循环"}}
SKILL_TYPE[115] = {name = "压制" , act = {"特殊准备" , "普通攻击1"} , forcesuffix = "长轻"}
SKILL_TYPE[116] = {name = "直刺" , act = {"" , "普通攻击1"}}
SKILL_TYPE[117] = {name = "棍连招" , act = {"" , "轻击1" , "重击1" , "轻击2" , "对地攻击"}}
SKILL_TYPE[118] = {name = "强袭棍－扫" , act = {"" , "轻击1"}}
SKILL_TYPE[119] = {name = "格挡" , act = {"" , "格挡循环"}}
SKILL_TYPE[120] = {name = "百裂连棍" , act = {"百裂连棍新" , "" , "" , "", forcesuffix = "长轻"}}
SKILL_TYPE[1715] = {name = "坚壁鼓舞" , act = {"" , "指向施放冰系"}}
SKILL_TYPE[1716] = {name = "百里荒芜" , act = {"强力准备" , "回转攻击持续" , "" , "" , "" , "" , "" , "" , "" , "" , "战斗站立"}}
SKILL_TYPE[1717] = {name = "不可侵犯" , act = {"" , "鼓舞施放"}}
SKILL_TYPE[1718] = {name = "怒气审判" , act = {"飞行吟唱火系" , "飞行施放火系"}}
---剑
SKILL_TYPE[122] = {name = "挑战" , act = {"" , "指向施放"}}
SKILL_TYPE[123] = {name = "速击" , act = {"" , "轻击2"}}
SKILL_TYPE[124] = {name = "重劈" , act = {"" , "普通攻击2" , "对地攻击"}}
SKILL_TYPE[125] = {name = "乘风刺" , act = {"近身准备" , "轻击1"} , forcesuffix = "单短"}
SKILL_TYPE[126] = {name = "觅心刺" , act = {"" , "轻击1"}}
SKILL_TYPE[127] = {name = "封喉刺" , act = {"蓄力准备" , "轻击1"}}
SKILL_TYPE[128] = {name = "流星赶月" , act = {"一剑凌风" , ""} , forcesuffix = "双短"}
SKILL_TYPE[129] = {name = "强攻" , act = {"" , "强化施放"}}
SKILL_TYPE[130] = {name = "连杀" , act = {"" , "指向施放"}}
SKILL_TYPE[131] = {name = "截脉刺" , act = {"蓄力准备" , "轻击1"}}
SKILL_TYPE[132] = {name = "连击" , act = {"" , ""}}
SKILL_TYPE[133] = {name = "快跑" , act = {"" , ""}}
SKILL_TYPE[134] = {name = "格挡" , act = {"" , "格挡循环"}}
--SKILL_TYPE[135] = {name = "突袭" , act = {"突刺攻击" , "" , ""} , forcesuffix = "单短"}
SKILL_TYPE[135] = {name = "突袭" , act = {"" , "乘风剑飞剑"} , forcesuffix = "剑"}
SKILL_TYPE[136] = {name = "直刺" , act = {"" , "轻击1"}}
--SKILL_TYPE[137] = {name = "御风刺" , act = {"近身准备" , "轻击1"} , forcesuffix = "单短"}
SKILL_TYPE[138] = {name = "剑连招" , act = {"" , "轻击1" , "轻击2" , "普通攻击2" , "对地攻击"} , forcesuffix = "单短"}
SKILL_TYPE[139] = {name = "剑罡" , act = {"" , "指向施放雷系"} }
SKILL_TYPE[140] = {name = "剑连招" , act = {"" , "轻击1" , "轻击2" , "普通攻击2" , "回转攻击"} , forcesuffix = "单短"}
SKILL_TYPE[1719] = {name = "剑气禁言" , act = {"" , "指向施放风系"}}
SKILL_TYPE[1720] = {name = "龙牙十字斩" , act = {"" , "对空攻击特殊"} , forcesuffix = "双短"}
SKILL_TYPE[1721] = {name = "九剑灭杀阵" , act = {"强力准备" , "回转攻击持续特殊" , "" , "" , "", "" , "对地攻击特殊"} , forcesuffix = "双短"}
SKILL_TYPE[1722] = {name = "无敌斩" , act = {"突刺攻击" , "对地攻击" , "对空攻击" , "回转攻击" , "击飞攻击" , "跳跃攻击" , "对空攻击特殊" , ""} , forcesuffix = "单短"}
SKILL_TYPE[5900] = {name = "剑罡·御心" , act = {"" , "对空攻击特殊"}, forcesuffix = "双短"}
SKILL_TYPE[5901] = {name = "剑罡·御剑" , act = {"","指向施放1" , "" ,"" ,"" , "" ,"" , "" , "" ,  "" ,  "" , ""}}
SKILL_TYPE[5902] = {name = "追风" , act = {"","追风"},forcesuffix = "剑"}
SKILL_TYPE[5903] = {name = "追风升龙" , act = {"","截脉反击"},forcesuffix = "剑"}
SKILL_TYPE[5908] = {name = "突袭斩" , act = {"突刺攻击" , "" , ""} , forcesuffix = "长重"}
SKILL_TYPE[5909] = {name = "剑落弑" , act = {"","落剑弑"},forcesuffix = "剑"}
SKILL_TYPE[137] = {name = "御风刺" , act = {"御风剑" , ""} , forcesuffix = "剑"}
---斧
SKILL_TYPE[142] = {name = "蓄气" , act = {"" , "指向施放"}}
SKILL_TYPE[143] = {name = "速打" , act = {"" , "轻击2"}}
SKILL_TYPE[144] = {name = "十字劈" , act = {"蓄力准备" , "对地攻击" , ""}}
SKILL_TYPE[145] = {name = "旋风斧" , act = {"" , "双旋转3"} , forcesuffix = "斧"}
SKILL_TYPE[146] = {name = "燃怒劈" , act = {"" , "突刺攻击"}}
SKILL_TYPE[147] = {name = "解牛劈" , act = {"" , "对地攻击"} , forcesuffix = "单短"}
SKILL_TYPE[148] = {name = "力劈华山" , act = {"" , "力劈华山"} , forcesuffix = "双短"}
SKILL_TYPE[149] = {name = "强攻" , act = {"" , "强化施放"}}
SKILL_TYPE[150] = {name = "锐金" , act = {"" , "指向施放"}}
SKILL_TYPE[151] = {name = "当头斧" , act = {"蓄力准备" , "突刺攻击"}}
SKILL_TYPE[152] = {name = "待伏" , act = {"" , ""}}
SKILL_TYPE[153] = {name = "快跑" , act = {"" , ""}}
SKILL_TYPE[154] = {name = "格挡" , act = {"" , "格挡循环"}}
SKILL_TYPE[155] = {name = "突击" , act = {"近身准备" , "加速跑" , "重击2"} , forcesuffix = "双短"}
SKILL_TYPE[156] = {name = "重砍" , act = {"" , "轻击1"}}
SKILL_TYPE[157] = {name = "天神下凡" , act = {"" , "跳跃攻击" , ""} , forcesuffix = "斧"}
SKILL_TYPE[159] = {name = "坚壁" , act = {"" , "指向施放风系"} }
SKILL_TYPE[1723] = {name = "嗜杀如命" , act = {"飞行吟唱火系" , "飞行施放火系"} , forcesuffix = "通用"}
SKILL_TYPE[1724] = {name = "狂战士之怒" , act = {"" , "鼓舞施放"} , forcesuffix = "通用"}
SKILL_TYPE[1725] = {name = "怒意焚烧" , act = {"" , "指向施放风系"}}
SKILL_TYPE[1726] = {name = "怒斩" , act = {"金刚坠地" , ""} , forcesuffix = "长重"}
---钩
SKILL_TYPE[162] = {name = "挑战" , act = {"" , "指向施放"}}
SKILL_TYPE[163] = {name = "磐石纹身" , act = {"" , "鼓舞施放"}}
SKILL_TYPE[164] = {name = "疾风纹身" , act = {"" , "鼓舞施放"}}
SKILL_TYPE[165] = {name = "血沸纹身" , act = {"" , "鼓舞施放"}}
SKILL_TYPE[166] = {name = "引雷钩" , act = {"对地攻击特殊"}}
SKILL_TYPE[167] = {name = "百毒入髓" , act = {"" , "飞行施放火系"}}
SKILL_TYPE[168] = {name = "吴鸿扈稽" , act = {"" , "对空攻击特殊"} , forcesuffix = "双短"}
SKILL_TYPE[169] = {name = "血之饥渴" , act = {"" , "指向施放雷系"}}
SKILL_TYPE[170] = {name = "大卸八块" , act = {"对地攻击特殊" , ""} , forcesuffix = "双短"}
SKILL_TYPE[171] = {name = "毒血之刃" , act = {"" , "暗器投掷"}}
SKILL_TYPE[172] = {name = "吴钩霜雪明" , act = {"跳跃攻击特殊" , ""} , forcesuffix = "双短"}
SKILL_TYPE[173] = {name = "潜伏战法" , act = {"" , "鼓舞施放"}}
SKILL_TYPE[174] = {name = "战斗纹身" , act = {"" , "鼓舞施放"}}
SKILL_TYPE[175] = {name = "钩袭" , act = {"突刺攻击" , ""}}
SKILL_TYPE[176] = {name = "檄械" , act = {"" , "轻击1"}}
SKILL_TYPE[177] = {name = "恶鬼降临" , act = {"" , "强化施放"}}
SKILL_TYPE[1841] = {name = "鬼魅行踪" , act = {"" , "指向施放风系"}}
SKILL_TYPE[1844] = {name = "激发仇恨" , act = {"" , "鼓舞施放"}}
SKILL_TYPE[1847] = {name = "疾风之速" , act = {"" , "飞行施放雷系"}}
SKILL_TYPE[1863] = {name = "仇视" , act = {"" , "指向施放火系"}}
SKILL_TYPE[1866] = {name = "不共戴天" , act = {"" , "指向施放火系"}}
SKILL_TYPE[1953] = {name = "闪电盾" , act = {"" , "指向施放雷系"}}
SKILL_TYPE[1954] = {name = "御钩决" , act = {"" , "跳跃攻击特殊"} , forcesuffix = "双短"}
SKILL_TYPE[1955] = {name = "蛮荒之雷" , act = {"指向持续雷系" , "" , "" , "" , "" , "" , ""}}
SKILL_TYPE[1956] = {name = "百鬼禁足" , act = {"" , "指向施放雷系"}}
---锏
SKILL_TYPE[182] = {name = "挑衅" , act = {"突刺攻击" } , forcesuffix = "双短"}
SKILL_TYPE[183] = {name = "御鬼" , act = {"" , "双旋转2"} , forcesuffix = "双锏"}
SKILL_TYPE[184] = {name = "风雷裂" , act = {"" , "双旋转1"} , forcesuffix = "双锏"}
SKILL_TYPE[185] = {name = "乱花齐绽" , act = {"" , "旋转攻击起"} , forcesuffix = "双锏"}
SKILL_TYPE[186] = {name = "撒手锏" , act = {"投掷" , ""} , forcesuffix = "双锏"}
SKILL_TYPE[187] = {name = "斩龙式" , act = {"跳跃冲锋起" , "跳跃冲锋"} , forcesuffix = "双锏"}
SKILL_TYPE[188] = {name = "旋风式" , act = {"" , "双旋转3"} , forcesuffix = "双锏"}
SKILL_TYPE[189] = {name = "后跃式" , act = {"" , "起跳"}}
SKILL_TYPE[190] = {name = "聚雷式" , act = {"" , "重击2"} , forcesuffix = "双短"}
SKILL_TYPE[191] = {name = "御凤翔龙" , act = {"前突攻击" , ""} , forcesuffix = "双锏"}
SKILL_TYPE[192] = {name = "护驾" , act = {"" , "指向施放风系"}}
SKILL_TYPE[193] = {name = "隐而不发" , act = {"" , "指向施放风系"}}
SKILL_TYPE[194] = {name = "夜战八方" , act = {"" , "鼓舞施放"}}
SKILL_TYPE[195] = {name = "鬼魅行踪" , act = {"" , "指向施放雷系"}}
SKILL_TYPE[2285] = {name = "博运" , act = {"" , "飞行施放火系"}}
SKILL_TYPE[2293] = {name = "致伤之极" , act = {"" , "旋风冲撞"} , forcesuffix = "钺"}
SKILL_TYPE[2309] = {name = "致伤之狱" , act = {"" , "强化施放"}}
SKILL_TYPE[2390] = {name = "格挡" , act = {"" , "格挡循环"}}
---爪
SKILL_TYPE[222] = {name = "挑战" , act = {"" , "指向施放"}}
SKILL_TYPE[223] = {name = "刺击" , act = {"" , "新轻击3"}, forcesuffix = "空手"}
SKILL_TYPE[224] = {name = "双刺" , act = {"" , "重击3" , ""}, forcesuffix = "空手"}
SKILL_TYPE[225] = {name = "瞬袭爪" , act = {"" , "新重击3"}, forcesuffix = "空手"}
SKILL_TYPE[226] = {name = "摧心爪" , act = {"" , "轻击3"}, forcesuffix = "空手"}
SKILL_TYPE[227] = {name = "掠影爪" , act = {"" , "轻击4"}, forcesuffix = "空手"}
SKILL_TYPE[228] = {name = "双龙绝命" , act = {"" , "双龙绝命"} , forcesuffix = "空手"}
SKILL_TYPE[229] = {name = "强命" , act = {"" , "强化施放"}}
SKILL_TYPE[230] = {name = "闪避" , act = {"" , "闪避特殊" , "" , ""}}
SKILL_TYPE[231] = {name = "穿肠爪" , act = {"蓄力准备" , "重击1"}}
SKILL_TYPE[232] = {name = "背袭" , act = {"" , ""}}
SKILL_TYPE[233] = {name = "瞬步" , act = {"" , "加速跑"}}
SKILL_TYPE[234] = {name = "刺杀" , act = {"" , ""}}
SKILL_TYPE[235] = {name = "暗袭" , act = {"暗器准备" , "暗器投掷"} , forcesuffix = "通用"}
SKILL_TYPE[236] = {name = "滑步刺" , act = {"" , "普通攻击1"}}
SKILL_TYPE[237] = {name = "瞬袭爪伏击" , act = {"" , "跳跃攻击"}}
SKILL_TYPE[238] = {name = "暗袭" , act = {"暗器准备" , "暗器投掷"} , forcesuffix = "通用"}
SKILL_TYPE[239] = {name = "穿肠爪伏击" , act = {"" , "重击1"}}
SKILL_TYPE[240] = {name = "隐伏" , act = {"" , "轻击2"} , forcesuffix = "单短"}
SKILL_TYPE[891] = {name = "爪刺乱舞" , act = {"" , "强化施放"}}
SKILL_TYPE[892] = {name = "遁形" , act = {"" , "轻击2"} , forcesuffix = "单短"}
SKILL_TYPE[1727] = {name = "飞沙胧影阵" , act = {"" , "轻击1"}}
SKILL_TYPE[1728] = {name = "追魂" , act = {"" , "跳跃攻击"} , forcesuffix = "异类"}
SKILL_TYPE[1729] = {name = "冷血" , act = {"" , "指向施放冰系"} , forcesuffix = "通用"}
SKILL_TYPE[1730] = {name = "死之乱舞" , act = {"" , "强化施放"} , forcesuffix = "通用"}
---盾
SKILL_TYPE[242] = {name = "嘲讽" , act = {"嘲讽技能光效" , ""}}
SKILL_TYPE[243] = {name = "破云斩" , act = {"" , "横扫连击1",""},forcesuffix = "盾"}
SKILL_TYPE[244] = {name = "裂云击" , act = {"","盾防"},forcesuffix = "盾"}
SKILL_TYPE[245] = {name = "野蛮冲撞" , act = {"畜力准备","对地攻击"},forcesuffix="异类"}
SKILL_TYPE[246] = {name = "封影斩" , act = { "","盾突"},forcesuffix="盾"}
SKILL_TYPE[247] = {name = "封月击" , act = {"重击蓄力" , "重击混乱"},forcesuffix="盾"}
SKILL_TYPE[248] = {name = "裂影袭" , act = {"","盾防裂地"},forcesuffix="盾"}
SKILL_TYPE[249] = {name = "破月袭" , act = {"","盾防轻击"},forcesuffix="盾"}
SKILL_TYPE[250] = {name = "防护" , act = {"" , "鼓舞施放"},forcesuffix = "通用"}
SKILL_TYPE[251] = {name = "怒吼" , act = {"", "强化施放"}}
SKILL_TYPE[252] = {name = "虎入羊群" , act = {"虎入羊群" , ""},forcesuffix = "通用"}
SKILL_TYPE[253] = {name = "狂甲" , act = {"" , "指向施放雷系"},forcesuffix="通用"}
SKILL_TYPE[254] = {name = "盾挡" , act = {"" , "特殊盾挡循环"},forcesuffix="通用"}
SKILL_TYPE[255] = {name = "刚烈" , act = {"","指向施放风系"},forcesuffix="通用"}
SKILL_TYPE[256] = {name = "落风变" , act = {"","盾反重击"},forcesuffix="盾"}
SKILL_TYPE[257] = {name = "铜墙铁壁" , act = {"" , "强化施放"}}
SKILL_TYPE[1877] = {name = "裂月斩" , act = {"" , "砸击"},forcesuffix="盾"}
SKILL_TYPE[1945] = {name = "破影击" , act = {"","盾防盾扫"},forcesuffix="盾"}
SKILL_TYPE[1979] = {name = "封云袭" , act = {"" , "重斩"},forcesuffix="盾"}
SKILL_TYPE[1959] = {name = "滚地击" , act = {"" , "前滚攻击"}, forcesuffix = "盾"}
---环
SKILL_TYPE[275] = {name = "碎环式" , act = {"二踢脚1"},forcesuffix = "环"}
SKILL_TYPE[263] = {name = "连环式" , act = {"" , "连环击1", "连环击2", "连环击3"} , forcesuffix = "环"}
SKILL_TYPE[264] = {name = "混环式" , act = {"重击1蓄力" , "重击1新" } , forcesuffix = "环"}
SKILL_TYPE[265] = {name = "飞环式" , act = {"飞环式"} , forcesuffix = "环"}
SKILL_TYPE[266] = {name = "破环式" , act = {"","破环式","",""} , forcesuffix = "环"}
SKILL_TYPE[267] = {name = "旋风式" , act = {"","旋风式","","","","","","",""} , forcesuffix = "环"}
SKILL_TYPE[268] = {name = "风卷残云" , act = {"" , "御环式" , "" , ""} , forcesuffix = "环"}
SKILL_TYPE[269] = {name = "风行" , act = {"" , "强化施放"}}
SKILL_TYPE[270] = {name = "乱环式" , act = {"" , "乱环式",""}, forcesuffix = "环"}
SKILL_TYPE[271] = {name = "搅海势" , act = {"" , "连环击1远程"}, forcesuffix = "环"}
SKILL_TYPE[272] = {name = "撒手环" , act = {"" , "撒手环起" }, forcesuffix = "环"}
SKILL_TYPE[273] = {name = "疾走" , act = {"" , ""}}
SKILL_TYPE[274] = {name = "护体" , act = {"" , "指向施放"}}
SKILL_TYPE[276] = {name = "先攻" , act = {"先攻"} , forcesuffix = "环"}
SKILL_TYPE[262] = {name = "速攻" , act = {"速攻"} , forcesuffix = "环"}
SKILL_TYPE[277] = {name = "遁走" , act = {"" , "强化施放"}}
SKILL_TYPE[280] = {name = "飞鸿绕" , act = {"" , "指向施放"}} 
SKILL_TYPE[548] = {name = "先攻·疾" , act = {"" , "先攻位移"}, forcesuffix = "环"}
SKILL_TYPE[668] = {name = "搅海式二式" , act = {"" , "连环击2远程"} , forcesuffix = "环"}
SKILL_TYPE[669] = {name = "搅海式三式" , act = {"" , "连环击3远程"} , forcesuffix = "环"}
SKILL_TYPE[671] = {name = "撒手环·回旋" , act = {"撒手环收"} , forcesuffix = "环"}
SKILL_TYPE[667] = {name = "碎环式·倒地" , act = {"二踢脚2"} , forcesuffix = "环"}

---杖
SKILL_TYPE[282] = {name = "火球" , act = {"指向吟唱2火系" , "指向施放2"}}
SKILL_TYPE[283] = {name = "惊雷术" , act = {"","指向施放雷系" , "指向施放" ,"指向施放雷系"}}
SKILL_TYPE[284] = {name = "疾电" , act = {"指向吟唱2雷系" , "指向施放2"}}
SKILL_TYPE[285] = {name = "炎爆术" , act = {"飞行吟唱火系" , "飞行施放火系"}}
SKILL_TYPE[286] = {name = "落雷术" , act = {"指向吟唱雷系" , "指向施放雷系"}}
SKILL_TYPE[287] = {name = "星火术" , act = {"星火燎原" , ""} , forcesuffix = "异类"}
SKILL_TYPE[288] = {name = "雷动九天" , act = {"雷动九天" , ""} , forcesuffix = "异类"}
SKILL_TYPE[289] = {name = "火羽" , act = {"" , "轻击1"}}
SKILL_TYPE[290] = {name = "敏锐" , act = {"飞行吟唱" , "指向施放"}}
SKILL_TYPE[291] = {name = "壁垒" , act = {"指向吟唱" , "指向施放"}}
SKILL_TYPE[292] = {name = "火甲术" , act = {"鼓舞吟唱" , "鼓舞施放"}}
SKILL_TYPE[293] = {name = "雷甲术" , act = {"鼓舞吟唱" , "鼓舞施放"}}
SKILL_TYPE[294] = {name = "缩地" , act = {"强力准备" , "跳跃循环"}}
SKILL_TYPE[295] = {name = "强体术" , act = {"指向吟唱" , "指向施放"}}
SKILL_TYPE[296] = {name = "炎环术" , act = {"指向吟唱" , "指向施放"}}
SKILL_TYPE[297] = {name = "地煞困缚" , act = {"" , "指向施放"}}
SKILL_TYPE[772] = {name = "天雷咒" , act = {"指向吟唱" , "指向施放"}}
SKILL_TYPE[797] = {name = "引爆" , act = {"飞行吟唱火系" , "飞行持续火系"}}
SKILL_TYPE[1735] = {name = "盾反诅咒" , act = {"飞行吟唱风系" , "飞行施放风系"} , forcesuffix = "通用"}
SKILL_TYPE[1736] = {name = "冰封牢狱" , act = {"飞行吟唱冰系" , "飞行施放冰系"} , forcesuffix = "通用"}
SKILL_TYPE[1737] = {name = "霜寒刺骨" , act = {"" , "指向施放冰系"}}
SKILL_TYPE[1738] = {name = "诡异施法" , act = {"" , "指向施放雷系"}}
SKILL_TYPE[784] = {name = "狂雷术" , act = {"" , "指向施放雷系"}}
---舞
SKILL_TYPE[302] = {name = "淙淙之舞",act = {"","指向施放"}}
SKILL_TYPE[303] = {name = "灵动之舞",act = {"","轻击2"},forcesuffix = "舞"}
SKILL_TYPE[304] = {name = "大风之舞",act = {"","重击2",""},forcesuffix = "舞"}
SKILL_TYPE[305] = {name = "广袖之舞",act = {"","对地攻击"},forcesuffix = "舞"}
SKILL_TYPE[306] = {name = "鼓振之舞",act = {"","回转攻击"},forcesuffix = "舞"}
SKILL_TYPE[307] = {name = "抚慰之舞",act = {"","指向施放"}}
SKILL_TYPE[308] = {name = "必胜之舞",act = {"","天宫旋舞"},forcesuffix = "异类"}
SKILL_TYPE[309] = {name = "铮铮之舞",act = {"舞攻击1",""},forcesuffix = "舞"}
SKILL_TYPE[310] = {name = "云雨之舞",act = {"蓄力准备","云雨之舞","","","","战斗站立"},forcesuffix = "异类"}
SKILL_TYPE[311] = {name = "倾国之舞",act = {"","飞行持续雷系"}}
SKILL_TYPE[312] = {name = "破阵之舞",act = {"","回转攻击"},forcesuffix = "舞"}
SKILL_TYPE[313] = {name = "空",act = {"",""}}
SKILL_TYPE[314] = {name = "退避",act = {"","指向施放"}}
SKILL_TYPE[315] = {name = "蝶扇之舞",act = {"蓄力准备","轻击1"},forcesuffix = "舞"}
SKILL_TYPE[316] = {name = "干戚之舞",act = {"","重击1"},forcesuffix = "舞"}
SKILL_TYPE[317] = {name = "空",act = {"",""}}
SKILL_TYPE[318] = {name = "空",act = {"",""}}
SKILL_TYPE[319] = {name = "空",act = {"",""}}
SKILL_TYPE[320] = {name = "涓涓之舞",act = {"指向吟唱","指向施放"}}
SKILL_TYPE[1054] = {name = "勇往直前",act = {"","指向施放风系"},forcesuffix = "通用"}
SKILL_TYPE[1077] = {name = "鬼魅之舞",act = {"","鬼魅之舞","","","","战斗站立","鬼魅之舞","","","","战斗站立"},forcesuffix = "异类"}
SKILL_TYPE[1741] = {name = "预兆之舞" , act = {"飞行吟唱风系" , "飞行施放风系"} , forcesuffix = "通用"}
SKILL_TYPE[1742] = {name = "眩光" , act = {"" , "指向施放风系"}}
SKILL_TYPE[1743] = {name = "鬼魅之舞" , act = {"指向吟唱火系" , "指向施放火系"}}
SKILL_TYPE[1744] = {name = "魅妖之舞" , act = {"天宫旋舞" , ""} , forcesuffix = "异类"}
SKILL_TYPE[3546] = {name = "涅槃之舞",act = {"指向吟唱火系","指向施放", forcesuffix = "通用"}}
---扇
SKILL_TYPE[322] = {name = "风球" , act = {"指向吟唱1风系" , "指向施放1"}}
SKILL_TYPE[323] = {name = "风弹" , act = {"","飞行施放风系" , "飞行施放" ,"飞行施放风系" ,"飞行施放" , "飞行施放风系" ,"飞行施放" , "飞行施放风系" ,"战斗站立"}}
SKILL_TYPE[324] = {name = "冰刺" , act = {"指向吟唱1冰系" , "指向施放1"}}
SKILL_TYPE[325] = {name = "风袭术" , act = {"飞行吟唱风系" , "飞行施放风系"}}
SKILL_TYPE[326] = {name = "龙卷术" , act = {"飞行吟唱风系" , "飞行施放风系"}}
SKILL_TYPE[327] = {name = "坠冰术" , act = {"指向持续冰系" , "" , "" , "" , ""}}
SKILL_TYPE[328] = {name = "八方冰雨" , act = {"八方冰雨" , ""} , forcesuffix = "通用"}
SKILL_TYPE[329] = {name = "专注" , act = {"强力准备" , "近身准备" , "特殊准备" , "蓄力准备" , "战斗站立"}}
SKILL_TYPE[330] = {name = "救护" , act = {"飞行吟唱" , "指向施放"}}
SKILL_TYPE[331] = {name = "辅佐" , act = {"指向吟唱" , "指向施放"}}
SKILL_TYPE[332] = {name = "风甲术" , act = {"鼓舞吟唱" , "鼓舞施放"}}
SKILL_TYPE[333] = {name = "冰甲术" , act = {"鼓舞吟唱" , "鼓舞施放"}}
SKILL_TYPE[334] = {name = "传送" , act = {"指向吟唱风系" , "指向施放风系"}}
SKILL_TYPE[335] = {name = "强生术" , act = {"指向吟唱" , "指向施放"}}
SKILL_TYPE[336] = {name = "冰环术" , act = {"指向吟唱" , "指向施放"}}
SKILL_TYPE[337] = {name = "天启恒明" , act = {"" , ""}}
SKILL_TYPE[841] = {name = "玄冰罩" , act = {"" , "飞行持续冰系" , "战斗站立"}}
SKILL_TYPE[1745] = {name = "霜冻之甲" , act = {"指向吟唱冰系" , "指向施放冰系"} , forcesuffix = "通用"}
SKILL_TYPE[1746] = {name = "体力之盾" , act = {"鼓舞吟唱" , "鼓舞施放"}}
SKILL_TYPE[1747] = {name = "雷之奔袭" , act = {"飞行持续冰系" , "" , "" , "" , "" , "" , ""}}
SKILL_TYPE[1748] = {name = "招风唤雪" , act = {"重击2" , ""} , forcesuffix = "单短"}
SKILL_TYPE[824] = {name = "袭风盾" , act = {"" , "指向施放风系"}}
---弓
SKILL_TYPE[342] = {name = "蓄气" , act = {"" , "指向施放"}}
SKILL_TYPE[343] = {name = "流星箭" , act = {"" , "弓射击2"} , forcesuffix = "通用"}
SKILL_TYPE[344] = {name = "辕门射" , act = {"" , ""}}
SKILL_TYPE[345] = {name = "落缨射" , act = {"" , "弓射击3"}}
SKILL_TYPE[346] = {name = "五步射" , act = {"弓准备5" , "弓射击5"} , forcesuffix = "通用"}
SKILL_TYPE[347] = {name = "贯矢射" , act = {"弓准备3" , "弓射击3"} , forcesuffix = "通用"}
SKILL_TYPE[348] = {name = "长虹贯日" , act = {"长虹贯日吟唱" , "长虹贯日施放"} , forcesuffix = "弓"}
SKILL_TYPE[349] = {name = "洞察" , act = {"" , "强化施放"}}
SKILL_TYPE[350] = {name = "洞察" , act = {"" , "指向施放"}}
SKILL_TYPE[351] = {name = "连矢射" , act = {"" , "弓射击2" , "弓射击2"} , forcesuffix = "通用"}
SKILL_TYPE[352] = {name = "瞄准" , act = {"弓准备3" , "" , "" , ""}}
SKILL_TYPE[353] = {name = "快跑" , act = {"" , ""}}
SKILL_TYPE[354] = {name = "远程格挡" , act = {"" , "指向施放"}}
SKILL_TYPE[355] = {name = "鸣镝箭" , act = {"弓准备1" , "弓射击3"}}
SKILL_TYPE[356] = {name = "满弦射" , act = {"弓准备2" , "弓射击2"} , forcesuffix = "通用"}
SKILL_TYPE[357] = {name = "扬沙" , act = {"强力准备" , "轻击2"} , forcesuffix = "单短"}
SKILL_TYPE[358] = {name = "流星箭" , act = {"" , "弓射击2"} , forcesuffix = "通用"}
SKILL_TYPE[359] = {name = "鸣镝射" , act = {"弓准备1" , "弓射击3"}}
SKILL_TYPE[1749] = {name = "反射之光" , act = {"飞行吟唱雷系" , "飞行施放雷系"} , forcesuffix = "通用"}
SKILL_TYPE[1750] = {name = "闪电储存" , act = {"指向吟唱火系" , "指向施放火系"}}
SKILL_TYPE[1751] = {name = "鬼影重重" , act = {"指向吟唱雷系" , "指向施放雷系"}}
SKILL_TYPE[1752] = {name = "噩梦之眠" , act = {"" , "长虹贯日施放"} , forcesuffix = "弓"}
---锤
SKILL_TYPE[202] = {name = "砸击" , act = {"", "重击1"}, forcesuffix = "双短"}
SKILL_TYPE[203] = {name = "碎心锤" , act = {"冲刺蓄力" , "冲撞"}, forcesuffix = "锤"}
SKILL_TYPE[204] = {name = "格挡" , act = {"" , "格挡循环"}}
SKILL_TYPE[205] = {name = "崩山锤" , act = {"", "重击1"}, forcesuffix = "锤"}
SKILL_TYPE[206] = {name = "轰雷锤" , act = {"", "重击2"}, forcesuffix = "锤"}
SKILL_TYPE[208] = {name = "疾风锤" , act = {"" , "乱舞攻击1" , "" , "乱舞攻击2" , ""}, forcesuffix = "锤"}
SKILL_TYPE[209] = {name = "旋风锤" , act = {"", "旋转攻击"}, forcesuffix = "锤"}
SKILL_TYPE[210] = {name = "憾地锤" , act = {"", "跳跃震击"}, forcesuffix = "锤"}
SKILL_TYPE[211] = {name = "强袭" , act = {"强攻蓄力" , "原地震击"}, forcesuffix = "锤"}
SKILL_TYPE[212] = {name = "强攻战法" , act = {"", "鼓舞施放"}, forcesuffix = "通用"}
SKILL_TYPE[213] = {name = "乱舞战法" , act = {"", "强化施放"}, forcesuffix = "通用"}
SKILL_TYPE[214] = {name = "地恸击" , act = {"" , "大喝攻击"}, forcesuffix = "锤"}
SKILL_TYPE[215] = {name = "苍穹乱舞" , act = {"" , "乱舞连击1" , "乱舞连击2" , "乱舞连击3"}, forcesuffix = "锤"}
SKILL_TYPE[216] = {name = "憾山震岳" , act = {"" , "撼山震岳"}, forcesuffix = "双短"}
SKILL_TYPE[217] = {name = "怒不可遏" , act = {"", "鼓舞施放"}, forcesuffix = "通用"}
SKILL_TYPE[218] = {name = "巨灵神力" , act = {"", "鼓舞施放"}, forcesuffix = "通用"}
SKILL_TYPE[2667] = {name = "挑战" , act = {"", "指向施放"}, forcesuffix = "通用"}
---叉
SKILL_TYPE[82] = {name = "疾刺" , act = {"", "飞叉投掷"}, forcesuffix = "叉"}
SKILL_TYPE[83] = {name = "反打" , act = {"", "轻击2"}, forcesuffix = "叉"}
SKILL_TYPE[84] = {name = "直突" , act = {"", "前突"}, forcesuffix = "叉"}
SKILL_TYPE[85] = {name = "断魂刺" , act = {"", "轻击1"}, forcesuffix = "叉"}
SKILL_TYPE[86] = {name = "碎石打" , act = {"" , "重击1"}, forcesuffix = "叉"}
SKILL_TYPE[87] = {name = "流云击" , act = {"", "轻击2", "普通攻击2", "重击2", ""}, forcesuffix = "叉"}
SKILL_TYPE[88] = {name = "闪击回旋" , act = {"" , "回旋刀投掷4"}, forcesuffix = "叉"}
SKILL_TYPE[89] = {name = "毒刃回旋" , act = {"" , "回旋刀投掷4"}, forcesuffix = "叉"}
SKILL_TYPE[90] = {name = "回旋刀连掷" , act = {"", "回旋刀投掷4", "回旋刀投掷4"}, forcesuffix = "叉"}
SKILL_TYPE[92] = {name = "十步一杀" , act = {"" , "幻影击"}, forcesuffix = "叉"}
SKILL_TYPE[93] = {name = "明王护身" , act = {"", "指向施放"}, forcesuffix = "通用"}
SKILL_TYPE[94] = {name = "黄泉冥流" , act = {"", "飞行施放"}, forcesuffix = "通用"}
SKILL_TYPE[95] = {name = "血勇" , act = {"", "指向施放"}, forcesuffix = "通用"}
SKILL_TYPE[97] = {name = "稳固" , act = {"", "强化施放"}, forcesuffix = "通用"}
SKILL_TYPE[98] = {name = "风阵" , act = {"", "强化施放"}, forcesuffix = "叉"}
SKILL_TYPE[100] = {name = "回旋刀投掷" , act = {"", "回旋刀投掷4"}, forcesuffix = "叉"}
---鞭
SKILL_TYPE[5070] = {name = "金丝缠" , act = {"","金丝缠"}, forcesuffix = "鞭"}
SKILL_TYPE[5071] = {name = "银蛇缚" , act = {"", "银蛇缚"}, forcesuffix = "鞭"}
SKILL_TYPE[5072] = {name = "回龙乱" , act = {"", "回龙乱"}, forcesuffix = "鞭"}
SKILL_TYPE[5073] = {name = "缠颈打" , act = {"", "缠颈打位移","缠颈打位移打"}, forcesuffix = "鞭"}
SKILL_TYPE[5074] = {name = "碎石鞭" , act = {"","碎石鞭"}, forcesuffix = "鞭"}
SKILL_TYPE[5075] = {name = "断魂鞭" , act = {"", "断魂鞭"}, forcesuffix = "鞭"}
SKILL_TYPE[5076] = {name = "迷影鞭" , act = {"蓄力", "迷影鞭"}, forcesuffix = "鞭"}
SKILL_TYPE[5077] = {name = "魅影鞭" , act = {"", "魅影鞭",""}, forcesuffix = "鞭"}
SKILL_TYPE[5078] = {name = "秋风扫" , act = {"","秋风扫"}, forcesuffix = "鞭"}
SKILL_TYPE[5079] = {name = "落雁扫" , act = {"", "落雁扫"}, forcesuffix = "鞭"}
SKILL_TYPE[5080] = {name = "迎面扫" , act = {"", "迎面扫"}, forcesuffix = "鞭"}
SKILL_TYPE[5081] = {name = "摄魂扫" , act = {"", "摄魂扫",""}, forcesuffix = "鞭"}
SKILL_TYPE[5082] = {name = "飞萦绕" , act = {"","飞萦绕"}, forcesuffix = "鞭"}
SKILL_TYPE[5083] = {name = "残梦撩" , act = {"", "残梦撩"}, forcesuffix = "鞭"}
SKILL_TYPE[5084] = {name = "贯地击" , act = {"", "贯地击"}, forcesuffix = "鞭"}
SKILL_TYPE[5085] = {name = "升龙击" , act = {"", "升龙击","","",""}, forcesuffix = "鞭"}
SKILL_TYPE[5086] = {name = "国色天香" , act = {"", "鼓舞施放"}, forcesuffix = "通用"}
SKILL_TYPE[5087] = {name = "红颜" , act = {"", "鼓舞施放"}, forcesuffix = "红颜"}
SKILL_TYPE[5088] = {name = "金蛇乱舞" , act = {"", "乱舞","","",""}, forcesuffix = "鞭"}
SKILL_TYPE[5097] = {name = "离影刺" , act = {"", "离心刺"}, forcesuffix = "鞭"}
SKILL_TYPE[5101] = {name = "鞭挡" , act = {"", "鞭挡"}, forcesuffix = "鞭"}
SKILL_TYPE[5102] = {name = "反制·魅" , act = {"", "鞭挡反击"}, forcesuffix = "鞭"}
---弩
SKILL_TYPE[5277] = {name = "破军弩" , act = {"","平射2"}, forcesuffix = "弩"}
SKILL_TYPE[5278] = {name = "疾风弩" , act = {"速射准备","速射","","","","","","","",""}, forcesuffix = "弩"}
SKILL_TYPE[5279] = {name = "流星矢" , act = {"","力射"}, forcesuffix = "弩"}
SKILL_TYPE[5280] = {name = "却月矢" , act = {"蓄力", "神射头"}, forcesuffix = "弩"}
SKILL_TYPE[5281] = {name = "乱云弩" , act = {"","散射","",""}, forcesuffix = "弩"}
SKILL_TYPE[5282] = {name = "凝神矢" , act = {"","神射"}, forcesuffix = "弩"}
SKILL_TYPE[5283] = {name = "劲弩" , act = {"", "轻弩"}, forcesuffix = "弩"}
SKILL_TYPE[5284] = {name = "轻弩" , act = {"", "劲弩"}, forcesuffix = "弩"}
SKILL_TYPE[5285] = {name = "突进矢" , act = {"蓄力","前滚攻击",""}, forcesuffix = "弩"}
SKILL_TYPE[5286] = {name = "漫天箭雨" , act = {"大招","","",""}, forcesuffix = "弩"}
SKILL_TYPE[5297] = {name = "后跃弩" , act = {"蓄力","后跃射击",""}, forcesuffix = "弩"}
SKILL_TYPE[5299] = {name = "凌空击" , act = {"","浮空射","",""}, forcesuffix = "弩"}
SKILL_TYPE[5315] = {name = "幻影击" , act = {"","幻影射"}, forcesuffix = "弩"}
SKILL_TYPE[5313] = {name = "疾走" , act = {"" , ""}}
--- 通用技能
SKILL_TYPE[361] = {name = "回城" , act = {"回城","指向施放"}}
SKILL_TYPE[1563] = {name = "回城" , act = {"指向吟唱","指向施放"}}
SKILL_TYPE[363] = {name = "切换武器" , act = {"","背后拔刀"}}
SKILL_TYPE[427] = {name = "复活卷轴" , act = {"蹲下操作",""}}
SKILL_TYPE[433] = {name = "食物1" , act = {"","吃喝动作"}}
SKILL_TYPE[434] = {name = "喝水1" , act = {"","吃喝动作"}}
SKILL_TYPE[435] = {name = "食物2" , act = {"","吃喝动作"}}
SKILL_TYPE[436] = {name = "食物3" , act = {"","吃喝动作"}}
SKILL_TYPE[437] = {name = "食物4" , act = {"","吃喝动作"}}
SKILL_TYPE[438] = {name = "喝水2" , act = {"","吃喝动作"}}
SKILL_TYPE[439] = {name = "喝水3" , act = {"","吃喝动作"}}
SKILL_TYPE[440] = {name = "喝水4" , act = {"","吃喝动作"}}
SKILL_TYPE[447] = {name = "药膏1" , act = {"站立操作","","","","","","站立操作"}}
SKILL_TYPE[448] = {name = "药膏2" , act = {"站立操作","","","","","","站立操作"}}
SKILL_TYPE[453] = {name = "驱散药膏A1" , act = {"站立操作","指向施放"}}
SKILL_TYPE[454] = {name = "驱散药膏B1" , act = {"站立操作","指向施放"}}
SKILL_TYPE[455] = {name = "驱散药膏C1" , act = {"站立操作","指向施放"}}
SKILL_TYPE[456] = {name = "驱散药膏D1" , act = {"站立操作","指向施放"}}
SKILL_TYPE[457] = {name = "驱散药膏E1" , act = {"站立操作","指向施放"}}
SKILL_TYPE[458] = {name = "驱散药膏A2" , act = {"站立操作","指向施放"}}
SKILL_TYPE[459] = {name = "驱散药膏B2" , act = {"站立操作","指向施放"}}
SKILL_TYPE[460] = {name = "驱散药膏C2" , act = {"站立操作","指向施放"}}
SKILL_TYPE[461] = {name = "驱散药膏D2" , act = {"站立操作","指向施放"}}
SKILL_TYPE[462] = {name = "驱散药膏E2" , act = {"站立操作","指向施放"}}
SKILL_TYPE[603] = {name = "骁勇" , act = {"","指向施放"}}
SKILL_TYPE[604] = {name = "坚阵" , act = {"","指向施放"}}
SKILL_TYPE[605] = {name = "仁威" , act = {"","指向施放"}}
SKILL_TYPE[606] = {name = "强兵" , act = {"","指向施放"}}
SKILL_TYPE[607] = {name = "摧锋陷阵" , act = {"","指向施放"}}
SKILL_TYPE[608] = {name = "缮甲治兵" , act = {"","指向施放"}}
SKILL_TYPE[609] = {name = "履仁蹈义" , act = {"","指向施放"}}
SKILL_TYPE[610] = {name = "厉兵秣马" , act = {"","指向施放"}}
SKILL_TYPE[611] = {name = "横扫千军" , act = {"","指向施放"}}
SKILL_TYPE[612] = {name = "长辔远御" , act = {"","指向施放"}}
SKILL_TYPE[613] = {name = "止戈兴仁" , act = {"","指向施放"}}
SKILL_TYPE[614] = {name = "扬旗演兵" , act = {"","指向施放"}}
SKILL_TYPE[615] = {name = "疾风千里" , act = {"","指向施放"}}
SKILL_TYPE[617] = {name = "九合一匡" , act = {"","指向施放"}}
SKILL_TYPE[619] = {name = "踏破关山" , act = {"","指向施放"}}
SKILL_TYPE[621] = {name = "威伏八荒" , act = {"","指向施放"}}
SKILL_TYPE[622] = {name = "天下息兵" , act = {"","指向施放"}}
SKILL_TYPE[744] = {name = "突破" , act = {"","鼓舞施放"}}
SKILL_TYPE[745] = {name = "飞将" , act = {"加速跑","加速跑"}}
SKILL_TYPE[746] = {name = "勇猛" , act = {"","鼓舞施放"}}
SKILL_TYPE[747] = {name = "无畏" , act = {"","鼓舞施放"}}
SKILL_TYPE[748] = {name = "征服" , act = {"","鼓舞施放"}}
SKILL_TYPE[749] = {name = "统御" , act = {"","鼓舞施放"}}
SKILL_TYPE[750] = {name = "搅乱" , act = {"飞行吟唱","指向施放"} , forcesuffix = "通用"}
SKILL_TYPE[751] = {name = "坚毅" , act = {"","鼓舞施放"}}
SKILL_TYPE[752] = {name = "辅佐" , act = {"","鼓舞施放"}}
SKILL_TYPE[753] = {name = "决断" , act = {"","鼓舞施放"}}
SKILL_TYPE[754] = {name = "主宰" , act = {"","鼓舞施放"}}
SKILL_TYPE[756] = {name = "忍耐钓术" , act = {"","指向施放"}}
SKILL_TYPE[757] = {name = "不瞬之目" , act = {"","指向施放"}}
SKILL_TYPE[897] = {name = "亲吻" , act = {"","亲吻"}}
SKILL_TYPE[931] = {name = "洞察秋毫" , act = {"指向吟唱","指向施放道具"}}
SKILL_TYPE[932] = {name = "朱雀烈炎" , act = {"指向吟唱","指向施放道具"}}
SKILL_TYPE[933] = {name = "青龙突进" , act = {"指向吟唱","指向施放道具"}}
SKILL_TYPE[934] = {name = "妙手回春" , act = {"指向吟唱","指向施放道具"}}
SKILL_TYPE[935] = {name = "知人之眼" , act = {"指向吟唱","指向施放道具"}}
SKILL_TYPE[936] = {name = "玄武护体" , act = {"指向吟唱","指向施放道具"}}
SKILL_TYPE[937] = {name = "无用" , act = {"指向吟唱","指向施放道具"}}
SKILL_TYPE[938] = {name = "武侯金鼓" , act = {"指向吟唱","指向施放道具"}}
SKILL_TYPE[939] = {name = "白虎怒咆" , act = {"指向吟唱","指向施放道具"}}
SKILL_TYPE[940] = {name = "药香通体" , act = {"指向吟唱","指向施放道具"}}
SKILL_TYPE[941] = {name = "大雅之音" , act = {"指向吟唱","指向施放道具"}}
SKILL_TYPE[986] = {name = "闪光弹" , act = {"指向吟唱","指向施放道具"}}
SKILL_TYPE[1021] = {name = "打坐" , act = {"打坐","打坐循环"}}
SKILL_TYPE[1022] = {name = "躺下" , act = {"打坐","打坐循环"}}
SKILL_TYPE[1341] = {name = "自动钓鱼" , act = {"","闲置动作","站立操作","钓鱼","站立操作循环",""} , forcesuffix = "通用"}
SKILL_TYPE[1440] = {name = "休息" , act = {"打坐","打坐循环"}}
SKILL_TYPE[1441] = {name = "切换姿态" , act = {"","背后拔刀"}}
SKILL_TYPE[1390] = {name = "道具群攻" , act = {"强力准备" , "轻击2"} , forcesuffix = "单短"}
SKILL_TYPE[1477] = {name = "雪球" , act = {"暗器准备" , "暗器投掷"} , forcesuffix = "通用"}
SKILL_TYPE[1496] = {name = "单体发奖" , act = {"指向吟唱冰系" , "指向施放冰系"} , forcesuffix = "通用"}
SKILL_TYPE[1498] = {name = "群体发奖本人" , act = {"指向持续冰系" , "" , "" , "" , "" , "" , "站立"} , forcesuffix = "通用"}
SKILL_TYPE[1503] = {name = "GM重置冷却" , act = {"指向吟唱" , "指向施放"} , forcesuffix = "通用"}
SKILL_TYPE[1505] = {name = "雪球" , act = {"飞行吟唱冰系" , "飞行施放冰系"} , forcesuffix = "通用"}
SKILL_TYPE[1517] = {name = "雪球" , act = {"暗器准备" , "暗器投掷"} , forcesuffix = "通用"}
SKILL_TYPE[1544] = {name = "福星祝福" , act = {"指向吟唱" , "指向施放"} , forcesuffix = "通用"}
SKILL_TYPE[1545] = {name = "寿星祝福" , act = {"指向吟唱" , "指向施放"} , forcesuffix = "通用"}
SKILL_TYPE[1546] = {name = "禄星祝福" , act = {"指向吟唱" , "指向施放"} , forcesuffix = "通用"}
SKILL_TYPE[1547] = {name = "新年祝福" , act = {"指向吟唱" , "指向施放"} , forcesuffix = "通用"}
SKILL_TYPE[1767] = {name = "孔明灯" , act = {"" , "指向施放冰系"} , forcesuffix = "通用"}
SKILL_TYPE[1768] = {name = "诸葛连弩" , act = {"" , "飞行施放火系"} , forcesuffix = "通用"}
SKILL_TYPE[1769] = {name = "吹箭筒" , act = {"" , "飞行施放火系"} , forcesuffix = "通用"}
SKILL_TYPE[1770] = {name = "火龙弹" , act = {"" , "飞行施放火系"} , forcesuffix = "通用"}
SKILL_TYPE[1770] = {name = "渔网" , act = {"" , "飞行施放冰系"} , forcesuffix = "通用"}
SKILL_TYPE[1786] = {name = "爱心洛神汤" , act = {"" , "飞行施放风系"} , forcesuffix = "通用"}
SKILL_TYPE[1787] = {name = "特辣水煮鱼" , act = {"" , "飞行施放风系"} , forcesuffix = "通用"}
SKILL_TYPE[1788] = {name = "黄焖蟒蛇胆" , act = {"" , "飞行施放风系"} , forcesuffix = "通用"}
SKILL_TYPE[1789] = {name = "红烧兔子腿" , act = {"" , "飞行施放风系"} , forcesuffix = "通用"}
SKILL_TYPE[1964] = {name = "端午节活动祈福" , act = {"" , "表情下跪抱拳"} , forcesuffix = "通用"}
SKILL_TYPE[1967] = {name = "舞蹈－春" , act = {"" , "舞蹈"} , forcesuffix = "春"}
SKILL_TYPE[1968] = {name = "舞蹈－夏" , act = {"" , "舞蹈"} , forcesuffix = "夏"}
SKILL_TYPE[1969] = {name = "舞蹈－秋" , act = {"" , "舞蹈"} , forcesuffix = "秋"}
SKILL_TYPE[1970] = {name = "舞蹈－冬" , act = {"" , "舞蹈"} , forcesuffix = "冬"}
SKILL_TYPE[1971] = {name = "舞蹈－演武" , act = {"" , "舞蹈_演武动作"} , forcesuffix = "通用"}
SKILL_TYPE[1985] = {name = "御飞刀" , act = {"" , "暗器投掷"} , forcesuffix = "通用"}
SKILL_TYPE[1984] = {name = "火油瓶" , act = {"" , "暗器投掷"} , forcesuffix = "通用"}
SKILL_TYPE[2014] = {name = "子午谷BUFF药1" , act = {"" , "指向施放风系"} , forcesuffix = "通用"}
SKILL_TYPE[2015] = {name = "子午谷BUFF药2" , act = {"" , "指向施放雷系"} , forcesuffix = "通用"}
SKILL_TYPE[2016] = {name = "子午谷BUFF药3" , act = {"" , "指向施放火系"} , forcesuffix = "通用"}
SKILL_TYPE[2045] = {name = "冰心诀" , act = {"" , "指向施放冰系"} , forcesuffix = "通用"}
SKILL_TYPE[2046] = {name = "不动尊" , act = {"" , "指向施放土系"} , forcesuffix = "通用"}
SKILL_TYPE[2048] = {name = "狂心势" , act = {"" , "指向施放火系"} , forcesuffix = "通用"}
SKILL_TYPE[2049] = {name = "流光诀" , act = {"" , "指向施放风系"} , forcesuffix = "通用"}
SKILL_TYPE[2050] = {name = "定魂盾" , act = {"" , "指向施放雷系"} , forcesuffix = "通用"}
SKILL_TYPE[1568] = {name = "蛮荒之雷" , act = {"指向持续雷系" , "" , "" , "" , "" , "" , ""}}
SKILL_TYPE[1569] = {name = "气势凌人" , act = {"飞行施放冰系" , ""} , forcesuffix = "通用"}
SKILL_TYPE[1570] = {name = "嗜杀如命" , act = {"" , "指向施放火系"}}
SKILL_TYPE[1571] = {name = "御器决" , act = {"" , "跳跃攻击特殊"} , forcesuffix = "长重"}
SKILL_TYPE[1572] = {name = "狂战士之怒" , act = {"" , "鼓舞施放"} , forcesuffix = "通用"}
SKILL_TYPE[1573] = {name = "九剑灭杀阵" , act = {"强力准备" , "回转攻击持续" , "" , "" , "" , "" , "战斗站立"}}
SKILL_TYPE[1574] = {name = "镜铠护身" , act = {"" , "飞行施放雷系"} , forcesuffix = "通用"}
SKILL_TYPE[1575] = {name = "炎鬼飞切" , act = {"" , "指向施放火系"}}
SKILL_TYPE[1576] = {name = "冷血" , act = {"" , "指向施放冰系"} , forcesuffix = "通用"}
SKILL_TYPE[1577] = {name = "闪电盾" , act = {"" , "指向施放雷系"}}
SKILL_TYPE[1578] = {name = "霜冻之甲" , act = {"指向吟唱冰系" , "指向施放冰系"} , forcesuffix = "通用"}
SKILL_TYPE[1579] = {name = "诡异施法" , act = {"" , "指向施放雷系"}}
SKILL_TYPE[1604] = {name = "神伤之舞" , act = {"" , "指向施放风系"}}
SKILL_TYPE[1605] = {name = "雷之奔袭" , act = {"飞行持续冰系" , "" , "" , "" , "" , "" , ""}}
SKILL_TYPE[1606] = {name = "噩梦之眠" , act = {"" , "飞行施放雷系"} , forcesuffix = "通用"}
SKILL_TYPE[2246] = {name = "婚礼桃花瓣" , act = {"" , "飞行施放火系"}}
SKILL_TYPE[2247] = {name = "婚礼向日葵" , act = {"" , "飞行施放火系"}}
SKILL_TYPE[2249] = {name = "发红包" , act = {"" , "指向施放火系"}}
SKILL_TYPE[2255] = {name = "舞蹈－舞剑" , act = {"" , "舞蹈"},forcesuffix = "舞剑"}
SKILL_TYPE[2256] = {name = "舞蹈－抚琴" , act = {"" , "舞蹈"},forcesuffix = "抚琴"}
SKILL_TYPE[2461] = {name = "舞蹈－柳岩" , act = {"" , "舞蹈"},forcesuffix = "孙尚香"}
SKILL_TYPE[2394] = {name = "战魂军神诀", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2395] = {name = "战魂震裂击", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2396] = {name = "战魂计略术", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2397] = {name = "战魂定身咒", act = {"" , "指向施放"},forcesuffix = "战魂女扇"}
SKILL_TYPE[2399] = {name = "战魂金刚诀", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2400] = {name = "战魂烈魂破", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2402] = {name = "战魂惊鸿诀", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2403] = {name = "战魂洛神破", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2405] = {name = "战魂虎啸诀", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2406] = {name = "战魂地恸击", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2408] = {name = "战魂武神诀", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2409] = {name = "战魂青龙斩", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2410] = {name = "战魂遁甲术", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2412] = {name = "战魂伏龙咒", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2414] = {name = "战魂弓神诀", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2415] = {name = "战魂碎心射", act = {"" , "指向施放"},forcesuffix = "战魂黄忠"}
SKILL_TYPE[2417] = {name = "战魂倾城诀", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2418] = {name = "战魂攻心咒", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2420] = {name = "战魂疾行诀", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2421] = {name = "战魂斗魂斩", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2422] = {name = "战魂运筹术", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2424] = {name = "战魂破军斩", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[4603] = {name = "战魂执金吾", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[4999] = {name = "战魂羽扇摇", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[5016] = {name = "战魂连环计", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[5060] = {name = "战魂铜雀锁", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[5245] = {name = "战魂牙旗斩", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[5251] = {name = "战魂绝情杀", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[5259] = {name = "战魂灭世斩", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[5378] = {name = "战魂破胆袭", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[5406] = {name = "战魂双股刺", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[5412] = {name = "战魂倚天斩", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[5418] = {name = "战魂古锭斩", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[5454] = {name = "战魂万军疾", act = {"" , "指向施放"},forcesuffix = "通用"}
SKILL_TYPE[2464] = {name = "战魂勇士觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "勇士"}
SKILL_TYPE[2425] = {name = "战魂谋士觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "谋士"}
SKILL_TYPE[2426] = {name = "战魂夏侯敦觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "夏侯敦"}
SKILL_TYPE[2427] = {name = "战魂甄妃觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "甄妃"}
SKILL_TYPE[2428] = {name = "战魂张辽觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "张辽"}
SKILL_TYPE[2429] = {name = "战魂关羽觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "关羽"}
SKILL_TYPE[2430] = {name = "战魂诸葛亮觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "诸葛亮"}
SKILL_TYPE[2431] = {name = "战魂黄忠觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "黄忠"}
SKILL_TYPE[2432] = {name = "战魂小乔觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "小乔"}
SKILL_TYPE[2433] = {name = "战魂甘宁觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "甘宁"}
SKILL_TYPE[2434] = {name = "战魂周瑜觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "周瑜"}
SKILL_TYPE[2435] = {name = "战魂吕布觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "吕布"}
SKILL_TYPE[2436] = {name = "战魂月英觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "黄月英"}
SKILL_TYPE[2437] = {name = "战魂貂蝉觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "貂蝉"}
SKILL_TYPE[2438] = {name = "战魂大乔觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "大乔"}
SKILL_TYPE[2439] = {name = "战魂典韦觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "典韦"}
SKILL_TYPE[2440] = {name = "战魂张春华觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "张春华"}
SKILL_TYPE[5258] = {name = "战魂黄金甲觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "黄金甲"}
SKILL_TYPE[5384] = {name = "战魂张飞觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "张飞"}
SKILL_TYPE[5385] = {name = "战魂马超觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "马超"}
SKILL_TYPE[5386] = {name = "战魂赵云觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "赵云"}
SKILL_TYPE[5425] = {name = "战魂刘备觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "刘备"}
SKILL_TYPE[5426] = {name = "战魂曹操觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "曹操"}
SKILL_TYPE[5427] = {name = "战魂孙权觉醒动作" , act = {"" , "战魂激发"},forcesuffix = "孙权"}
SKILL_TYPE[2468] = {name = "圣诞卡片" , act = {"暗器准备" , "暗器投掷"} , forcesuffix = "通用"}
SKILL_TYPE[2469] = {name = "圣诞卡片" , act = {"暗器准备" , "暗器投掷"} , forcesuffix = "通用"}
SKILL_TYPE[2470] = {name = "圣诞卡片" , act = {"暗器准备" , "暗器投掷"} , forcesuffix = "通用"}
SKILL_TYPE[2471] = {name = "圣诞卡片" , act = {"暗器准备" , "暗器投掷"} , forcesuffix = "通用"}
SKILL_TYPE[2472] = {name = "圣诞卡片" , act = {"暗器准备" , "暗器投掷"} , forcesuffix = "通用"}
SKILL_TYPE[2479] = {name = "圣诞卡片" , act = {"暗器准备" , "暗器投掷"} , forcesuffix = "通用"}
SKILL_TYPE[2480] = {name = "圣诞舞会" , act = {"" , "舞蹈"} , forcesuffix = "春"}
SKILL_TYPE[2481] = {name = "圣诞时装舞蹈" , act = {"" , "舞蹈"} , forcesuffix = "圣诞"}
SKILL_TYPE[2482] = {name = "圣诞时装舞蹈" , act = {"" , "舞蹈"} , forcesuffix = "圣诞"}
SKILL_TYPE[2494] = {name = "虎年新春拜年" , act = {"" , "表情挥手"}}
SKILL_TYPE[2501] = {name = "2010春节时装舞蹈" , act = {"" , "舞蹈"} , forcesuffix = "新年"}
SKILL_TYPE[2502] = {name = "2010春节时装舞蹈" , act = {"" , "舞蹈"} , forcesuffix = "新年"}
SKILL_TYPE[2560] = {name = "貂蝉装跳舞" , act = {"" , "表情跳舞"} , forcesuffix = "貂蝉装"}
SKILL_TYPE[2561] = {name = "吕布装跳舞" , act = {"" , "表情跳舞"} , forcesuffix = "吕布装"}
SKILL_TYPE[2633] = {name = "福气元宝" , act = {"" , "飞行施放雷系"} , forcesuffix = "通用"}
SKILL_TYPE[2634] = {name = "喜庆元宝" , act = {"" , "飞行施放火系"} , forcesuffix = "通用"}
SKILL_TYPE[2678] = {name = "自动钓鱼" , act = {"","闲置动作","站立操作","钓鱼","站立操作循环",""} , forcesuffix = "通用"}
SKILL_TYPE[2881] = {name = "赤壁之战炸弹" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[2882] = {name = "赤壁之战连弩" , act = {"" , "诸葛连弩"} , forcesuffix = "水战"}
SKILL_TYPE[2644] = {name = "一转食物1" , act = {"","吃喝动作"}}
SKILL_TYPE[2645] = {name = "一转食物2" , act = {"","吃喝动作"}}
SKILL_TYPE[2646] = {name = "一转食物3" , act = {"","吃喝动作"}}
SKILL_TYPE[2647] = {name = "一转食物4" , act = {"","吃喝动作"}}
SKILL_TYPE[2648] = {name = "一转食物5" , act = {"","吃喝动作"}}
SKILL_TYPE[2649] = {name = "一转食物6" , act = {"","吃喝动作"}}
SKILL_TYPE[2650] = {name = "一转食物7" , act = {"","吃喝动作"}}
SKILL_TYPE[2651] = {name = "一转食物8" , act = {"","吃喝动作"}}
SKILL_TYPE[2652] = {name = "一转食物9" , act = {"","吃喝动作"}}
SKILL_TYPE[2653] = {name = "一转食物10" , act = {"","吃喝动作"}}
SKILL_TYPE[2664] = {name = "一转食物11" , act = {"","吃喝动作"}}
SKILL_TYPE[3151] = {name = "1009页面活动鸡蛋投掷" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[2915] = {name = "火雷弹" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[2899] = {name = "烈火不侵" , act = {"" , "指向施放风系"}}
SKILL_TYPE[2901] = {name = "除风灵" , act = {"" , "指向施放风系"}}
SKILL_TYPE[2902] = {name = "解除青蛇剧毒" , act = {"" , "指向施放风系"}}
SKILL_TYPE[2910] = {name = "解除赤蛇剧毒" , act = {"" , "指向施放风系"}}
SKILL_TYPE[2911] = {name = "解除金蛇剧毒" , act = {"" , "指向施放风系"}}
SKILL_TYPE[2912] = {name = "解除青环蛇毒" , act = {"" , "指向施放风系"}}
SKILL_TYPE[2913] = {name = "解除金斑蛇毒" , act = {"" , "指向施放风系"}}
SKILL_TYPE[2916] = {name = "金刚扇" , act = {"" , "指向施放雷系"}}
SKILL_TYPE[3235] = {name = "远程投掷手雷" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[3236] = {name = "远程投掷减速弹" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[3233] = {name = "隐身符" , act = {"" , "指向施放雷系"}}
SKILL_TYPE[3234] = {name = "加速符" , act = {"" , "指向施放风系"}}
SKILL_TYPE[3348] = {name = "占卜道具1" , act = { "表情求签"} , forcesuffix = "通用"}
SKILL_TYPE[3349] = {name = "占卜道具2" , act = { "表情迷香"} , forcesuffix = "通用"}
SKILL_TYPE[3350] = {name = "占卜道具3" , act = { "表情酒壶"} , forcesuffix = "通用"}
SKILL_TYPE[3351] = {name = "占卜道具4" , act = { "表情送糖果"} , forcesuffix = "通用"}
SKILL_TYPE[3352] = {name = "占卜道具5" , act = { "表情唱歌"} , forcesuffix = "通用"}
SKILL_TYPE[3374] = {name = "拜年红包" , act = { "表情求签"} , forcesuffix = "通用"}
SKILL_TYPE[3381] = {name = "打雪仗" , act = { "打雪仗"} , forcesuffix = "通用"}
SKILL_TYPE[3375] = {name = "分享火鸡" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[3377] = {name = "圣诞颂歌" , act = {"" , "表情唱歌"} , forcesuffix = "通用"}
SKILL_TYPE[3378] = {name = "圣诞礼物" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[3379] = {name = "泡泡雪球" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[3408] = {name = "召唤护卫" , act = {"站立操作"}}
SKILL_TYPE[3502] = {name = "传情达意" , act = {"表情亲吻"} , forcesuffix = "通用"}
SKILL_TYPE[3478] = {name = "鞭炮炸伤年兽" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[3550] = {name = "行云之舞" , act = {"表情跳舞"} , forcesuffix = "通用"}
SKILL_TYPE[3551] = {name = "喜称" , act = {"挑起盖头"} , forcesuffix = "通用"}
SKILL_TYPE[3552] = {name = "传情达意" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[3566] = {name = "好友拜访" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[3609] = {name = "落樱纷" , act = {"" , "表情南蛮短裤男舞蹈"} , forcesuffix = "通用"}
SKILL_TYPE[3610] = {name = "彩环曲" , act = {"" , "表情南蛮短裙女舞蹈"} , forcesuffix = "通用"}
SKILL_TYPE[3615] = {name = "许愿砂" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[3647] = {name = "炸弹" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[3648] = {name = "一束鲜花" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[3649] = {name = "孝子礼包（母亲节）" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[3650] = {name = "孝子礼包（父亲节）" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[3653] = {name = "劳动护腕" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[2509] = {name = "测试移动释法" , act = {"指向吟唱","打雪仗",},forcesuffix = "通用"}
SKILL_TYPE[3678] = {name = "葫芦" , act = {"" , "醉酒"} , forcesuffix = "通用"}
SKILL_TYPE[3679] = {name = "花环" , act = {"" , "花环"} , forcesuffix = "通用"}
SKILL_TYPE[3728] = {name = "笛音绝" , act = {"" , "跳舞笛"} , forcesuffix = "通用"}
SKILL_TYPE[3729] = {name = "笑红尘" , act = {"" , "舞蹈伞"} , forcesuffix = "通用"}
SKILL_TYPE[3731] = {name = "笑红尘" , act = {"" , "表情唱歌"} , forcesuffix = "通用"}
SKILL_TYPE[3753] = {name = "跳舞琴" , act = {"" , "舞蹈琴"} , forcesuffix = "通用"}
SKILL_TYPE[3754] = {name = "跳舞扇" , act = {"" , "舞蹈扇"} , forcesuffix = "通用"}
SKILL_TYPE[3766] = {name = "跳舞琵琶" , act = {"" , "舞蹈"} , forcesuffix = "琵琶"}
SKILL_TYPE[3767] = {name = "跳舞熊猫" , act = {"" , "舞蹈"} , forcesuffix = "熊猫"}
SKILL_TYPE[3794] = {name = "活动手榴弹" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[3916] = {name = "跳舞风筝龙" , act = {"" , "舞蹈"} , forcesuffix = "龙风筝"}
SKILL_TYPE[3982] = {name = "虎牢关闪电链" , act = {"" , "指向施放"} , forcesuffix = "通用"}
SKILL_TYPE[4005] = {name = "9月活动用" , act = { "飞行施放"} , forcesuffix = "通用"}
SKILL_TYPE[4006] = {name = "9月活动用" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4007] = {name = "跳舞生花笔" , act = {"" , "舞蹈"} , forcesuffix = "生花笔"}
SKILL_TYPE[4008] = {name = "跳舞三弦琴" , act = {"" , "舞蹈"} , forcesuffix = "三弦琴"}
SKILL_TYPE[4084] = {name = "交友令" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4119] = {name = "PVP战车战场定时召怪" , act = {"站立操作" , ""}}
SKILL_TYPE[4144] = {name = "PVP战车战场召烧毒怪" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4145] = {name = "PVP战车战场投掷" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4009] = {name = "跳舞猫" , act = {"" , "舞蹈"} , forcesuffix = "猫"}
SKILL_TYPE[4063] = {name = "军团基地火雷" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4195] = {name = "物品技能雪球" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4235] = {name = "新年鞭炮" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4010] = {name = "跳舞灯笼" , act = {"" , "舞蹈"} , forcesuffix = "灯笼"}
SKILL_TYPE[4011] = {name = "跳舞手套娃娃" , act = {"" , "舞蹈"} , forcesuffix = "手套娃娃"}
SKILL_TYPE[4315] = {name = "许愿砂" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4316] = {name = "许愿砂" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4380] = {name = "西凉燎乱火罐" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4415] = {name = "火焰弹伤害技能" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4416] = {name = "美味猪排" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4417] = {name = "胡椒牛排" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4360] = {name = "官渡活动飞刀" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4362] = {name = "官渡活动定身符" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4363] = {name = "官渡活动混乱符" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4364] = {name = "官渡活动狐仙驾到" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4365] = {name = "官渡活动幼童无辜" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4366] = {name = "官渡活动夺魂刺" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4367] = {name = "官渡活动火雷弹" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4368] = {name = "官渡活动渔网弹" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4369] = {name = "官渡活动生命丸" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4370] = {name = "官渡活动助人为乐丸" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4458] = {name = "七夕排行榜技能1" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4459] = {name = "七夕排行榜技能2" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4538] = {name = "七夕排行榜技能2" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4012] = {name = "跳舞玉佩虎" , act = {"" , "舞蹈"} , forcesuffix = "玉佩虎"}
SKILL_TYPE[4608] = {name = "雪之祝愿" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4013] = {name = "跳舞小驯鹿" , act = {"" , "舞蹈"} , forcesuffix = "小驯鹿"}
SKILL_TYPE[4014] = {name = "跳舞玉佩龙" , act = {"" , "舞蹈"} , forcesuffix = "玉佩龙"}
SKILL_TYPE[4712] = {name = "召唤护卫" , act = {"站立操作"}}
SKILL_TYPE[4925] = {name = "扇风道具动作" , act = {"扇风"} }
SKILL_TYPE[4962] = {name = "茂陵盗墓贼物品技能" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4982] = {name = "活动丢弃杂物" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[4983] = {name = "活动上交海鱼" , act = {"站立操作"}}
SKILL_TYPE[4971] = {name = "跳舞霸海" , act = {"" , "舞蹈"} , forcesuffix = "霸海"}
SKILL_TYPE[4972] = {name = "跳舞偃月" , act = {"" , "舞蹈"} , forcesuffix = "偃月"}
SKILL_TYPE[4973] = {name = "跳舞落日" , act = {"" , "舞蹈"} , forcesuffix = "落日"}
SKILL_TYPE[4974] = {name = "跳舞麒麟" , act = {"" , "舞蹈"} , forcesuffix = "麒麟"}
SKILL_TYPE[4975] = {name = "跳舞倾城" , act = {"" , "舞蹈"} , forcesuffix = "倾城"}
SKILL_TYPE[4976] = {name = "跳舞百炼" , act = {"" , "舞蹈"} , forcesuffix = "百炼"}
SKILL_TYPE[4977] = {name = "跳舞洛神" , act = {"" , "舞蹈"} , forcesuffix = "洛神"}
SKILL_TYPE[4978] = {name = "跳舞湛卢" , act = {"" , "舞蹈"} , forcesuffix = "湛卢"}
SKILL_TYPE[4979] = {name = "跳舞卧龙" , act = {"" , "舞蹈"} , forcesuffix = "卧龙"}
SKILL_TYPE[4980] = {name = "跳舞方天" , act = {"" , "舞蹈"} , forcesuffix = "方天"}
SKILL_TYPE[4994] = {name = "短期活动炸药减血" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[5004] = {name = "跳舞伏魔" , act = {"" , "舞蹈"} , forcesuffix = "伏魔"}
SKILL_TYPE[5014] = {name = "雄黄酒" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[5019] = {name = "凤仪舞" , act = {"" , "舞蹈"} , forcesuffix = "貂蝉"}
SKILL_TYPE[4015] = {name = "书箱" , act = {"" , "舞蹈"} , forcesuffix = "书箱"}
SKILL_TYPE[4016] = {name = "花篮" , act = {"" , "舞蹈"} , forcesuffix = "花篮"}
SKILL_TYPE[5068] = {name = "顾盼生姿" , act = {"" , "舞蹈"} , forcesuffix = "大乔"}
SKILL_TYPE[5129] = {name = "透心凉心飞扬" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[5131] = {name = "活动水球" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[5110] = {name = "决心·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5111] = {name = "决心·破" , act = {"" , "强化施放"}}
SKILL_TYPE[5112] = {name = "决心·军" , act = {"" , "荡寇"}, forcesuffix = "剑"}
SKILL_TYPE[5113] = {name = "强攻·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5114] = {name = "强攻·破" , act = {"" , "强化施放"}}
SKILL_TYPE[5115] = {name = "强攻·军" , act = {"" , "横劈"}, forcesuffix = "刀"}
SKILL_TYPE[5116] = {name = "夺命·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5117] = {name = "夺命·破" , act = {"" , "强化施放"}}
SKILL_TYPE[5118] = {name = "夺命·军" , act = {"" , "爆破"}, forcesuffix = "斧"}
SKILL_TYPE[5119] = {name = "铁壁·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5120] = {name = "铁壁·破" , act = {"" , "强化施放"}}
SKILL_TYPE[5121] = {name = "铁壁·军" , act = {"" , "突进"}, forcesuffix = "盾"}
SKILL_TYPE[5122] = {name = "影袭·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5123] = {name = "影袭·破" , act = {"" , "影闪"}, forcesuffix = "爪"}
SKILL_TYPE[5124] = {name = "影袭·军" , act = {"" , "怒刺"}, forcesuffix = "爪"}
SKILL_TYPE[5125] = {name = "寂灭·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5126] = {name = "寂灭·破" , act = {"" , "强化施放"}}
SKILL_TYPE[5127] = {name = "寂灭·军" , act = {"" , "寂灭"}, forcesuffix = "棍"}
SKILL_TYPE[5153] = {name = "斩铁·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5154] = {name = "斩铁·破" , act = {"" , "斩铁"}, forcesuffix = "钺"}
SKILL_TYPE[5155] = {name = "斩铁·军" , act = {"" , "烈风重斩"}, forcesuffix = "钺"}
SKILL_TYPE[5156] = {name = "力战·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5157] = {name = "力战·破" , act = {"" , "挑刺"}, forcesuffix = "枪"}
SKILL_TYPE[5158] = {name = "力战·军" , act = {"" , "甩枪"}, forcesuffix = "枪"}
SKILL_TYPE[5159] = {name = "潜龙·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5160] = {name = "潜龙·破" , act = {"" , "强化施放"}}
SKILL_TYPE[5161] = {name = "潜龙·军" , act = {"" , "降龙"}, forcesuffix = "锏"}
SKILL_TYPE[5165] = {name = "断愁·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5166] = {name = "断愁·破" , act = {"", "断愁破"}, forcesuffix = "叉"}
SKILL_TYPE[5167] = {name = "断愁·军" , act = {"", "断愁军"}, forcesuffix = "叉"}
SKILL_TYPE[5168] = {name = "擂云·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5169] = {name = "擂云·破" , act = {"" , "强化施放"}}
SKILL_TYPE[5170] = {name = "擂云·军" , act = {"" , "怒砸"}, forcesuffix = "锤"}
SKILL_TYPE[5171] = {name = "清风·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5172] = {name = "清风·破" , act = {"" , "指向施放"}}
SKILL_TYPE[5173] = {name = "清风·军" , act = {"" , "清风"}, forcesuffix = "舞"}
SKILL_TYPE[5175] = {name = "霸王·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5176] = {name = "霸王·破" , act = {"" , "强化施放"}}
SKILL_TYPE[5177] = {name = "霸王·军" , act = {"" , "贯刺"}, forcesuffix = "戟"}
SKILL_TYPE[5178] = {name = "寸绝·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5179] = {name = "寸绝·破" , act = {"" , "强化施放"}}
SKILL_TYPE[5180] = {name = "寸绝·军" , act = {"" , "寸绝军"}, forcesuffix = "钩"}
SKILL_TYPE[5181] = {name = "轻狂·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5182] = {name = "轻狂·破" , act = {"" , "强化施放"}}
SKILL_TYPE[5183] = {name = "轻狂·军" , act = {"" , "锋斩"}, forcesuffix = "环"}
SKILL_TYPE[5187] = {name = "火袭·怒" , act = {"" , "火袭怒"}, forcesuffix = "杖"}
SKILL_TYPE[5188] = {name = "火袭·破" , act = {"" , "火袭破"}, forcesuffix = "杖"}
SKILL_TYPE[5189] = {name = "火袭·军" , act = {"" , "神火"}, forcesuffix = "杖"}
SKILL_TYPE[5190] = {name = "冰风·怒" , act = {"" , "狂风"}, forcesuffix = "扇"}
SKILL_TYPE[5191] = {name = "冰风·破" , act = {"" , "冰封"}, forcesuffix = "扇"}
SKILL_TYPE[5192] = {name = "冰风·军" , act = {"" , "霜冻"}, forcesuffix = "扇"}
SKILL_TYPE[5193] = {name = "透矢·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5194] = {name = "透矢·破" , act = {"" , "弓射击2"} , forcesuffix = "通用"}
SKILL_TYPE[5195] = {name = "透矢·军" , act = {"弓准备2" , "弓射击2"} , forcesuffix = "通用"}
SKILL_TYPE[5196] = {name = "蛇影·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5197] = {name = "蛇影·破" , act = {"" , "强化施放"}}
SKILL_TYPE[5198] = {name = "蛇影·军" , act = {"" , "蛇影"}, forcesuffix = "鞭"}
SKILL_TYPE[5333] = {name = "瞬杀·怒" , act = {"" , "指向施放"}}
SKILL_TYPE[5334] = {name = "瞬杀·破" , act = {"" , "瞬杀怒"} , forcesuffix = "弩"}
SKILL_TYPE[5335] = {name = "瞬杀·军" , act = {"" , "瞬杀军"} , forcesuffix = "弩"}
SKILL_TYPE[5262] = {name = "跳舞典韦" , act = {"" , "舞蹈"} , forcesuffix = "典韦"}
SKILL_TYPE[5263] = {name = "跳舞典韦" , act = {"" , "舞蹈"} , forcesuffix = "张春华"}
SKILL_TYPE[5264] = {name = "跳舞典韦" , act = {"" , "舞蹈"} , forceextra = "演武动作" , forcesuffix = "刀"}
SKILL_TYPE[5265] = {name = "跳舞典韦" , act = {"" , "舞蹈"} , forcesuffix = "黄金甲"}
SKILL_TYPE[5266] = {name = "跳舞典韦" , act = {"" , "舞蹈"} , forceextra = "演武动作" , forcesuffix = "舞"}
SKILL_TYPE[5267] = {name = "跳舞典韦" , act = {"" , "舞蹈"} , forcesuffix = "金丝鞭"}
SKILL_TYPE[5268] = {name = "跳舞典韦" , act = {"" , "舞蹈"} , forcesuffix = "烈焰鞭"}
SKILL_TYPE[5271] = {name = "中秋醒酒" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[5273] = {name = "丢手帕" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[5274] = {name = "丢手帕" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[5337] = {name = "丢手帕" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[5338] = {name = "丢手帕" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[5339] = {name = "丢手帕" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[5387] = {name = "跳舞典韦" , act = {"" , "舞蹈"} , forcesuffix = "张飞"}
SKILL_TYPE[5388] = {name = "跳舞典韦" , act = {"" , "舞蹈"} , forcesuffix = "马超"}
SKILL_TYPE[5389] = {name = "跳舞典韦" , act = {"" , "舞蹈"} , forcesuffix = "赵云"}
SKILL_TYPE[5435] = {name = "跳舞曹操" , act = {"" , "舞蹈"} , forcesuffix = "曹操"}
SKILL_TYPE[5436] = {name = "跳舞刘备" , act = {"" , "舞蹈"} , forcesuffix = "刘备"}
SKILL_TYPE[5437] = {name = "跳舞孙权" , act = {"" , "舞蹈"} , forcesuffix = "孙权"}
SKILL_TYPE[5633] = {name = "防狼喷雾" , act = {"" , "指向施放道具"}}
SKILL_TYPE[5635] = {name = "丢手帕" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[5639] = {name = "天佑" , act = {"" , "指向施放"}}
SKILL_TYPE[5640] = {name = "罡魂" , act = {"" , "强化施放"}}
SKILL_TYPE[5641] = {name = "铭印" , act = {"" , "指向施放"}}
SKILL_TYPE[5653] = {name = "烧香" , act = {"" , "表情迷香"} , forcesuffix = "通用"}
SKILL_TYPE[5732] = {name = "求签" , act = {"表情求签" , ""} , forcesuffix = "通用"}
SKILL_TYPE[5861] = {name = "定时炸弹" , act = {"站立操作" , ""}}
SKILL_TYPE[5862] = {name = "投掷炸弹" , act = {"" , "投掷炸弹"} , forcesuffix = "水战"}
SKILL_TYPE[5883] = {name = "表情亲吻" , act = {"" , "表情亲吻"} , forcesuffix = "通用"}
SKILL_TYPE[5891] = {name = "不凡武" , act = {"" , "鼓舞施放"} , forcesuffix = "通用"}
SKILL_TYPE[5892] = {name = "不凡武" , act = {"" , "鼓舞施放"} , forcesuffix = "通用"}
SKILL_TYPE[5893] = {name = "不凡文" , act = {"" , "指向施放"} , forcesuffix = "通用"}
SKILL_TYPE[5895] = {name = "不凡文" , act = {"" , "指向施放"} , forcesuffix = "通用"}
SKILL_TYPE[5911] = {name = "抱拳" , act = {"" , "表情下跪抱拳"} , forcesuffix = "通用"}



---测试技能
SKILL_TYPE[364] = {name = "测试普攻1" , act = {"","普通攻击1"}}
SKILL_TYPE[365] = {name = "测试普攻2" , act = {"","普通攻击2"}}
SKILL_TYPE[366] = {name = "测试轻击1" , act = {"","轻击1"}}
SKILL_TYPE[367] = {name = "测试轻击2" , act = {"","轻击2"}}
SKILL_TYPE[368] = {name = "测试重击1" , act = {"","重击1"}}
SKILL_TYPE[369] = {name = "测试重击2" , act = {"","重击2"}}
SKILL_TYPE[370] = {name = "测试对地攻击" , act = {"","对地攻击"}}
SKILL_TYPE[401] = {name = "测试对空攻击" , act = {"","对空攻击"}}
SKILL_TYPE[402] = {name = "测试跳跃攻击" , act = {"","跳跃攻击"}}
SKILL_TYPE[403] = {name = "测试回转攻击" , act = {"","回转攻击"}}
SKILL_TYPE[404] = {name = "测试突刺攻击" , act = {"","突刺攻击"}}
SKILL_TYPE[417] = {name = "测试普攻1" , act = {"","普通攻击1"}}
SKILL_TYPE[418] = {name = "测试普攻2" , act = {"","普通攻击2"}}
SKILL_TYPE[419] = {name = "测试轻击1" , act = {"","轻击1"}}
SKILL_TYPE[420] = {name = "测试轻击2" , act = {"","轻击2"}}
SKILL_TYPE[421] = {name = "测试重击1" , act = {"","重击1"}}
SKILL_TYPE[422] = {name = "测试重击2" , act = {"","重击2"}}
SKILL_TYPE[423] = {name = "测试飞行吟唱施放" , act = {"飞行吟唱","飞行施放"}, forcesuffix = "通用"}
SKILL_TYPE[424] = {name = "测试指向吟唱施放" , act = {"指向吟唱","指向施放"}, forcesuffix = "通用"}
SKILL_TYPE[425] = {name = "测试自身吟唱施放" , act = {"自身吟唱","自身施放"}, forcesuffix = "通用"}
SKILL_TYPE[426] = {name = "测试鼓舞吟唱施放" , act = {"鼓舞吟唱","鼓舞施放"}, forcesuffix = "通用"}
SKILL_TYPE[428] = {name = "测试光环1" , act = {"","鼓舞施放"}}
SKILL_TYPE[429] = {name = "测试光环2" , act = {"","鼓舞施放"}}
SKILL_TYPE[430] = {name = "测试光环3" , act = {"","鼓舞施放"}}
SKILL_TYPE[450] = {name = "测试瞬移" , act = {"指向吟唱","指向施放"}}
SKILL_TYPE[451] = {name = "测试冲锋" , act = {"特殊准备","加速跑"}, forcesuffix = "异类"}
SKILL_TYPE[452] = {name = "测试砸击" , act = {"蓄力准备","跳跃攻击"}}
SKILL_TYPE[1127]={name="测试",act={"暗器准备","暗器投掷"}, forcesuffix = "通用"}
SKILL_TYPE[1128]={name="测试",act={"","冲刺"}}
SKILL_TYPE[1129]={name="测试",act={"弓准备1","弓射击1"}, forcesuffix = "通用"}
SKILL_TYPE[1130]={name="测试",act={"弓准备2","弓射击2"}, forcesuffix = "通用"}
SKILL_TYPE[1131]={name="测试",act={"弓准备3","弓射击3"}, forcesuffix = "通用"}
SKILL_TYPE[1132]={name="测试",act={"弓准备4","弓射击4"}, forcesuffix = "通用"}
SKILL_TYPE[1133]={name="测试",act={"","乱舞"}}
SKILL_TYPE[1134]={name="测试",act={"","普通攻击1"}}
SKILL_TYPE[1135]={name="测试",act={"","普通攻击2"}}
SKILL_TYPE[1136]={name="测试",act={"","强击"}}
SKILL_TYPE[1137]={name="测试",act={"","重击1"}}
SKILL_TYPE[1138]={name="测试",act={"","重击2"}}
SKILL_TYPE[1139]={name="测试",act={"","舞攻击1"}, forcesuffix = "舞"}
SKILL_TYPE[1140]={name="测试",act={"","舞攻击2"}, forcesuffix = "舞"}
SKILL_TYPE[1141]={name="测试",act={"","舞攻击3"}, forcesuffix = "舞"}
SKILL_TYPE[1142]={name="测试",act={"","戟攻击1"}, forcesuffix = "长轻"}
SKILL_TYPE[1143]={name="测试",act={"","戟攻击2"}, forcesuffix = "长轻"}
SKILL_TYPE[1144]={name="测试",act={"","戟攻击3"}, forcesuffix = "长轻"}
SKILL_TYPE[2861] = {name = "转生药膏" , act = {"站立操作","","","","","","站立操作"}}


---马战技能
SKILL_TYPE[927] = {name = "策马扬鞭" , act = {"","加速"}}
SKILL_TYPE[928] = {name = "快马加鞭" , act = {"","加速"}}
SKILL_TYPE[929] = {name = "轻骑长驱" , act = {"","加速"}}
SKILL_TYPE[930] = {name = "重骑突进" , act = {"","加速"}}
SKILL_TYPE[1263] = {name = "骑姿切换" , act = {"","背后拔刀"}}
SKILL_TYPE[1300] = {name = "报名" , act = {"战斗跳跃落地",""}}
SKILL_TYPE[1301] = {name = "鼓舞" , act = {"鼓舞吟唱","鼓舞施放"}}
SKILL_TYPE[1302] = {name = "侦察" , act = {"闲置动作",""}}
SKILL_TYPE[1303] = {name = "冲撞" , act = {"",""}}
SKILL_TYPE[1304] = {name = "腾跃" , act = {"","腾跃"}}
--上述保留
SKILL_TYPE[1270] = {name = "冲锋" , act = {"鼓舞吟唱","鼓舞施放"}}
SKILL_TYPE[1271] = {name = "强袭" , act = {"鼓舞吟唱","鼓舞施放"}}
SKILL_TYPE[1272] = {name = "蓄力" , act = {"近身准备","","",""}}
SKILL_TYPE[1273] = {name = "直攻" , act = {"","轻击1"}}
SKILL_TYPE[1274] = {name = "速攻" , act = {"","轻击1"}}
SKILL_TYPE[1275] = {name = "快攻" , act = {"","轻击1"}}
SKILL_TYPE[1276] = {name = "速射" , act = {"骑射站立","骑战射击4"}}
SKILL_TYPE[1277] = {name = "空刺" , act = {"飞行吟唱","飞行施放"}}
SKILL_TYPE[1278] = {name = "横扫" , act = {"","轻击2"}}
SKILL_TYPE[1279] = {name = "横劈" , act = {"","轻击2"}}
SKILL_TYPE[1280] = {name = "横抡" , act = {"","轻击2"}}
SKILL_TYPE[1281] = {name = "力射" , act = {"骑射站立","骑战射击2"}}
SKILL_TYPE[1282] = {name = "空刃" , act = {"飞行吟唱","飞行施放"}}
SKILL_TYPE[1283] = {name = "力刺" , act = {"","重击1"}}
SKILL_TYPE[1284] = {name = "重斩" , act = {"","重击1"} , forcesuffix = "长重"}
SKILL_TYPE[1285] = {name = "猛砍" , act = {"","重击1"}}
SKILL_TYPE[1286] = {name = "瞬击" , act = {"","重击1"}}
SKILL_TYPE[1287] = {name = "透射" , act = {"骑射站立","骑战射击1"}}
SKILL_TYPE[1288] = {name = "空牙" , act = {"指向吟唱","指向施放"}}
SKILL_TYPE[1289] = {name = "突袭打" , act = {"奔跑","冲刺1",""}}
SKILL_TYPE[1290] = {name = "导引箭" , act = {"骑射站立","弓射击1"}}
SKILL_TYPE[1291] = {name = "会心击" , act = {"","强击"}}
SKILL_TYPE[1292] = {name = "极寒箭" , act = {"骑射站立","骑战射击3"}}
SKILL_TYPE[1293] = {name = "钩镰打" , act = {"","普通攻击2"}}
SKILL_TYPE[1294] = {name = "神威乱舞" , act = {"","乱舞"}}
SKILL_TYPE[1295] = {name = "流星乱舞" , act = {"","乱舞"}}
SKILL_TYPE[1296] = {name = "王者奋战" , act = {"","重击2"}}
SKILL_TYPE[1297] = {name = "伪击转杀" , act = {"","重击2"} , forcesuffix = "空手"}
SKILL_TYPE[1298] = {name = "呼风唤雨" , act = {"指向吟唱","指向施放"}}
SKILL_TYPE[1299] = {name = "连环神箭" , act = {"骑射站立","骑战射击3"}}
SKILL_TYPE[1305] = {name = "猛攻" , act = {"强化吟唱","强化施放"}}
SKILL_TYPE[1306] = {name = "坚守" , act = {"强化吟唱","强化施放"}}
--新骑战
SKILL_TYPE[5663] = {name = "冲锋" , act = {"鼓舞施放1"}}
SKILL_TYPE[5664] = {name = "强袭" , act = {"鼓舞施放2"}}
SKILL_TYPE[5666] = {name = "直攻" , act = {"","轻击1"}}
SKILL_TYPE[5667] = {name = "速攻" , act = {"","轻击1"}}
SKILL_TYPE[5668] = {name = "快攻" , act = {"","轻击1"}}
SKILL_TYPE[5669] = {name = "空刃" , act = {"飞行吟唱","飞行施放"}}
SKILL_TYPE[5670] = {name = "速射" , act = {"骑射站立","骑战射击4"}}
SKILL_TYPE[5671] = {name = "横扫" , act = {"","轻击2"}}
SKILL_TYPE[5672] = {name = "横劈" , act = {"","轻击2"}}
SKILL_TYPE[5673] = {name = "横抡" , act = {"","轻击2"}}
SKILL_TYPE[5674] = {name = "空刺" , act = {"飞行吟唱","飞行施放"}}
SKILL_TYPE[5675] = {name = "透射" , act = {"骑射站立","骑战射击1"}}
SKILL_TYPE[5676] = {name = "神威乱舞" , act = {"","乱舞"}}
SKILL_TYPE[5677] = {name = "流星乱舞" , act = {"","乱舞"}}
SKILL_TYPE[5678] = {name = "突袭打" , act = {"奔跑","冲刺1",""}}
SKILL_TYPE[5679] = {name = "咒印术" , act = {"","指向施放"}}
SKILL_TYPE[5680] = {name = "极寒箭" , act = {"骑射站立","骑战射击3"}}
SKILL_TYPE[5681] = {name = "拖刀式" , act = {"","蓄势循环1","猛击1",""}}
SKILL_TYPE[5682] = {name = "凌空刺" , act = {"","蓄势循环","猛击",""}}
SKILL_TYPE[5683] = {name = "强袭打" , act = {"","蓄势循环","猛击",""}, forcesuffix = "双短"}
SKILL_TYPE[5684] = {name = "乱影击" , act = {"","蓄势循环","猛击",""}, forcesuffix = "异类"}
SKILL_TYPE[5685] = {name = "呼风唤雨" , act = {"指向吟唱","指向施放"}}
SKILL_TYPE[5686] = {name = "连环神箭" , act = {"骑射站立","骑战射击3"}}
SKILL_TYPE[5687] = {name = "凌风" , act = {"强化施放"}}
SKILL_TYPE[5688] = {name = "狂袭" , act = {"强化施放"}}
SKILL_TYPE[5703] = {name = "左旋击" , act = {"","左旋击"}, forcesuffix = "叉"}
SKILL_TYPE[5708] = {name = "擂心锤" , act = {"","震锤"}, forcesuffix = "锤"}
SKILL_TYPE[5709] = {name = "灵袭" , act = {"","骑战暗器"}, forcesuffix = "叉"}
SKILL_TYPE[5742] = {name = "疾风棍" , act = {"","寂灭"}, forcesuffix = "棍"}
SKILL_TYPE[5744] = {name = "回旋锋" , act = {"","回旋"}, forcesuffix = "环"}
SKILL_TYPE[5745] = {name = "鞭枪决" , act = {"","鞭枪决"}, forcesuffix = "鞭"}
SKILL_TYPE[5746] = {name = "倒手斧" , act = {"","舞兵"}}
SKILL_TYPE[5749] = {name = "破阵锤" , act = {"","乱舞攻击1"}, forcesuffix = "锤"}
SKILL_TYPE[5750] = {name = "灭心刺" , act = {"","舞兵"}}
SKILL_TYPE[5751] = {name = "怒咆" , act = {"","马上嘲讽"}, forcesuffix = "通用"}
SKILL_TYPE[5752] = {name = "侧倾舞" , act = {"强化吟唱","强化施放"}}
SKILL_TYPE[5789] = {name = "重斩" , act = {"","烈风重斩"}, forcesuffix = "钺"}
SKILL_TYPE[5790] = {name = "雷钺" , act = {"","烈风重斩"}, forcesuffix = "钺"}
SKILL_TYPE[5792] = {name = "枪刺" , act = {"","刺击"}}
SKILL_TYPE[5793] = {name = "升龙" , act = {"","瞬击"},forcesuffix = "长轻"}
SKILL_TYPE[5794] = {name = "旋镖" , act = {"","旋镖"}}
SKILL_TYPE[5802] = {name = "旋风锏" , act = {"","马上投掷"},forcesuffix = "锏"}
SKILL_TYPE[5804] = {name = "灵心舞" , act = {"","马上鼓舞1"},forcesuffix = "舞"} 
SKILL_TYPE[5812] = {name = "鼓舞" , act = {"","马上鼓舞2"},forcesuffix = "舞"}
SKILL_TYPE[5813] = {name = "火灵" , act = {"","飞行施放火系"}}
SKILL_TYPE[5814] = {name = "冰灵" , act = {"","飞行施放冰系"}}
SKILL_TYPE[5815] = {name = "箭殇" , act = {"","指向施放"}}
SKILL_TYPE[5816] = {name = "立马斩" , act = {"","战斗跳跃循环","战斗跳跃落地"}}
SKILL_TYPE[5817] = {name = "疾奔袭" , act = {"","冲刺"}}
SKILL_TYPE[5818] = {name = "万石砸" , act = {"","强击"}}
SKILL_TYPE[5819] = {name = "双峰斩" , act = {"","加速跑","猛击"}}
SKILL_TYPE[5820] = {name = "魂灭扫" , act = {"","回旋","回旋","回旋"},forcesuffix = "环"}
SKILL_TYPE[5821] = {name = "灵凤袭" , act = {"","灵凤袭"},forcesuffix = "通用"}
SKILL_TYPE[5822] = {name = "圣灵舞" , act = {"","马上鼓舞3"},forcesuffix = "舞"}
SKILL_TYPE[5823] = {name = "凝劲击" , act = {"","指向施放火系"}}
SKILL_TYPE[5824] = {name = "断马斩" , act = {"","砍翻"},forcesuffix = "长重"}
SKILL_TYPE[5825] = {name = "力冲击" , act = {"","跳劈",""}}
SKILL_TYPE[5826] = {name = "破魂刺" , act = {"","猛刺"}}
SKILL_TYPE[5827] = {name = "溯袭杀" , act = {"","冲刺"},forcesuffix = "双短"}
SKILL_TYPE[5828] = {name = "旋风扫" , act = {"","缠绕"}, forcesuffix = "单短"}
SKILL_TYPE[5829] = {name = "遁袭" , act = {"","影闪"}, forcesuffix = "爪"}

---预定义采集动作名
DIG_TYPE = {}

DIG_TYPE[1] = {name = "采药" , loopname = "采药循环"}
DIG_TYPE[2] = {name = "采药" , loopname = "采药循环"}
DIG_TYPE[3] = {name = "站立操作" , loopname = "站立操作循环"}
DIG_TYPE[4] = {name = "蹲下操作" , loopname = "蹲下操作循环"}
DIG_TYPE[5] = {name = "表情欢呼" , loopname = ""}
DIG_TYPE[6] = {name = "站立操作" , loopname = "站立操作循环"}
DIG_TYPE[7] = {name = "钓鱼" , loopname = "钓鱼循环"}
DIG_TYPE[8] = {name = "采药" , loopname = "采药循环"}
DIG_TYPE[9] = {name = "蹲下操作" , loopname = "站立操作循环"}
DIG_TYPE[10] = {name = "蹲下操作" , loopname = "站立操作循环"}
--击打
DIG_TYPE[11] = {name = "表情手指" , loopname = ""}
--踢碎
DIG_TYPE[12] = {name = "踢箱" , loopname = "踢箱循环"}
--攻击
DIG_TYPE[13] = {name = "踢箱" , loopname = "踢箱循环"}

	
---时装武器
-- 该表和函数，是为了告诉客户端，WeaponID装备，在玩家是WeaponType兵种时，是否应该在战斗中显示出来
-- 参数：WeaponID：装备模版ID   WeaponType：玩家当前普通装备的兵种
-- 返回值：是否在战斗中显示：BOOL
FWType = {}
FWType[71769]={}
FWType[71770]={}
fashion_weapon = {}
function fashion_weapon:ShowInFighting( WeaponID, WeaponType )
	local l_FshWp = FWType[WeaponID]
	if l_FshWp ~= nil then
		for i, v in ipairs(l_FshWp) do
			if v == WeaponType then
				return true
			end
		end
	end
	return false
end

--[[-- Key是武器的模版ID，Value 是 左右手模型对应的挂点。如果只有一个模型，就填第一个字符串。
-- 单模型就装备就填一个第一个，第二个为""，双模型就填两个，12分别对应左右手
-- 参数：模版ID
-- 返回值：左右手挂点，String

-- [1] 是普通状态的左右挂点， [2]是骑乘状态的左右挂点
FWHook = {}
FWHook[71770] = {[1] = {"","HH_葫芦"},[2] = {"","HH_葫芦"}}
FWHook[71771] = {[1] = {"","HH_花环"},[2] = {"","HH_花环"}}
FWHook[72192] = {[1] = {"","HH_righthandweapon"},[2] = {"","HH_笛子"}}
FWHook[72193] = {[1] = {"","HH_righthandweapon"},[2] = {"","HH_伞"}}
FWHook[72845] = {[1] = {"","HH_叉"},[2] = {"","HH_叉"}}
FWHook[72846] = {[1] = {"","HH_righthandweapon"},[2] = {"","HH_叉"}}
function fashion_weapon:GetHookName( TemplID, StateID )
	if FWHook[TemplID] == nil or FWHook[TemplID][StateID] == nil then
		return "",""
	else
		return FWHook[TemplID][StateID][1],FWHook[TemplID][StateID][2]
	end
end--]]

FWHook = {}
FWHook[71770] = {
	["默认"] = {"","HH_葫芦"},
	["骑乘"] = {"","HH_葫芦"},
	["特殊"] = {"","HH_葫芦"}}
FWHook[71771] = {
	["默认"] = {"","HH_花环"},
	["骑乘"] = {"","HH_花环"},
	["特殊"] = {"","HH_花环"}}
FWHook[72192] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_笛子"},
	["特殊"] = {"",""}}
FWHook[72193] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_伞"},
	["特殊"] = {"",""}}
FWHook[72599] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_伞"},
	["特殊"] = {"",""}}
FWHook[72600] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_伞"},
	["特殊"] = {"",""}}
FWHook[72845] = {
	["默认"] = {"","HH_琴"},
	["骑乘"] = {"","HH_叉"},
	["特殊"] = {"","HH_righthandweapon"},
	[3753] = {"","HH_righthandweapon"},
	[363] = {"","HH_righthandweapon"}}
FWHook[72846] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_笛子"},
	["特殊"] = {"","HH_righthandweapon"}}
FWHook[72995] = {
	["默认"] = {"","HH_熊猫"},
	["骑乘"] = {"","HH_熊猫"},
	["特殊"] = {"","HH_熊猫"},
	[3767] = {"","HH_熊猫01"}}
FWHook[72996] = {
	["默认"] = {"","HH_lefthandweapon"},
	["骑乘"] = {"","HH_琵琶"},
	["特殊"] = {"","HH_lefthandweapon"},
	[3766] = {"","HH_lefthandweapon"}}
FWHook[73830] = {
	["默认"] = {"","HH_龙风筝"},
	["骑乘"] = {"","HH_龙风筝"},
	["特殊"] = {"","HH_龙风筝"}}
FWHook[74279] = {
	["默认"] = {"","HH_生花笔"},
	["骑乘"] = {"","HH_生花笔"},
	["特殊"] = {"","HH_生花笔"}}
FWHook[74887] = {
	["默认"] = {"","HH_lefthandweapon"},
	["骑乘"] = {"","HH_三弦琴"},
	["特殊"] = {"","HH_lefthandweapon"},
	[4008] = {"","HH_lefthandweapon"}}
FWHook[75368] = {
	["默认"] = {"","HH_熊猫"},
	["骑乘"] = {"","HH_熊猫"},
	["特殊"] = {"","HH_熊猫"},
	[4009] = {"","HH_熊猫"}}
FWHook[75875] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_灯笼"},
	["特殊"] = {"","HH_righthandweapon"},
	[4010] = {"","HH_righthandweapon"}}
FWHook[76183] = {
	["默认"] = {"","HH_生花笔"},
	["骑乘"] = {"","HH_生花笔"},
	["特殊"] = {"","HH_生花笔"}}
FWHook[76257] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_灯笼"},
	["特殊"] = {"","HH_righthandweapon"},
	[4010] = {"","HH_righthandweapon"}}
FWHook[76451] = {
	["默认"] = {"","HH_龙风筝"},
	["骑乘"] = {"","HH_龙风筝"},
	["特殊"] = {"","HH_龙风筝"}}
FWHook[76452] = {
	["默认"] = {"","HH_熊猫"},
	["骑乘"] = {"","HH_熊猫"},
	["特殊"] = {"","HH_熊猫"},
	[4009] = {"","HH_熊猫"}}
FWHook[76550] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_手套娃娃"},
	["特殊"] = {"","HH_righthandweapon"},
	[4011] = {"","HH_righthandweapon"}}
FWHook[80030] = {
	["默认"] = {"","HH_玉佩"},
	["骑乘"] = {"","HH_玉佩"},
	["特殊"] = {"","HH_玉佩"}}
FWHook[81214] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_小驯鹿"},
	["特殊"] = {"",""}}
FWHook[81243] = {
	["默认"] = {"","HH_玉佩"},
	["骑乘"] = {"","HH_玉佩"},
	["特殊"] = {"","HH_玉佩"}}
FWHook[81944] = {
	["默认"] = {"","HH_熊猫"},
	["骑乘"] = {"","HH_熊猫"},
	["特殊"] = {"","HH_熊猫"},
	[4015] = {"","HH_熊猫"}}
FWHook[81945] = {
	["默认"] = {"","HH_熊猫"},
	["骑乘"] = {"","HH_熊猫"},
	["特殊"] = {"","HH_熊猫"},
	[4016] = {"","HH_熊猫"}}
FWHook[83400] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_单短"},
	["骑战"] = {"","HH_righthandweapon"},
	["特殊"] = {"","HH_righthandweapon"},
	[4971] = {"","HH_righthandweapon"}}
FWHook[83401] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_长兵"},
	["骑战"] = {"","HH_righthandweapon"},
	["特殊"] = {"","HH_righthandweapon"},
	[4972] = {"","HH_righthandweapon"}}
FWHook[83402] = {
	["默认"] = {"","HH_lefthandweapon"},
	["骑乘"] = {"","HH_lefthandweapon"},
	["骑战"] = {"","HH_lefthandweapon"},	
	["特殊"] = {"","HH_lefthandweapon"},
	[4973] = {"","HH_lefthandweapon"}}
FWHook[83403] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_长兵"},
	["骑战"] = {"","HH_righthandweapon"},
	["特殊"] = {"","HH_righthandweapon"},
	[4974] = {"","HH_righthandweapon"}}
FWHook[83404] = {
	["默认"] = {"HH_lefthandweapon","HH_righthandweapon"},
	["骑乘"] = {"HH_舞左","HH_舞右"},
	["骑战"] = {"HH_lefthandweapon","HH_righthandweapon"},	
	["特殊"] = {"HH_lefthandweapon","HH_righthandweapon"},
	[4975] = {"HH_lefthandweapon","HH_righthandweapon"}}	
FWHook[83405] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_长兵"},
	["骑战"] = {"","HH_righthandweapon"},	
	["特殊"] = {"","HH_righthandweapon"},
	[4976] = {"","HH_righthandweapon"}}
FWHook[83406] = {
	["默认"] = {"HH_lefthandweapon","HH_righthandweapon"},
	["骑乘"] = {"HH_舞左","HH_舞右"},
	["骑战"] = {"HH_lefthandweapon","HH_righthandweapon"},	
	["特殊"] = {"HH_lefthandweapon","HH_righthandweapon"},
	[4977] = {"HH_lefthandweapon","HH_righthandweapon"}}
FWHook[83407] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_单短"},
	["骑战"] = {"","HH_righthandweapon"},	
	["特殊"] = {"","HH_righthandweapon"},
	[4978] = {"","HH_righthandweapon"}}
FWHook[83408] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_单短"},
	["骑战"] = {"","HH_righthandweapon"},	
	["特殊"] = {"","HH_righthandweapon"},
	[4979] = {"","HH_righthandweapon"}}
FWHook[83409] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_长轻"},
	["骑战"] = {"","HH_righthandweapon"},	
	["特殊"] = {"","HH_righthandweapon"},
	[4980] = {"","HH_righthandweapon"}}
FWHook[83975] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_单短"},
	["骑战"] = {"","HH_righthandweapon"},	
	["特殊"] = {"","HH_righthandweapon"},
	[5004] = {"","HH_righthandweapon"}}	
FWHook[84144] = {
	["默认"] = {"HH_lefthandweapon","HH_righthandweapon"},
	["骑乘"] = {"HH_舞左","HH_舞右"},
	["骑战"] = {"HH_lefthandweapon","HH_righthandweapon"},	
	["特殊"] = {"HH_lefthandweapon","HH_righthandweapon"},
	[5019] = {"HH_lefthandweapon","HH_righthandweapon"}}
FWHook[84351] = {
	["默认"] = {"HH_lefthandweapon","HH_righthandweapon"},
	["骑乘"] = {"HH_舞左","HH_舞右"},
	["骑战"] = {"HH_lefthandweapon","HH_righthandweapon"},	
	["特殊"] = {"HH_lefthandweapon","HH_righthandweapon"},
	[5068] = {"HH_lefthandweapon","HH_righthandweapon"}}
FWHook[86330] = {
	["默认"] = {"HH_lefthandweapon","HH_righthandweapon"},
	["骑乘"] = {"HH_双短左","HH_双短右"},
	["骑战"] = {"HH_lefthandweapon","HH_righthandweapon"},	
	["特殊"] = {"HH_lefthandweapon","HH_righthandweapon"},
	[5262] = {"HH_lefthandweapon","HH_righthandweapon"}}
FWHook[86331] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_单短"},
	["骑战"] = {"","HH_righthandweapon"},	
	["特殊"] = {"","HH_righthandweapon"},
	[5263] = {"","HH_righthandweapon"}}
FWHook[86332] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_长兵"},
	["骑战"] = {"","HH_righthandweapon"},
	["特殊"] = {"","HH_righthandweapon"},
	[5264] = {"","HH_righthandweapon"}}
FWHook[86333] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_长轻"},
	["骑战"] = {"","HH_righthandweapon"},
	["特殊"] = {"","HH_righthandweapon"},
	[5265] = {"","HH_righthandweapon"}}
FWHook[86334] = {
	["默认"] = {"HH_lefthandweapon","HH_righthandweapon"},
	["骑乘"] = {"HH_舞左","HH_舞右"},
	["骑战"] = {"HH_lefthandweapon","HH_righthandweapon"},	
	["特殊"] = {"HH_lefthandweapon","HH_righthandweapon"},
	[5266] = {"HH_lefthandweapon","HH_righthandweapon"}}
FWHook[86335] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_锤右"},
	["骑战"] = {"","HH_righthandweapon"},	
	["特殊"] = {"","HH_righthandweapon"},
	[5267] = {"","HH_righthandweapon"}}
FWHook[86336] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_锤右"},
	["骑战"] = {"","HH_righthandweapon"},	
	["特殊"] = {"","HH_righthandweapon"},
	[5268] = {"","HH_righthandweapon"}}
FWHook[88671] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_长轻"},
	["骑战"] = {"","HH_righthandweapon"},
	["特殊"] = {"","HH_righthandweapon"},
	[5387] = {"","HH_righthandweapon"}}
FWHook[88672] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_长轻"},
	["骑战"] = {"","HH_righthandweapon"},
	["特殊"] = {"","HH_righthandweapon"},
	[5388] = {"","HH_righthandweapon"}}	
FWHook[88673] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_长轻"},
	["骑战"] = {"","HH_righthandweapon"},
	["特殊"] = {"","HH_righthandweapon"},
	[5389] = {"","HH_righthandweapon"}}
FWHook[89219] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_单短"},
	["骑战"] = {"","HH_righthandweapon"},	
	["特殊"] = {"","HH_righthandweapon"},
	[5435] = {"","HH_righthandweapon"}}
FWHook[89221] = {
	["默认"] = {"HH_lefthandweapon","HH_righthandweapon"},
	["骑乘"] = {"HH_单短01","HH_单短"},
	["骑战"] = {"HH_lefthandweapon","HH_righthandweapon"},	
	["特殊"] = {"HH_lefthandweapon","HH_righthandweapon"},
	[5436] = {"HH_lefthandweapon","HH_righthandweapon"}}
FWHook[89222] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_单短"},
	["骑战"] = {"","HH_righthandweapon"},	
	["特殊"] = {"","HH_righthandweapon"},
	[5437] = {"","HH_righthandweapon"}}
FWHook[89695] = {
	["默认"] = {"","HH_lefthandweapon"},
	["骑乘"] = {"","HH_琵琶"},
	["特殊"] = {"","HH_lefthandweapon"},
	[3766] = {"","HH_lefthandweapon"}}
FWHook[97760] = {
	["默认"] = {"HH_lefthandweapon","HH_righthandweapon"},
	["骑乘"] = {"HH_单短01","HH_单短"},
	["骑战"] = {"HH_lefthandweapon","HH_righthandweapon"},	
	["特殊"] = {"HH_lefthandweapon","HH_righthandweapon"},
	[5436] = {"HH_lefthandweapon","HH_righthandweapon"}}
FWHook[97761] = {
	["默认"] = {"HH_lefthandweapon","HH_righthandweapon"},
	["骑乘"] = {"HH_单短01","HH_单短"},
	["骑战"] = {"HH_lefthandweapon","HH_righthandweapon"},	
	["特殊"] = {"HH_lefthandweapon","HH_righthandweapon"},
	[5436] = {"HH_lefthandweapon","HH_righthandweapon"}}
FWHook[98965] = {
	["默认"] = {"","HH_胸"},
	["骑乘"] = {"","HH_胸"},
	["特殊"] = {"","HH_胸"}}
FWHook[98938] = {
	["默认"] = {"HH_lefthandweapon","HH_righthandweapon"},
	["骑乘"] = {"HH_单短01","HH_单短"},
	["骑战"] = {"HH_lefthandweapon","HH_righthandweapon"},	
	["特殊"] = {"HH_lefthandweapon","HH_righthandweapon"}}
FWHook[98939] = {
	["默认"] = {"","HH_righthandweapon"},
	["骑乘"] = {"","HH_单短"},
	["骑战"] = {"","HH_righthandweapon"},	
	["特殊"] = {"","HH_righthandweapon"}}

--判断是否时装武器跳舞动作,决定武器的显隐,
--1.时装武器
--2.特殊时装(38904)
--3.无
function fashion_weapon:GetSpecialDanceCode( idSkill )
	if idSkill == 3729 then
		return 1
	elseif idSkill == 3679 then
		return 1
	elseif idSkill == 3678 then
		return 1
	elseif idSkill == 3753 then
		return 1
	elseif idSkill == 3754 then
		return 1
	elseif idSkill == 3766 then
		return 1
	elseif idSkill == 3767 then
		return 1
	elseif idSkill == 3916 then
		return 1
	elseif idSkill == 4007 then
		return 1
	elseif idSkill == 4008 then
		return 1
	elseif idSkill == 4009 then
		return 1
	elseif idSkill == 4010 then
		return 1
	elseif idSkill == 4011 then
		return 1
	elseif idSkill == 4012 then
		return 1
	elseif idSkill == 1971 then
		return 2
	elseif idSkill == 4013 then
		return 1
	elseif idSkill == 4014 then
		return 1
	elseif idSkill == 4015 then
		return 1
	elseif idSkill == 4016 then
		return 1
	elseif idSkill == 4971 then
		return 1
	elseif idSkill == 4972 then
		return 1
	elseif idSkill == 4973 then
		return 1
	elseif idSkill == 4974 then
		return 1
	elseif idSkill == 4975 then
		return 1
	elseif idSkill == 4976 then
		return 1
	elseif idSkill == 4977 then
		return 1
	elseif idSkill == 4978 then
		return 1
	elseif idSkill == 4979 then
		return 1
	elseif idSkill == 4980 then
		return 1
	elseif idSkill == 5004 then
		return 1	
	elseif idSkill == 5019 then
		return 1
	elseif idSkill == 5068 then
		return 1	
	elseif idSkill == 5262 then
		return 1
	elseif idSkill == 5263 then
		return 1
	elseif idSkill == 5264 then
		return 1
	elseif idSkill == 5265 then
		return 1
	elseif idSkill == 5266 then
		return 1	
	elseif idSkill == 5267 then
		return 1
	elseif idSkill == 5268 then
		return 1
	elseif idSkill == 5387 then
		return 1
	elseif idSkill == 5388 then
		return 1
	elseif idSkill == 5389 then
		return 1
	elseif idSkill == 5435 then
		return 1
	elseif idSkill == 5436 then
		return 1
	elseif idSkill == 5437 then
		return 1
	else
		return 0
	end
end



---脚本主函数，获取动作名全称---          
---		   at：attacktype，动作类型(1,2,3,...,100,....)
---        wt：weapontype，武器类型(1,2,31,...,19,)
---       stc：st_combat，战斗状态(1.非战斗状态,2.战斗状态)
---       str：st_mount，骑乘状态(0.无,1.骑乘)
---       std：st_double，绑定状态(0.无,1.主动绑定(邀请者),2.被动绑定(被邀请者))
---       sta: st_specialstate_a, 站立状态(0.无,1.处于站立状态,2.19号光效（潜行）,3,20号光效（马战瞬杀）,4,22号光效（马战破天）,5.27号光效（马战状态）)
---       stb: st_specialstate_b, 特殊状态(0.无,1.61号光效（加速）,2.62号光效（切换）,3.54号光效（击晕倒地）)
---      skid: skillid，技能ID(1,2,3,....)
---      skpt：skillpart，技能序列(1,2,3,....)
---      clid：collectid，采集id
---      race：raceid，种族id(0中原, 1南蛮)
---	 idweapon: 时装武器ID
--- idwoundskill:被攻击技能ID
--         bt: bodytype: 0为标准；1为健壮；2为娇小(男，男女相反，此脚本中把女的名字相应作了调整)
--         bb: binderbodytype:绑定者体型：0为标准；1为健壮；2为娇小
--         br: binderrace:绑定者种族id(0中原, 1南蛮)
--		   ecm_pet_name 坐骑动作名
lua_act = {}
--function lua_act:GetECMName (at , wt , stc , str , std , sta , skid , skpt , clid , race,idweapon,idwoundskill,bt,bb,br)
function lua_act:GetECMName (at , wt , stc , str , std , sta , stb , skid , skpt , clid, race,idweapon,idwoundskill,bt,bb,br)
	
	local combatword , defaultdword= "战斗" , "动作"
	local prefixword , extraword , suffixword = "" , "" , ""
--	local weaponposition = 0
	local doublemode = std
	local dn = ACTION_TYPE[at].name
	local dt = SEQUENCE_TYPE[dn].default
	local adjustspeed = ACTION_TYPE[at].forcespeed or 100
	local forceup , forcedown = 0 , 0
	local ecmcombinename = ""
	local ecm_pet_name = ""
--fashionweaponaction 时装武器子模型动作
	local fashionweaponaction = "站立"
--武器挂点	
	local hookleft,hookright = "",""


	if str == 0 then
		if std == 1 then extraword = "绑定_"
		elseif std == 2 then 
			if br == 0 then
				if bb == 0 then
					if race == 0 then
						if bt == 0 then
							extraword = "中原标准中原标准被绑定_"
						elseif bt == 1 then
							extraword = "中原标准中原娇小被绑定_"
						elseif bt == 2 then
							extraword = "中原标准中原健壮被绑定_"
						end
					elseif race == 1 then
						if bt == 0 then
							extraword = "中原标准南蛮标准被绑定_"
						elseif bt == 1 then
							extraword = "中原标准南蛮娇小被绑定_"
						elseif bt == 2 then
							extraword = "中原标准南蛮健壮被绑定_"
						end
					end
				elseif bb == 1 then
					if race == 0 then
						if bt == 0 then
							extraword = "中原健壮中原标准被绑定_"
						elseif bt == 1 then
							extraword = "中原健壮中原娇小被绑定_"
						elseif bt == 2 then
							extraword = "中原健壮中原健壮被绑定_"
						end
					elseif race == 1 then
						if bt == 0 then
							extraword = "中原健壮南蛮标准被绑定_"
						elseif bt == 1 then
							extraword = "中原健壮南蛮娇小被绑定_"
						elseif bt == 2 then
							extraword = "中原健壮南蛮健壮被绑定_"
						end
					end
				elseif bb == 2 then
					if race == 0 then
						if bt == 0 then
							extraword = "中原娇小中原标准被绑定_"
						elseif bt == 1 then
							extraword = "中原娇小中原娇小被绑定_"
						elseif bt == 2 then
							extraword = "中原娇小中原健壮被绑定_"
						end
					elseif race == 1 then
						if bt == 0 then
							extraword = "中原娇小南蛮标准被绑定_"
						elseif bt == 1 then
							extraword = "中原娇小南蛮娇小被绑定_"
						elseif bt == 2 then
							extraword = "中原娇小南蛮健壮被绑定_"
						end
					end
				end
			elseif br == 1 then
				if bb == 0 then
					if race == 0 then
						if bt == 0 then
							extraword = "南蛮标准中原标准被绑定_"
						elseif bt == 1 then
							extraword = "南蛮标准中原娇小被绑定_"
						elseif bt == 2 then
							extraword = "南蛮标准中原健壮被绑定_"
						end
					elseif race == 1 then
						if bt == 0 then
							extraword = "南蛮标准南蛮标准被绑定_"
						elseif bt == 1 then
							extraword = "南蛮标准南蛮娇小被绑定_"
						elseif bt == 2 then
							extraword = "南蛮标准南蛮健壮被绑定_"
						end
					end
				elseif bb == 1 then
					if race == 0 then
						if bt == 0 then
							extraword = "南蛮健壮中原标准被绑定_"
						elseif bt == 1 then
							extraword = "南蛮健壮中原娇小被绑定_"
						elseif bt == 2 then
							extraword = "南蛮健壮中原健壮被绑定_"
						end
					elseif race == 1 then
						if bt == 0 then
							extraword = "南蛮健壮南蛮标准被绑定_"
						elseif bt == 1 then
							extraword = "南蛮健壮南蛮娇小被绑定_"
						elseif bt == 2 then
							extraword = "南蛮健壮南蛮健壮被绑定_"
						end
					end
				elseif bb == 2 then
					if race == 0 then
						if bt == 0 then
							extraword = "南蛮娇小中原标准被绑定_"
						elseif bt == 1 then
							extraword = "南蛮娇小中原娇小被绑定_"
						elseif bt == 2 then
							extraword = "南蛮娇小中原健壮被绑定_"
						end
					elseif race == 1 then
						if bt == 0 then
							extraword = "南蛮娇小南蛮标准被绑定_"
						elseif bt == 1 then
							extraword = "南蛮娇小南蛮娇小被绑定_"
						elseif bt == 2 then
							extraword = "南蛮娇小南蛮健壮被绑定_"
						end
					end
				end
			end
		end
	elseif str == 1 then
		if std == 1 then extraword = "双骑_"
		elseif std == 2 then extraword = "被双骑_"
		else extraword = "骑乘_"
		end
	end

	if doublemode ~= 0 then
		if std == 1 then
			prefixword , suffixword = dn , WEAPON_TYPE[wt].cmntype
		else
			if at == 24 then defaultdword = "亲亲蜜蜜" end
			prefixword , suffixword = defaultdword , WEAPON_TYPE[wt].cmntype
		end
	else
		if ACTION_TYPE[at].logictype == 1 then
			if str == 0 then
			    if stc == 1 then
					prefixword = dn
--地面，非绑定状态，有此状态时，非战斗状态下，调用"切换_"系列动作（背在背上）	
					if idweapon ~= 72192 and idweapon ~= 72193 and idweapon ~= 72845 and idweapon ~= 72846 and idweapon ~= 75875 and idweapon ~= 75368 and idweapon ~= 74279 and idweapon ~= 72995 and idweapon ~= 89695 and idweapon ~= 72996 and idweapon ~= 73830 and idweapon ~= 73887 and std == 0 and stb == 2 then
					    extraword = "切换_"
						suffixword = WEAPON_TYPE[wt].ridetype
						if wt == 12 then
							suffixword = WEAPON_TYPE[wt].acttype
						end 
						if wt == 6 then
							suffixword = WEAPON_TYPE[wt].acttype						
						end
					else
						suffixword = WEAPON_TYPE[wt].acttype
					end
				else
					prefixword = string.format("%s%s" , combatword , dn )
					suffixword = WEAPON_TYPE[wt].acttype
				end
			else
				if sta == 3 or sta == 4 or sta == 5 or stb == 2 then
					prefixword = string.format("%s%s" , combatword , dn )
					suffixword = WEAPON_TYPE[wt].acttype
				else
					prefixword = dn
					suffixword = WEAPON_TYPE[wt].ridetype
				end
				if at == 3 then
					if sta == 3 then
						prefixword = "加速跑"
						suffixword = WEAPON_TYPE[wt].acttype
					elseif sta == 4 then
						prefixword = "战斗加速跑"
						suffixword = WEAPON_TYPE[wt].acttype
					end
				end
			end
		else
			prefixword , suffixword = dn , WEAPON_TYPE[wt][dt]
		end
	end

---当站立的时候做行为动作（类似普通攻击这样的），则返回forcedown为1，强行把下身动作提升优先级
	if ACTION_TYPE[at].logictype == 2 then
		if sta == 1 then
			forcedown = 1
		end
	end
---为了解决骑战时，长轻武器切换为双短武器时的出现的挂点异常。原因是动作不结束，无法刷新站立姿态。
	if at ==11 then
		if skid == 363 or skid == 1263 then
		forcedown = 1
		end	
	end
---j为了使骑战中的下马技播放下半身。
	if at ==11 then
		if skid == 5821 or skid == 5823 or skid == 5824 or skid == 5825 or skid == 5826 or skid == 5827 or skid == 5828 or skid == 5829 then
		forcedown = 1
		end	
	end	
---针对技能的特殊处理，包括换名字，
	if at == 11 then
		local actname = SKILL_TYPE[skid].act
		local actnumber = table.getn(actname)
		skpt = skpt + 1
		if skpt > actnumber then
			prefixword = actname[actnumber]
		else
			prefixword	 = actname[skpt]
		end

---跟据技能名改后缀
		dt = SEQUENCE_TYPE[prefixword].default or "通用"
		suffixword = WEAPON_TYPE[wt][dt] or ""
		
---非双人模式下如不强行指定中缀或后缀，则按标准规则调用后缀
  		extraword = SKILL_TYPE[skid].forceextword or extraword
  		suffixword = SKILL_TYPE[skid].forcesuffix or suffixword
	end
	
---针对挖掘的换名字
	if at == 13 then
	    if clid~=5 and clid~=11 then
			prefixword = DIG_TYPE[clid+1].name or prefixword
			if str == 1 then
				forcedown = 0
				suffixword = WEAPON_TYPE[wt].ridetype
			else
--地面，非绑定状态，有此状态时，非战斗状态下，调用"切换_"系列动作（背在背上）
				if std == 0 and stb == 2 and stc == 1 then
			    	extraword = "切换_"
					suffixword = WEAPON_TYPE[wt].ridetype
					if wt == 12 then
						suffixword = WEAPON_TYPE[wt].acttype
					end 
				end
			end
	    end 
	end

---自动钓鱼骑乘动作强指
	if skid == 1341 then
    	if str == 1 then
    	forcedown = 0
    	suffixword = WEAPON_TYPE[wt].ridetype
    	end
	end
	
---枪的地面普攻
	if wt == 3 then
    	if at == 8 then prefixword = "重击1"
    	elseif at == 9 then prefixword = "普通攻击2"
    	end
	end
---戟的地面普攻
	if wt == 4 then
	    if at == 8 then prefixword = "戟攻击5"
	    elseif at == 9 then prefixword = "戟攻击9"
	    end
    end
		
--盾动作特例
	if wt == 14 then
		if at == 8 or at == 9 then
			if sta == 3 or sta == 4 or sta ==5 then
				suffixword = "空手"
			else suffixword = "盾"
			end
		end
	end
---骑乘动作名调整
	if str == 1 then	
---爪盾流星乱舞
		if wt == 13 or wt ==14 then
			if skid == 1295 then suffixword = "双短" end
---戟轻重均可
		elseif wt == 4 and at == 11 and skid == 1279 then suffixword = "长重"
---调用地面普攻动作
		elseif wt < 20 then	
			if at == 8 or at == 9 then extraword = "" end
		end
	end	

---爪的动作特例
	if wt == 13 then
		if sta == 2 then
			if at == 3 then prefixword = "行走"
			end
		end
	end

---地面加速跑
	if at == 3 then
		if str == 0 then
			if stb == 1 then prefixword = "加速跑"
			end
		end
	end
	
---环的动作特例
	if wt == 15 then
		if std == 0 then
			local at_specialhuan = {1,2,3,4,5,6,7,8,9,10,15}
			for atnum = 1, table.getn(at_specialhuan) do
				if str == 0 then 
					if at == at_specialhuan[atnum] then
						extraword = ""
						suffixword = "环"	
						break
					end
				elseif str == 1 then
					if at == at_specialhuan[atnum] then
						extraword = "骑乘_"
						suffixword = "异类"	
						break
					end
				end
			end
		end	
    end
	
---舞的动作特例
	if wt == 17 then
		if at == 8 then suffixword = WEAPON_TYPE[wt].name
		elseif at == 9 then suffixword = WEAPON_TYPE[wt].name
		end
		if skid == 310 or skid == 315 then
			if skpt == 1 then
				suffixword = "异类"
			end
		end
		if str == 1 then
			if sta == 3 or sta ==4 or sta == 5 then
				if at ~= 11 then
					suffixword = "舞"
				end
			end
		end
	end
	
---弓的动作特例
	if wt == 19 then
		if std == 0 then
			if at < 11 or at ==15 then suffixword = WEAPON_TYPE[wt].name end
		end
	end	
	
--舞蹈_演武动作根据武器类型改后缀
	if skid == 1971 and at == 11 then
		suffixword = WEAPON_TYPE[wt].name
	end

--休闲动作处理
if at == 38 then
--	if str == 0 then
--		prefixword = ""
--	elseif stc ~= 1 or std ~= 0 then
		prefixword = ""
--	end
end

--叉的动作特例
	if wt == 6 then
		if at == 8 or at == 9 then
			suffixword = "叉"
		end
		if at == 1 or at == 3 then
			if str == 0 then
				if stc == 2 then
					extraword = ""				
					suffixword = "叉"				
				elseif stc == 1 and stb == 2 then
					suffixword = "叉"	
				end
			end
		end
		if stc == 2 then
			local at_special = {2,4,5,6,7,10}
			for atnum = 1, table.getn(at_special) do 
				if at == at_special[atnum] then
					extraword = ""
					suffixword = "叉"	
					break
				end
			end
		end 
    end
--新骑战凌空刺技能将叉、环后缀改为单短
	if wt == 6 or wt == 15 then
		if at == 11 and skid == 5682 then
			suffixword = "单短"
		end	
	end
--鞭动作特例
	if wt == 20 then
		if at == 8 or at == 9 then
			suffixword = "鞭"
		end
		if std == 0 then	
			if str ==0 then
				if stc == 1 then
					if stb == 2 then
						suffixword = WEAPON_TYPE[wt].acttype
					end
				end 
			end	
		end	
	end
--弩动作特例
	if wt == 21 then
		if std == 0 then
			if at < 11 or at ==15 then 
				 suffixword = WEAPON_TYPE[wt].name				
			end
			if str ==0 then
				if stc == 1 then
					if stb == 2 then
						suffixword = WEAPON_TYPE[wt].acttype
					end
				end 
			end		
		end
	end	
--弩马鞭技能动作特例，更改后缀为弩，为了纠正挂点;还有一个瞬发技能稍微调整下动作
	if wt == 21 then
		if at == 11 then
			local rideattack_id = {927,928,929,930,1290}
			for num = 1, table.getn(rideattack_id) do
				if skid == rideattack_id[num] then 
					if prefixword == "弓射击1" then prefixword = "弩射击" suffixword = WEAPON_TYPE[wt].name
						else suffixword = WEAPON_TYPE[wt].name
						break					
					end
				end
			end
		end
	end
--鞭骑战技能特例，将技能后辍改为鞭
-----------------------------------
	if wt == 20 and at == 11 and str == 1 then
		local rideattack_id = {1273,1280,1283,1289,1293,1294,1296}
		for num = 1, table.getn(rideattack_id) do
			if skid == rideattack_id[num] then
				suffixword = "鞭"
				break
			end
		end
	end
-----------------------------------
	
---锤的动作特例
	if wt == 12 then
		if prefixword == "战斗奔跑" and extraword == "" then
			suffixword = "锤"	
		end
    end

---刀的动作特例
	if at == 11 and str == 1 and skid == 8 then
		ecmcombinename = "青龙偃月_骑乘_长重"
	end
	
--战魂觉醒在骑乘时不改变下身动作
-----------------------------------
	if at == 11 and str == 1 then
		local soul_id = {2464,2425,2426,2427,2428,2429,2430,2431,2432,2433,2434,2435,2436,2437,2438,2439,2440,5258,5384,5385,5386,5425,5426,5427}
		for num = 1, table.getn(soul_id) do
			if skid == soul_id[num] then
				forceup = 1
				forcedown = 0
				break
			end
		end
	end
-----------------------------------


--召唤护卫在骑乘时不改变下身动作
-----------------------------------
	if at == 11 and str == 1 then
		if skid == 3408 then
                extraword = ""
				forceup = 1
				forcedown = 0
		end
	end
-----------------------------------

--赤壁水战水中挣扎和死亡动作
	local ranword = 1
	if at == 41 or at == 42 then
		if str == 1 then
			prefixword = ""
		else
			--两组动作随机播放一组
			ranword = math.random(2)
			--在prefixword后面加上1或2
			prefixword = string.format("%s%d", prefixword , ranword)
			suffixword = "通用"			
		end
	end
	

--被击退
	if at == 44 then
		if str == 0 then
			prefixword = "被击退"
			suffixword = "通用"	
			forceup = 1
			forcedown = 1
		else
			prefixword = "受伤"
			suffixword = "通用"	
		end
	end
	
--被拉近
	if at == 52 then
		if str == 0 then
			prefixword = "被击退"
			suffixword = "通用"	
			forceup = 1
			forcedown = 1
		else
			prefixword = "受伤"
			suffixword = "通用"	
		end
	end
	
--被击倒
	if at == 53 then
		if str == 0 then
			prefixword = "被击倒"
			suffixword = "通用"	
			forceup = 1
			forcedown = 1
		else
			prefixword = "受伤"
			suffixword = "通用"	
		end
	end
	
--被浮空
	if at == 54 then
		if str == 0 then
			prefixword = "被浮空循环"
			suffixword = "通用"	
			forceup = 1
			forcedown = 1
		else
			prefixword = "受伤"
			suffixword = "通用"	
		end
	end
	
	

	
		
--站立操作动作特殊处理

	if prefixword == "站立操作" and str == 1  then
		forceup = 1
		forcedown = 0
	end		
	
--- 时装武器返回挂点
	if FWHook[idweapon] ~= nil then
		LogPrint("Not Nil\n")
		if str == 1 then	
			if sta == 5 and FWHook[idweapon]["骑战"] ~= nil then
				hookleft,hookright = FWHook[idweapon]["骑战"][1],FWHook[idweapon]["骑战"][2]
			elseif sta == 4 and FWHook[idweapon]["骑战"] ~= nil then
				hookleft,hookright = FWHook[idweapon]["骑战"][1],FWHook[idweapon]["骑战"][2]
			elseif sta == 3 and FWHook[idweapon]["骑战"] ~= nil then
				hookleft,hookright = FWHook[idweapon]["骑战"][1],FWHook[idweapon]["骑战"][2]
			elseif FWHook[idweapon]["骑乘"] ~= nil then
				hookleft,hookright = FWHook[idweapon]["骑乘"][1],FWHook[idweapon]["骑乘"][2]
			end
		elseif at == 11 and FWHook[idweapon][skid] ~= nil then
			hookleft,hookright = FWHook[idweapon][skid][1],FWHook[idweapon][skid][2]
		elseif at == 38 and FWHook[idweapon]["特殊"]~= nil then
			hookleft,hookright = FWHook[idweapon]["特殊"][1],FWHook[idweapon]["特殊"][2]
		elseif FWHook[idweapon]["默认"] ~= nil then
			hookleft,hookright = FWHook[idweapon]["默认"][1],FWHook[idweapon]["默认"][2]
		end
		LogPrint("Left:" .. hookleft .. " .. Right:" .. hookright .. "\n")
	end


--83401	时装武器
	if idweapon == 83401 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "长重"	
				break
			end
		end
	end
		
	if idweapon == 83402 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "弓"
				break
			end
		end
	end
	if idweapon == 83403 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "长重"
				break
			end
		end
	end
	if idweapon == 83404 and std == 0 then
		if str == 1 then
			local at_special = {1,2,3,4,5,6,7,10,15}
			for atnum = 1, table.getn(at_special) do 
				if at == at_special[atnum] then
					suffixword = "舞"
					break
				end
			end
		else
			local at_special = {1,2,3,4,5,6,7,10,15}
			for atnum = 1, table.getn(at_special) do 
				if at == at_special[atnum] then
					suffixword = "异类"
					break
				end
			end
		end
	end
	if idweapon == 83405 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "长重"
				break
			end
		end
	end
	if idweapon == 83406 and std == 0 then
		if str == 1 then
			local at_special = {1,2,3,4,5,6,7,10,15}
			for atnum = 1, table.getn(at_special) do 
				if at == at_special[atnum] then
					suffixword = "舞"
					break
				end
			end
		else
			local at_special = {1,2,3,4,5,6,7,10,15}
			for atnum = 1, table.getn(at_special) do 
				if at == at_special[atnum] then
					suffixword = "异类"
					break
				end
			end
		end
	end
	if idweapon == 83407 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "单短"
				break
			end
		end
	end
	if idweapon == 83408 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "单短"
				break
			end
		end
	end
	if idweapon == 83409 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "长轻"
				break
			end
		end
	end
	if idweapon == 83400 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "单短"
				break
			end
		end
	end
	if idweapon == 83975 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "单短"
				break
			end
		end
	end
	if idweapon == 84144 and std == 0 then
		if str == 1 then
			local at_special = {1,2,3,4,5,6,7,10,15}
			for atnum = 1, table.getn(at_special) do 
				if at == at_special[atnum] then
					suffixword = "舞"
					break
				end
			end
		else
			local at_special = {1,2,3,4,5,6,7,10,15}
			for atnum = 1, table.getn(at_special) do 
				if at == at_special[atnum] then
					suffixword = "异类"
					break
				end
			end
		end
	end
	if idweapon == 84351 and std == 0 then
		if str == 1 then
			local at_special = {1,2,3,4,5,6,7,10,15}
			for atnum = 1, table.getn(at_special) do 
				if at == at_special[atnum] then
					suffixword = "舞"
					break
				end
			end
		else
			local at_special = {1,2,3,4,5,6,7,10,15}
			for atnum = 1, table.getn(at_special) do 
				if at == at_special[atnum] then
					suffixword = "异类"
					break
				end
			end
		end
	end
	
	if idweapon == 86330 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "双短"	
				break
			end
		end
	end

	if idweapon == 86331 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "单短"
				break
			end
		end
	end
	if idweapon == 86332 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "长重"
				break
			end
		end
	end	
	if idweapon == 86333 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "长轻"
				break
			end
		end
	end	
	if idweapon == 86334 and std == 0 then
		if str == 1 then
			local at_special = {1,2,3,4,5,6,7,10,15}
			for atnum = 1, table.getn(at_special) do 
				if at == at_special[atnum] then
					suffixword = "舞"
					break
				end
			end
		else
			local at_special = {1,2,3,4,5,6,7,10,15}
			for atnum = 1, table.getn(at_special) do 
				if at == at_special[atnum] then
					suffixword = "异类"
					break
				end
			end
		end
	end
	if idweapon == 86335 and std == 0 then
		if str == 1 and sta < 2 then
			local at_special = {1,2,3,4,5,6,7,10,15}
			for atnum = 1, table.getn(at_special) do 
				if at == at_special[atnum] then
					suffixword = "锤"
					break
				end
			end
		else
			local at_special = {1,2,3,4,5,6,7,10,15}
			for atnum = 1, table.getn(at_special) do 
				if at == at_special[atnum] then
					suffixword = "单短"
					break
				end
			end
		end
	end
	if idweapon == 86336 and std == 0 then
		if str == 1 and sta < 2 then
			local at_special = {1,2,3,4,5,6,7,10,15}
			for atnum = 1, table.getn(at_special) do 
				if at == at_special[atnum] then
					suffixword = "锤"
					break
				end
			end
		else
			local at_special = {1,2,3,4,5,6,7,10,15}
			for atnum = 1, table.getn(at_special) do 
				if at == at_special[atnum] then
					suffixword = "单短"
					break
				end
			end
		end
	end
	if idweapon == 88671 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "长轻"
				break
			end
		end
	end	
	if idweapon == 88672 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "长轻"
				break
			end
		end
	end	
	if idweapon == 88673 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "长轻"
				break
			end
		end
	end	
	if idweapon == 89219 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "单短"
				break
			end
		end
	end
	if idweapon == 89221 or idweapon == 97760 or idweapon == 97761 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "双短"	
				break
			end
		end
	end
	if idweapon == 89222 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "单短"
				break
			end
		end
	end
	if idweapon == 98938 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "双短"	
				break
			end
		end
	end
	if idweapon == 98939 and std == 0 then
		local at_special = {1,2,3,4,5,6,7,10,15}
		for atnum = 1, table.getn(at_special) do 
			if at == at_special[atnum] then
				suffixword = "单短"
				break
			end
		end
	end
--合并动作组合名称	
	if prefixword ~= "" then
		if at ~= 37 and at ~= 39 and  at ~= 40 then
			ecmcombinename = string.format("%s%s%s%s" , prefixword , "_" , extraword , suffixword)			
		--特例：赤壁水战战船驾驶动作	
		elseif at == 37 then ecmcombinename = "驾驶动作_空闲"
		elseif at == 39 then ecmcombinename = "驾驶动作_左转"
		elseif at == 40 then ecmcombinename = "驾驶动作_右转" 
		end		
	end
	
--相依相偎地面女动作特例
	if at == 24 and str == 0 and std == 2 then
		ecmcombinename = "亲亲蜜蜜_被绑定_通用"
	end

--受到不同技能攻击，播不同受伤动作
	if at == 19 then
		if idwoundskill == 0 then
			ecmcombinename = "受伤_通用"
		elseif idwoundskill == 48 then
			ecmcombinename = "wound_被浮空摔_通用"
		elseif idwoundskill == 4464 then
			ecmcombinename = "wound_被浮空摔_通用"
		elseif idwoundskill == 4476 then
			ecmcombinename = "wound_被浮空摔_通用"
		elseif idwoundskill == 3632 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 28 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 4475 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 275 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 4652 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 4633 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 4643 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 4938 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 4617 then
			ecmcombinename = "wound_被浮空摔_通用"
		elseif idwoundskill == 5502 then
			ecmcombinename = "wound_被浮空摔_通用"
		elseif idwoundskill == 5533 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 5559 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 5564 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 5567 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 5576 then
			ecmcombinename = "wound_被缠绕摔_通用"
		end
	end
	if at == 20 then
		if idwoundskill == 0 then
			ecmcombinename = "受伤_通用"
		elseif idwoundskill == 48 then
			ecmcombinename = "wound_被浮空摔_通用"
		elseif idwoundskill == 4464 then
			ecmcombinename = "wound_被浮空摔_通用"
		elseif idwoundskill == 4476 then
			ecmcombinename = "wound_被浮空摔_通用"
		elseif idwoundskill == 3632 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 28 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 4475 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 275 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 4652 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 4633 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 4643 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 4938 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 4617 then
			ecmcombinename = "wound_被浮空摔_通用"
		elseif idwoundskill == 5502 then
			ecmcombinename = "wound_被浮空摔_通用"
		elseif idwoundskill == 5533 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 5559 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 5564 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 5567 then
			ecmcombinename = "wound_被缠绕摔_通用"
		elseif idwoundskill == 5576 then
			ecmcombinename = "wound_被缠绕摔_通用"
		end
	end
	
	--麻痹
	if at == 51 then
		ecmcombinename = "麻痹_通用"
	end
	
	--特殊跳跃
	if std == 0 then
		if at == 46 then
			ecmcombinename = "一级跳_3段跳"
		end
		
		if at == 47 then
			ecmcombinename = "二级跳_3段跳"
		end
		
		if at == 48 then
			ecmcombinename = "三级跳_3段跳"
		end
		
		if at == 49 then
			ecmcombinename = "跳跃循环_3段跳"
		end
		
		if at == 50 then
			ecmcombinename = "跳跃落地_3段跳"
		end
	elseif std == 1 then
		if at == 46 then
			ecmcombinename = "一级跳_绑定_3段跳"
		end
			
		if at == 47 then
			ecmcombinename = "二级跳_绑定_3段跳"
		end
			
		if at == 48 then
			ecmcombinename = "三级跳_绑定_3段跳"
		end
			
		if at == 49 then
			ecmcombinename = "跳跃循环_绑定_3段跳"
		end
			
		if at == 50 then
			ecmcombinename = "跳跃落地_绑定_3段跳"
		end

	end

--时装武器专用合动动作组合名称
	if  idweapon == 72193 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif srt == 0 then
			ecmcombinename = "站立_打伞"
		elseif at == 1 then
			ecmcombinename = "站立_打伞"
			fashionweaponaction = "站立"
		elseif at == 2 then
			ecmcombinename = "行走_打伞"
			fashionweaponaction = "站立"
		elseif at == 3 then
			ecmcombinename = "奔跑_打伞"
			fashionweaponaction = "站立"
		elseif at == 4 then
			ecmcombinename = "后退_打伞"
			fashionweaponaction = "站立"
		elseif at == 5 then
			ecmcombinename = "起跳_空手"
			fashionweaponaction = "站立"
		elseif at == 10 then
			ecmcombinename = "原地旋转_打伞"
			fashionweaponaction = "站立"
		elseif at == 15 then 
			ecmcombinename = "站立_打伞"
			fashionweaponaction = "站立"
		elseif at == 38 then
			ecmcombinename = "休闲_打伞"
			fashionweaponaction = "休闲"				
		elseif skid == 363 and at == 11 then
			ecmcombinename = "饰品切换_打伞"
			fashionweaponaction = "饰品切换"
		end
	end
	if  idweapon == 72599 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif srt == 0 then
			ecmcombinename = "站立_打伞"
		elseif at == 1 then
			ecmcombinename = "站立_打伞"
			fashionweaponaction = "站立"
		elseif at == 2 then
			ecmcombinename = "行走_打伞"
			fashionweaponaction = "站立"
		elseif at == 3 then
			ecmcombinename = "奔跑_打伞"
			fashionweaponaction = "站立"
		elseif at == 4 then
			ecmcombinename = "后退_打伞"
			fashionweaponaction = "站立"
		elseif at == 5 then
			ecmcombinename = "起跳_空手"
			fashionweaponaction = "站立"
		elseif at == 10 then
			ecmcombinename = "原地旋转_打伞"
			fashionweaponaction = "站立"
		elseif at == 15 then 
			ecmcombinename = "站立_打伞"
			fashionweaponaction = "站立"
		elseif at == 38 then
			ecmcombinename = "休闲_打伞"
			fashionweaponaction = "休闲"				
		elseif skid == 363 and at == 11 then
			ecmcombinename = "饰品切换_打伞"
			fashionweaponaction = "饰品切换"
		end
	end
	if  idweapon == 72600 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif srt == 0 then
			ecmcombinename = "站立_打伞"
		elseif at == 1 then
			ecmcombinename = "站立_打伞"
			fashionweaponaction = "站立"
		elseif at == 2 then
			ecmcombinename = "行走_打伞"
			fashionweaponaction = "站立"
		elseif at == 3 then
			ecmcombinename = "奔跑_打伞"
			fashionweaponaction = "站立"
		elseif at == 4 then
			ecmcombinename = "后退_打伞"
			fashionweaponaction = "站立"
		elseif at == 5 then
			ecmcombinename = "起跳_空手"
			fashionweaponaction = "站立"
		elseif at == 10 then
			ecmcombinename = "原地旋转_打伞"
			fashionweaponaction = "站立"
		elseif at == 15 then 
			ecmcombinename = "站立_打伞"
			fashionweaponaction = "站立"
		elseif at == 38 then
			ecmcombinename = "休闲_打伞"
			fashionweaponaction = "休闲"				
		elseif skid == 363 and at == 11 then
			ecmcombinename = "饰品切换_打伞"
			fashionweaponaction = "饰品切换"
		end
	end
	if  idweapon == 72192 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif at == 1 then
			ecmcombinename = "站立_笛子"
			fashionweaponaction = "站立"
		elseif at == 2 then
			ecmcombinename = "行走_笛子"
			fashionweaponaction = "行走"
		elseif at == 3 then
			ecmcombinename = "奔跑_笛子"
			fashionweaponaction = "奔跑"
		elseif at == 4 then
			ecmcombinename = "后退_笛子"
			fashionweaponaction = "站立"
		elseif at == 5 then
			ecmcombinename = "起跳_笛子"
			fashionweaponaction = "站立"
		elseif at == 10 then
			ecmcombinename = "原地旋转_笛子"
			fashionweaponaction = "站立"
		elseif at == 38 then
			ecmcombinename = "休闲_笛子"
			fashionweaponaction = "休闲"
		elseif skid == 363 and at == 11 then
			ecmcombinename = "饰品切换_笛子"
			fashionweaponaction = "饰品切换"
		end
	end
	if  idweapon == 72845 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "站立"
		elseif at == 38 then
			if math.random(2) == 1 then
				ecmcombinename = "休闲_琴"
				fashionweaponaction = "休闲"
			else 
				ecmcombinename = "休闲2_琴"
				fashionweaponaction = "休闲2"
			end
		elseif skid == 363 and at == 11 then
			ecmcombinename = "饰品切换_琴"
			fashionweaponaction = "饰品切换"
		end
	end
	if  idweapon == 72846 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "站立"
		elseif at == 1 then
			fashionweaponaction = "站立"
		elseif at == 2 then
			fashionweaponaction = "行走"
		elseif at == 3 then
			fashionweaponaction = "奔跑"
		elseif at == 38 then
			if math.random(2) == 1 then
				ecmcombinename = "休闲_扇子"
				fashionweaponaction = "休闲"
			else 
				ecmcombinename = "休闲2_扇子"
				fashionweaponaction = "休闲2"
			end
		elseif skid == 363 and at == 11 then
			ecmcombinename = "饰品切换_扇子"
			fashionweaponaction = "饰品切换"
		end
	end
	if  idweapon == 72995 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "站立"
		elseif at == 1 then
			fashionweaponaction = "站立"
		elseif at == 2 then
			fashionweaponaction = "站立"
		elseif at == 3 then
			fashionweaponaction = "站立"
		elseif at == 38 then
			if math.random(2) == 1 then
				ecmcombinename = "休闲动作_通用"
				fashionweaponaction = "休闲"
			else 
				ecmcombinename = "休闲动作_通用"
				fashionweaponaction = "休闲2"
			end
		end
	end
	if  idweapon == 72996 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "站立"
		elseif at == 1 then
			ecmcombinename = "站立_琵琶"
			fashionweaponaction = "站立"
		elseif at == 2 then
			ecmcombinename = "行走_琵琶"
			fashionweaponaction = "行走"
		elseif at == 3 then
			ecmcombinename = "奔跑_琵琶"
			fashionweaponaction = "奔跑"
		elseif at == 4 then
			ecmcombinename = "后退_琵琶"
			fashionweaponaction = "站立"
		elseif at == 15 then
			ecmcombinename = "站立_琵琶"
			fashionweaponaction = "站立"
		elseif at == 38 then
			ecmcombinename = "休闲_琵琶"
			fashionweaponaction = "休闲"
		end
	end
	if  idweapon == 73830 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "站立"
		elseif at == 1 then
			fashionweaponaction = "站立"
		elseif at == 2 then
			fashionweaponaction = "站立"
		elseif at == 3 then
			fashionweaponaction = "奔跑"
		elseif at == 4 then
			fashionweaponaction = "站立"
		elseif at == 15 then
			fashionweaponaction = "站立"
		elseif at == 38 then
			ecmcombinename = "休闲_龙风筝"
			fashionweaponaction = "休闲"
		end
	end
	if  idweapon == 74279 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "站立"
		elseif at == 1 then
			fashionweaponaction = "站立"
		elseif at == 2 then
			fashionweaponaction = "站立"
		elseif at == 3 then
			fashionweaponaction = "奔跑"
		elseif at == 4 then
			fashionweaponaction = "站立"
		elseif at == 15 then
			fashionweaponaction = "站立"
		elseif at == 38 then
			ecmcombinename = "休闲_生花笔"
			fashionweaponaction = "休闲"
		end
	end
	if  idweapon == 74887 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "站立"
		elseif at == 1 then
			ecmcombinename = "站立_三弦琴"
		elseif at == 2 then
			ecmcombinename = "行走_三弦琴"
		elseif at == 3 then
			ecmcombinename = "奔跑_三弦琴"
		elseif at == 15 then
			ecmcombinename = "站立_三弦琴"
		elseif at == 38 then
			ecmcombinename = "休闲_三弦琴"
		end
	end
	if  idweapon == 75368 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "站立"
		elseif at == 1 then
			fashionweaponaction = "站立"
		elseif at == 2 then
			fashionweaponaction = "站立"
		elseif at == 3 then
			fashionweaponaction = "站立"
		elseif at == 38 then
			if math.random(2) == 1 then
				ecmcombinename = "休闲1_猫"
				fashionweaponaction = "休闲1"
			else 
				ecmcombinename = "休闲2_猫"
				fashionweaponaction = "休闲2"
			end
		end
	end
	if  idweapon == 75875 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif at == 1 then
			ecmcombinename = "站立_单短"
			fashionweaponaction = "站立"
		elseif at == 2 then
			ecmcombinename = "行走_灯笼"
			fashionweaponaction = "行走"
		elseif at == 3 then
			ecmcombinename = "奔跑_灯笼"
			fashionweaponaction = "奔跑"
		elseif at == 4 then
			ecmcombinename = "后退_灯笼"
			fashionweaponaction = "站立"
		elseif at == 15 then
			ecmcombinename = "站立_灯笼"
			fashionweaponaction = "站立"
		elseif at == 38 then
			if math.random(2) == 1 then
				ecmcombinename = "休闲_灯笼"
				fashionweaponaction = "休闲"
			else 
				ecmcombinename = "休闲2_灯笼"
				fashionweaponaction = "休闲2"
			end
		elseif skid == 363 and at == 11 then
			ecmcombinename = "饰品切换_灯笼"
			fashionweaponaction = "饰品切换"
		end
	end
	if  idweapon == 76183 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "站立"
		elseif at == 1 then
			fashionweaponaction = "站立"
		elseif at == 2 then
			fashionweaponaction = "站立"
		elseif at == 3 then
			fashionweaponaction = "奔跑"
		elseif at == 4 then
			fashionweaponaction = "站立"
		elseif at == 15 then
			fashionweaponaction = "站立"
		elseif at == 38 then
			ecmcombinename = "休闲_生花笔"
			fashionweaponaction = "休闲"
		end
	end
	if  idweapon == 76257 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif at == 1 then
			ecmcombinename = "站立_单短"
			fashionweaponaction = "站立"
		elseif at == 2 then
			ecmcombinename = "行走_灯笼"
			fashionweaponaction = "行走"
		elseif at == 3 then
			ecmcombinename = "奔跑_灯笼"
			fashionweaponaction = "奔跑"
		elseif at == 4 then
			ecmcombinename = "后退_灯笼"
			fashionweaponaction = "站立"
		elseif at == 15 then
			ecmcombinename = "站立_灯笼"
			fashionweaponaction = "站立"
		elseif at == 38 then
			if math.random(2) == 1 then
				ecmcombinename = "休闲_灯笼"
				fashionweaponaction = "休闲"
			else 
				ecmcombinename = "休闲2_灯笼"
				fashionweaponaction = "休闲2"
			end
		elseif skid == 363 and at == 11 then
			ecmcombinename = "饰品切换_灯笼"
			fashionweaponaction = "饰品切换"
		end
	end
	if  idweapon == 76451 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "站立"
		elseif at == 1 then
			fashionweaponaction = "站立"
		elseif at == 2 then
			fashionweaponaction = "站立"
		elseif at == 3 then
			fashionweaponaction = "奔跑"
		elseif at == 4 then
			fashionweaponaction = "站立"
		elseif at == 15 then
			fashionweaponaction = "站立"
		elseif at == 38 then
			ecmcombinename = "休闲_龙风筝"
			fashionweaponaction = "休闲"
		end
	end
	if  idweapon == 76452 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "站立"
		elseif at == 1 then
			fashionweaponaction = "站立"
		elseif at == 2 then
			fashionweaponaction = "站立"
		elseif at == 3 then
			fashionweaponaction = "站立"
		elseif at == 38 then
			if math.random(2) == 1 then
				ecmcombinename = "休闲1_猫"
				fashionweaponaction = "休闲1"
			else 
				ecmcombinename = "休闲2_猫"
				fashionweaponaction = "休闲2"
			end
		end
	end
	if  idweapon == 76550 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif at == 1 then
			ecmcombinename = "站立_手套娃娃"
			fashionweaponaction = "站立"
		elseif at == 2 then
			ecmcombinename = "行走_手套娃娃"
			fashionweaponaction = "行走"
		elseif at == 3 then
			ecmcombinename = "奔跑_手套娃娃"
			fashionweaponaction = "奔跑"
		elseif at == 4 then
			ecmcombinename = "后退_手套娃娃"
			fashionweaponaction = "后退"
		elseif at == 15 then
			ecmcombinename = "站立_手套娃娃"
			fashionweaponaction = "站立"
		elseif at == 38 then
			if math.random(2) == 1 then
				ecmcombinename = "休闲_手套娃娃"
				fashionweaponaction = "休闲"
			else 
				ecmcombinename = "休闲2_手套娃娃"
				fashionweaponaction = "休闲2"
			end
		end
	end
	
	if  idweapon == 80030 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "站立"
		elseif at == 1 then
			fashionweaponaction = "站立"
		elseif at == 2 then
			fashionweaponaction = "站立"
		elseif at == 3 then
			fashionweaponaction = "站立"
		elseif at == 38 then
			if math.random(2) == 1 then
				ecmcombinename = "休闲1_玉佩虎"
				fashionweaponaction = "站立"
			else 
				ecmcombinename = "休闲2_玉佩虎"
				fashionweaponaction = "站立"
			end
		end
	end
	if  idweapon == 81214 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "站立"
		elseif at == 1 then
			fashionweaponaction = "站立"
		elseif at == 2 then
			fashionweaponaction = "站立"
		elseif at == 3 then
			fashionweaponaction = "站立"
		elseif at == 15 then
			fashionweaponaction = "站立"
		elseif at == 38 then
			if math.random(2) == 1 then
				ecmcombinename = "休闲1_小驯鹿"
				fashionweaponaction = "站立"
			else 
				ecmcombinename = "休闲2_小驯鹿"
				fashionweaponaction = "站立"
			end
		end
	end
	if  idweapon == 81243 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "站立"
		elseif at == 1 then
			fashionweaponaction = "站立"
		elseif at == 2 then
			fashionweaponaction = "站立"
		elseif at == 3 then
			fashionweaponaction = "站立"
		elseif at == 38 then
			if math.random(2) == 1 then
				ecmcombinename = "休闲1_玉佩龙"
				fashionweaponaction = "站立"
			else 
				ecmcombinename = "休闲2_玉佩龙"
				fashionweaponaction = "站立"
			end
		end
	end
	if  idweapon == 81944 and std == 0 then
		if at == 38 then
			if math.random(2) == 1 then
				ecmcombinename = "休闲1_书箱"
			else 
				ecmcombinename = "休闲2_书箱"
			end
		end
	end
	if  idweapon == 81945 and std == 0 then
		if at == 38 then
			if math.random(2) == 1 then
				ecmcombinename = "休闲_花篮1"
			else 
				ecmcombinename = "休闲_花篮2"
			end
		end
	end
	if  idweapon == 89695 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "站立"
		elseif at == 1 then
			ecmcombinename = "站立_琵琶"
			fashionweaponaction = "站立"
		elseif at == 2 then
			ecmcombinename = "行走_琵琶"
			fashionweaponaction = "行走"
		elseif at == 3 then
			ecmcombinename = "奔跑_琵琶"
			fashionweaponaction = "奔跑"
		elseif at == 4 then
			ecmcombinename = "后退_琵琶"
			fashionweaponaction = "站立"
		elseif at == 15 then
			ecmcombinename = "站立_琵琶"
			fashionweaponaction = "站立"
		elseif at == 38 then
			ecmcombinename = "休闲_琵琶"
			fashionweaponaction = "休闲"
		end
	end
--[[	
	if  idweapon == 83400 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif srt == 0 then
			ecmcombinename = "站立_单短"
		elseif at == 1 then
			ecmcombinename = "站立_单短"
		elseif at == 2 then
			ecmcombinename = "行走_单短"
		elseif at == 3 then
			ecmcombinename = "奔跑_单短"
		elseif at == 4 then
			ecmcombinename = "后退_单短"
		elseif at == 5 then
			ecmcombinename = "起跳_单短"
		elseif at == 6 then
			ecmcombinename = "跳跃循环_单短"
		elseif at == 7 then
			ecmcombinename = "跳跃落地_单短"		
		elseif at == 10 then
			ecmcombinename = "原地旋转_单短"
		elseif at == 15 then 
			ecmcombinename = "站立_单短"
		end
	end
]]--	
--[[
	if  idweapon == 83401 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif srt == 0 then
			ecmcombinename = "站立_长重"
		elseif at == 1 then
			ecmcombinename = "站立_长重"
		elseif at == 2 then
			ecmcombinename = "行走_长重"
		elseif at == 3 then
			ecmcombinename = "奔跑_长重"
		elseif at == 4 then
			ecmcombinename = "后退_长重"
		elseif at == 5 then
			ecmcombinename = "起跳_长重"
		elseif at == 6 then
			ecmcombinename = "跳跃循环_长重"
		elseif at == 7 then
			ecmcombinename = "跳跃落地_长重"		
		elseif at == 10 then
			ecmcombinename = "原地旋转_长重"
		elseif at == 15 then 
			ecmcombinename = "站立_长重"
		end
	end
]]--	
--[[
	if  idweapon == 83402 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif srt == 0 then
			ecmcombinename = "站立_弓"
		elseif at == 1 then
			ecmcombinename = "站立_弓"
		elseif at == 2 then
			ecmcombinename = "行走_弓"
		elseif at == 3 then
			ecmcombinename = "奔跑_弓"
		elseif at == 4 then
			ecmcombinename = "后退_弓"
		elseif at == 5 then
			ecmcombinename = "起跳_弓"
		elseif at == 6 then
			ecmcombinename = "跳跃循环_弓"
		elseif at == 7 then
			ecmcombinename = "跳跃落地_弓"		
		elseif at == 10 then
			ecmcombinename = "原地旋转_弓"
		elseif at == 15 then 
			ecmcombinename = "站立_弓"
		end
	end
]]--	
--[[	
	if  idweapon == 83403 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif srt == 0 then
			ecmcombinename = "站立_长重"
		elseif at == 1 then
			ecmcombinename = "站立_长重"
		elseif at == 2 then
			ecmcombinename = "行走_长重"
		elseif at == 3 then
			ecmcombinename = "奔跑_长重"
		elseif at == 4 then
			ecmcombinename = "后退_长重"
		elseif at == 5 then
			ecmcombinename = "起跳_长重"
		elseif at == 6 then
			ecmcombinename = "跳跃循环_长重"
		elseif at == 7 then
			ecmcombinename = "跳跃落地_长重"		
		elseif at == 10 then
			ecmcombinename = "原地旋转_长重"
		elseif at == 15 then 
			ecmcombinename = "站立_长重"
		end
	end
]]--	
--[[	
	if  idweapon == 83404 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif srt == 0 then
			ecmcombinename = "站立_异类"
		elseif at == 1 then
			ecmcombinename = "站立_异类"
		elseif at == 2 then
			ecmcombinename = "行走_异类"
		elseif at == 3 then
			ecmcombinename = "奔跑_异类"
		elseif at == 4 then
			ecmcombinename = "后退_异类"
		elseif at == 5 then
			ecmcombinename = "起跳_异类"
		elseif at == 6 then
			ecmcombinename = "跳跃循环_异类"
		elseif at == 7 then
			ecmcombinename = "跳跃落地_异类"		
		elseif at == 10 then
			ecmcombinename = "原地旋转_异类"
		elseif at == 15 then 
			ecmcombinename = "站立_异类"
		end
	end
]]--	
--[[	
	if  idweapon == 83405 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif srt == 0 then
			ecmcombinename = "站立_长重"
		elseif at == 1 then
			ecmcombinename = "站立_长重"
		elseif at == 2 then
			ecmcombinename = "行走_长重"
		elseif at == 3 then
			ecmcombinename = "奔跑_长重"
		elseif at == 4 then
			ecmcombinename = "后退_长重"
		elseif at == 5 then
			ecmcombinename = "起跳_长重"
		elseif at == 6 then
			ecmcombinename = "跳跃循环_长重"
		elseif at == 7 then
			ecmcombinename = "跳跃落地_长重"		
		elseif at == 10 then
			ecmcombinename = "原地旋转_长重"
		elseif at == 15 then 
			ecmcombinename = "站立_长重"
		end
	end
]]--	
--[[	
	if  idweapon == 83406 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif srt == 0 then
			ecmcombinename = "站立_异类"
		elseif at == 1 then
			ecmcombinename = "站立_异类"
		elseif at == 2 then
			ecmcombinename = "行走_异类"
		elseif at == 3 then
			ecmcombinename = "奔跑_异类"
		elseif at == 4 then
			ecmcombinename = "后退_异类"
		elseif at == 5 then
			ecmcombinename = "起跳_异类"
		elseif at == 6 then
			ecmcombinename = "跳跃循环_异类"
		elseif at == 7 then
			ecmcombinename = "跳跃落地_异类"		
		elseif at == 10 then
			ecmcombinename = "原地旋转_异类"
		elseif at == 15 then 
			ecmcombinename = "站立_异类"
		end
	end
]]--	
--[[	
	if  idweapon == 83407 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif srt == 0 then
			ecmcombinename = "站立_单短"
		elseif at == 1 then
			ecmcombinename = "站立_单短"
		elseif at == 2 then
			ecmcombinename = "行走_单短"
		elseif at == 3 then
			ecmcombinename = "奔跑_单短"
		elseif at == 4 then
			ecmcombinename = "后退_单短"
		elseif at == 5 then
			ecmcombinename = "起跳_单短"
		elseif at == 6 then
			ecmcombinename = "跳跃循环_单短"
		elseif at == 7 then
			ecmcombinename = "跳跃落地_单短"		
		elseif at == 10 then
			ecmcombinename = "原地旋转_单短"
		elseif at == 15 then 
			ecmcombinename = "站立_单短"
		end
	end
]]--	
--[[	
	if  idweapon == 83408 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif srt == 0 then
			ecmcombinename = "站立_单短"
		elseif at == 1 then
			ecmcombinename = "站立_单短"
		elseif at == 2 then
			ecmcombinename = "行走_单短"
		elseif at == 3 then
			ecmcombinename = "奔跑_单短"
		elseif at == 4 then
			ecmcombinename = "后退_单短"
		elseif at == 5 then
			ecmcombinename = "起跳_单短"
		elseif at == 6 then
			ecmcombinename = "跳跃循环_单短"
		elseif at == 7 then
			ecmcombinename = "跳跃落地_单短"		
		elseif at == 10 then
			ecmcombinename = "原地旋转_单短"
		elseif at == 15 then 
			ecmcombinename = "站立_单短"
		end
	end
]]--	
--[[	
	if  idweapon == 83409 and std == 0 then
		if str == 1 then 
			fashionweaponaction = "骑乘"
		elseif srt == 0 then
			ecmcombinename = "站立_长轻"
		elseif at == 1 then
			ecmcombinename = "站立_长轻"
		elseif at == 2 then
			ecmcombinename = "行走_长轻"
		elseif at == 3 then
			ecmcombinename = "奔跑_长轻"
		elseif at == 4 then
			ecmcombinename = "后退_长轻"
		elseif at == 5 then
			ecmcombinename = "起跳_长轻"
		elseif at == 6 then
			ecmcombinename = "跳跃循环_长轻"
		elseif at == 7 then
			ecmcombinename = "跳跃落地_长轻"		
		elseif at == 10 then
			ecmcombinename = "原地旋转_长轻"
		elseif at == 15 then 
			ecmcombinename = "站立_长轻"
		end
	end
]]--		
		
--时装武器播舞蹈动作专用
	if idweapon == 72193 and skid == 3679 and at ==11 then
		ecmcombinename = "舞蹈伞_通用"
		fashionweaponaction = "舞蹈"
	end
	if idweapon == 72192 and skid == 3679 and at == 11 then
		ecmcombinename = "舞蹈笛_通用"
		fashionweaponaction = "舞蹈"
	end
	if idweapon == 72846 and skid == 3754 and at == 11 then
		fashionweaponaction = "舞蹈"
	end
	if idweapon == 72995 and skid == 3767 and at == 11 then
		fashionweaponaction = "舞蹈"
	end
	if idweapon == 73830 and skid == 3916 and at == 11 then
		fashionweaponaction = "舞蹈"
	end
	if idweapon == 74279 and skid == 4007 and at == 11 then
		fashionweaponaction = "舞蹈"
	end
	if idweapon == 74887 and skid == 4008 and at == 11 then
		fashionweaponaction = "舞蹈"
	end
	if idweapon == 75368 and skid == 4009 and at == 11 then
		fashionweaponaction = "舞蹈"
	end
	if idweapon == 75875 and skid == 4010 and at == 11 then
		fashionweaponaction = "舞蹈"
	end
	if idweapon == 76183 and skid == 4007 and at == 11 then
		fashionweaponaction = "舞蹈"
	end
	if idweapon == 76257 and skid == 4010 and at == 11 then
		fashionweaponaction = "舞蹈"
	end
	if idweapon == 76451 and skid == 3916 and at == 11 then
		fashionweaponaction = "舞蹈"
	end
	if idweapon == 76452 and skid == 4009 and at == 11 then
		fashionweaponaction = "舞蹈"
	end
	if idweapon == 76550 and skid == 4011 and at == 11 then
		fashionweaponaction = "舞蹈"
	end
	if idweapon == 80030 and skid == 4012 and at == 11 then
		ecmcombinename = "舞蹈_玉佩虎"
	end
	if idweapon == 81214 and skid == 4013 and at == 11 then
		fashionweaponaction = "舞蹈"
	end
	if idweapon == 81243 and skid == 4014 and at == 11 then
		ecmcombinename = "舞蹈_玉佩龙"
	end
	if idweapon == 81944 and skid == 4015 and at == 11 then
		ecmcombinename = "舞蹈_书箱"
	end
	if idweapon == 81945 and skid == 4016 and at == 11 then
		ecmcombinename = "舞蹈_花篮"
	end
	if idweapon == 83400 and skid == 4971 and at == 11 then
		ecmcombinename = "舞蹈_霸海"
	end
	if idweapon == 83401 and skid == 4972 and at == 11 then
		ecmcombinename = "舞蹈_偃月"
	end
	if idweapon == 83402 and skid == 4973 and at == 11 then
		ecmcombinename = "舞蹈_落日"
	end
	if idweapon == 83403 and skid == 4974 and at == 11 then
		ecmcombinename = "舞蹈_麒麟"
	end
	if idweapon == 83404 and skid == 4975 and at == 11 then
		ecmcombinename = "舞蹈_倾城"
	end
	if idweapon == 83405 and skid == 4976 and at == 11 then
		ecmcombinename = "舞蹈_百炼"
	end
	if idweapon == 83406 and skid == 4977 and at == 11 then
		ecmcombinename = "舞蹈_洛神"
	end
	if idweapon == 83407 and skid == 4978 and at == 11 then
		ecmcombinename = "舞蹈_湛卢"
	end
	if idweapon == 83408 and skid == 4979 and at == 11 then
		ecmcombinename = "舞蹈_卧龙"
	end
	if idweapon == 83409 and skid == 4980 and at == 11 then
		ecmcombinename = "舞蹈_方天"
	end
	if idweapon == 83975 and skid == 5004 and at == 11 then
		ecmcombinename = "舞蹈_伏魔"
	end	
	if idweapon == 84144 and skid == 5019 and at == 11 then
		ecmcombinename = "舞蹈_貂蝉"
	end	
	if idweapon == 86330 and skid == 5262 and at == 11 then
		ecmcombinename = "舞蹈_典韦"
	end	
	if idweapon == 86331 and skid == 5263 and at == 11 then
		ecmcombinename = "舞蹈_张春华"
	end	
	if idweapon == 86332 and skid == 5264 and at == 11 then
		ecmcombinename = "舞蹈_演武动作_刀"
	end	
	if idweapon == 86333 and skid == 5265 and at == 11 then
		ecmcombinename = "舞蹈_黄金甲"
	end	
	if idweapon == 86334 and skid == 5266 and at == 11 then
		ecmcombinename = "舞蹈_演武动作_舞"
	end	
	if idweapon == 86335 and skid == 5267 and at == 11 then
		ecmcombinename = "舞蹈_金丝鞭"
	end	
	if idweapon == 86336 and skid == 5268 and at == 11 then
		ecmcombinename = "舞蹈_烈焰鞭"
	end	
	if idweapon == 88671 and skid == 5387 and at == 11 then
		ecmcombinename = "舞蹈_张飞"
	end	
	if idweapon == 88672 and skid == 5388 and at == 11 then
		ecmcombinename = "舞蹈_马超"
	end	
	if idweapon == 88673 and skid == 5389 and at == 11 then
		ecmcombinename = "舞蹈_赵云"
	end	
	if idweapon == 89219 and skid == 5435 and at == 11 then
		ecmcombinename = "舞蹈_曹操"
	end	
	if idweapon == 89221 and skid == 5436 and at == 11 then
		ecmcombinename = "舞蹈_刘备"
	end	
	if idweapon == 89222 and skid == 5437 and at == 11 then
		ecmcombinename = "舞蹈_孙权"
	end	
	if idweapon == 97760 and skid == 5436 and at == 11 then
		ecmcombinename = "舞蹈_刘备"
	end
	if idweapon == 97761 and skid == 5436 and at == 11 then
		ecmcombinename = "舞蹈_刘备"
	end
--返回坐骑动作名
	ecm_pet_name = ecmcombinename
--j坐骑动作特例，解决疾奔袭上半身播刺击，下半身不播马跑步动作。
	if at == 11 and skid == 5817 then
		ecm_pet_name = "加速跑_骑乘_长轻"
	end
	
--坐骑动作特例

--鞭动作特例
--将坐骑对应的骑战技能动作后辍改为单短
-----------------------------------
	if wt == 20 and at == 11 and str == 1 then
		local rideattack_id = {1273,1280,1283,1289,1293,1294,1296}
		for num = 1, table.getn(rideattack_id) do
			if skid == rideattack_id[num] then
				suffixword = "单短"
				ecm_pet_name = string.format("%s%s%s%s" , prefixword , "_" , extraword , suffixword)
				break
			end
		end
	end
-----------------------------------
--弩将坐骑对应的骑战技能动作后辍改为单短	
	if std == 0 then	
		if wt == 21 and str == 1 then
			suffixword = "单短"
			ecm_pet_name = string.format("%s%s%s%s" , prefixword , "_" , extraword , suffixword)
		end
	end	
	return ecmcombinename , adjustspeed , 0 , forceup , forcedown,fashionweaponaction,hookleft,hookright,ecm_pet_name
end



--[[测试：从键盘输入参数计算并显示
local  actiontype , weapontype , st_combat , st_ride , st_double , st_state , st_stateb , skill_id , skill_part , collectid

print("输入动作类型(1,2,3,...,100)：")
actiontype=io.read("*number")

print("输入武器类型(1,2,3,...,19)：")
weapontype=io.read("*number")

print("输入战斗状态(1.非战斗状态,2.战斗状态)：")
st_combat=io.read("*number")

print("输入骑乘状态(0.无,1.骑乘)：")
st_ride=io.read("*number")

print("输入绑定状态(0.无,1.主动绑定,2.被动绑定)：")
st_double=io.read("*number")

print("输入特殊状态(0.无,1.站定,2.待定)：")
st_state=io.read("*number")

print("输入特殊状态b(0.无,1.61,2.62)：")
st_stateb=io.read("*number")

if actiontype == 11	then
	print("输入技能号(2.刀重击,3.刀轻击,4.……)：")
	skill_id=io.read("*number")
	print("输入技能段数(0.第一段,1.第二段,2.……)：")
	skill_part=io.read("*number")
end

if actiontype == 13	then
	print("输入矿物号(0.矿铲,1.药锄,2.……)：")
	collectid=io.read("*number")
end

local rsta , rstb , rstc , rstd , rste = lua_act:GetECMName(actiontype , weapontype , st_combat , st_ride , st_double , st_state , st_stateb , skill_id , skill_part , collectid)

local actstr = string.format("%s%s%s%s%s%s%s%s%s%s" , "-------试验结果------" , "\n　　动作名称：\t" , rsta , "\n　　播放速度：\t" , rstb , "\n上身强行覆盖：\t" , rstd , "\n下身强行覆盖：\t" , rste , "\n")

print(actstr)
]]--