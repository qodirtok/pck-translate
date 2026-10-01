--官职显示脚本

--positionclass_definition部分为官职分类定义
positionclass_definition = {}

positionclass_definition[0] = {classname = "军队"}
positionclass_definition[1] = {classname = "文官"}
positionclass_definition[2] = {classname = "武官"}

--positionlevel_definition部分为官阶等级定义
    --按照官阶从低到高的顺序，0代表军队称号，从1开始为官职，1代表九品官
    --levelname  	官阶的名称，即几品官
    --salary    	官阶对应的俸禄
positionlevel_definition = {}

positionlevel_definition[0] = {levelname = "军队", salary = "无"}
positionlevel_definition[1] = {levelname = "九品", salary = "汉铢1金"}
positionlevel_definition[2] = {levelname = "八品", salary = "汉铢2金"}
positionlevel_definition[3] = {levelname = "七品", salary = "汉铢3金"}
positionlevel_definition[4] = {levelname = "六品", salary = "汉铢4金"}
positionlevel_definition[5] = {levelname = "五品", salary = "汉铢6金"}
positionlevel_definition[6] = {levelname = "从四品", salary = "汉铢8金"}
positionlevel_definition[7] = {levelname = "正四品", salary = "汉铢10金"}
positionlevel_definition[8] = {levelname = "从三品", salary = "汉铢12金"}
positionlevel_definition[9] = {levelname = "正三品", salary = "汉铢15金"}
positionlevel_definition[10] = {levelname = "候补从二品4", salary = "无"}
positionlevel_definition[11] = {levelname = "候补从二品3", salary = "无"}
positionlevel_definition[12] = {levelname = "候补从二品2", salary = "无"}
positionlevel_definition[13] = {levelname = "候补从二品1", salary = "无"}
positionlevel_definition[14] = {levelname = "从二品", salary = "无"}
positionlevel_definition[15] = {levelname = "正二品", salary = "无"}
positionlevel_definition[16] = {levelname = "从一品", salary = "无"}
positionlevel_definition[17] = {levelname = "正一品", salary = "无"}

--position_definition部分为官职描述（标*表示和称号脚本中的不一样……）
    --id		官职id		！！！必须和对应的称号id一致！！！
    --note		官职名称
    --desc		官职说明
    --desc_1	官职描述1
    --desc_2	官职描述2
    --**class	官职分类
    --**level	官职对应的官阶等级
    --**sort	官职状态（"永久军职"/"永久官职"/"当前在任"）
position_definition = {}

position_definition[4101] = {class = 0 , level = 0 , sort = "永久军职" , note = "新兵" , desc = "新兵，刚被招募入伍的小卒。" , desc_1 = "" , desc_2 = ""}
position_definition[4102] = {class = 0 , level = 0 , sort = "永久军职" , note = "兵卒" , desc = "兵卒，经过一段时间训练的老兵。" , desc_1 = "" , desc_2 = ""}
position_definition[4103] = {class = 0 , level = 0 , sort = "永久军职" , note = "兵长" , desc = "兵长，带领小队士兵作战的队长。" , desc_1 = "" , desc_2 = ""}
position_definition[5101] = {class = 2 , level = 1 , sort = "永久官职" , note = "军侯" , desc = "军候，统率一曲（五百人）的武官。" , desc_1 = "" , desc_2 = ""}
position_definition[5102] = {class = 2 , level = 2 , sort = "永久官职" , note = "校尉" , desc = "校尉，略低于将军级别的武官。" , desc_1 = "" , desc_2 = ""}
position_definition[5103] = {class = 2 , level = 3 , sort = "永久官职" , note = "都尉" , desc = "都尉，掌管一郡兵马的地方军统领。" , desc_1 = "" , desc_2 = ""}
position_definition[5104] = {class = 2 , level = 4 , sort = "永久官职" , note = "裨将" , desc = "裨将，通常由校尉积累功勋升职的将军。" , desc_1 = "" , desc_2 = ""}
position_definition[5105] = {class = 2 , level = 4 , sort = "永久官职" , note = "偏将" , desc = "偏将，通常由校尉积累功勋升职的将军。" , desc_1 = "" , desc_2 = ""}
position_definition[5106] = {class = 2 , level = 5 , sort = "永久官职" , note = "鹰扬将军" , desc = "鹰扬将军，领兵将军之一。" , desc_1 = "" , desc_2 = ""}
position_definition[5107] = {class = 2 , level = 5 , sort = "永久官职" , note = "伏波将军" , desc = "伏波将军，领兵将军之一。" , desc_1 = "" , desc_2 = ""}
position_definition[5108] = {class = 2 , level = 5 , sort = "永久官职" , note = "讨虏将军" , desc = "讨虏将军，领兵将军之一。" , desc_1 = "" , desc_2 = ""}
position_definition[5109] = {class = 2 , level = 5 , sort = "永久官职" , note = "横野将军" , desc = "横野将军，领兵将军之一。" , desc_1 = "" , desc_2 = ""}
position_definition[5110] = {class = 2 , level = 7 , sort = "永久官职" , note = "羽林中郎将" , desc = "羽林中郎将，统率羽林郎的将领。" , desc_1 = "" , desc_2 = ""}
position_definition[5111] = {class = 2 , level = 7 , sort = "永久官职" , note = "虎贲中郎将" , desc = "虎贲中郎将，统率虎贲郎的将领。" , desc_1 = "" , desc_2 = ""}
position_definition[5112] = {class = 2 , level = 7 , sort = "永久官职" , note = "五官中郎将" , desc = "五官中郎将，统率五官中郎的将领。" , desc_1 = "" , desc_2 = ""}
position_definition[5113] = {class = 2 , level = 6 , sort = "永久官职" , note = "典军中郎将" , desc = "典军中郎将，领兵中郎将之一。" , desc_1 = "" , desc_2 = ""}
position_definition[5114] = {class = 2 , level = 6 , sort = "永久官职" , note = "抚军中郎将" , desc = "抚军中郎将，领兵中郎将之一。" , desc_1 = "" , desc_2 = ""}
position_definition[5115] = {class = 2 , level = 6 , sort = "永久官职" , note = "荡寇中郎将" , desc = "荡寇中郎将，领兵中郎将之一。" , desc_1 = "" , desc_2 = ""}
position_definition[5116] = {class = 2 , level = 8 , sort = "永久官职" , note = "前将军" , desc = "前将军，仅次于九卿级别，负责京师兵卫和边防屯警。" , desc_1 = "" , desc_2 = ""}
position_definition[5117] = {class = 2 , level = 8 , sort = "永久官职" , note = "后将军" , desc = "后将军，仅次于九卿级别，负责京师兵卫和边防屯警。" , desc_1 = "" , desc_2 = ""}
position_definition[5118] = {class = 2 , level = 8 , sort = "永久官职" , note = "左将军" , desc = "左将军，仅次于九卿级别，负责京师兵卫和边防屯警。" , desc_1 = "" , desc_2 = ""}
position_definition[5119] = {class = 2 , level = 8 , sort = "永久官职" , note = "右将军" , desc = "右将军，仅次于九卿级别，负责京师兵卫和边防屯警。" , desc_1 = "" , desc_2 = ""}
position_definition[5120] = {class = 2 , level = 9 , sort = "永久官职" , note = "平东将军" , desc = "平东将军，四平将军之一，主掌征伐。" , desc_1 = "" , desc_2 = ""}
position_definition[5121] = {class = 2 , level = 9 , sort = "永久官职" , note = "平南将军" , desc = "平南将军，四平将军之一，主掌征伐。" , desc_1 = "" , desc_2 = ""}
position_definition[5122] = {class = 2 , level = 9 , sort = "永久官职" , note = "平西将军" , desc = "平西将军，四平将军之一，主掌征伐。" , desc_1 = "" , desc_2 = ""}
position_definition[5123] = {class = 2 , level = 9 , sort = "永久官职" , note = "平北将军" , desc = "平北将军，四平将军之一，主掌征伐。" , desc_1 = "" , desc_2 = ""}
position_definition[5124] = {class = 2 , level = 10 , sort = "当前在任" , note = "征北将军" , desc = "征北将军，统领幽、冀、并三州军事，屯驻蓟。" , desc_1 = "" , desc_2 = ""}
position_definition[5125] = {class = 2 , level = 10 , sort = "当前在任" , note = "征西将军" , desc = "征西将军，统领雍、凉二州军事，屯驻长安。" , desc_1 = "" , desc_2 = ""}
position_definition[5126] = {class = 2 , level = 10 , sort = "当前在任" , note = "征南将军" , desc = "征南将军，统领荆、豫二州军事，屯驻新野。" , desc_1 = "" , desc_2 = ""}
position_definition[5127] = {class = 2 , level = 10 , sort = "当前在任" , note = "征东将军" , desc = "征东将军，统领青、兖、徐、扬四州军事，屯驻扬州。" , desc_1 = "" , desc_2 = ""}
position_definition[5128] = {class = 2 , level = 10 , sort = "当前在任" , note = "抚军大将军" , desc = "抚军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5129] = {class = 2 , level = 10 , sort = "当前在任" , note = "镇军大将军" , desc = "镇军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5130] = {class = 2 , level = 10 , sort = "当前在任" , note = "右车骑将军" , desc = "右车骑将军，蜀置，仅次于车骑将军的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5131] = {class = 2 , level = 10 , sort = "当前在任" , note = "右骠骑将军" , desc = "右骠骑将军，蜀置，仅次于骠骑将军的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5132] = {class = 2 , level = 10 , sort = "当前在任" , note = "右大将军" , desc = "右大将军，蜀置，仅次于大将军的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5133] = {class = 2 , level = 10 , sort = "当前在任" , note = "征北将军" , desc = "征北将军，统领幽、冀、并三州军事，屯驻蓟。" , desc_1 = "" , desc_2 = ""}
position_definition[5134] = {class = 2 , level = 10 , sort = "当前在任" , note = "征西将军" , desc = "征西将军，统领雍、凉二州军事，屯驻长安。" , desc_1 = "" , desc_2 = ""}
position_definition[5135] = {class = 2 , level = 10 , sort = "当前在任" , note = "征南将军" , desc = "征南将军，统领荆、豫二州军事，屯驻新野。" , desc_1 = "" , desc_2 = ""}
position_definition[5136] = {class = 2 , level = 10 , sort = "当前在任" , note = "征东将军" , desc = "征东将军，统领青、兖、徐、扬四州军事，屯驻扬州。" , desc_1 = "" , desc_2 = ""}
position_definition[5137] = {class = 2 , level = 10 , sort = "当前在任" , note = "抚军大将军" , desc = "抚军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5138] = {class = 2 , level = 10 , sort = "当前在任" , note = "镇军大将军" , desc = "镇军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5139] = {class = 2 , level = 10 , sort = "当前在任" , note = "辅国大将军" , desc = "辅国大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5140] = {class = 2 , level = 10 , sort = "当前在任" , note = "右都护" , desc = "右都护，吴置，统领全国半数的军队。" , desc_1 = "" , desc_2 = ""}
position_definition[5141] = {class = 2 , level = 10 , sort = "当前在任" , note = "左都护" , desc = "左都护，吴置，统领全国半数的军队。" , desc_1 = "" , desc_2 = ""}
position_definition[5142] = {class = 2 , level = 10 , sort = "当前在任" , note = "征北将军" , desc = "征北将军，统领幽、冀、并三州军事，屯驻蓟。" , desc_1 = "" , desc_2 = ""}
position_definition[5143] = {class = 2 , level = 10 , sort = "当前在任" , note = "征西将军" , desc = "征西将军，统领雍、凉二州军事，屯驻长安。" , desc_1 = "" , desc_2 = ""}
position_definition[5144] = {class = 2 , level = 10 , sort = "当前在任" , note = "征南将军" , desc = "征南将军，统领荆、豫二州军事，屯驻新野。" , desc_1 = "" , desc_2 = ""}
position_definition[5145] = {class = 2 , level = 10 , sort = "当前在任" , note = "征东将军" , desc = "征东将军，统领青、兖、徐、扬四州军事，屯驻扬州。" , desc_1 = "" , desc_2 = ""}
position_definition[5146] = {class = 2 , level = 10 , sort = "当前在任" , note = "抚军大将军" , desc = "抚军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5147] = {class = 2 , level = 10 , sort = "当前在任" , note = "镇军大将军" , desc = "镇军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5148] = {class = 2 , level = 10 , sort = "当前在任" , note = "辅国大将军" , desc = "辅国大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5149] = {class = 2 , level = 10 , sort = "当前在任" , note = "中军大将军" , desc = "中军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5150] = {class = 2 , level = 10 , sort = "当前在任" , note = "上军大将军" , desc = "上军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5151] = {class = 2 , level = 11 , sort = "当前在任" , note = "卫将军" , desc = "卫将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5152] = {class = 2 , level = 11 , sort = "当前在任" , note = "车骑将军" , desc = "车骑将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5153] = {class = 2 , level = 11 , sort = "当前在任" , note = "骠骑将军" , desc = "骠骑将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5154] = {class = 2 , level = 11 , sort = "当前在任" , note = "卫将军" , desc = "卫将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5155] = {class = 2 , level = 11 , sort = "当前在任" , note = "车骑将军" , desc = "车骑将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5156] = {class = 2 , level = 11 , sort = "当前在任" , note = "骠骑将军" , desc = "骠骑将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5157] = {class = 2 , level = 11 , sort = "当前在任" , note = "卫将军" , desc = "卫将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5158] = {class = 2 , level = 11 , sort = "当前在任" , note = "车骑将军" , desc = "车骑将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5159] = {class = 2 , level = 11 , sort = "当前在任" , note = "骠骑将军" , desc = "骠骑将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
position_definition[5160] = {class = 2 , level = 12 , sort = "当前在任" , note = "大将军" , desc = "大将军，蜀汉最高军事统帅，统领全国武将。" , desc_1 = "" , desc_2 = ""}
position_definition[5161] = {class = 2 , level = 12 , sort = "当前在任" , note = "大都督" , desc = "大都督，东吴最高军事统帅，统领全国武将。" , desc_1 = "" , desc_2 = ""}
position_definition[5162] = {class = 2 , level = 12 , sort = "当前在任" , note = "大将军" , desc = "大将军，曹魏最高军事统帅，统领全国武将。" , desc_1 = "" , desc_2 = ""}
position_definition[5201] = {class = 1 , level = 1 , sort = "永久官职" , note = "书佐" , desc = "书佐，负责文字事务的佐吏。" , desc_1 = "" , desc_2 = ""}
position_definition[5202] = {class = 1 , level = 2 , sort = "永久官职" , note = "功曹" , desc = "功曹，高级官员的属吏，掌管考查功绩。" , desc_1 = "" , desc_2 = ""}
position_definition[5203] = {class = 1 , level = 3 , sort = "永久官职" , note = "主簿" , desc = "主簿，高级官员的属吏，掌管文书簿笈。" , desc_1 = "" , desc_2 = ""}
position_definition[5204] = {class = 1 , level = 4 , sort = "永久官职" , note = "别驾" , desc = "别驾，刺史的高级佐吏，出巡时和刺史各乘一车。" , desc_1 = "" , desc_2 = ""}
position_definition[5205] = {class = 1 , level = 4 , sort = "永久官职" , note = "长史" , desc = "长史，为军府中的幕僚之长。" , desc_1 = "" , desc_2 = ""}
position_definition[5206] = {class = 1 , level = 5 , sort = "永久官职" , note = "太乐令" , desc = "太乐令，太常的属官，主掌宫廷音乐。" , desc_1 = "" , desc_2 = ""}
position_definition[5207] = {class = 1 , level = 5 , sort = "永久官职" , note = "太史令" , desc = "太史令，太常的属官，主掌天文星历。" , desc_1 = "" , desc_2 = ""}
position_definition[5208] = {class = 1 , level = 5 , sort = "永久官职" , note = "太医令" , desc = "太医令，少府的属官，主掌宫廷医事。" , desc_1 = "" , desc_2 = ""}
position_definition[5209] = {class = 1 , level = 5 , sort = "永久官职" , note = "太仓令" , desc = "太仓令，大司农的属官，主掌郡国仓储。" , desc_1 = "" , desc_2 = ""}
position_definition[5210] = {class = 1 , level = 7 , sort = "永久官职" , note = "太中大夫" , desc = "太中大夫，职掌言议，顾问应对。" , desc_1 = "" , desc_2 = ""}
position_definition[5211] = {class = 1 , level = 7 , sort = "永久官职" , note = "尚书仆射" , desc = "尚书仆射，尚书台的副首长。" , desc_1 = "" , desc_2 = ""}
position_definition[5212] = {class = 1 , level = 7 , sort = "永久官职" , note = "中散大夫" , desc = "中散大夫，职掌言议，顾问应对。" , desc_1 = "" , desc_2 = ""}
position_definition[5213] = {class = 1 , level = 6 , sort = "永久官职" , note = "谏议大夫" , desc = "谏议大夫，职掌言议，顾问应对。" , desc_1 = "" , desc_2 = ""}
position_definition[5214] = {class = 1 , level = 6 , sort = "永久官职" , note = "太子洗马" , desc = "太子洗马，太子属官，太子出行为前导。" , desc_1 = "" , desc_2 = ""}
position_definition[5215] = {class = 1 , level = 6 , sort = "永久官职" , note = "散骑常侍" , desc = "散骑常侍，规谏过失，以备顾问。" , desc_1 = "" , desc_2 = ""}
position_definition[5216] = {class = 1 , level = 8 , sort = "永久官职" , note = "尚书令" , desc = "尚书令，直接对皇帝负责，掌管政令。" , desc_1 = "" , desc_2 = ""}
position_definition[5217] = {class = 1 , level = 8 , sort = "永久官职" , note = "中书令" , desc = "中书令，秘书令改名而来，掌握机要。" , desc_1 = "" , desc_2 = ""}
position_definition[5218] = {class = 1 , level = 9 , sort = "永久官职" , note = "太子太傅" , desc = "太子太傅，教导辅佐太子的师傅。" , desc_1 = "" , desc_2 = ""}
position_definition[5219] = {class = 1 , level = 8 , sort = "永久官职" , note = "太子少傅" , desc = "太子少傅，教导辅佐太子的师傅。" , desc_1 = "" , desc_2 = ""}
position_definition[5220] = {class = 1 , level = 8 , sort = "永久官职" , note = "侍中" , desc = "侍中，皇帝侧近，顾问应对，拾遗补缺。" , desc_1 = "" , desc_2 = ""}
position_definition[5221] = {class = 1 , level = 9 , sort = "永久官职" , note = "执金吾" , desc = "执金吾，主掌徼循京师。" , desc_1 = "" , desc_2 = ""}
position_definition[5222] = {class = 1 , level = 9 , sort = "永久官职" , note = "将作大匠" , desc = "将作大匠，主掌各种工程。" , desc_1 = "" , desc_2 = ""}
position_definition[5223] = {class = 1 , level = 9 , sort = "永久官职" , note = "水衡都尉" , desc = "水衡都尉，掌水军舟船器械。" , desc_1 = "" , desc_2 = ""}
position_definition[5263] = {class = 2 , level = 6 , sort = "永久官职" , note = "建威中郎将" , desc = "建威中郎将，领兵中郎将之一。" , desc_1 = "" , desc_2 = ""}
position_definition[5264] = {class = 2 , level = 7 , sort = "永久官职" , note = "武卫中郎将" , desc = "武卫中郎将，统率武卫营的将领。" , desc_1 = "" , desc_2 = ""}
position_definition[5265] = {class = 1 , level = 6 , sort = "永久官职" , note = "谒者仆射" , desc = "掌殿廷朝会礼仪，接受臣民章奏。" , desc_1 = "" , desc_2 = ""}
position_definition[5266] = {class = 1 , level = 7 , sort = "永久官职" , note = "御史中丞" , desc = "御史台长官，收纳并审查公卿奏事上报皇帝。" , desc_1 = "" , desc_2 = ""}
--position_definition[5267] = {class = 1 , level = 14 , sort = "当前在任" , note = "从二品 镇北将军" , desc = "镇北将军，位次四征将军，领兵如征北将军。" , desc_1 = "" , desc_2 = ""}
--position_definition[5268] = {class = 1 , level = 14 , sort = "当前在任" , note = "从二品 镇西将军" , desc = "镇西将军，位次四征将军，领兵如征西将军。" , desc_1 = "" , desc_2 = ""}
--position_definition[5269] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 镇南将军" , desc = "镇南将军，位次四征将军，领兵如征南将军。" , desc_1 = "" , desc_2 = ""}
--position_definition[5270] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 镇东将军" , desc = "镇东将军，位次四征将军，领兵如征东将军。" , desc_1 = "" , desc_2 = ""}
--position_definition[5271] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 征北将军" , desc = "征北将军，统领幽、冀、并三州军事，屯驻蓟。" , desc_1 = "" , desc_2 = ""}
--position_definition[5272] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 征西将军" , desc = "征西将军，统领雍、凉二州军事，屯驻长安。" , desc_1 = "" , desc_2 = ""}
--position_definition[5273] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 征南将军" , desc = "征南将军，统领荆、豫二州军事，屯驻新野。" , desc_1 = "" , desc_2 = ""}
--position_definition[5274] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 征东将军" , desc = "征东将军，统领青、兖、徐、扬四州军事，屯驻扬州。" , desc_1 = "" , desc_2 = ""}
--position_definition[5275] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 抚军大将军" , desc = "抚军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5276] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 镇军大将军" , desc = "镇军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5277] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 右车骑将军" , desc = "右车骑将军，蜀置，仅次于车骑将军的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5278] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 右骠骑将军" , desc = "右骠骑将军，蜀置，仅次于骠骑将军的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5279] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 右大将军" , desc = "右大将军，蜀置，仅次于大将军的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5280] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 镇北将军" , desc = "镇北将军，位次四征将军，领兵如征北将军。" , desc_1 = "" , desc_2 = ""}
--position_definition[5281] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 镇西将军" , desc = "镇西将军，位次四征将军，领兵如征西将军。" , desc_1 = "" , desc_2 = ""}
--position_definition[5282] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 镇南将军" , desc = "镇南将军，位次四征将军，领兵如征南将军。" , desc_1 = "" , desc_2 = ""}
--position_definition[5283] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 镇东将军" , desc = "镇东将军，位次四征将军，领兵如征东将军。" , desc_1 = "" , desc_2 = ""}
--position_definition[5284] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 征北将军" , desc = "征北将军，统领幽、冀、并三州军事，屯驻蓟。" , desc_1 = "" , desc_2 = ""}
--position_definition[5285] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 征西将军" , desc = "征西将军，统领雍、凉二州军事，屯驻长安。" , desc_1 = "" , desc_2 = ""}
--position_definition[5286] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 征南将军" , desc = "征南将军，统领荆、豫二州军事，屯驻新野。" , desc_1 = "" , desc_2 = ""}
--position_definition[5287] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 征东将军" , desc = "征东将军，统领青、兖、徐、扬四州军事，屯驻扬州。" , desc_1 = "" , desc_2 = ""}
--position_definition[5288] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 抚军大将军" , desc = "抚军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5289] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 镇军大将军" , desc = "镇军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5290] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 辅国大将军" , desc = "辅国大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5291] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 右都护" , desc = "右都护，吴置，统领全国半数的军队。" , desc_1 = "" , desc_2 = ""}
--position_definition[5292] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 左都护" , desc = "左都护，吴置，统领全国半数的军队。" , desc_1 = "" , desc_2 = ""}
--position_definition[5293] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 镇北将军" , desc = "镇北将军，位次四征将军，领兵如征北将军。" , desc_1 = "" , desc_2 = ""}
--position_definition[5294] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 镇西将军" , desc = "镇西将军，位次四征将军，领兵如征西将军。" , desc_1 = "" , desc_2 = ""}
--position_definition[5295] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 镇南将军" , desc = "镇南将军，位次四征将军，领兵如征南将军。" , desc_1 = "" , desc_2 = ""}
--position_definition[5296] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 镇东将军" , desc = "镇东将军，位次四征将军，领兵如征东将军。" , desc_1 = "" , desc_2 = ""}
--position_definition[5297] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 征北将军" , desc = "征北将军，统领幽、冀、并三州军事，屯驻蓟。" , desc_1 = "" , desc_2 = ""}
--position_definition[5298] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 征西将军" , desc = "征西将军，统领雍、凉二州军事，屯驻长安。" , desc_1 = "" , desc_2 = ""}
--position_definition[5299] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 征南将军" , desc = "征南将军，统领荆、豫二州军事，屯驻新野。" , desc_1 = "" , desc_2 = ""}
--position_definition[5300] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 征东将军" , desc = "征东将军，统领青、兖、徐、扬四州军事，屯驻扬州。" , desc_1 = "" , desc_2 = ""}
--position_definition[5301] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 抚军大将军" , desc = "抚军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5302] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 镇军大将军" , desc = "镇军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5303] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 辅国大将军" , desc = "辅国大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5304] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 中军大将军" , desc = "中军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5305] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 上军大将军" , desc = "上军大将军，仅次于三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5306] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 卫将军" , desc = "卫将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5307] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 车骑将军" , desc = "车骑将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5308] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 骠骑将军" , desc = "骠骑将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5309] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 卫将军" , desc = "卫将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5310] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 车骑将军" , desc = "车骑将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5311] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 骠骑将军" , desc = "骠骑将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5312] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 卫将军" , desc = "卫将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5313] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 车骑将军" , desc = "车骑将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5314] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 骠骑将军" , desc = "骠骑将军，三公级别的将军号。" , desc_1 = "" , desc_2 = ""}
--position_definition[5315] = {class = 1 , level =17 , sort = "当前在任" , note = "正一品 大将军" , desc = "大将军，蜀汉最高军事统帅，统领全国武将。" , desc_1 = "" , desc_2 = ""}
--position_definition[5316] = {class = 1 , level =17 , sort = "当前在任" , note = "正一品 大都督" , desc = "大都督，东吴最高军事统帅，统领全国武将。" , desc_1 = "" , desc_2 = ""}
--position_definition[5317] = {class = 1 , level =17 , sort = "当前在任" , note = "正一品 大将军" , desc = "大将军，曹魏最高军事统帅，统领全国武将。" , desc_1 = "" , desc_2 = ""}
--position_definition[5318] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 左冯翊" , desc = "左冯翊，管辖渭河以北、泾河以东、洛河中下游地区。" , desc_1 = "" , desc_2 = ""}
--position_definition[5319] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 右扶风" , desc = "右扶风，管辖秦岭以北，咸阳以西之地。" , desc_1 = "" , desc_2 = ""}
--position_definition[5320] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 京兆尹" , desc = "京兆尹，京师的行政长官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5321] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 大长秋" , desc = "大长秋，宣达皇后旨意，管理宫中事宜。" , desc_1 = "" , desc_2 = ""}
--position_definition[5322] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 宗正" , desc = "宗正，九卿之一，掌管皇族与外戚事务。" , desc_1 = "" , desc_2 = ""}
--position_definition[5323] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 廷尉" , desc = "廷尉，九卿之一，掌管刑法狱讼。" , desc_1 = "" , desc_2 = ""}
--position_definition[5324] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 光禄勋" , desc = "光禄勋，九卿之一，掌管宿卫宫殿门户。" , desc_1 = "" , desc_2 = ""}
--position_definition[5325] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 少府" , desc = "少府，九卿之一，掌管皇室财务。" , desc_1 = "" , desc_2 = ""}
--position_definition[5326] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 太仆" , desc = "太仆，九卿之一，掌管舆马及牧畜。" , desc_1 = "" , desc_2 = ""}
--position_definition[5327] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 太常" , desc = "太常，九卿之一，掌管礼乐社稷、宗庙礼仪。" , desc_1 = "" , desc_2 = ""}
--position_definition[5328] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 卫尉" , desc = "卫尉，九卿之一，掌管皇城巡视。" , desc_1 = "" , desc_2 = ""}
--position_definition[5329] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 大鸿胪" , desc = "大鸿胪，九卿之一，掌管接待宾客。" , desc_1 = "" , desc_2 = ""}
--position_definition[5330] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 大司农" , desc = "大司农，九卿之一，掌管国家财政。" , desc_1 = "" , desc_2 = ""}
--position_definition[5331] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 左冯翊" , desc = "左冯翊，管辖渭河以北、泾河以东、洛河中下游地区。" , desc_1 = "" , desc_2 = ""}
--position_definition[5332] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 右扶风" , desc = "右扶风，管辖秦岭以北，咸阳以西之地。" , desc_1 = "" , desc_2 = ""}
--position_definition[5333] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 京兆尹" , desc = "京兆尹，京师的行政长官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5334] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 大长秋" , desc = "大长秋，宣达皇后旨意，管理宫中事宜。" , desc_1 = "" , desc_2 = ""}
--position_definition[5335] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 宗正" , desc = "宗正，九卿之一，掌管皇族与外戚事务。" , desc_1 = "" , desc_2 = ""}
--position_definition[5336] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 廷尉" , desc = "廷尉，九卿之一，掌管刑法狱讼。" , desc_1 = "" , desc_2 = ""}
--position_definition[5337] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 光禄勋" , desc = "光禄勋，九卿之一，掌管宿卫宫殿门户。" , desc_1 = "" , desc_2 = ""}
--position_definition[5338] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 少府" , desc = "少府，九卿之一，掌管皇室财务。" , desc_1 = "" , desc_2 = ""}
--position_definition[5339] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 太仆" , desc = "太仆，九卿之一，掌管舆马及牧畜。" , desc_1 = "" , desc_2 = ""}
--position_definition[5340] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 太常" , desc = "太常，九卿之一，掌管礼乐社稷、宗庙礼仪。" , desc_1 = "" , desc_2 = ""}
--position_definition[5341] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 卫尉" , desc = "卫尉，九卿之一，掌管皇城巡视。" , desc_1 = "" , desc_2 = ""}
--position_definition[5342] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 大鸿胪" , desc = "大鸿胪，九卿之一，掌管接待宾客。" , desc_1 = "" , desc_2 = ""}
--position_definition[5343] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 大司农" , desc = "大司农，九卿之一，掌管国家财政。" , desc_1 = "" , desc_2 = ""}
--position_definition[5344] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 左冯翊" , desc = "左冯翊，管辖渭河以北、泾河以东、洛河中下游地区。" , desc_1 = "" , desc_2 = ""}
--position_definition[5345] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 右扶风" , desc = "右扶风，管辖秦岭以北，咸阳以西之地。" , desc_1 = "" , desc_2 = ""}
--position_definition[5346] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 京兆尹" , desc = "京兆尹，京师的行政长官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5347] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 大长秋" , desc = "大长秋，宣达皇后旨意，管理宫中事宜。" , desc_1 = "" , desc_2 = ""}
--position_definition[5348] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 宗正" , desc = "宗正，九卿之一，掌管皇族与外戚事务。" , desc_1 = "" , desc_2 = ""}
--position_definition[5349] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 廷尉" , desc = "廷尉，九卿之一，掌管刑法狱讼。" , desc_1 = "" , desc_2 = ""}
--position_definition[5350] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 光禄勋" , desc = "光禄勋，九卿之一，掌管宿卫宫殿门户。" , desc_1 = "" , desc_2 = ""}
--position_definition[5351] = {class = 1 , level =14 , sort = "当前在任" , note = "从二品 少府" , desc = "少府，九卿之一，掌管皇室财务。" , desc_1 = "" , desc_2 = ""}
--position_definition[5352] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 太仆" , desc = "太仆，九卿之一，掌管舆马及牧畜。" , desc_1 = "" , desc_2 = ""}
--position_definition[5353] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 太常" , desc = "太常，九卿之一，掌管礼乐社稷、宗庙礼仪。" , desc_1 = "" , desc_2 = ""}
--position_definition[5354] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 卫尉" , desc = "卫尉，九卿之一，掌管皇城巡视。" , desc_1 = "" , desc_2 = ""}
--position_definition[5355] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 大鸿胪" , desc = "大鸿胪，九卿之一，掌管接待宾客。" , desc_1 = "" , desc_2 = ""}
--position_definition[5356] = {class = 1 , level =15 , sort = "当前在任" , note = "正二品 大司农" , desc = "大司农，九卿之一，掌管国家财政。" , desc_1 = "" , desc_2 = ""}
--position_definition[5357] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 司空" , desc = "司空，三公之一，掌管全国行政。" , desc_1 = "" , desc_2 = ""}
--position_definition[5358] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 司徒" , desc = "司徒，三公之一，掌管全国刑法。" , desc_1 = "" , desc_2 = ""}
--position_definition[5359] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 太尉" , desc = "太尉，三公之一，掌管全国军政。" , desc_1 = "" , desc_2 = ""}
--position_definition[5360] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 司空" , desc = "司空，三公之一，掌管全国行政。" , desc_1 = "" , desc_2 = ""}
--position_definition[5361] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 司徒" , desc = "司徒，三公之一，掌管全国刑法。" , desc_1 = "" , desc_2 = ""}
--position_definition[5362] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 太尉" , desc = "太尉，三公之一，掌管全国军政。" , desc_1 = "" , desc_2 = ""}
--position_definition[5363] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 司空" , desc = "司空，三公之一，掌管全国行政。" , desc_1 = "" , desc_2 = ""}
--position_definition[5364] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 司徒" , desc = "司徒，三公之一，掌管全国刑法。" , desc_1 = "" , desc_2 = ""}
--position_definition[5365] = {class = 1 , level =16 , sort = "当前在任" , note = "从一品 太尉" , desc = "太尉，三公之一，掌管全国军政。" , desc_1 = "" , desc_2 = ""}
--position_definition[5366] = {class = 1 , level =17 , sort = "当前在任" , note = "正一品 大丞相" , desc = "大丞相，蜀汉最高政府首脑，统领全国文官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5367] = {class = 1 , level =17 , sort = "当前在任" , note = "正一品 大丞相" , desc = "大丞相，东吴最高政府首脑，统领全国文官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5368] = {class = 1 , level =17 , sort = "当前在任" , note = "正一品 大丞相" , desc = "大丞相，曹魏最高政府首脑，统领全国文官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5369] = {class = 1 , level =13 , sort = "当前在任" , note = "魏从二品 前监军" , desc = "将军领兵出征时，多置监军。诸州不置都督时置此官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5370] = {class = 1 , level =12 , sort = "当前在任" , note = "魏从二品 后监军" , desc = "将军领兵出征时，多置监军。诸州不置都督时置此官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5371] = {class = 1 , level =11 , sort = "当前在任" , note = "魏从二品 左监军" , desc = "将军领兵出征时，多置监军。诸州不置都督时置此官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5372] = {class = 1 , level =10 , sort = "当前在任" , note = "魏从二品 右监军" , desc = "将军领兵出征时，多置监军。诸州不置都督时置此官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5373] = {class = 1 , level =13 , sort = "当前在任" , note = "蜀从二品 前监军" , desc = "将军领兵出征时，多置监军。诸州不置都督时置此官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5374] = {class = 1 , level =12 , sort = "当前在任" , note = "蜀从二品 后监军" , desc = "将军领兵出征时，多置监军。诸州不置都督时置此官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5375] = {class = 1 , level =11 , sort = "当前在任" , note = "蜀从二品 左监军" , desc = "将军领兵出征时，多置监军。诸州不置都督时置此官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5376] = {class = 1 , level =10 , sort = "当前在任" , note = "蜀从二品 右监军" , desc = "将军领兵出征时，多置监军。诸州不置都督时置此官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5377] = {class = 1 , level =13 , sort = "当前在任" , note = "吴从二品 前监军" , desc = "将军领兵出征时，多置监军。诸州不置都督时置此官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5378] = {class = 1 , level =12 , sort = "当前在任" , note = "吴从二品 后监军" , desc = "将军领兵出征时，多置监军。诸州不置都督时置此官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5379] = {class = 1 , level =11 , sort = "当前在任" , note = "吴从二品 左监军" , desc = "将军领兵出征时，多置监军。诸州不置都督时置此官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5380] = {class = 1 , level =10 , sort = "当前在任" , note = "吴从二品 右监军" , desc = "将军领兵出征时，多置监军。诸州不置都督时置此官。" , desc_1 = "" , desc_2 = ""}
--position_definition[5381] = {class = 1 , level =13 , sort = "当前在任" , note = "魏从二品 前领军将军" , desc = "领军中资重者之称，执掌禁兵。" , desc_1 = "" , desc_2 = ""}
--position_definition[5382] = {class = 1 , level =12 , sort = "当前在任" , note = "魏从二品 后领军将军" , desc = "领军中资重者之称，执掌禁兵。" , desc_1 = "" , desc_2 = ""}
--position_definition[5383] = {class = 1 , level =11 , sort = "当前在任" , note = "魏从二品 左领军将军" , desc = "领军中资重者之称，执掌禁兵。" , desc_1 = "" , desc_2 = ""}
--position_definition[5384] = {class = 1 , level =10 , sort = "当前在任" , note = "魏从二品 右领军将军" , desc = "领军中资重者之称，执掌禁兵。" , desc_1 = "" , desc_2 = ""}
--position_definition[5385] = {class = 1 , level =13 , sort = "当前在任" , note = "蜀从二品 前领军将军" , desc = "领军中资重者之称，执掌禁兵。" , desc_1 = "" , desc_2 = ""}
--position_definition[5386] = {class = 1 , level =12 , sort = "当前在任" , note = "蜀从二品 后领军将军" , desc = "领军中资重者之称，执掌禁兵。" , desc_1 = "" , desc_2 = ""}
--position_definition[5387] = {class = 1 , level =11 , sort = "当前在任" , note = "蜀从二品 左领军将军" , desc = "领军中资重者之称，执掌禁兵。" , desc_1 = "" , desc_2 = ""}
--position_definition[5388] = {class = 1 , level =10 , sort = "当前在任" , note = "蜀从二品 右领军将军" , desc = "领军中资重者之称，执掌禁兵。" , desc_1 = "" , desc_2 = ""}
--position_definition[5389] = {class = 1 , level =13 , sort = "当前在任" , note = "吴从二品 前领军将军" , desc = "领军中资重者之称，执掌禁兵。" , desc_1 = "" , desc_2 = ""}
--position_definition[5390] = {class = 1 , level =12 , sort = "当前在任" , note = "吴从二品 后领军将军" , desc = "领军中资重者之称，执掌禁兵。" , desc_1 = "" , desc_2 = ""}
--position_definition[5391] = {class = 1 , level =11 , sort = "当前在任" , note = "吴从二品 左领军将军" , desc = "领军中资重者之称，执掌禁兵。" , desc_1 = "" , desc_2 = ""}
--position_definition[5392] = {class = 1 , level =10 , sort = "当前在任" , note = "吴从二品 右领军将军" , desc = "领军中资重者之称，执掌禁兵。" , desc_1 = "" , desc_2 = ""}

--主函数，从程序取得官职id，接口为GetPositiondesc()
--返回客户端显示用数值，class（官职类别，1文官，2武官），level（官阶等级），linedesc（列表框单行的显示文字），salary（俸禄）, levelname（官阶名称），desc（官职说明）

Position_desc = {}
function Position_desc:GetPositiondesc(id)
	local class, level, note, sort, desc = position_definition[id].class , position_definition[id].level , position_definition[id].note , position_definition[id].sort , position_definition[id].desc
	local salary , levelname = positionlevel_definition[level].salary, positionlevel_definition[level].levelname
	local linedesc = string.format("%s%s%s%s%s" , levelname , "\t" , note , "\t" , sort)
	if class == 0 then
		level = 0
	end
--	return 1, 1, "一品\t大将军\t永久官职", 100, "三品", "说明文字111111"
	return class, level, linedesc, salary, levelname, desc
end

----测试官职输出是否正确
--local id = 0
--
--StdPrint("输入官职id：")
--repid=io.read("*number")
--
--local repclass , replevel , replinedesc , repsalary , replevelname , repdesc = Position_desc:GetPositiondesc(repid)
--local repclassname = positionclass_definition[repclass].classname
--local repstr = string.format("%s%d%s%s%s%d%s%s%s%s%s%s%s%s%s" , "官职类别：\t" , repclass , "\t" , repclassname , "\n官阶等级：\t" , replevel , "\t" , replevelname , "\n列表框文字：\t" , replinedesc , "\n俸禄：\t" , repsalary , "\n官职说明：\t" , repdesc , "\n")
--
--StdPrint(repstr)


