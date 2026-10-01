
---->>>>注意：所有的图鉴图片和图标路径中不能出现中文！<<<<
---->>>>      图鉴id必须从1开始，且中间不能有断！     <<<<

---图鉴显示脚本
---collection_definition部分为图鉴描述，包括'asdf'（字符串描述）、id、note（名称）、desc（描述）、img（图片、图标）、type（类别）、from（出处）、rank（稀有度）、effect（附加效果）、hidden（隐藏，通常开发完整都做成1，0则调用通用icon、变灰、其作全问号）

---事件：三国战役中的著名事件

---人物：三国时代的名将
---典故：三国时代流传后世的名言
---军队：三国时代的特殊兵种
---印玺：三国时代的官印
---珍宝：三国时代的著名宝物
---奇遇：非三国时代的内容

---风景：三国时代的风景

---八阵图：

collection_definition = {}

collection_definition['事件－范例'] = {id = 1 , note = "事件－范例" , desc = "事件内容" , icon = "" , img = "" , type = "事件" , from = "出自 测试专用" , rank = 1 , effect = "" , hidden = 1}
collection_definition['人物－范例'] = {id = 2 , note = "人物－范例" , desc = "人物列传" , icon = "" , img = "" , type = "人物" , from = "出自 测试专用" , rank = 1 , effect = "" , hidden = 1}
collection_definition['典故－范例'] = {id = 3 , note = "典故－范例" , desc = "典故内容" , icon = "" , img = "" , type = "典故" , from = "出自 测试专用" , rank = 1 , effect = "" , hidden = 1}
collection_definition['军队－范例'] = {id = 4 , note = "军队－范例" , desc = "军队事迹" , icon = "" , img = "" , type = "军队" , from = "出自 测试专用" , rank = 1 , effect = "" , hidden = 1}
collection_definition['印玺－范例'] = {id = 5 , note = "印玺－范例" , desc = "官职说明" , icon = "" , img = "" , type = "印玺" , from = "出自 测试专用" , rank = 1 , effect = "" , hidden = 1}
collection_definition['珍宝－范例'] = {id = 6 , note = "珍宝－范例" , desc = "珍宝属性" , icon = "" , img = "" , type = "珍宝" , from = "出自 测试专用" , rank = 1 , effect = "" , hidden = 1}
collection_definition['奇遇－范例'] = {id = 7 , note = "奇遇－范例" , desc = "架空故事" , icon = "" , img = "" , type = "奇遇" , from = "出自 测试专用" , rank = 1 , effect = "" , hidden = 1}
collection_definition['事件－濮阳之战'] = {id = 8 , note = "濮阳之战" , desc = "兴平元年，趁曹操率主力攻打徐州之际，吕布军对曹操后方发起攻击，曹军留守兵马奋力迎战，两军在濮阳一带争夺大小据点，互有胜负。闻知后方失陷，曹操听从郭嘉等谋士分析，从徐州撤回主力，吕布率军退往下邳。战神吕布对奸雄曹操，陷阵营对虎豹骑，濮阳之战迎来龙虎相争的最高潮。" , icon = "CB\\HandBook\\ICON\\zhanchang.dds" , img = "CB\\HandBook\\IMG\\puyangzhizhan.dds" , type = "事件" , from = "出自 征战－濮阳之战II。搜集到濮阳之战II中出现的所有图鉴，自动获得。" , rank = 9 , effect = "" , hidden = 1}
collection_definition['事件－奇袭兖州'] = {id = 9 , note = "奇袭兖州" , desc = "濮阳之战中，吕布麾下的精兵“陷阵营”奇袭兖州，使得曹操的根据地陷入巨大危机。" , icon = "CB\\HandBook\\ICON\\chengshi.dds" , img = "CB\\HandBook\\IMG\\qixiyanzhou.dds" , type = "事件" , from = "出自 征战－濮阳之战II。" , rank = 4 , effect = "" , hidden = 1}
collection_definition['事件－水淹下邳'] = {id = 10 , note = "水淹下邳" , desc = "下邳之战中，曹操使用军师郭嘉之策，水淹吕布根据地下邳，使得吕军士气大为低落。" , icon = "CB\\HandBook\\ICON\\digong.dds" , img = "CB\\HandBook\\IMG\\shuiyanxiapi.dds" , type = "事件" , from = "出自 征战－濮阳之战II。" , rank = 5 , effect = "" , hidden = 1}
collection_definition['人物－曹操'] = {id = 11 , note = "曹操" , desc = "（155年－220年），字孟德，一名吉利，小字阿瞒，沛国谯（今安徽省毫州市）人。中国东汉末年著名的军事家、政治家及诗人，三国时代魏国的奠基人和主要缔造者，死后被追尊为武帝。" , icon = "CB\\HandBook\\ICON\\caocao.dds" , img = "CB\\HandBook\\IMG\\caocao.DDS" , type = "人物" , from = "出自 征战－濮阳之战II。获得曹操军所有武将的图鉴后，可获得。" , rank = 9 , effect = "" , hidden = 1}
collection_definition['人物－郭嘉'] = {id = 12 , note = "郭嘉" , desc = "（170年－207年），字奉孝，颍川阳翟人（今河南禹州市），本属于东汉末年群雄袁绍麾下，后成为曹操麾下重要谋士，任司空军祭酒，封洧阳亭侯，死后谥为贞侯。" , icon = "CB\\HandBook\\ICON\\qingniannanwenguan.dds" , img = "CB\\HandBook\\IMG\\qingniannanwenguan.dds" , type = "人物" , from = "出自 征战－濮阳之战II。10次在濮阳之战II对攻战场协助曹操军，可获得。" , rank = 8 , effect = "" , hidden = 1}
collection_definition['人物－程昱'] = {id = 13 , note = "程昱" , desc = "（141年－220年），字仲德，原名程立，三国时期兖州东郡东阿（今山东聊城市东阿县）人。曹操麾下最优秀谋臣之一。" , icon = "CB\\HandBook\\ICON\\zhongniannanwenguan.dds" , img = "CB\\HandBook\\IMG\\zhongniannanwenguan.dds" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 7 , effect = "" , hidden = 1}
collection_definition['人物－荀攸'] = {id = 14 , note = "荀攸" , desc = "（157年－214年），字公达，豫州颍川（今河南许昌）人，曹操的重要谋士之一。魏国建立后被封为尚书令。" , icon = "CB\\HandBook\\ICON\\zhanganyizhanlaoban.dds" , img = "CB\\HandBook\\IMG\\zhanganyizhanlaoban.DDS" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 6 , effect = "" , hidden = 1}
collection_definition['人物－乐进'] = {id = 15 , note = "乐进" , desc = "（???年－218年），字文谦，阳平卫国（中国山东省莘县）人，容貌短小，作战勇猛，东汉时期曹操重要将领。" , icon = "CB\\HandBook\\ICON\\zhanganweibing.dds" , img = "CB\\HandBook\\IMG\\zhanganweibing.DDS" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 6 , effect = "" , hidden = 1}
collection_definition['人物－曹洪'] = {id = 16 , note = "曹洪" , desc = "（???年－232年），字子廉，三国时期曹魏重要将领，曹操家族军其中一员。历任扬武中郎将、谏议大夫、卫将军等，官至骠骑将军，封都阳侯，死后谥为恭侯。" , icon = "CB\\HandBook\\ICON\\zhanganweibingduizhang.dds" , img = "CB\\HandBook\\IMG\\zhanganweibingduizhang.DDS" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 6 , effect = "" , hidden = 1}
collection_definition['人物－许褚'] = {id = 17 , note = "许褚" , desc = "生卒年不详，字仲康，沛国谯（今中国安徽省亳县）人，是中国东汉末年三国时期曹魏的猛将，主要负责曹操本人的警卫，外号“虎痴”。" , icon = "CB\\HandBook\\ICON\\xuchu.dds" , img = "CB\\HandBook\\IMG\\xuchu.dds" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 6 , effect = "" , hidden = 1}
collection_definition['人物－李典'] = {id = 18 , note = "李典" , desc = "（180年-215年）字曼成，山阳巨野人，从父为李干，子为李祯。为将颇有儒风，好学问，博览群书，不与诸将争功，敬贤士大夫，军中称其为长者。" , icon = "CB\\HandBook\\ICON\\bashuweibingduizhang.dds" , img = "CB\\HandBook\\IMG\\bashuweibingduizhang.DDS" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 8 , effect = "" , hidden = 1}
collection_definition['人物－夏侯敦'] = {id = 19 , note = "夏侯敦" , desc = "（???年－220年），字元让，沛国谯（今安徽亳县）人，三国时期曹魏重要将领，历任折冲校尉、济阴太守、建武将军等，官至大将军，封高安乡侯，死后谥为忠侯。" , icon = "CB\\HandBook\\ICON\\xiahoudun.dds" , img = "CB\\HandBook\\IMG\\xiahoudunyongbing.DDS" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 8 , effect = "" , hidden = 1}
collection_definition['人物－于禁'] = {id = 20 , note = "于禁" , desc = "（???年－221年），字文则，泰山巨平（今中国山东省泰安）人，东汉末年、三国时代曹魏的武将。为人勇猛、清廉，但并不高傲的武将，不过，对待部下有严厉的一面。" , icon = "CB\\HandBook\\ICON\\baierbingdaobing.dds" , img = "CB\\HandBook\\IMG\\baierbingdaobing.dds" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 6 , effect = "" , hidden = 1}
collection_definition['人物－典韦'] = {id = 21 , note = "典韦" , desc = "（???年－197年），陈留己吾（今河南宁陵西）人，东汉末年群雄曹操的重要将领。三国志评曰：“许褚、典韦折冲左右，抑亦汉之樊哙也。”" , icon = "CB\\HandBook\\ICON\\dianwei.dds" , img = "CB\\HandBook\\IMG\\dianwei.dds" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 8 , effect = "" , hidden = 1}
collection_definition['人物－吕布'] = {id = 22 , note = "吕布" , desc = "（???年－198年），字奉先，五原郡九原（今内蒙古包头范围）人，东汉末年的著名武将与割据军阀，有“飞将”之名。在民间有“人中吕布，马中赤兔”一说。" , icon = "CB\\HandBook\\ICON\\lvbu.dds" , img = "CB\\HandBook\\IMG\\lvbu.DDS" , type = "人物" , from = "出自 征战－濮阳之战II。获得吕布军所有武将的图鉴后，可获得。" , rank = 9 , effect = "" , hidden = 1}
collection_definition['人物－貂禅'] = {id = 23 , note = "貂蝉" , desc = "中国四大美人之一，被司徒王允收作养女，能歌善舞，美貌无双。实际上是虚构人物，原先出现在说书话本中，最后由罗贯中在《三国演义》中整理创作出一个完整的形象。" , icon = "CB\\HandBook\\ICON\\diaochan.dds" , img = "CB\\HandBook\\IMG\\diaochan.DDS" , type = "人物" , from = "出自 征战－濮阳之战II。10次在濮阳之战II对攻战场协助吕布军，可获得。" , rank = 7 , effect = "" , hidden = 1}
collection_definition['人物－陈宫'] = {id = 24 , note = "陈宫" , desc = "（???年－198年），字公台，中国东汉末年东郡武阳人，被誉为拥有“王佐之才”的名军师。为人性情刚直，深具谋略；遍与当时知名人士为友。但被批评择主眼光不佳，因吕布一再拒绝采用他的计谋，导致最后败于曹操之手。" , icon = "CB\\HandBook\\ICON\\jingzhouzhenzhang.dds" , img = "CB\\HandBook\\IMG\\jingzhouzhenzhang.dds" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 7 , effect = "" , hidden = 1}
collection_definition['人物－华佗'] = {id = 25 , note = "华佗" , desc = "（145年－208年），字元化，沛国谯县（今安徽亳州市）人，东汉末年著名的医师。与董奉、张仲景史称为“建安三神医”。《后汉书·华佗传》有华佗“年且百岁，而犹有壮容，时人以为仙”的记载。" , icon = "CB\\HandBook\\ICON\\yishi.dds" , img = "CB\\HandBook\\IMG\\yishi.DDS" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 7 , effect = "" , hidden = 1}
collection_definition['人物－魏续'] = {id = 26 , note = "魏续" , desc = "（???年-200年），东汉末年武将，与吕布有亲戚关系，是吕布部将，随吕布转战各地。吕布被围于下邳，魏续和宋宪、侯成等反叛吕布，将陈宫、高顺等人擒捉，投降曹操，致使吕布失败及为曹操所杀。" , icon = "CB\\HandBook\\ICON\\xiliangweibingduizhang.dds" , img = "CB\\HandBook\\IMG\\xiliangweibingduizhang.DDS" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 5 , effect = "" , hidden = 1}
collection_definition['人物－宋宪'] = {id = 27 , note = "宋宪" , desc = "（???年-200年），东汉末年武将，早期为吕布部将，随吕布转战各地。吕布被围于下邳时，宋宪、魏续和侯成投降曹操，促使吕布最终失败被曹操所杀。" , icon = "CB\\HandBook\\ICON\\xiliangweibing.dds" , img = "CB\\HandBook\\IMG\\xiliangweibing.DDS" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 5 , effect = "" , hidden = 1}
collection_definition['人物－臧霸'] = {id = 28 , note = "臧霸" , desc = "生卒年不详，字宣高，东汉末年至三国曹魏时期武将。青徐地方势力首领。建安三年（198年），曹操发兵东征吕布，臧霸率领部支援吕布。吕布战败后投降曹操，之后负责青、徐、扬州北部等三州一带的战事，官至镇东将军。魏国建国后，官拜执金吾。" , icon = "CB\\HandBook\\ICON\\jingzhouweibingduizhang.dds" , img = "CB\\HandBook\\IMG\\jingzhouweibingduizhang.dds" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 7 , effect = "" , hidden = 1}
collection_definition['人物－侯成'] = {id = 29 , note = "侯成" , desc = "生卒年不详，东汉末期人物，吕布部将，随吕布转战各地。吕布被围于下邳时，侯成联合宋宪、魏续，偷取吕布的赤兔马和方天画戟投降曹操，导致吕布最终失败被曹操所杀。" , icon = "CB\\HandBook\\ICON\\nanmanweibingduizhang.dds" , img = "CB\\HandBook\\IMG\\nanmanweibingduizhang.dds" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 5 , effect = "" , hidden = 1}
collection_definition['人物－张辽'] = {id = 30 , note = "张辽" , desc = "（169年-222年），字文远，并州雁门郡马邑人，曾为吕布的属下转战各地。吕布战败身亡后，改投曹操军营。合肥之战中，仅凭八百士兵击退十万吴兵。东吴小儿闻其名不敢夜啼。" , icon = "CB\\HandBook\\ICON\\zhangliao.dds" , img = "CB\\HandBook\\IMG\\zhangliao.DDS" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 8 , effect = "" , hidden = 1}
collection_definition['人物－曹性'] = {id = 31 , note = "曹性" , desc = "生卒年不详，在濮阳之战中，伏兵射瞎夏侯敦，其后夏侯敦说毕“父母精血不可弃”后，将左眼吞下挺枪纵马，直取曹性。性不及提防，被一枪搠透面门，死于马下。" , icon = "CB\\HandBook\\ICON\\bashuweibing.dds" , img = "CB\\HandBook\\IMG\\bashuweibing.DDS" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 6 , effect = "" , hidden = 1}
collection_definition['人物－高顺'] = {id = 32 , note = "高顺" , desc = "（???年－198年），东汉末年群雄吕布的重要将领，所部精兵号称“陷阵营”。英雄记曰：顺为人清白有威严，不饮酒，不受馈遗。" , icon = "CB\\HandBook\\ICON\\weiyan.DDS" , img = "CB\\HandBook\\IMG\\weiyan.DDS" , type = "人物" , from = "出自 征战－濮阳之战II" , rank = 7 , effect = "" , hidden = 1}
collection_definition['军队－虎豹骑'] = {id = 33 , note = "虎豹骑" , desc = "曹操麾下最精锐的骑兵部队，在击破袁家、奔袭乌桓、追击刘备等战场上先后发挥巨大作用。" , icon = "CB\\HandBook\\ICON\\xiaoqitaobing.dds" , img = "CB\\HandBook\\IMG\\xiaoqitaobing.dds" , type = "事件" , from = "出自 征战－濮阳之战II。" , rank = 7 , effect = "" , hidden = 1}
collection_definition['军队－陷阵营'] = {id = 34 , note = "陷阵营" , desc = "高顺麾下七百部曲，号为千人，铠甲、斗具皆精练齐整，每所攻击，无不破者，名为陷阵营。" , icon = "CB\\HandBook\\ICON\\maozeiqianghuaBOSS.dds" , img = "CB\\HandBook\\IMG\\maozeiqianghuaBOSS.dds" , type = "事件" , from = "出自 征战－濮阳之战II" , rank = 7 , effect = "" , hidden = 1}
collection_definition['典故－辽来也'] = {id = 35 , note = "辽来也" , desc = "濮阳之战中，张辽为吕布军大将。作战时，大呼‘辽来也’，敌兵望风披靡。" , icon = "CB\\HandBook\\ICON\\zhangliao.dds" , img = "CB\\HandBook\\IMG\\zhangliao.DDS" , type = "事件" , from = "出自 征战－濮阳之战II" , rank = 7 , effect = "" , hidden = 1}
collection_definition['典故－父精母血，不可弃也'] = {id = 36 , note = "夏侯吞眼" , desc = "濮阳之战中，夏侯敦为吕将曹性暗箭射中，夏侯敦以手拔箭，眼珠也被带出，夏侯敦大呼：“父精母血，不可弃也 ！”遂纳于口内啖之，一枪将曹性搠于马下。" , icon = "CB\\HandBook\\ICON\\xiahoudun.dds" , img = "CB\\HandBook\\IMG\\xiahoudun.DDS" , type = "事件" , from = "出自 征战－濮阳之战II" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－国士无双'] = {id = 37 , note = "国士无双" , desc = "收集了九品到正三品为止的所有官职，获得的特殊褒赏图鉴。" , icon = "CB\\HandBook\\ICON\\yingxiong.dds" , img = "CB\\HandBook\\IMG\\touming.tga" , type = "印玺" , from = "集齐九品到正三品的所有官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['珍宝－富甲天下'] = {id = 38 , note = "富甲天下" , desc = "收集了世间所有宝物，获得的特殊褒赏图鉴。" , icon = "CB\\HandBook\\ICON\\mingshi.dds" , img = "CB\\HandBook\\IMG\\touming.tga" , type = "珍宝" , from = "集齐所有宝物获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['奇遇－壶公'] = {id = 39 , note = "壶公" , desc = "汉末著名的仙人，曾教授费长房仙术。最近出现在雪域魔王城一带。" , icon = "CB\\HandBook\\ICON\\nanhualaoxian.dds" , img = "CB\\HandBook\\IMG\\nanhualaoxian.dds" , type = "奇遇" , from = "出自 魔王城制压战" , rank = 7 , effect = "" , hidden = 1}
collection_definition['奇遇－魔神共工'] = {id = 40 , note = "魔神共工" , desc = "上古时代之魔神，又有水神之说。" , icon = "CB\\HandBook\\ICON\\qiannianhuxian.dds" , img = "CB\\HandBook\\IMG\\qiannianhuxian.dds" , type = "奇遇" , from = "出自 魔王城制压战" , rank = 8 , effect = "" , hidden = 1}
collection_definition['人物－曹植'] = {id = 41 , note = "曹植" , desc = "（192年-232年），字子建，沛国谯（现在的安徽省亳州市）人，三国时期著名诗人，有“才高八斗”之名。在杜甫之前，曹植被称作诗圣。《洛神赋》和“七步成诗”的典故流传后世。" , icon = "CB\\HandBook\\ICON\\qingniannanwenshi.dds" , img = "CB\\HandBook\\IMG\\qingniannanwenshi.dds" , type = "人物" , from = "出自 外传－曹植传" , rank = 7 , effect = "" , hidden = 1}
collection_definition['人物－陈寿'] = {id = 42 , note = "陈寿" , desc = "（233年-297年），字承祚，西晋巴西安汉（今四川南充）人。少时师事同郡学者谯周，280年，晋灭东吴之后，陈寿被晋朝司空张华举荐为著作郎，撰写了《三国志》。 " , icon = "CB\\HandBook\\ICON\\xianrenliyi.dds" , img = "CB\\HandBook\\IMG\\xianrenliyi.dds" , type = "人物" , from = "出自 图鉴指引任务" , rank = 6 , effect = "" , hidden = 1}
collection_definition['人物－法正'] = {id = 43 , note = "法正" , desc = "（176年-220年），字孝直，右扶风人，东汉末年刘备部下重要的谋士。在汉中之战中作为军师大放异彩。" , icon = "CB\\HandBook\\ICON\\pangtong.dds" , img = "CB\\HandBook\\IMG\\pangtong.dds" , type = "人物" , from = "出自 演义－暗袭定军山" , rank = 7 , effect = "" , hidden = 1}
collection_definition['事件－合肥之战'] = {id = 44 , note = "合肥之战" , desc = "公元215年，曹操出征张鲁，孙权趁曹军主力前往汉中，遂在八月率十万人北至陆口，再次出征合肥。而在合肥迎战的，是张辽、乐进、李典三将率领的区区数千兵马。豪将张文远大放光芒的合肥之战，至此揭开序幕。" , icon = "CB\\HandBook\\ICON\\junying.dds" , img = "CB\\HandBook\\IMG\\hefeizhizhan.dds" , type = "事件" , from = "出自 演义－合肥之战" , rank = 2 , effect = "" , hidden = 1}
collection_definition['事件－益州之战'] = {id = 45 , note = "益州之战" , desc = "建安十六年，刘备趁刘璋邀其入蜀共击张鲁之机，向益州进发。早有深虑的刘备在蜀中设计激怒部众，诱杀蜀将杨怀、高沛，兼并其兵，占据涪县。刘璋大怒，两军在益州展开激烈的拉据战。建安十九年，诸葛亮与张飞、赵云率军溯江入蜀，与刘备军会师，直逼成都城下。" , icon = "CB\\HandBook\\ICON\\hechuan.dds" , img = "CB\\HandBook\\IMG\\yizhouzhizhan.dds" , type = "事件" , from = "出自 演义－益州之战" , rank = 2 , effect = "" , hidden = 1}
collection_definition['事件－定军山之战'] = {id = 46 , note = "定军山之战" , desc = "建安二十四年，刘备军与曹操军在汉中之地的漫长战事已持续超过一年。正月，刘备军从阳平关前南渡汉水，在定军山前安营。曹军主帅夏侯渊也率兵在此安营，与刘备军展开了激烈的争夺战。老将黄忠对宿将夏侯渊，灼热的定军山攻防战，全面展开。" , icon = "CB\\HandBook\\ICON\\gaoshan.dds" , img = "CB\\HandBook\\IMG\\dingjunshanzhizhan.dds" , type = "事件" , from = "出自 演义－暗袭定军山" , rank = 2 , effect = "" , hidden = 1}
collection_definition['风景－三千紫雪'] = {id = 47 , note = "三千紫雪" , desc = "落英缤纷,桃花满天，绚烂的就像是紫色的飞雪。" , icon = "CB\\HandBook\\ICON\\sanqianzixue.dds" , img = "CB\\HandBook\\IMG\\sanqianzixue.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－桃源仙境'] = {id = 48 , note = "桃源仙境" , desc = "以水车、瀑布、远山组成的美景，让人遗忘世外的喧嚣。" , icon = "CB\\HandBook\\ICON\\taoyuanxianjing.dds" , img = "CB\\HandBook\\IMG\\taoyuanxianjing.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－易水渡口'] = {id = 49 , note = "易水渡口" , desc = "荡漾着小舟的易水绵绵流向天边，无休无止。" , icon = "CB\\HandBook\\ICON\\yishuidukou.dds" , img = "CB\\HandBook\\IMG\\yishuidukou.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－白山候鹰'] = {id = 50 , note = "白山候鹰" , desc = "阴霾的天空，缓缓摇摆的旌旗，是鹰将来临的前兆么？" , icon = "CB\\HandBook\\ICON\\baishanhouying.dds" , img = "CB\\HandBook\\IMG\\baishanhouying.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－葡萄清潭'] = {id = 51 , note = "葡萄清潭" , desc = "沙漠之中的葡萄架下，送来丝丝清爽凉风。" , icon = "CB\\HandBook\\ICON\\putaoqingtan.dds" , img = "CB\\HandBook\\IMG\\putaoqingtan.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－渭水河边'] = {id = 52 , note = "渭水河边" , desc = "黄沙中的一条宝石绿带，给西北干旱的大地填充了一些清爽的气息。" , icon = "CB\\HandBook\\ICON\\weishuihebian.dds" , img = "CB\\HandBook\\IMG\\weishuihebian.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－湖中亭台'] = {id = 53 , note = "湖中亭台" , desc = "相传，在大雨磅礴的天气，能在湖底看到龙的身影。" , icon = "CB\\HandBook\\ICON\\huzhongtingtai.dds" , img = "CB\\HandBook\\IMG\\huzhongtingtai.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－千尺银屏'] = {id = 54 , note = "千尺银屏" , desc = "银屏峰巨大的水流量和本身的落差形成了一个高达千尺的如同银色屏幕般的壮丽的瀑布。" , icon = "CB\\HandBook\\ICON\\qianchiyinping.dds" , img = "CB\\HandBook\\IMG\\qianchiyinping.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－剑阁栈道'] = {id = 55 , note = "剑阁栈道" , desc = "依山而建极为惊险的剑阁栈道，实乃万千民工血泪搭建而成。" , icon = "CB\\HandBook\\ICON\\jiangezhandao.dds" , img = "CB\\HandBook\\IMG\\jiangezhandao.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－绮丽黑泉'] = {id = 56 , note = "绮丽黑泉" , desc = "在虫蛇等物遍地的雨林深处，竟然有如此世外仙境的所在。" , icon = "CB\\HandBook\\ICON\\qiliheiquan.dds" , img = "CB\\HandBook\\IMG\\qiliheiquan.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－柔泉神水'] = {id = 57 , note = "柔泉神水" , desc = "传说在柔泉中沐浴可以让人肌肤永保光滑甚至返老还童。" , icon = "CB\\HandBook\\ICON\\rouquanshenshui.dds" , img = "CB\\HandBook\\IMG\\rouquanshenshui.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－泸水渡口'] = {id = 58 , note = "泸水渡口" , desc = "相比其他渡口，南蛮阴沉的天空也给泸水渡笼罩上别样的气息。" , icon = "CB\\HandBook\\ICON\\lushuidukou.dds" , img = "CB\\HandBook\\IMG\\lushuidukou.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－浣纱津渡'] = {id = 59 , note = "浣纱津渡" , desc = "点点萤火，像是绿色的精灵，点缀在没有星星的夜空。" , icon = "CB\\HandBook\\ICON\\huanshajindu.dds" , img = "CB\\HandBook\\IMG\\huanshajindu.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－淡水云边'] = {id = 60 , note = "淡水云边" , desc = "视野开阔，天水一色。似真似幻，如缀梦中。" , icon = "CB\\HandBook\\ICON\\danshuiyunbian.dds" , img = "CB\\HandBook\\IMG\\danshuiyunbian.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－九麓关'] = {id = 61 , note = "九麓关" , desc = "南方特有的建筑风格，带给九麓关宏伟之余的一些素雅感觉。" , icon = "CB\\HandBook\\ICON\\jiuluguan.dds" , img = "CB\\HandBook\\IMG\\jiuluguan.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－隆中三叠'] = {id = 62 , note = "隆中三叠" , desc = "折起来的瀑布，比起一落千尺，多了几分婉转。" , icon = "CB\\HandBook\\ICON\\longzhongsandie.dds" , img = "CB\\HandBook\\IMG\\longzhongsandie.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－镜水台'] = {id = 63 , note = "镜水台" , desc = "在镜水台上望天，天是如此的近，顿生雄心万丈。但见风云莫测，夺取江山并非轻而易举的事。" , icon = "CB\\HandBook\\ICON\\jingshuitai.dds" , img = "CB\\HandBook\\IMG\\jingshuitai.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－水镜村'] = {id = 64 , note = "水镜村" , desc = "偏远深山中、遮天巨树下、奔腾银练旁的水镜村是九州第一安家养身之所。" , icon = "CB\\HandBook\\ICON\\shuijingcun.dds" , img = "CB\\HandBook\\IMG\\shuijingcun.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－大禹庙'] = {id = 65 , note = "大禹庙" , desc = "大禹治水虽然已过千年，但它留下的丰功伟绩依然值得后人景仰。" , icon = "CB\\HandBook\\ICON\\dayumiao.dds" , img = "CB\\HandBook\\IMG\\dayumiao.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－青泥道'] = {id = 66 , note = "青泥道" , desc = "站在悬空于崇山峻岭间的木桥，关中景色一览无遗。" , icon = "CB\\HandBook\\ICON\\qingnidao.dds" , img = "CB\\HandBook\\IMG\\qingnidao.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－雪神宫'] = {id = 67 , note = "雪神宫" , desc = "站在曾经雪神宫的最高点，触目可及的仍是满天风雪。殇之雪域千年不变的，只有风雪。" , icon = "CB\\HandBook\\ICON\\xueshengong.dds" , img = "CB\\HandBook\\IMG\\xueshengong.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－往生潭'] = {id = 68 , note = "往生潭" , desc = "一潭寒冰水，沉淀千年殇。相传在往生潭水结冰之时能看见自己前世的样子。" , icon = "CB\\HandBook\\ICON\\wangshengtan.dds" , img = "CB\\HandBook\\IMG\\wangshengtan.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－渡魔桥'] = {id = 69 , note = "渡魔桥" , desc = "桥横两界，进一步为魔，退一步为人。相传万年前神魔大战之时，此乃魔族一大据点。" , icon = "CB\\HandBook\\ICON\\dumoqiao.dds" , img = "CB\\HandBook\\IMG\\dumoqiao.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－月牙小营'] = {id = 70 , note = "月牙小营" , desc = "沙漠之中一处温馨的所在，清澈的泉水，柔和的月光，宜情侣游玩。" , icon = "CB\\HandBook\\ICON\\yueyaxiaoying.dds" , img = "CB\\HandBook\\IMG\\yueyaxiaoying.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－尊日神庙'] = {id = 71 , note = "尊日神庙" , desc = "诡异的画面，黑夜中日光照耀，远方一轮明月高悬。" , icon = "CB\\HandBook\\ICON\\zunrishenmiao.dds" , img = "CB\\HandBook\\IMG\\zunrishenmiao.dds" , type = "风景" , from = "出自 江山如画任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['印玺－九品军侯'] = {id = 72 , note = "军侯" , desc = "军侯，九品武官，统率一曲（五百人）的武官。" , icon = "CB\\HandBook\\ICON\\jiupinshuzuo.dds" , img = "CB\\HandBook\\IMG\\jiupinjunhou.dds" , type = "印玺" , from = "由对应官职获得" , rank = 1 , effect = "" , hidden = 1}
collection_definition['印玺－八品校尉'] = {id = 73 , note = "校尉" , desc = "校尉，八品武官，略低于将军级别的武官。" , icon = "CB\\HandBook\\ICON\\bapingongcao.dds" , img = "CB\\HandBook\\IMG\\bapinxiaowei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 1 , effect = "" , hidden = 1}
collection_definition['印玺－七品都尉'] = {id = 74 , note = "都尉" , desc = "都尉，七品武官，掌管一郡兵马的地方军统领。" , icon = "CB\\HandBook\\ICON\\qipinzhubu.dds" , img = "CB\\HandBook\\IMG\\qipindouwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 2 , effect = "" , hidden = 1}
collection_definition['印玺－六品裨将'] = {id = 75 , note = "裨将" , desc = "裨将，六品武官，通常由校尉积累功勋升职的将军。" , icon = "CB\\HandBook\\ICON\\liupinbiejia.dds" , img = "CB\\HandBook\\IMG\\liupinbijiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 3 , effect = "" , hidden = 1}
collection_definition['印玺－六品偏将'] = {id = 76 , note = "偏将" , desc = "偏将，六品武官通常由校尉积累功勋升职的将军。" , icon = "CB\\HandBook\\ICON\\liupinzhangshi.dds" , img = "CB\\HandBook\\IMG\\liupinpianjiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 3 , effect = "" , hidden = 1}
collection_definition['印玺－五品鹰扬将军'] = {id = 77 , note = "鹰扬将军" , desc = "鹰扬将军，五品武官，领兵将军之一。" , icon = "CB\\HandBook\\ICON\\wupintaicangling.dds" , img = "CB\\HandBook\\IMG\\wupinyingyangjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 4 , effect = "" , hidden = 1}
collection_definition['印玺－五品伏波将军'] = {id = 78 , note = "伏波将军" , desc = "伏波将军，五品武官，领兵将军之一。" , icon = "CB\\HandBook\\ICON\\wupintaileling.dds" , img = "CB\\HandBook\\IMG\\wupinfubojiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 4 , effect = "" , hidden = 1}
collection_definition['印玺－五品讨虏将军'] = {id = 79 , note = "讨虏将军" , desc = "讨虏将军，五品武官，领兵将军之一。" , icon = "CB\\HandBook\\ICON\\wupintaishiling.dds" , img = "CB\\HandBook\\IMG\\wupintaolujiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 4 , effect = "" , hidden = 1}
collection_definition['印玺－五品横野将军'] = {id = 80 , note = "横野将军" , desc = "横野将军，五品武官，领兵将军之一。" , icon = "CB\\HandBook\\ICON\\wupintaiyiling.dds" , img = "CB\\HandBook\\IMG\\wupinhengyejiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 4 , effect = "" , hidden = 1}
collection_definition['印玺－从四品典军中郎将'] = {id = 81 , note = "典军中郎将" , desc = "典军中郎将，从四品武官，领兵中郎将之一。" , icon = "CB\\HandBook\\ICON\\sipindianjunzhonglangjiang.dds" , img = "CB\\HandBook\\IMG\\sipindianjunzhonglangjiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－从四品抚军中郎将'] = {id = 82 , note = "抚军中郎将" , desc = "抚军中郎将，从四品武官，领兵中郎将之一。" , icon = "CB\\HandBook\\ICON\\sipindangkouzhonglangjiang.dds" , img = "CB\\HandBook\\IMG\\sipinfujunzhonglangjiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－从四品荡寇中郎将'] = {id = 83 , note = "荡寇中郎将" , desc = "荡寇中郎将，从四品武官，领兵中郎将之一。" , icon = "CB\\HandBook\\ICON\\sipindangkouzhonglangjiang.dds" , img = "CB\\HandBook\\IMG\\sipindangkouzhonglangjiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－从四品建威中郎将'] = {id = 84 , note = "建威中郎将" , desc = "建威中郎将，从四品武官，领兵中郎将之一。" , icon = "CB\\HandBook\\ICON\\congsijianweizhonglangjiang.dds" , img = "CB\\HandBook\\IMG\\congsipinjianweizhonglangjiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－正四品武卫中郎将'] = {id = 85 , note = "武卫中郎将" , desc = "武卫中郎将，正四品武官，统率武卫营的将领。" , icon = "CB\\HandBook\\ICON\\zhengsiwuweizhonglangjiang.dds" , img = "CB\\HandBook\\IMG\\zhengsipinwuweizhonglangjiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－正四品羽林中郎将'] = {id = 86 , note = "羽林中郎将" , desc = "羽林中郎将，正四品武官，统率羽林郎的将领。" , icon = "CB\\HandBook\\ICON\\sipinyulinzhonglangjiang.dds" , img = "CB\\HandBook\\IMG\\sipinyulinzhonglangjiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－正四品虎贲中郎将'] = {id = 87 , note = "虎贲中郎将" , desc = "虎贲中郎将，正四品武官，统率虎贲郎的将领。" , icon = "CB\\HandBook\\ICON\\sipinhubenzhonglangjiang.dds" , img = "CB\\HandBook\\IMG\\sipinhubenzhonglangjiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－正四品五官中郎将'] = {id = 88 , note = "五官中郎将" , desc = "五官中郎将，正四品武官，统率五官中郎的将领。" , icon = "CB\\HandBook\\ICON\\sipinwuguanzhonglangjiang.dds" , img = "CB\\HandBook\\IMG\\sipinwuguanzhonglangjiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－从三品前将军'] = {id = 89 , note = "前将军" , desc = "前将军，从三品武官，仅次于九卿级别，负责京师兵卫和边防屯警。" , icon = "CB\\HandBook\\ICON\\sanpinqianjiangjun.dds" , img = "CB\\HandBook\\IMG\\sanpinqianjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－从三品后将军'] = {id = 90 , note = "后将军" , desc = "后将军，从三品武官，仅次于九卿级别，负责京师兵卫和边防屯警。" , icon = "CB\\HandBook\\ICON\\sanpinhoujiangjun.dds" , img = "CB\\HandBook\\IMG\\sanpinhoujiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－从三品左将军'] = {id = 91 , note = "左将军" , desc = "左将军，从三品武官，仅次于九卿级别，负责京师兵卫和边防屯警。" , icon = "CB\\HandBook\\ICON\\sanpinzuojiangjun.dds" , img = "CB\\HandBook\\IMG\\sanpinzuojiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－从三品右将军'] = {id = 92 , note = "右将军" , desc = "右将军，从三品武官，仅次于九卿级别，负责京师兵卫和边防屯警。" , icon = "CB\\HandBook\\ICON\\sanpinyoujiangjun.dds" , img = "CB\\HandBook\\IMG\\sanpinyoujiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－正三品平东将军'] = {id = 93 , note = "平东将军" , desc = "平东将军，正三品武官，四平将军之一，主掌征伐。" , icon = "CB\\HandBook\\ICON\\sanpinpingdongjiangjun.dds" , img = "CB\\HandBook\\IMG\\sanpinpingdongjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－正三品平南将军'] = {id = 94 , note = "平南将军" , desc = "平南将军，正三品武官，四平将军之一，主掌征伐。" , icon = "CB\\HandBook\\ICON\\sanpinpingnanjiangjun.dds" , img = "CB\\HandBook\\IMG\\sanpinpingnanjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－正三品平西将军'] = {id = 95 , note = "平西将军" , desc = "平西将军，正三品武官，四平将军之一，主掌征伐。" , icon = "CB\\HandBook\\ICON\\sanpinpingxijiangjun.dds" , img = "CB\\HandBook\\IMG\\sanpinpingxijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－正三品平北将军'] = {id = 96 , note = "平北将军" , desc = "平北将军，正三品武官，四平将军之一，主掌征伐。" , icon = "CB\\HandBook\\ICON\\sanpinpingbeijiangjun.dds" , img = "CB\\HandBook\\IMG\\sanpinpingbeijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－从二品征北将军（蜀）'] = {id = 97 , note = "征北将军" , desc = "征北将军，蜀国从二品武官，统领幽、冀、并三州军事，屯驻蓟。" , icon = "CB\\HandBook\\ICON\\xishuerpinzhengbeijiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinzhengbeijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品征西将军（蜀）'] = {id = 98 , note = "征西将军" , desc = "征西将军，蜀国从二品武官，统领雍、凉二州军事，屯驻长安。" , icon = "CB\\HandBook\\ICON\\xishuerpinzhengxijiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinzhengxijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品征南将军（蜀）'] = {id = 99 , note = "征南将军" , desc = "征南将军，蜀国从二品武官，统领荆、豫二州军事，屯驻新野。" , icon = "CB\\HandBook\\ICON\\xishuerpinzhengnanjiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinzhengnanjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品征东将军（蜀）'] = {id = 100 , note = "征东将军" , desc = "征东将军，蜀国从二品武官，统领青、兖、徐、扬四州军事，屯驻扬州。" , icon = "CB\\HandBook\\ICON\\xishuerpinzhengdongjiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinzhengdongjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品抚军大将军（蜀）'] = {id = 101 , note = "抚军大将军" , desc = "抚军大将军，蜀国正二品武官，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\xishuerpinfujundajiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinfujundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品镇军大将军（蜀）'] = {id = 102 , note = "镇军大将军" , desc = "镇军大将军，蜀国正二品武官，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\xishuerpinzhenjundajiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinzhenjundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品右车骑将军（蜀）'] = {id = 103 , note = "右车骑将军" , desc = "右车骑将军，蜀国正二品武官，仅次于车骑将军的将军号。" , icon = "CB\\HandBook\\ICON\\xishuerpinyoucheqijiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinyoucheqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品右骠骑将军（蜀）'] = {id = 104 , note = "右骠骑将军" , desc = "右骠骑将军，蜀国正二品武官，仅次于骠骑将军的将军号。" , icon = "CB\\HandBook\\ICON\\xishuerpinyoubiaoqijiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinyoubiaoqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品右大将军（蜀）'] = {id = 105 , note = "右大将军" , desc = "右大将军，蜀国正二品武官，仅次于大将军的将军号。" , icon = "CB\\HandBook\\ICON\\xishuerpinyoudajiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinyoudajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品征北将军（吴）'] = {id = 106 , note = "征北将军" , desc = "征北将军，吴国从二品武官，统领幽、冀、并三州军事，屯驻蓟。" , icon = "CB\\HandBook\\ICON\\erpinzhengbeijiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinzhengbeijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品征西将军（吴）'] = {id = 107 , note = "征西将军" , desc = "征西将军，吴国从二品武官，统领雍、凉二州军事，屯驻长安。" , icon = "CB\\HandBook\\ICON\\erpinzhengxijiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinzhengxijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品征南将军（吴）'] = {id = 108 , note = "征南将军" , desc = "征南将军，吴国从二品武官，统领荆、豫二州军事，屯驻新野。" , icon = "CB\\HandBook\\ICON\\erpinzhengnanjiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinzhengnanjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品征东将军（吴）'] = {id = 109 , note = "征东将军" , desc = "征东将军，吴国从二品武官，统领青、兖、徐、扬四州军事，屯驻扬州。" , icon = "CB\\HandBook\\ICON\\erpinzhengdongjiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinzhengdongjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品抚军大将军（吴）'] = {id = 110 , note = "抚军大将军" , desc = "抚军大将军，吴国正二品武官，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\erpinfujundajiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinfujundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品镇军大将军（吴）'] = {id = 111 , note = "镇军大将军" , desc = "镇军大将军，吴国正二品武官，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\erpinzhenjundajiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinzhenjundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品辅国大将军（吴）'] = {id = 112 , note = "辅国大将军" , desc = "辅国大将军，吴国正二品武官，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\erpinfuguodajiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinfuguodajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品右都护（吴）'] = {id = 113 , note = "右都护" , desc = "右都护，吴国正二品武官，统领全国半数的军队。" , icon = "CB\\HandBook\\ICON\\erpinyoudouhu.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinyoudouhu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品左都护（吴）'] = {id = 114 , note = "左都护" , desc = "左都护，吴国正二品武官，统领全国半数的军队。" , icon = "CB\\HandBook\\ICON\\erpinzuodouhu.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinzuodouhu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品征北将军（魏）'] = {id = 115 , note = "征北将军" , desc = "征北将军，魏国从二品武官，统领幽、冀、并三州军事，屯驻蓟。" , icon = "CB\\HandBook\\ICON\\weiguoerpinzhengbeijiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinzhengbeijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品征西将军（魏）'] = {id = 116 , note = "征西将军" , desc = "征西将军，魏国从二品武官，统领雍、凉二州军事，屯驻长安。" , icon = "CB\\HandBook\\ICON\\weiguoerpinzhengxijiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinzhengxijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品征南将军（魏）'] = {id = 117 , note = "征南将军" , desc = "征南将军，魏国从二品武官，统领荆、豫二州军事，屯驻新野。" , icon = "CB\\HandBook\\ICON\\weiguoerpinzhengnanjiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinzhengnanjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品征东将军（魏）'] = {id = 118 , note = "征东将军" , desc = "征东将军，魏国从二品武官，统领青、兖、徐、扬四州军事，屯驻扬州。" , icon = "CB\\HandBook\\ICON\\weiguoerpinzhengdongjiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinzhengdongjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品抚军大将军（魏）'] = {id = 119 , note = "抚军大将军" , desc = "抚军大将军，魏国正二品武官，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoerpinfujundajiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinfujundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品镇军大将军（魏）'] = {id = 120 , note = "镇军大将军" , desc = "镇军大将军，魏国正二品武官，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoerpinzhenjundajiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinzhenjundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品辅国大将军（魏）'] = {id = 121 , note = "辅国大将军" , desc = "辅国大将军，魏国正二品武官，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoerpinfuguodajiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinfuguodajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品中军大将军（魏）'] = {id = 122 , note = "中军大将军" , desc = "中军大将军，魏国正二品武官，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoerpinzhongjundajiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinzhongjundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品上军大将军（魏）'] = {id = 123 , note = "上军大将军" , desc = "上军大将军，魏国正二品武官，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoerpinshangjundajiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinshangjundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从一品卫将军（蜀）'] = {id = 124 , note = "卫将军" , desc = "卫将军，蜀国从一品武官，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\xishuyipinweijiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuyipinweijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品车骑将军（蜀）'] = {id = 125 , note = "车骑将军" , desc = "车骑将军，蜀国从一品武官，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\xishuyipincheqijiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuyipincheqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品骠骑将军（蜀）'] = {id = 126 , note = "骠骑将军" , desc = "骠骑将军，蜀国从一品武官，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\xishuyipinbiaoqijiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuyipinbiaoqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品卫将军（吴）'] = {id = 127 , note = "卫将军" , desc = "卫将军，吴国从一品武官，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\yipinweijiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoyipinweijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品车骑将军（吴）'] = {id = 128 , note = "车骑将军" , desc = "车骑将军，吴国从一品武官，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\yipincheqijiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoyipincheqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品骠骑将军（吴）'] = {id = 129 , note = "骠骑将军" , desc = "骠骑将军，吴国从一品武官，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\yipinbiaoqijiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoyipinbiaoqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品卫将军（魏）'] = {id = 130 , note = "卫将军" , desc = "卫将军，魏国从一品武官，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoyipinweijiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoyipinweijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品车骑将军（魏）'] = {id = 131 , note = "车骑将军" , desc = "车骑将军，魏国从一品武官，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoyipincheqijiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoyipincheqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品骠骑将军（魏）'] = {id = 132 , note = "骠骑将军" , desc = "骠骑将军，魏国从一品武官，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoyipinbiaoqijiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoyipinbiaoqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－正一品大将军（蜀）'] = {id = 133 , note = "大将军" , desc = "大将军，蜀国正一品武官，蜀汉最高军事统帅，统领全国武将。" , icon = "CB\\HandBook\\ICON\\xishuzhengyipindajiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuzhengyipindajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－正一品大都督（吴）'] = {id = 134 , note = "大都督" , desc = "大都督，吴国正一品武官，东吴最高军事统帅，统领全国武将。" , icon = "CB\\HandBook\\ICON\\zhengyipindadoudu.dds" , img = "CB\\HandBook\\IMG\\wuguozhengyipindadoudu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－正一品大将军（魏）'] = {id = 135 , note = "大将军" , desc = "大将军，魏国正一品武官，曹魏最高军事统帅，统领全国武将。" , icon = "CB\\HandBook\\ICON\\weiguozhengyipinweidajiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguozhengyipinweidajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－九品书佐'] = {id = 136 , note = "书佐" , desc = "书佐，九品文官，负责文字事务的佐吏。" , icon = "CB\\HandBook\\ICON\\jiupinshuzuo.dds" , img = "CB\\HandBook\\IMG\\jiupinshuzuo.dds" , type = "印玺" , from = "由对应官职获得" , rank = 1 , effect = "" , hidden = 1}
collection_definition['印玺－八品功曹'] = {id = 137 , note = "功曹" , desc = "功曹，八品文官，高级官员的属吏，掌管考查功绩。" , icon = "CB\\HandBook\\ICON\\bapingongcao.dds" , img = "CB\\HandBook\\IMG\\bapingongcao.dds" , type = "印玺" , from = "由对应官职获得" , rank = 1 , effect = "" , hidden = 1}
collection_definition['印玺－七品主簿'] = {id = 138 , note = "主簿" , desc = "主簿，七品文官，高级官员的属吏，掌管文书簿笈。" , icon = "CB\\HandBook\\ICON\\qipinzhubu.dds" , img = "CB\\HandBook\\IMG\\qipinzhubu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 2 , effect = "" , hidden = 1}
collection_definition['印玺－六品别驾'] = {id = 139 , note = "别驾" , desc = "别驾，六品文官，刺史的高级佐吏，出巡时和刺史各乘一车。" , icon = "CB\\HandBook\\ICON\\liupinbiejia.dds" , img = "CB\\HandBook\\IMG\\liupinbiejia.dds" , type = "印玺" , from = "由对应官职获得" , rank = 3 , effect = "" , hidden = 1}
collection_definition['印玺－六品长史'] = {id = 140 , note = "长史" , desc = "长史，六品文官，为军府中的幕僚之长。" , icon = "CB\\HandBook\\ICON\\liupinzhangshi.dds" , img = "CB\\HandBook\\IMG\\liupinzhangshi.dds" , type = "印玺" , from = "由对应官职获得" , rank = 3 , effect = "" , hidden = 1}
collection_definition['印玺－五品太乐令'] = {id = 141 , note = "太乐令" , desc = "太乐令，五品文官，太常的属官，主掌宫廷音乐。" , icon = "CB\\HandBook\\ICON\\wupintaileling.dds" , img = "CB\\HandBook\\IMG\\wupintaileling.dds" , type = "印玺" , from = "由对应官职获得" , rank = 4 , effect = "" , hidden = 1}
collection_definition['印玺－五品太史令'] = {id = 142 , note = "太史令" , desc = "太史令，五品文官，太常的属官，主掌天文星历。" , icon = "CB\\HandBook\\ICON\\wupintaishiling.dds" , img = "CB\\HandBook\\IMG\\wupintaishiling.dds" , type = "印玺" , from = "由对应官职获得" , rank = 4 , effect = "" , hidden = 1}
collection_definition['印玺－五品太医令'] = {id = 143 , note = "太医令" , desc = "太医令，五品文官，少府的属官，主掌宫廷医事。" , icon = "CB\\HandBook\\ICON\\wupintaiyiling.dds" , img = "CB\\HandBook\\IMG\\wupintaiyiling.dds" , type = "印玺" , from = "由对应官职获得" , rank = 4 , effect = "" , hidden = 1}
collection_definition['印玺－五品太仓令'] = {id = 144 , note = "太仓令" , desc = "太仓令，五品文官，大司农的属官，主掌郡国仓储。" , icon = "CB\\HandBook\\ICON\\wupintaicangling.dds" , img = "CB\\HandBook\\IMG\\wupintaicangling.dds" , type = "印玺" , from = "由对应官职获得" , rank = 4 , effect = "" , hidden = 1}
collection_definition['印玺－从四品谒者仆射'] = {id = 145 , note = "谒者仆射" , desc = "谒者仆射，从四品文官，掌殿廷朝会礼仪，接受臣民章奏。" , icon = "CB\\HandBook\\ICON\\congsiyezhepushe.dds" , img = "CB\\HandBook\\IMG\\congsipinyezhepushe.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－从四品谏议大夫'] = {id = 146 , note = "谏议大夫" , desc = "谏议大夫，从四品文官，职掌言议，顾问应对。" , icon = "CB\\HandBook\\ICON\\sipinjianyidafu.dds" , img = "CB\\HandBook\\IMG\\sipinjianyidafu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－从四品太子洗马'] = {id = 147 , note = "太子洗马" , desc = "太子洗马，从四品文官，太子属官，太子出行为前导。" , icon = "CB\\HandBook\\ICON\\sipintaizixima.dds" , img = "CB\\HandBook\\IMG\\sipintaizixima.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－从四品散骑常侍'] = {id = 148 , note = "散骑常侍" , desc = "散骑常侍，从四品文官，规谏过失，以备顾问。" , icon = "CB\\HandBook\\ICON\\sipinsanqichangshi.dds" , img = "CB\\HandBook\\IMG\\sipinsanqichangshi.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－正四品中散大夫'] = {id = 149 , note = "中散大夫" , desc = "中散大夫，正四品文官，职掌言议，顾问应对。" , icon = "CB\\HandBook\\ICON\\sipinzhongsandafu.dds" , img = "CB\\HandBook\\IMG\\sipinzhongsandafu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－正四品太中大夫'] = {id = 150 , note = "太中大夫" , desc = "太中大夫，正四品文官，职掌言议，顾问应对。" , icon = "CB\\HandBook\\ICON\\sipintaizhongdafu.dds" , img = "CB\\HandBook\\IMG\\sipintaizhongdafu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－正四品尚书仆射'] = {id = 151 , note = "尚书仆射" , desc = "尚书仆射，正四品文官，尚书台的副首长。" , icon = "CB\\HandBook\\ICON\\sipinshangshupushe.dds" , img = "CB\\HandBook\\IMG\\sipinshangshupushe.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－正四品御史中丞'] = {id = 152 , note = "御史中丞" , desc = "御史中丞，正四品文官，御史台的长官，收纳并审查公卿奏事上报皇帝。" , icon = "CB\\HandBook\\ICON\\zhengsiyushizhongcheng.dds" , img = "CB\\HandBook\\IMG\\zhengsipinyushizhongcheng.dds" , type = "印玺" , from = "由对应官职获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['印玺－从三品太子少傅'] = {id = 153 , note = "太子少傅" , desc = "太子少傅，从三品文官，教导辅佐太子的师傅。" , icon = "CB\\HandBook\\ICON\\weiguosanpintaizishaofu.dds" , img = "CB\\HandBook\\IMG\\weiguosanpintaizishaofu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－从三品中书令'] = {id = 154 , note = "中书令" , desc = "中书令，从三品文官，秘书令改名而来，掌握机要。" , icon = "CB\\HandBook\\ICON\\weiguosanpinzhongshuling.dds" , img = "CB\\HandBook\\IMG\\weiguosanpinzhongshuling.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－从三品尚书令'] = {id = 155 , note = "尚书令" , desc = "尚书令，从三品文官，直接对皇帝负责，掌管政令。" , icon = "CB\\HandBook\\ICON\\weiguosanpinshangshuling.dds" , img = "CB\\HandBook\\IMG\\weiguosanpinshangshuling.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－从三品侍中'] = {id = 156 , note = "侍中" , desc = "侍中，从三品文官，皇帝侧近，顾问应对，拾遗补缺。" , icon = "CB\\HandBook\\ICON\\weiguosanpinshizhong.dds" , img = "CB\\HandBook\\IMG\\weiguosanpinshizhong.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－正三品太子太傅'] = {id = 157 , note = "太子太傅" , desc = "太子太傅，正三品文官，教导辅佐太子的师傅。" , icon = "CB\\HandBook\\ICON\\weiguosanpintaizitaifu.dds" , img = "CB\\HandBook\\IMG\\weiguosanpintaizitaifu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－正三品执金吾'] = {id = 158 , note = "执金吾" , desc = "执金吾，正三品文官，主掌徼循京师。" , icon = "CB\\HandBook\\ICON\\weiguosanpinzhijinwu.dds" , img = "CB\\HandBook\\IMG\\weiguosanpinzhijinwu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－正三品将作大匠'] = {id = 159 , note = "将作大匠" , desc = "将作大匠，正三品文官，主掌各种工程。" , icon = "CB\\HandBook\\ICON\\weiguosanpinjiangzuodajiang.dds" , img = "CB\\HandBook\\IMG\\weiguosanpinjiangzuodajiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－正三品水衡都尉'] = {id = 160 , note = "水衡都尉" , desc = "水衡都尉，正三品文官，掌水军舟船器械。" , icon = "CB\\HandBook\\ICON\\weiguosanpinshuihengdouwei.dds" , img = "CB\\HandBook\\IMG\\weiguosanpinshuihengdouwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－从二品宗正（蜀）'] = {id = 161 , note = "宗正" , desc = "宗正，蜀国从二品文官，九卿之一，掌管皇族与外戚事务。" , icon = "CB\\HandBook\\ICON\\xishuerpinzongzheng.dds" , img = "CB\\HandBook\\IMG\\xishuerpinzongzheng.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品廷尉（蜀）'] = {id = 162 , note = "廷尉" , desc = "廷尉，蜀国从二品文官，九卿之一，掌管刑法狱讼。" , icon = "CB\\HandBook\\ICON\\xishuerpintingwei.dds" , img = "CB\\HandBook\\IMG\\xishuerpintingwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品光禄勋（蜀）'] = {id = 163 , note = "光禄勋" , desc = "光禄勋，蜀国从二品文官，九卿之一，掌管宿卫宫殿门户。" , icon = "CB\\HandBook\\ICON\\xishuerpinguangluxun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinguangluxun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品少府（蜀）'] = {id = 164 , note = "少府" , desc = "少府，蜀国从二品文官，九卿之一，掌管皇室财务。" , icon = "CB\\HandBook\\ICON\\xishuerpinshaofu.dds" , img = "CB\\HandBook\\IMG\\xishuerpinshaofu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品太仆（蜀）'] = {id = 165 , note = "太仆" , desc = "太仆，蜀国正二品文官，九卿之一，掌管舆马及牧畜。" , icon = "CB\\HandBook\\ICON\\xishuerpintaipu.dds" , img = "CB\\HandBook\\IMG\\xishuerpintaipu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品太常（蜀）'] = {id = 166 , note = "太常" , desc = "太常，蜀国正二品文官，九卿之一，掌管礼乐社稷、宗庙礼仪。" , icon = "CB\\HandBook\\ICON\\xishuerpintaichang.dds" , img = "CB\\HandBook\\IMG\\xishuerpintaichang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品卫尉（蜀）'] = {id = 167 , note = "卫尉" , desc = "卫尉，蜀国正二品文官，九卿之一，掌管皇城巡视。" , icon = "CB\\HandBook\\ICON\\xishuerpinweiwei.dds" , img = "CB\\HandBook\\IMG\\xishuerpinweiwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品大鸿胪（蜀）'] = {id = 168 , note = "大鸿胪" , desc = "大鸿胪，蜀国正二品文官，九卿之一，掌管接待宾客。" , icon = "CB\\HandBook\\ICON\\xishuerpindahonglu.dds" , img = "CB\\HandBook\\IMG\\xishuerpindahonglu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品大司农（蜀）'] = {id = 169 , note = "大司农" , desc = "大司农，蜀国正二品文官，九卿之一，掌管国家财政。" , icon = "CB\\HandBook\\ICON\\xishuerpindasinong.dds" , img = "CB\\HandBook\\IMG\\xishuerpindasinong.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品宗正（吴）'] = {id = 170 , note = "宗正" , desc = "宗正，吴国从二品文官，九卿之一，掌管皇族与外戚事务。" , icon = "CB\\HandBook\\ICON\\erpinzongzheng.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinzongzheng.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品廷尉（吴）'] = {id = 171 , note = "廷尉" , desc = "廷尉，吴国从二品文官，九卿之一，掌管刑法狱讼。" , icon = "CB\\HandBook\\ICON\\erpintingwei.dds" , img = "CB\\HandBook\\IMG\\wuguoerpintingwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品光禄勋（吴）'] = {id = 172 , note = "光禄勋" , desc = "光禄勋，吴国从二品文官，九卿之一，掌管宿卫宫殿门户。" , icon = "CB\\HandBook\\ICON\\erpinguangluxun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinguangluxun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品少府（吴）'] = {id = 173 , note = "少府" , desc = "少府，吴国从二品文官，九卿之一，掌管皇室财务。" , icon = "CB\\HandBook\\ICON\\erpinshaofu.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinshaofu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品太仆（吴）'] = {id = 174 , note = "太仆" , desc = "太仆，吴国正二品文官，九卿之一，掌管舆马及牧畜。" , icon = "CB\\HandBook\\ICON\\erpintaipu.dds" , img = "CB\\HandBook\\IMG\\wuguoerpintaipu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品太常（吴）'] = {id = 175 , note = "太常" , desc = "太常，吴国正二品文官，九卿之一，掌管礼乐社稷、宗庙礼仪。" , icon = "CB\\HandBook\\ICON\\erpintaichang.dds" , img = "CB\\HandBook\\IMG\\wuguoerpintaichang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品卫尉（吴）'] = {id = 176 , note = "卫尉" , desc = "卫尉，吴国正二品文官，九卿之一，掌管皇城巡视。" , icon = "CB\\HandBook\\ICON\\erpinweiwei.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinweiwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品大鸿胪（吴）'] = {id = 177 , note = "大鸿胪" , desc = "大鸿胪，吴国正二品文官，九卿之一，掌管接待宾客。" , icon = "CB\\HandBook\\ICON\\erpindahonghu.dds" , img = "CB\\HandBook\\IMG\\wuguoerpindahonghu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品大司农（吴）'] = {id = 178 , note = "大司农" , desc = "大司农，吴国正二品文官，九卿之一，掌管国家财政。" , icon = "CB\\HandBook\\ICON\\erpindasinong.dds" , img = "CB\\HandBook\\IMG\\wuguoerpindasinong.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品宗正（魏）'] = {id = 179 , note = "宗正" , desc = "宗正，魏国从二品文官，九卿之一，掌管皇族与外戚事务。" , icon = "CB\\HandBook\\ICON\\weiguoerpinzongzheng.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinzongzheng.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品廷尉（魏）'] = {id = 180 , note = "廷尉" , desc = "廷尉，魏国从二品文官，九卿之一，掌管刑法狱讼。" , icon = "CB\\HandBook\\ICON\\weiguoerpintingwei.dds" , img = "CB\\HandBook\\IMG\\weiguoerpintingwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品光禄勋（魏）'] = {id = 181 , note = "光禄勋" , desc = "光禄勋，魏国从二品文官，九卿之一，掌管宿卫宫殿门户。" , icon = "CB\\HandBook\\ICON\\weiguoerpinguangluxun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinguangluxun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从二品少府（魏）'] = {id = 182 , note = "少府" , desc = "少府，魏国从二品文官，九卿之一，掌管皇室财务。" , icon = "CB\\HandBook\\ICON\\weiguoerpinguangshaofu.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinguangshaofu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品太仆（魏）'] = {id = 183 , note = "太仆" , desc = "太仆，魏国正二品文官，九卿之一，掌管舆马及牧畜。" , icon = "CB\\HandBook\\ICON\\weiguoerpintaipu.dds" , img = "CB\\HandBook\\IMG\\weiguoerpintaipu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品太常（魏）'] = {id = 184 , note = "太常" , desc = "太常，魏国正二品文官，九卿之一，掌管礼乐社稷、宗庙礼仪。" , icon = "CB\\HandBook\\ICON\\weiguoerpintaichang.dds" , img = "CB\\HandBook\\IMG\\weiguoerpintaichang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品卫尉（魏）'] = {id = 185 , note = "卫尉" , desc = "卫尉，魏国正二品文官，九卿之一，掌管皇城巡视。" , icon = "CB\\HandBook\\ICON\\weiguoerpinweiwei.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinweiwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品大鸿胪（魏）'] = {id = 186 , note = "大鸿胪" , desc = "大鸿胪，魏国正二品文官，九卿之一，掌管接待宾客。" , icon = "CB\\HandBook\\ICON\\weiguoerpindahonglu.dds" , img = "CB\\HandBook\\IMG\\weiguoerpindahonglu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－正二品大司农（魏）'] = {id = 187 , note = "大司农" , desc = "大司农，魏国正二品文官，九卿之一，掌管国家财政。" , icon = "CB\\HandBook\\ICON\\weiguoerpindasinong.dds" , img = "CB\\HandBook\\IMG\\weiguoerpindasinong.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－从一品司空（蜀）'] = {id = 188 , note = "司空" , desc = "司空，蜀国从一品文官，三公之一，掌管全国行政。" , icon = "CB\\HandBook\\ICON\\xishuyipinsikong.dds" , img = "CB\\HandBook\\IMG\\xishuyipinsikong.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品司徒（蜀）'] = {id = 189 , note = "司徒" , desc = "司徒，蜀国从一品文官，三公之一，掌管全国刑法。" , icon = "CB\\HandBook\\ICON\\xishuyipinsitu.dds" , img = "CB\\HandBook\\IMG\\xishuyipinsitu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品太尉（蜀）'] = {id = 190 , note = "太尉" , desc = "太尉，蜀国从一品文官，三公之一，掌管全国军政。" , icon = "CB\\HandBook\\ICON\\xishuyipintaiwei.dds" , img = "CB\\HandBook\\IMG\\xishuyipintaiwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品司空（吴）'] = {id = 191 , note = "司空" , desc = "司空，吴国从一品文官，三公之一，掌管全国行政。" , icon = "CB\\HandBook\\ICON\\yipinsikong.dds" , img = "CB\\HandBook\\IMG\\wuguoyipinsikong.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品司徒（吴）'] = {id = 192 , note = "司徒" , desc = "司徒，吴国从一品文官，三公之一，掌管全国刑法。" , icon = "CB\\HandBook\\ICON\\yipinsitu.dds" , img = "CB\\HandBook\\IMG\\wuguoyipinsitu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品太尉（吴）'] = {id = 193 , note = "太尉" , desc = "太尉，吴国从一品文官，三公之一，掌管全国军政。" , icon = "CB\\HandBook\\ICON\\yipintaiwei.dds" , img = "CB\\HandBook\\IMG\\wuguoyipintaiwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品司空（魏）'] = {id = 194 , note = "司空" , desc = "司空，魏国从一品文官，三公之一，掌管全国行政。" , icon = "CB\\HandBook\\ICON\\weiguoyipinsikong.dds" , img = "CB\\HandBook\\IMG\\weiguoyipinsikong.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品司徒（魏）'] = {id = 195 , note = "司徒" , desc = "司徒，魏国从一品文官，三公之一，掌管全国刑法。" , icon = "CB\\HandBook\\ICON\\weiguoyipinsitu.dds" , img = "CB\\HandBook\\IMG\\weiguoyipinsitu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－从一品太尉（魏）'] = {id = 196 , note = "太尉" , desc = "太尉，魏国从一品文官，三公之一，掌管全国军政。" , icon = "CB\\HandBook\\ICON\\weiguoyipintaiwei.dds" , img = "CB\\HandBook\\IMG\\weiguoyipintaiwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－正一品大丞相（蜀）'] = {id = 197 , note = "大丞相" , desc = "大丞相，蜀国正一品文官，蜀汉最高政府首脑，统领全国文官。" , icon = "CB\\HandBook\\ICON\\xishuzhengyipindachengxiang.dds" , img = "CB\\HandBook\\IMG\\xishuzhengyipindachengxiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－正一品大丞相（吴）'] = {id = 198 , note = "大丞相" , desc = "大丞相，吴国正一品文官，东吴最高政府首脑，统领全国文官。" , icon = "CB\\HandBook\\ICON\\zhengyipindachengxiang.dds" , img = "CB\\HandBook\\IMG\\wuguozhengyipindachengxiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－正一品大丞相（魏）'] = {id = 199 , note = "大丞相" , desc = "大丞相，魏国正一品文官，曹魏最高政府首脑，统领全国文官。" , icon = "CB\\HandBook\\ICON\\weiguozhengyipindachengxiang.dds" , img = "CB\\HandBook\\IMG\\weiguozhengyipindachengxiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['隐藏物品'] = {id = 200 , note = "？？？" , desc = "？？？" , icon = "CB\\HandBook\\ICON\\tujianmorentupian.tga" , img = "CB\\HandBook\\IMG\\tujianmorentupian.tga" , type = "???" , from = "出自 ???" , rank = 0 , effect = "" , hidden = 0}
collection_definition['任务从三品文喊话前提'] = {id = 201 , note = "从三品文喊话" , desc = "" , icon = "CB\\HandBook\\ICON\\tujianmorentupian.tga" , img = "" , type = "" , from = "出自 " , rank = 0 , effect = "" , hidden = 1}
collection_definition['任务从三品武喊话前提'] = {id = 202 , note = "从三品武喊话" , desc = "" , icon = "CB\\HandBook\\ICON\\tujianmorentupian.tga" , img = "" , type = "" , from = "出自 " , rank = 0 , effect = "" , hidden = 1}
collection_definition['任务正三品文喊话前提'] = {id = 203 , note = "正三品文喊话" , desc = "" , icon = "CB\\HandBook\\ICON\\tujianmorentupian.tga" , img = "" , type = "" , from = "出自 " , rank = 0 , effect = "" , hidden = 1}
collection_definition['任务正三品武喊话前提'] = {id = 204 , note = "正三品武喊话" , desc = "" , icon = "CB\\HandBook\\ICON\\tujianmorentupian.tga" , img = "" , type = "" , from = "出自 " , rank = 0 , effect = "" , hidden = 1}
collection_definition['印玺－皇帝'] = {id = 205 , note = "皇帝" , desc = "来源不明，传说中得到玉玺的真龙天子。" , icon = "CB\\HandBook\\ICON\\huangdi.dds" , img = "CB\\HandBook\\IMG\\touming.tga" , type = "印玺" , from = "来源不明" , rank = 9 , effect = "" , hidden = 1}
collection_definition['活动－赛马练习马场'] = {id = 206 , note = "长安练习场" , desc = "全国最大的马场，许多人以进长安马场试跑为荣，也是各大名赛的举办地。" , icon = "CB\\HandBook\\ICON\\saimachangxiao1.dds" , img = "CB\\HandBook\\IMG\\saimachangda1.dds" , type = "活动" , from = "出自 长安练习马场" , rank = 1 , effect = "" , hidden = 1}
collection_definition['活动－赛马关中马场'] = {id = 207 , note = "关中赛马场" , desc = "关中地区首屈一指赛马大会，为神州·赛马大会甄选不少“马上豪杰”，参赛人数年年爆满。" , icon = "CB\\HandBook\\ICON\\saimachangxiao2.dds" , img = "CB\\HandBook\\IMG\\saimachangda2.dds" , type = "活动" , from = "出自 关中赛马大会" , rank = 2 , effect = "" , hidden = 1}
collection_definition['活动－赛马神州马场'] = {id = 208 , note = "神州赛马场" , desc = "顶级赛马大会，泱泱九州中精选200豪杰分组厮杀，是跑马、爱马之人心中的圣地。" , icon = "CB\\HandBook\\ICON\\saimachangxiao3.dds" , img = "CB\\HandBook\\IMG\\saimachangda3.dds" , type = "活动" , from = "出自 神州赛马大会" , rank = 3 , effect = "" , hidden = 1}
collection_definition['活动－关中赛马冠军'] = {id = 209 , note = "关中冠军" , desc = "赫赫有名的关中·赛马大会的王者，它即是你赛马人生成功的一个见证，也是你参加更高水平赛马的一个起点。" , icon = "CB\\HandBook\\ICON\\lingjiangtaida.dds" , img = "CB\\HandBook\\IMG\\lingjiangtaida.dds" , type = "活动" , from = "出自 关中赛马大会" , rank = 4 , effect = "" , hidden = 1}
collection_definition['活动－神州赛马冠军'] = {id = 210 , note = "神州冠军" , desc = "至上的荣耀，顶级的象征，取得它意味着你被万民认可为风中之神，名扬天下。" , icon = "CB\\HandBook\\ICON\\lingjiangtaida.dds" , img = "CB\\HandBook\\IMG\\lingjiangtaida.dds" , type = "活动" , from = "出自 神州赛马大会" , rank = 5 , effect = "" , hidden = 1}
collection_definition['活动-武艺大师'] = {id = 211 , note = "武艺大师" , desc = "" , icon = "CB\\HandBook\\ICON\\tujianmorentupian.tga" , img = "" , type = "" , from = "出自 竞技擂台大会" , rank = 0 , effect = "" , hidden = 1}
collection_definition['活动-十人敌'] = {id = 212 , note = "十人敌" , desc = "在擂台大会中初露头角的武者，获得的图鉴。" , icon = "CB\\HandBook\\ICON\\shirendixiao.dds" , img = "CB\\HandBook\\IMG\\shirendida.dds" , type = "活动" , from = "10点竞技积分获得" , rank = 3 , effect = "" , hidden = 1}
collection_definition['活动-百人敌'] = {id = 213 , note = "百人敌" , desc = "在擂台大会中略有名气的武者，获得的图鉴。" , icon = "CB\\HandBook\\ICON\\bairendixiao.dds" , img = "CB\\HandBook\\IMG\\bairendida.dds" , type = "活动" , from = "100点竞技积分获得" , rank = 5 , effect = "" , hidden = 1}
collection_definition['活动-千人敌'] = {id = 214 , note = "千人敌" , desc = "在擂台大会中屡战屡胜，扬名一方的传奇武者，得到献帝褒奖所赐的图鉴。" , icon = "CB\\HandBook\\ICON\\yiqidangqianxiao.dds" , img = "CB\\HandBook\\IMG\\yiqidangqianda.dds" , type = "活动" , from = "1000点竞技积分获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['活动-万人敌'] = {id = 215 , note = "万人敌" , desc = "在擂台大会中所向无敌，四海皆知的传奇武者，得到献帝褒奖所赐的图鉴。" , icon = "CB\\HandBook\\ICON\\tianxiawudixiao.dds" , img = "CB\\HandBook\\IMG\\tianxiawudida.dds" , type = "活动" , from = "10000点竞技积分获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['风景－河北'] = {id = 216 , note = "河北" , desc = "士慕原陵犹侠气，人来燕赵易悲歌。" , icon = "CB\\HandBook\\ICON\\hebeida.dds" , img = "CB\\HandBook\\IMG\\hebeida.dds" , type = "风景" , from = "出自 酒馆任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－西凉'] = {id = 217 , note = "西凉" , desc = "荒凉大漠，万里独行。古道西风，长河落日。" , icon = "CB\\HandBook\\ICON\\xiliangda.dds" , img = "CB\\HandBook\\IMG\\xiliangda.dds" , type = "风景" , from = "出自 酒馆任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－巴蜀'] = {id = 218 , note = "巴蜀" , desc = "枯松倒挂，飞瀑争流。黄鹤之飞不得过，猿猱欲度愁攀援。" , icon = "CB\\HandBook\\ICON\\bashuda.dds" , img = "CB\\HandBook\\IMG\\bashuda.dds" , type = "风景" , from = "出自 酒馆任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－南蛮'] = {id = 219 , note = "南蛮" , desc = "山鬼精魅，制蛊炼毒。南蛮，因为神秘所以吸引。" , icon = "CB\\HandBook\\ICON\\nanmanda.dds" , img = "CB\\HandBook\\IMG\\nanmanda.dds" , type = "风景" , from = "出自 酒馆任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－江南'] = {id = 220 , note = "江南" , desc = "江流宛转，涉溪采莲。捣衣砧上，对月浣纱。" , icon = "CB\\HandBook\\ICON\\jiangnanda.dds" , img = "CB\\HandBook\\IMG\\jiangnanda.dds" , type = "风景" , from = "出自 酒馆任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－荆襄'] = {id = 221 , note = "荆襄" , desc = "气蒸烂柯山，波撼襄阳城。湘妃斑竹，卧龙凤雏。" , icon = "CB\\HandBook\\ICON\\jingxiangda.dds" , img = "CB\\HandBook\\IMG\\jingxiangda.dds" , type = "风景" , from = "出自 酒馆任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－关中'] = {id = 222 , note = "关中" , desc = "物华天宝，人杰地灵。群英荟萃，尽看中原。" , icon = "CB\\HandBook\\ICON\\guanzhongda.dds" , img = "CB\\HandBook\\IMG\\guanzhongda.dds" , type = "风景" , from = "出自 酒馆任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['要地－子午谷1'] = {id = 223 , note = "子午寨" , desc = "子午谷中的重要城寨。" , icon = "CB\\HandBook\\ICON\\chengchixiao.dds" , img = "CB\\HandBook\\IMG\\chengchida.dds" , type = "风景" , from = "出自 子午谷争夺战" , rank = 6 , effect = "" , hidden = 1}
collection_definition['要地－子午谷2'] = {id = 224 , note = "鬼谷之地" , desc = "子午谷中的一处神秘之地。" , icon = "CB\\HandBook\\ICON\\shanxiao.dds" , img = "CB\\HandBook\\IMG\\shanda.dds" , type = "风景" , from = "出自 子午谷争夺战" , rank = 6 , effect = "" , hidden = 1}
collection_definition['要地－子午谷3'] = {id = 225 , note = "胭脂坪" , desc = "子午谷中的一处要地。" , icon = "CB\\HandBook\\ICON\\yuanyexiao.dds" , img = "CB\\HandBook\\IMG\\yuanyeda.dds" , type = "风景" , from = "出自 子午谷争夺战" , rank = 6 , effect = "" , hidden = 1}
collection_definition['要地－子午谷4'] = {id = 226 , note = "坝子坪" , desc = "子午谷中的一处要地。" , icon = "CB\\HandBook\\ICON\\podixiao.dds" , img = "CB\\HandBook\\IMG\\podida.dds" , type = "风景" , from = "出自 子午谷争夺战" , rank = 6 , effect = "" , hidden = 1}
collection_definition['要地－子午谷5'] = {id = 227 , note = "五斗米祭坛" , desc = "子午谷中五斗米道教徒的聚集之处。" , icon = "CB\\HandBook\\ICON\\yingzhaixiao.dds" , img = "CB\\HandBook\\IMG\\yingzhaida.dds" , type = "风景" , from = "出自 子午谷争夺战" , rank = 6 , effect = "" , hidden = 1}
collection_definition['要地－子午谷6'] = {id = 228 , note = "沙沟坪" , desc = "子午谷中的一处要地。" , icon = "CB\\HandBook\\ICON\\shatanxiao.dds" , img = "CB\\HandBook\\IMG\\shatanda.dds" , type = "风景" , from = "出自 子午谷争夺战" , rank = 6 , effect = "" , hidden = 1}
collection_definition['要地－子午谷7'] = {id = 229 , note = "土地梁" , desc = "子午谷中的一处要地。" , icon = "CB\\HandBook\\ICON\\xiaguxiao.dds" , img = "CB\\HandBook\\IMG\\xiaguda.dds" , type = "风景" , from = "出自 子午谷争夺战" , rank = 6 , effect = "" , hidden = 1}
collection_definition['印玺－新文候从二品4（魏）'] = {id = 230 , note = "魏监军" , desc = "官居从二品领军中资重者之称，执掌禁兵。" , icon = "CB\\HandBook\\ICON\\congerpinzhongjianjun.dds" , img = "CB\\HandBook\\IMG\\congerpinzhongjianjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新文候从二品3（魏）'] = {id = 231 , note = "魏候从二品3" , desc = "官居从二品" , icon = "CB\\HandBook\\ICON\\congerpinzhongjianjun.dds" , img = "CB\\HandBook\\IMG\\congerpinzhongjianjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新文候从二品2（魏）'] = {id = 232 , note = "魏候从二品2" , desc = "官居从二品" , icon = "CB\\HandBook\\ICON\\congerpinzhongjianjun.dds" , img = "CB\\HandBook\\IMG\\congerpinzhongjianjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新文候从二品1（魏）'] = {id = 233 , note = "魏候从二品1" , desc = "官居从二品" , icon = "CB\\HandBook\\ICON\\congerpinzhongjianjun.dds" , img = "CB\\HandBook\\IMG\\congerpinzhongjianjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新文候从二品4（蜀）'] = {id = 234 , note = "蜀监军" , desc = "官居从二品领军中资重者之称，执掌禁兵。" , icon = "CB\\HandBook\\ICON\\congerpinzhongjianjun.dds" , img = "CB\\HandBook\\IMG\\congerpinzhongjianjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新文候从二品3（蜀）'] = {id = 235 , note = "蜀候从二品3" , desc = "官居从二品" , icon = "CB\\HandBook\\ICON\\congerpinzhongjianjun.dds" , img = "CB\\HandBook\\IMG\\congerpinzhongjianjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新文候从二品2（蜀）'] = {id = 236 , note = "蜀候从二品2" , desc = "官居从二品" , icon = "CB\\HandBook\\ICON\\congerpinzhongjianjun.dds" , img = "CB\\HandBook\\IMG\\congerpinzhongjianjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新文候从二品1（蜀）'] = {id = 237 , note = "蜀候从二品1" , desc = "官居从二品" , icon = "CB\\HandBook\\ICON\\congerpinzhongjianjun.dds" , img = "CB\\HandBook\\IMG\\congerpinzhongjianjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新文候从二品4（吴）'] = {id = 238 , note = "吴监军" , desc = "官居从二品领军中资重者之称，执掌禁兵。" , icon = "CB\\HandBook\\ICON\\congerpinzhongjianjun.dds" , img = "CB\\HandBook\\IMG\\congerpinzhongjianjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新文候从二品3（吴）'] = {id = 239 , note = "吴候从二品3" , desc = "官居从二品" , icon = "CB\\HandBook\\ICON\\congerpinzhongjianjun.dds" , img = "CB\\HandBook\\IMG\\congerpinzhongjianjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新文候从二品2（吴）'] = {id = 240 , note = "吴候从二品2" , desc = "官居从二品" , icon = "CB\\HandBook\\ICON\\congerpinzhongjianjun.dds" , img = "CB\\HandBook\\IMG\\congerpinzhongjianjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新文候从二品1（吴）'] = {id = 241 , note = "吴候从二品1" , desc = "官居从二品" , icon = "CB\\HandBook\\ICON\\congerpinzhongjianjun.dds" , img = "CB\\HandBook\\IMG\\congerpinzhongjianjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新左冯翊（魏）'] = {id = 242 , note = "魏左冯翊" , desc = "官居从二品左冯翊，管辖渭河以北、泾河以东、洛河中下游地区。" , icon = "CB\\HandBook\\ICON\\congerpinzuofengyiwei.dds" , img = "CB\\HandBook\\IMG\\congerpinzuofengyiwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新右扶风（魏）'] = {id = 243 , note = "魏右扶风" , desc = "官居从二品右扶风，管辖秦岭以北，咸阳以西之地。" , icon = "CB\\HandBook\\ICON\\congerpinyoufufengwei.dds" , img = "CB\\HandBook\\IMG\\congerpinyoufufengwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新京兆尹（魏）'] = {id = 244 , note = "魏京兆尹" , desc = "官居从二品京兆尹，京师的行政长官。" , icon = "CB\\HandBook\\ICON\\congerpinjingzhaoyinwei.dds" , img = "CB\\HandBook\\IMG\\congerpinjingzhaoyinwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新大长秋（魏）'] = {id = 245 , note = "魏大长秋" , desc = "官居从二品大长秋，宣达皇后旨意，管理宫中事宜。" , icon = "CB\\HandBook\\ICON\\congerpindazhangqiuwei.dds" , img = "CB\\HandBook\\IMG\\congerpindazhangqiuwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品宗正（魏）'] = {id = 246 , note = "魏宗正" , desc = "官居从二品宗正，九卿之一，掌管皇族与外戚事务。" , icon = "CB\\HandBook\\ICON\\weiguoerpinzongzheng.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinzongzheng.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品廷尉（魏）'] = {id = 247 , note = "魏廷尉" , desc = "官居从二品廷尉，九卿之一，掌管刑法狱讼。" , icon = "CB\\HandBook\\ICON\\weiguoerpintingwei.dds" , img = "CB\\HandBook\\IMG\\weiguoerpintingwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品光禄勋（魏）'] = {id = 248 , note = "魏光禄勋" , desc = "官居从二品光禄勋，九卿之一，掌管宿卫宫殿门户。" , icon = "CB\\HandBook\\ICON\\weiguoerpinguangluxun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinguangluxun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品少府（魏）'] = {id = 249 , note = "魏少府" , desc = "官居从二品少府，九卿之一，掌管皇室财务。" , icon = "CB\\HandBook\\ICON\\weiguoerpinguangshaofu.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinguangshaofu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新左冯翊（蜀）'] = {id = 250 , note = "蜀左冯翊" , desc = "官居从二品左冯翊，管辖渭河以北、泾河以东、洛河中下游地区。" , icon = "CB\\HandBook\\ICON\\congerpinzuofengyishu.dds" , img = "CB\\HandBook\\IMG\\congerpinzuofengyishu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新右扶风（蜀）'] = {id = 251 , note = "蜀右扶风" , desc = "官居从二品右扶风，管辖秦岭以北，咸阳以西之地。" , icon = "CB\\HandBook\\ICON\\congerpinyoufufengshu.dds" , img = "CB\\HandBook\\IMG\\congerpinyoufufengshu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新京兆尹（蜀）'] = {id = 252 , note = "蜀京兆尹" , desc = "官居从二品京兆尹，京师的行政长官。" , icon = "CB\\HandBook\\ICON\\congerpinjingzhaoyinshu.dds" , img = "CB\\HandBook\\IMG\\congerpinjingzhaoyinshu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新大长秋（蜀）'] = {id = 253 , note = "蜀大长秋" , desc = "官居从二品大长秋，宣达皇后旨意，管理宫中事宜。" , icon = "CB\\HandBook\\ICON\\congerpindazhangqiushu.dds" , img = "CB\\HandBook\\IMG\\congerpindazhangqiushu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品宗正（蜀）'] = {id = 254 , note = "蜀宗正" , desc = "官居从二品宗正，九卿之一，掌管皇族与外戚事务。" , icon = "CB\\HandBook\\ICON\\xishuerpinzongzheng.dds" , img = "CB\\HandBook\\IMG\\xishuerpinzongzheng.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品廷尉（蜀）'] = {id = 255 , note = "蜀廷尉" , desc = "官居从二品廷尉，九卿之一，掌管刑法狱讼。" , icon = "CB\\HandBook\\ICON\\xishuerpintingwei.dds" , img = "CB\\HandBook\\IMG\\xishuerpintingwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品光禄勋（蜀）'] = {id = 256 , note = "蜀光禄勋" , desc = "官居从二品光禄勋，九卿之一，掌管宿卫宫殿门户。" , icon = "CB\\HandBook\\ICON\\xishuerpinguangluxun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinguangluxun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品少府（蜀）'] = {id = 257 , note = "蜀少府" , desc = "官居从二品少府，九卿之一，掌管皇室财务。" , icon = "CB\\HandBook\\ICON\\xishuerpinshaofu.dds" , img = "CB\\HandBook\\IMG\\xishuerpinshaofu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新左冯翊（吴）'] = {id = 258 , note = "吴左冯翊" , desc = "官居从二品左冯翊，管辖渭河以北、泾河以东、洛河中下游地区。" , icon = "CB\\HandBook\\ICON\\congerpinzuofengyiwu.dds" , img = "CB\\HandBook\\IMG\\congerpinzuofengyiwu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新右扶风（吴）'] = {id = 259 , note = "吴右扶风" , desc = "官居从二品右扶风，管辖秦岭以北，咸阳以西之地。" , icon = "CB\\HandBook\\ICON\\congerpinyoufufengwu.dds" , img = "CB\\HandBook\\IMG\\congerpinyoufufengwu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新京兆尹（吴）'] = {id = 260 , note = "吴京兆尹" , desc = "官居从二品京兆尹，京师的行政长官。" , icon = "CB\\HandBook\\ICON\\congerpinjingzhaoyinwu.dds" , img = "CB\\HandBook\\IMG\\congerpinjingzhaoyinwu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新大长秋（吴）'] = {id = 261 , note = "吴大长秋" , desc = "官居从二品大长秋，宣达皇后旨意，管理宫中事宜。" , icon = "CB\\HandBook\\ICON\\congerpindazhangqiuwu.dds" , img = "CB\\HandBook\\IMG\\congerpindazhangqiuwu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品宗正（吴）'] = {id = 262 , note = "吴宗正" , desc = "官居从二品宗正，九卿之一，掌管皇族与外戚事务。" , icon = "CB\\HandBook\\ICON\\erpinzongzheng.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinzongzheng.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品廷尉（吴）'] = {id = 263 , note = "吴廷尉" , desc = "官居从二品廷尉，九卿之一，掌管刑法狱讼。" , icon = "CB\\HandBook\\ICON\\erpintingwei.dds" , img = "CB\\HandBook\\IMG\\wuguoerpintingwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品光禄勋（吴）'] = {id = 264 , note = "吴光禄勋" , desc = "官居从二品光禄勋，九卿之一，掌管宿卫宫殿门户。" , icon = "CB\\HandBook\\ICON\\erpinguangluxun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinguangluxun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品少府（吴）'] = {id = 265 , note = "吴少府" , desc = "官居从二品少府，九卿之一，掌管皇室财务。" , icon = "CB\\HandBook\\ICON\\erpinshaofu.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinshaofu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品太仆（魏）'] = {id = 266 , note = "魏太仆" , desc = "官居正二品太仆，九卿之一，掌管舆马及牧畜。" , icon = "CB\\HandBook\\ICON\\weiguoerpintaipu.dds" , img = "CB\\HandBook\\IMG\\weiguoerpintaipu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品太常（魏）'] = {id = 267 , note = "魏太常" , desc = "官居正二品太常，九卿之一，掌管礼乐社稷、宗庙礼仪。" , icon = "CB\\HandBook\\ICON\\weiguoerpintaichang.dds" , img = "CB\\HandBook\\IMG\\weiguoerpintaichang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品卫尉（魏）'] = {id = 268 , note = "魏卫尉" , desc = "官居正二品卫尉，九卿之一，掌管皇城巡视。" , icon = "CB\\HandBook\\ICON\\weiguoerpinweiwei.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinweiwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品大鸿胪（魏）'] = {id = 269 , note = "魏大鸿胪" , desc = "官居正二品 大鸿胪，九卿之一，掌管接待宾客。" , icon = "CB\\HandBook\\ICON\\weiguoerpindahonglu.dds" , img = "CB\\HandBook\\IMG\\weiguoerpindahonglu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品大司农（魏）'] = {id = 270 , note = "魏大司农" , desc = "官居正二品 大司农，九卿之一，掌管国家财政。" , icon = "CB\\HandBook\\ICON\\weiguoerpindasinong.dds" , img = "CB\\HandBook\\IMG\\weiguoerpindasinong.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品太仆（蜀）'] = {id = 271 , note = "蜀太仆" , desc = "官居正二品 太仆，九卿之一，掌管舆马及牧畜。" , icon = "CB\\HandBook\\ICON\\xishuerpintaipu.dds" , img = "CB\\HandBook\\IMG\\xishuerpintaipu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品太常（蜀）'] = {id = 272 , note = "蜀太常" , desc = "官居正二品 太常，九卿之一，掌管礼乐社稷、宗庙礼仪。" , icon = "CB\\HandBook\\ICON\\xishuerpintaichang.dds" , img = "CB\\HandBook\\IMG\\xishuerpintaichang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品卫尉（蜀）'] = {id = 273 , note = "蜀卫尉" , desc = "官居正二品 卫尉，九卿之一，掌管皇城巡视。" , icon = "CB\\HandBook\\ICON\\xishuerpinweiwei.dds" , img = "CB\\HandBook\\IMG\\xishuerpinweiwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品大鸿胪（蜀）'] = {id = 274 , note = "蜀大鸿胪" , desc = "官居正二品 大鸿胪，九卿之一，掌管接待宾客。" , icon = "CB\\HandBook\\ICON\\xishuerpindahonglu.dds" , img = "CB\\HandBook\\IMG\\xishuerpindahonglu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品大司农（蜀）'] = {id = 275 , note = "蜀大司农" , desc = "官居正二品 大司农，九卿之一，掌管国家财政。" , icon = "CB\\HandBook\\ICON\\xishuerpindasinong.dds" , img = "CB\\HandBook\\IMG\\xishuerpindasinong.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品太仆（吴）'] = {id = 276 , note = "吴太仆" , desc = "官居正二品 太仆，九卿之一，掌管舆马及牧畜。" , icon = "CB\\HandBook\\ICON\\erpintaipu.dds" , img = "CB\\HandBook\\IMG\\wuguoerpintaipu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品太常（吴）'] = {id = 277 , note = "吴太常" , desc = "官居正二品 太常，九卿之一，掌管礼乐社稷、宗庙礼仪。" , icon = "CB\\HandBook\\ICON\\erpintaichang.dds" , img = "CB\\HandBook\\IMG\\wuguoerpintaichang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品卫尉（吴）'] = {id = 278 , note = "吴卫尉" , desc = "官居正二品 卫尉，九卿之一，掌管皇城巡视。" , icon = "CB\\HandBook\\ICON\\erpinweiwei.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinweiwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品大鸿胪（吴）'] = {id = 279 , note = "吴大鸿胪" , desc = "官居正二品 大鸿胪，九卿之一，掌管接待宾客。" , icon = "CB\\HandBook\\ICON\\erpindahonghu.dds" , img = "CB\\HandBook\\IMG\\wuguoerpindahonghu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品大司农（吴）'] = {id = 280 , note = "吴大司农" , desc = "官居正二品 大司农，九卿之一，掌管国家财政。" , icon = "CB\\HandBook\\ICON\\erpindasinong.dds" , img = "CB\\HandBook\\IMG\\wuguoerpindasinong.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品司空（魏）'] = {id = 281 , note = "魏司空" , desc = "官居从一品 司空，三公之一，掌管全国行政。" , icon = "CB\\HandBook\\ICON\\weiguoyipinsikong.dds" , img = "CB\\HandBook\\IMG\\weiguoyipinsikong.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品司徒（魏）'] = {id = 282 , note = "魏司徒" , desc = "官居从一品 司徒，三公之一，掌管全国刑法。" , icon = "CB\\HandBook\\ICON\\weiguoyipinsitu.dds" , img = "CB\\HandBook\\IMG\\weiguoyipinsitu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品太尉（魏）'] = {id = 283 , note = "魏太尉" , desc = "官居从一品 太尉，三公之一，掌管全国军政。" , icon = "CB\\HandBook\\ICON\\weiguoyipintaiwei.dds" , img = "CB\\HandBook\\IMG\\weiguoyipintaiwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品司空（蜀）'] = {id = 284 , note = "蜀司空" , desc = "官居从一品 司空，三公之一，掌管全国行政。" , icon = "CB\\HandBook\\ICON\\xishuyipinsikong.dds" , img = "CB\\HandBook\\IMG\\xishuyipinsikong.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品司徒（蜀）'] = {id = 285 , note = "蜀司徒" , desc = "官居从一品 司徒，三公之一，掌管全国刑法。" , icon = "CB\\HandBook\\ICON\\xishuyipinsitu.dds" , img = "CB\\HandBook\\IMG\\xishuyipinsitu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品太尉（蜀）'] = {id = 286 , note = "蜀太尉" , desc = "官居从一品 太尉，三公之一，掌管全国军政。" , icon = "CB\\HandBook\\ICON\\xishuyipintaiwei.dds" , img = "CB\\HandBook\\IMG\\xishuyipintaiwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品司空（吴）'] = {id = 287 , note = "吴司空" , desc = "官居从一品 司空，三公之一，掌管全国行政。" , icon = "CB\\HandBook\\ICON\\yipinsikong.dds" , img = "CB\\HandBook\\IMG\\wuguoyipinsikong.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品司徒（吴）'] = {id = 288 , note = "吴司徒" , desc = "官居从一品 司徒，三公之一，掌管全国刑法。" , icon = "CB\\HandBook\\ICON\\yipinsitu.dds" , img = "CB\\HandBook\\IMG\\wuguoyipinsitu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品太尉（吴）'] = {id = 289 , note = "吴太尉" , desc = "官居从一品 太尉，三公之一，掌管全国军政。" , icon = "CB\\HandBook\\ICON\\yipintaiwei.dds" , img = "CB\\HandBook\\IMG\\wuguoyipintaiwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新正一品大丞相（魏）'] = {id = 290 , note = "魏大丞相" , desc = "官居正一品 大丞相，曹魏最高政府首脑，统领全国文官。" , icon = "CB\\HandBook\\ICON\\weiguozhengyipindachengxiang.dds" , img = "CB\\HandBook\\IMG\\weiguozhengyipindachengxiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新正一品大丞相（蜀）'] = {id = 291 , note = "蜀大丞相" , desc = "官居正一品 大丞相，蜀汉最高政府首脑，统领全国文官。" , icon = "CB\\HandBook\\ICON\\xishuzhengyipindachengxiang.dds" , img = "CB\\HandBook\\IMG\\xishuzhengyipindachengxiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新正一品大丞相（吴）'] = {id = 292 , note = "吴大丞相" , desc = "官居正一品 大丞相，东吴最高政府首脑，统领全国文官。" , icon = "CB\\HandBook\\ICON\\zhengyipindachengxiang.dds" , img = "CB\\HandBook\\IMG\\wuguozhengyipindachengxiang.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新武候从二品4（魏）'] = {id = 293 , note = "魏领军将军" , desc = "官居从二品 将军领兵出征时，多置监军。诸州不置都督时置此官。" , icon = "CB\\HandBook\\ICON\\congerpinlingjunjiangjun.dds" , img = "CB\\HandBook\\IMG\\congerpinlingjunjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新武候从二品3（魏）'] = {id = 294 , note = "魏候从二品3" , desc = "官居从二品 " , icon = "CB\\HandBook\\ICON\\congerpinlingjunjiangjun.dds" , img = "CB\\HandBook\\IMG\\congerpinlingjunjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新武候从二品2（魏）'] = {id = 295 , note = "魏候从二品2" , desc = "官居从二品 " , icon = "CB\\HandBook\\ICON\\congerpinlingjunjiangjun.dds" , img = "CB\\HandBook\\IMG\\congerpinlingjunjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新武候从二品1（魏）'] = {id = 296 , note = "魏候从二品1" , desc = "官居从二品 " , icon = "CB\\HandBook\\ICON\\congerpinlingjunjiangjun.dds" , img = "CB\\HandBook\\IMG\\congerpinlingjunjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新武候从二品4（蜀）'] = {id = 297 , note = "蜀领军将军" , desc = "官居从二品 将军领兵出征时，多置监军。诸州不置都督时置此官。" , icon = "CB\\HandBook\\ICON\\congerpinlingjunjiangjun.dds" , img = "CB\\HandBook\\IMG\\congerpinlingjunjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新武候从二品3（蜀）'] = {id = 298 , note = "蜀候从二品3" , desc = "官居从二品 " , icon = "CB\\HandBook\\ICON\\congerpinlingjunjiangjun.dds" , img = "CB\\HandBook\\IMG\\congerpinlingjunjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新武候从二品2（蜀）'] = {id = 299 , note = "蜀候从二品2" , desc = "官居从二品 " , icon = "CB\\HandBook\\ICON\\congerpinlingjunjiangjun.dds" , img = "CB\\HandBook\\IMG\\congerpinlingjunjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新武候从二品1（蜀）'] = {id = 300 , note = "蜀候从二品1" , desc = "官居从二品 " , icon = "CB\\HandBook\\ICON\\congerpinlingjunjiangjun.dds" , img = "CB\\HandBook\\IMG\\congerpinlingjunjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新武候从二品4（吴）'] = {id = 301 , note = "吴领军将军" , desc = "官居从二品 将军领兵出征时，多置监军。诸州不置都督时置此官。" , icon = "CB\\HandBook\\ICON\\congerpinlingjunjiangjun.dds" , img = "CB\\HandBook\\IMG\\congerpinlingjunjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新武候从二品3（吴）'] = {id = 302 , note = "吴候从二品3" , desc = "官居从二品 " , icon = "CB\\HandBook\\ICON\\congerpinlingjunjiangjun.dds" , img = "CB\\HandBook\\IMG\\congerpinlingjunjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新武候从二品2（吴）'] = {id = 303 , note = "吴候从二品2" , desc = "官居从二品 " , icon = "CB\\HandBook\\ICON\\congerpinlingjunjiangjun.dds" , img = "CB\\HandBook\\IMG\\congerpinlingjunjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新武候从二品1（吴）'] = {id = 304 , note = "吴候从二品1" , desc = "官居从二品 " , icon = "CB\\HandBook\\ICON\\congerpinlingjunjiangjun.dds" , img = "CB\\HandBook\\IMG\\congerpinlingjunjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 7 , effect = "" , hidden = 1}
collection_definition['印玺－新镇北将军（魏）'] = {id = 305 , note = "魏镇北将军" , desc = "官居从二品 镇北将军，位次四征将军，领兵如征北将军。" , icon = "CB\\HandBook\\ICON\\congerpinzhenbeijiangjunwei.dds" , img = "CB\\HandBook\\IMG\\congerpinzhenbeijiangjunwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新镇西将军（魏）'] = {id = 306 , note = "魏镇西将军" , desc = "官居从二品 镇西将军，位次四征将军，领兵如征西将军。" , icon = "CB\\HandBook\\ICON\\congerpinzhenxijiangjunwei.dds" , img = "CB\\HandBook\\IMG\\congerpinzhenxijiangjunwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新镇南将军（魏）'] = {id = 307 , note = "魏镇南将军" , desc = "官居从二品 镇南将军，位次四征将军，领兵如征南将军。" , icon = "CB\\HandBook\\ICON\\congerpinzhennanjiangjunwei.dds" , img = "CB\\HandBook\\IMG\\congerpinzhennanjiangjunwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新镇东将军（魏）'] = {id = 308 , note = "魏镇东将军" , desc = "官居从二品 镇东将军，位次四征将军，领兵如征东将军。" , icon = "CB\\HandBook\\ICON\\congerpinzhendongjiangjunwei.dds" , img = "CB\\HandBook\\IMG\\congerpinzhendongjiangjunwei.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品征北将军（魏）'] = {id = 309 , note = "魏征北将军" , desc = "官居从二品 征北将军，统领幽、冀、并三州军事，屯驻蓟。" , icon = "CB\\HandBook\\ICON\\weiguoerpinzhengbeijiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinzhengbeijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品征西将军（魏）'] = {id = 310 , note = "魏征西将军" , desc = "官居从二品 征西将军，统领雍、凉二州军事，屯驻长安。" , icon = "CB\\HandBook\\ICON\\weiguoerpinzhengxijiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinzhengxijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品征南将军（魏）'] = {id = 311 , note = "魏征南将军" , desc = "官居从二品 征南将军，统领荆、豫二州军事，屯驻新野。" , icon = "CB\\HandBook\\ICON\\weiguoerpinzhengnanjiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinzhengnanjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品征东将军（魏）'] = {id = 312 , note = "魏征东将军" , desc = "官居从二品 征东将军，统领青、兖、徐、扬四州军事，屯驻扬州。" , icon = "CB\\HandBook\\ICON\\weiguoerpinzhengdongjiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinzhengdongjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新镇北将军（蜀）'] = {id = 313 , note = "蜀镇北将军" , desc = "官居从二品 镇北将军，位次四征将军，领兵如征北将军。" , icon = "CB\\HandBook\\ICON\\congerpinzhenbeijiangjunshu.dds" , img = "CB\\HandBook\\IMG\\congerpinzhenbeijiangjunshu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新镇西将军（蜀）'] = {id = 314 , note = "蜀镇西将军" , desc = "官居从二品 镇西将军，位次四征将军，领兵如征西将军。" , icon = "CB\\HandBook\\ICON\\congerpinzhenxijiangjunshu.dds" , img = "CB\\HandBook\\IMG\\congerpinzhenxijiangjunshu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新镇南将军（蜀）'] = {id = 315 , note = "蜀镇南将军" , desc = "官居从二品 镇南将军，位次四征将军，领兵如征南将军。" , icon = "CB\\HandBook\\ICON\\congerpinzhennanjiangjunshu.dds" , img = "CB\\HandBook\\IMG\\congerpinzhennanjiangjunshu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新镇东将军（蜀）'] = {id = 316 , note = "蜀镇东将军" , desc = "官居从二品 镇东将军，位次四征将军，领兵如征东将军。" , icon = "CB\\HandBook\\ICON\\congerpinzhendongjiangjunshu.dds" , img = "CB\\HandBook\\IMG\\congerpinzhendongjiangjunshu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品征北将军（蜀）'] = {id = 317 , note = "蜀征北将军" , desc = "官居从二品 征北将军，统领幽、冀、并三州军事，屯驻蓟。" , icon = "CB\\HandBook\\ICON\\xishuerpinzhengbeijiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinzhengbeijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品征西将军（蜀）'] = {id = 318 , note = "蜀征西将军" , desc = "官居从二品 征西将军，统领雍、凉二州军事，屯驻长安。" , icon = "CB\\HandBook\\ICON\\xishuerpinzhengxijiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinzhengxijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品征南将军（蜀）'] = {id = 319 , note = "蜀征南将军" , desc = "官居从二品 征南将军，统领荆、豫二州军事，屯驻新野。" , icon = "CB\\HandBook\\ICON\\xishuerpinzhengnanjiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinzhengnanjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品征东将军（蜀）'] = {id = 320 , note = "蜀征东将军" , desc = "官居从二品 征东将军，统领青、兖、徐、扬四州军事，屯驻扬州。" , icon = "CB\\HandBook\\ICON\\xishuerpinzhengdongjiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinzhengdongjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新镇北将军（吴）'] = {id = 321 , note = "吴镇北将军" , desc = "官居从二品 镇北将军，位次四征将军，领兵如征北将军。" , icon = "CB\\HandBook\\ICON\\congerpinzhenbeijiangjunwu.dds" , img = "CB\\HandBook\\IMG\\congerpinzhenbeijiangjunwu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新镇西将军（吴）'] = {id = 322 , note = "吴镇西将军" , desc = "官居从二品 镇西将军，位次四征将军，领兵如征西将军。" , icon = "CB\\HandBook\\ICON\\congerpinzhenxijiangjunwu.dds" , img = "CB\\HandBook\\IMG\\congerpinzhenxijiangjunwu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新镇南将军（吴）'] = {id = 323 , note = "吴镇南将军" , desc = "官居从二品 镇南将军，位次四征将军，领兵如征南将军。" , icon = "CB\\HandBook\\ICON\\congerpinzhennanjiangjunwu.dds" , img = "CB\\HandBook\\IMG\\congerpinzhennanjiangjunwu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新镇东将军（吴）'] = {id = 324 , note = "吴镇东将军" , desc = "官居从二品 镇东将军，位次四征将军，领兵如征东将军。" , icon = "CB\\HandBook\\ICON\\congerpinzhendongjiangjunwu.dds" , img = "CB\\HandBook\\IMG\\congerpinzhendongjiangjunwu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品征北将军（吴）'] = {id = 325 , note = "吴征北将军" , desc = "官居从二品 征北将军，统领幽、冀、并三州军事，屯驻蓟。" , icon = "CB\\HandBook\\ICON\\erpinzhengbeijiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinzhengbeijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品征西将军（吴）'] = {id = 326 , note = "吴征西将军" , desc = "官居从二品 征西将军，统领雍、凉二州军事，屯驻长安。" , icon = "CB\\HandBook\\ICON\\erpinzhengxijiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinzhengxijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品征南将军（吴）'] = {id = 327 , note = "吴征南将军" , desc = "官居从二品 征南将军，统领荆、豫二州军事，屯驻新野。" , icon = "CB\\HandBook\\ICON\\erpinzhengnanjiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinzhengnanjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从二品征东将军（吴）'] = {id = 328 , note = "吴征东将军" , desc = "官居从二品 征东将军，统领青、兖、徐、扬四州军事，屯驻扬州。" , icon = "CB\\HandBook\\ICON\\erpinzhengdongjiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinzhengdongjiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品抚军大将军（魏）'] = {id = 329 , note = "魏抚军大将军" , desc = "官居正二品 抚军大将军，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoerpinfujundajiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinfujundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品镇军大将军（魏）'] = {id = 330 , note = "魏镇军大将军" , desc = "官居正二品 镇军大将军，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoerpinzhenjundajiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinzhenjundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品辅国大将军（魏）'] = {id = 331 , note = "魏辅国大将军" , desc = "官居正二品 辅国大将军，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoerpinfuguodajiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinfuguodajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品中军大将军（魏）'] = {id = 332 , note = "魏中军大将军" , desc = "官居正二品 中军大将军，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoerpinzhongjundajiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinzhongjundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品上军大将军（魏）'] = {id = 333 , note = "魏上军大将军" , desc = "官居正二品 上军大将军，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoerpinshangjundajiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoerpinshangjundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品抚军大将军（蜀）'] = {id = 334 , note = "蜀抚军大将军" , desc = "官居正二品 抚军大将军，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\xishuerpinfujundajiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinfujundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品镇军大将军（蜀）'] = {id = 335 , note = "蜀镇军大将军" , desc = "官居正二品 镇军大将军，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\xishuerpinzhenjundajiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinzhenjundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品右车骑将军（蜀）'] = {id = 336 , note = "蜀右车骑将军" , desc = "官居正二品 右车骑将军，蜀置，仅次于车骑将军的将军号。" , icon = "CB\\HandBook\\ICON\\xishuerpinyoucheqijiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinyoucheqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品右骠骑将军（蜀）'] = {id = 337 , note = "蜀右骠骑将军" , desc = "官居正二品 右骠骑将军，蜀置，仅次于骠骑将军的将军号。" , icon = "CB\\HandBook\\ICON\\xishuerpinyoubiaoqijiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinyoubiaoqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品右大将军（蜀）'] = {id = 338 , note = "蜀右大将军" , desc = "官居正二品 右大将军，蜀置，仅次于大将军的将军号。" , icon = "CB\\HandBook\\ICON\\xishuerpinyoudajiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuerpinyoudajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品抚军大将军（吴）'] = {id = 339 , note = "吴抚军大将军" , desc = "官居正二品 抚军大将军，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\erpinfujundajiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinfujundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品镇军大将军（吴）'] = {id = 340 , note = "吴镇军大将军" , desc = "官居正二品 镇军大将军，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\erpinzhenjundajiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinzhenjundajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品辅国大将军（吴）'] = {id = 341 , note = "吴辅国大将军" , desc = "官居正二品 辅国大将军，仅次于三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\erpinfuguodajiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinfuguodajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品右都护（吴）'] = {id = 342 , note = "吴右都护" , desc = "官居正二品 右都护，吴置，统领全国半数的军队。" , icon = "CB\\HandBook\\ICON\\erpinyoudouhu.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinyoudouhu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新正二品左都护（吴）'] = {id = 343 , note = "吴左都护" , desc = "官居正二品 左都护，吴置，统领全国半数的军队。" , icon = "CB\\HandBook\\ICON\\erpinzuodouhu.dds" , img = "CB\\HandBook\\IMG\\wuguoerpinzuodouhu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 8 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品卫将军（魏）'] = {id = 344 , note = "魏卫将军" , desc = "官居从一品 卫将军，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoyipinweijiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoyipinweijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品车骑将军（魏）'] = {id = 345 , note = "魏车骑将军" , desc = "官居从一品 车骑将军，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoyipincheqijiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoyipincheqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品骠骑将军（魏）'] = {id = 346 , note = "魏骠骑将军" , desc = "官居从一品 骠骑将军，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\weiguoyipinbiaoqijiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguoyipinbiaoqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品卫将军（蜀）'] = {id = 347 , note = "蜀卫将军" , desc = "官居从一品 卫将军，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\xishuyipinweijiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuyipinweijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品车骑将军（蜀）'] = {id = 348 , note = "蜀车骑将军" , desc = "官居从一品 车骑将军，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\xishuyipincheqijiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuyipincheqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品骠骑将军（蜀）'] = {id = 349 , note = "蜀骠骑将军" , desc = "官居从一品 骠骑将军，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\xishuyipinbiaoqijiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuyipinbiaoqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品卫将军（吴）'] = {id = 350 , note = "吴卫将军" , desc = "官居从一品 卫将军，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\yipinweijiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoyipinweijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品车骑将军（吴）'] = {id = 351 , note = "吴车骑将军" , desc = "官居从一品 车骑将军，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\yipincheqijiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoyipincheqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新从一品骠骑将军（吴）'] = {id = 352 , note = "吴骠骑将军" , desc = "官居从一品 骠骑将军，三公级别的将军号。" , icon = "CB\\HandBook\\ICON\\yipinbiaoqijiangjun.dds" , img = "CB\\HandBook\\IMG\\wuguoyipinbiaoqijiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新正一品大将军（魏）'] = {id = 353 , note = "魏大将军" , desc = "官居正一品 大将军，曹魏最高军事统帅，统领全国武将。" , icon = "CB\\HandBook\\ICON\\weiguozhengyipinweidajiangjun.dds" , img = "CB\\HandBook\\IMG\\weiguozhengyipinweidajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新正一品大将军（蜀）'] = {id = 354 , note = "蜀大将军" , desc = "官居正一品 大将军，蜀汉最高军事统帅，统领全国武将。" , icon = "CB\\HandBook\\ICON\\xishuzhengyipindajiangjun.dds" , img = "CB\\HandBook\\IMG\\xishuzhengyipindajiangjun.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['印玺－新正一品大都督（吴）'] = {id = 355 , note = "吴大都督" , desc = "官居正一品 大都督，东吴最高军事统帅，统领全国武将。" , icon = "CB\\HandBook\\ICON\\zhengyipindadoudu.dds" , img = "CB\\HandBook\\IMG\\wuguozhengyipindadoudu.dds" , type = "印玺" , from = "由对应官职获得" , rank = 9 , effect = "" , hidden = 1}
collection_definition['七星湖人物图鉴01'] = {id = 356 , note = "孟获" , desc = "南蛮大王。与诸葛亮的南征军交战，留下了七擒七纵的轶事。" , icon = "CB\\HandBook\\ICON\\menghuo.DDS" , img = "CB\\HandBook\\IMG\\menghuo.DDS" , type = "人物" , from = "七星湖战术任务" , rank = 5 , effect = "" , hidden = 1}
collection_definition['七星湖人物图鉴02'] = {id = 357 , note = "祝融夫人" , desc = "据传为火神祝融氏后裔，南蛮王孟获之妻。武艺超群，善使飞刀。" , icon = "CB\\HandBook\\ICON\\banadongfashi.dds" , img = "CB\\HandBook\\IMG\\banadongfashi.dds" , type = "人物" , from = "七星湖战术任务" , rank = 5 , effect = "" , hidden = 1}
collection_definition['七星湖人物图鉴03'] = {id = 358 , note = "孟优" , desc = "南蛮王孟获之弟。与诸葛亮的南征军交战，向败战的兄长推荐朵思大王，劝兄长借助朵思之力与蜀汉军对抗。" , icon = "CB\\HandBook\\ICON\\nanmanpanjun.dds" , img = "CB\\HandBook\\IMG\\nanmanpanjun.dds" , type = "人物" , from = "七星湖战术任务" , rank = 5 , effect = "" , hidden = 1}
collection_definition['七星湖人物图鉴04'] = {id = 359 , note = "带来洞主" , desc = "孟获之妻祝融夫人之弟。向与蜀汉军交手连战连败的孟获推荐木鹿大王、兀突骨，劝其邀请他们出击。" , icon = "CB\\HandBook\\ICON\\manzulangqibing.dds" , img = "CB\\HandBook\\IMG\\manzulangqibing.DDS" , type = "人物" , from = "七星湖战术任务" , rank = 5 , effect = "" , hidden = 1}
collection_definition['七星湖人物图鉴05'] = {id = 360 , note = "金环三结" , desc = "南蛮王孟获的属下，第一洞元帅。" , icon = "CB\\HandBook\\ICON\\banadongmanbing.dds" , img = "CB\\HandBook\\IMG\\banadongmanbing.dds" , type = "人物" , from = "七星湖战术任务" , rank = 5 , effect = "" , hidden = 1}
collection_definition['七星湖人物图鉴06'] = {id = 361 , note = "董荼那" , desc = "南蛮王孟获的属下，第二洞元帅。" , icon = "CB\\HandBook\\ICON\\banadongtoumu.dds" , img = "CB\\HandBook\\IMG\\banadongtoumu.dds" , type = "人物" , from = "七星湖战术任务" , rank = 5 , effect = "" , hidden = 1}
collection_definition['七星湖人物图鉴07'] = {id = 362 , note = "阿会喃" , desc = "南蛮王孟获的属下，第三洞元帅。" , icon = "CB\\HandBook\\ICON\\nanmanjiangling.dds" , img = "CB\\HandBook\\IMG\\nanmanjiangling.dds" , type = "人物" , from = "七星湖战术任务" , rank = 5 , effect = "" , hidden = 1}
collection_definition['七星湖人物图鉴08'] = {id = 363 , note = "忙牙长" , desc = "南蛮王孟获的部将，使一口截头大刀，骑一匹黄骠马。率军与蜀军交战，战败王平。后被平北将军马岱斩杀。" , icon = "CB\\HandBook\\ICON\\nanmanweibingduizhang.dds" , img = "CB\\HandBook\\IMG\\nanmanweibingduizhang.dds" , type = "人物" , from = "七星湖战术任务" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城文官图鉴01'] = {id = 364 , note = "郭嘉列传" , desc = "字奉孝，颍川阳翟人，本属于袁绍麾下，后成为曹操麾下重要谋士。年仅37岁时在乌桓讨伐中去世。曹操在赤壁大败后悔恨说：郭奉孝在，不使孤至此。" , icon = "CB\\HandBook\\ICON\\wens01.DDS" , img = "CB\\HandBook\\IMG\\wenl01.DDS" , type = "列传" , from = "文官列传之一" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城文官图鉴02'] = {id = 365 , note = "贾诩列传" , desc = "字文和，武威姑臧人。魏国著名谋士，官至太尉。劝说董卓余部李、郭攻破长安，协助张绣多次大败曹操，进言曹操用离间计分化马超、韩遂。奇谋百出，算无遗策，可与汉初谋臣张良、陈平相比。" , icon = "CB\\HandBook\\ICON\\wens02.DDS" , img = "CB\\HandBook\\IMG\\wenl02.DDS" , type = "列传" , from = "文官列传之二" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城文官图鉴03'] = {id = 366 , note = "司马懿列传" , desc = "字仲达,河内温县人。辅佐了魏国三代的托孤辅政之重臣。与诸葛亮在祁山进行过多次拉锯战。奇袭孟达之战和奇袭公孙渊之战都是三国经典战役。后期成为全权掌控魏国朝政的权臣，奠定了司马家最终夺取天下建立晋朝的基业。" , icon = "CB\\HandBook\\ICON\\wens03.DDS" , img = "CB\\HandBook\\IMG\\wenl03.DDS" , type = "列传" , from = "文官列传之三" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城文官图鉴04'] = {id = 367 , note = "程昱列传" , desc = "字仲德，兖州东郡人，本名立，因梦中於泰山捧日，更名为昱。辅佐曹操在许多大事上出谋划策。但生性刚戾，与人多有不和。" , icon = "CB\\HandBook\\ICON\\wens04.DDS" , img = "CB\\HandBook\\IMG\\wenl04.DDS" , type = "列传" , from = "汉末英雄列传" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城文官图鉴05'] = {id = 368 , note = "陈群列传" , desc = "字长文，颍川望族之后，曾在徐州为刘备所用。吕布破后归附曹操。魏国建立后，陈群作为尚书制订了九品官人法。最后以司空之位去世。" , icon = "CB\\HandBook\\ICON\\wens05.DDS" , img = "CB\\HandBook\\IMG\\wenl05.DDS" , type = "列传" , from = "汉末英雄列传" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城文官图鉴06'] = {id = 369 , note = "诸葛亮列传" , desc = "字孔明，号卧龙，琅琊阳都人。受刘备三顾茅庐之礼出山，留下了舌战群儒、隆中对、八阵图、七擒孟获、北伐祁山、空城计等流芳千古的轶闻。" , icon = "CB\\HandBook\\ICON\\wens06.DDS" , img = "CB\\HandBook\\IMG\\wenl06.DDS" , type = "列传" , from = "文官列传之四" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城文官图鉴07'] = {id = 370 , note = "庞统列传" , desc = "字士元，荆州襄阳人。东汉末年刘备帐下谋士，官拜军师中郎将。才智与诸葛亮齐名，道号“凤雏”。在进围雒县时，统率众攻城，不幸被流矢击中去世，时年三十六岁。" , icon = "CB\\HandBook\\ICON\\wens07.DDS" , img = "CB\\HandBook\\IMG\\wenl07.DDS" , type = "列传" , from = "文官列传之五" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城文官图鉴08'] = {id = 371 , note = "徐庶列传" , desc = "本名徐福，年少时爱好任侠击剑，后折节向学，因中原战乱，客居于荆州，与诸葛亮、司马徽、庞统等人相友善。后徐庶效力于刘备，还推荐了诸葛亮。长坂之战时，徐庶的母亲被曹军抓获，于是徐庶北投曹操，在魏官至右中郎将、御史中丞。" , icon = "CB\\HandBook\\ICON\\wens08.DDS" , img = "CB\\HandBook\\IMG\\wenl08.DDS" , type = "列传" , from = "文官列传之六" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城文官图鉴09'] = {id = 372 , note = "法正列传" , desc = "字孝直，扶风郿县人。东汉末年名士，本为刘璋部下，刘备入蜀时归于刘备帐下。刘备自称汉中王后，封法正为尚书令、护军将军。法正善于奇谋，被陈寿称赞为可比魏国的程昱和郭嘉。" , icon = "CB\\HandBook\\ICON\\wens09.DDS" , img = "CB\\HandBook\\IMG\\wenl09.DDS" , type = "列传" , from = "汉末英雄列传" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城文官图鉴10'] = {id = 373 , note = "蒋琬列传" , desc = "字公琰，三国湘乡人，少时以才名闻于郡县。赤壁战后，随刘备入蜀，初为广都长，常感不展其志。刘备出巡见其不理政事又经常醉酒，大怒欲严刑处死。因军师诸葛亮识其才能，劝谏刘备仅仅免去蒋琬官。诸葛亮去世时推荐蒋琬接替自己掌政。蒋琬主政蜀汉十二年，政通人和，安居乐业。 " , icon = "CB\\HandBook\\ICON\\wens10.DDS" , img = "CB\\HandBook\\IMG\\wenl10.DDS" , type = "列传" , from = "汉末英雄列传" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城文官图鉴11'] = {id = 374 , note = "周瑜列传" , desc = "字公瑾，庐江舒县人，人称美周郎。自幼与孙坚之子孙策交好。美姿容，精音律，长壮有姿貌。民间流传名句：曲有误，周郎顾。建安十三年在赤壁之战中大败曹军，奠定了三分天下的基础。后图进中原，不幸病逝于巴丘，年仅三十六岁。" , icon = "CB\\HandBook\\ICON\\wens11.DDS" , img = "CB\\HandBook\\IMG\\wenl11.DDS" , type = "列传" , from = "文官列传之七" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城文官图鉴12'] = {id = 375 , note = "张昭列传" , desc = "字子布，彭城人。深为孙策所器重，有关文武之事均由张昭办理。 孙策死时将孙权托付给张昭，张昭则尽力辅佐孙权，迅速稳定了民心士气。张昭敢于直言谏议，曾因违背孙权意愿而一度不让他朝见。孙权称帝之后，张昭因年老多病而辞官。 " , icon = "CB\\HandBook\\ICON\\wens12.DDS" , img = "CB\\HandBook\\IMG\\wenl12.DDS" , type = "列传" , from = "汉末英雄列传" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城文官图鉴13'] = {id = 376 , note = "陆逊列传" , desc = "字伯言，吴郡吴县人。为孙策之婿，历任东吴大都督、丞相。世代为江东大族。夷陵之战中火烧连营，大破刘备。" , icon = "CB\\HandBook\\ICON\\wens13.DDS" , img = "CB\\HandBook\\IMG\\wenl13.DDS" , type = "列传" , from = "文官列传之八" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城文官图鉴14'] = {id = 377 , note = "鲁肃列传" , desc = "字子敬，临淮东城人。早年拒绝了袁术的聘请，经周瑜推荐成为孙权的参谋，很早就为孙权谋划了成就帝业的战略计划，深受孙权器重。在赤壁之战前后奠定孙刘联盟立下大功。周瑜去世后，鲁肃接任他的位置，负责处理荆州事务。" , icon = "CB\\HandBook\\ICON\\wens14.DDS" , img = "CB\\HandBook\\IMG\\wenl14.DDS" , type = "列传" , from = "汉末英雄列传" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城文官图鉴15'] = {id = 378 , note = "诸葛瑾列传" , desc = "字子瑜，琅邪阳都人。诸葛亮之兄，诸葛恪之父。经鲁肃推荐为东吴效力。胸怀宽广，温厚诚信，得到孙权的深深信赖，努力缓和蜀汉与东吴的关系。吕蒙病逝后，诸葛瑾代吕蒙领南郡太守，驻守公安。孙权称帝后，诸葛瑾官至大将军，领豫州牧。据说面长如驴。" , icon = "CB\\HandBook\\ICON\\wens15.DDS" , img = "CB\\HandBook\\IMG\\wenl15.DDS" , type = "列传" , from = "汉末英雄列传" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城武官图鉴01'] = {id = 379 , note = "夏侯敦列传" , desc = "字元让，夏侯婴之后，少习枪棒，武艺过人。太祖起兵，夏侯敦率众来投，自此随之征战。曹操讨吕布中有夏侯吞眼的逸事。夏侯敦常为先锋，杀敌破阵，冲锋在前，立功无数。曹操病笃，夏侯敦往见之，於宫门处遇鬼惊倒，自此染病。魏文帝曹丕践祚，以夏侯敦为大将军。不久病卒。文帝为之挂孝。" , icon = "CB\\HandBook\\ICON\\wus01.DDS" , img = "CB\\HandBook\\IMG\\wul01.DDS" , type = "列传" , from = "武官列传之一" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城武官图鉴02'] = {id = 380 , note = "夏侯渊列传" , desc = "字妙才，夏侯惇族弟，勇力过人。少年时曾经为曹操顶罪。曹操起兵之后，夏侯渊随曹操而起，并常年转战各地，克昌豨，剿雷绪，攻马超、逐韩遂，灭宋建，平诸羌，当时号称虎步关右，所向无前。封为博昌亭侯，征西将军。定军山之战中为蜀将黄忠突袭，战死。" , icon = "CB\\HandBook\\ICON\\wus02.DDS" , img = "CB\\HandBook\\IMG\\wul02.DDS" , type = "列传" , from = "汉末英雄列传" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城武官图鉴03'] = {id = 381 , note = "张辽列传" , desc = "字文远，雁门马邑人，本聂壹之后，为避灾祸改姓张。曾先后从属丁原、董卓、吕布。吕布败亡后归曹操。随曹军征讨，战功累累。与关羽同解白马围，攻袁尚于邺城，率先锋斩乌丸单于蹋顿于白狼山。合肥之战张辽率队迎击，以八百之众袭孙权先锋，挫其锐气。后孙权军感染瘟疫，敌军十万退却，张辽逍遥津追击时险些活捉孙权，威震敌国，名威天下。" , icon = "CB\\HandBook\\ICON\\wus03.DDS" , img = "CB\\HandBook\\IMG\\wul03.DDS" , type = "列传" , from = "武官列传之二" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城武官图鉴04'] = {id = 382 , note = "徐晃列传" , desc = "字公明，河东杨县人。曹魏五子良将之一。原为杨奉部下。曹操击败杨奉后投靠曹操。参加过多次重大作战，智勇双全。曹操曾称赞徐晃有周亚夫之风。官渡之战中烧毁袁绍的后勤粮草。关羽围樊城之际，徐晃奉命解围。孟达叛乱，徐晃作为司马懿军先锋前往征讨，中箭而卒。 " , icon = "CB\\HandBook\\ICON\\wus04.DDS" , img = "CB\\HandBook\\IMG\\wul04.DDS" , type = "列传" , from = "汉末英雄列传" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城武官图鉴05'] = {id = 383 , note = "张合列传" , desc = "字俊乂，河间人。曹魏五子良将之一。他先後跟随韩馥、袁绍。官渡之战中，张合率部投降了曹操，为曹操平定北方立下了汗马功劳。后在街亭之战中击败马谡，挫败诸葛亮第一次北伐。" , icon = "CB\\HandBook\\ICON\\wus05.DDS" , img = "CB\\HandBook\\IMG\\wul05.DDS" , type = "列传" , from = "汉末英雄列传" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城武官图鉴06'] = {id = 384 , note = "关羽列传" , desc = "字云长，本字长生，河东解县人。一直是历来民间崇祀的对象。与刘备，张飞桃园结义。在《三国演义》中被描述为蜀汉五虎上将之首，死后受民间推崇，又经历代朝廷褒封，被人奉为“关圣帝君”，佛教称为“伽蓝菩萨”，尊称为“关公”。被后来的统治者崇为“武圣”，与“文圣”孔子齐名。《三国演义》中，有“千里走单骑”“单刀赴宴”“温酒斩华雄”等佳话。" , icon = "CB\\HandBook\\ICON\\wus06.DDS" , img = "CB\\HandBook\\IMG\\wul06.DDS" , type = "列传" , from = "武官列传之三" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城武官图鉴07'] = {id = 385 , note = "张飞列传" , desc = "字益德，涿郡人，身高八尺，是三国演义中桃园结义的老三。蜀汉五虎上将之一。在长坂坡当阳桥头上一声吼，吓退曹操五千精骑，入川义释严颜，分定州县，率精兵击败张合大军。公元221年为夺回荆州，同刘备起兵攻伐东吴。临行前，被部将范疆、张达刺杀。" , icon = "CB\\HandBook\\ICON\\wus07.DDS" , img = "CB\\HandBook\\IMG\\wul07.DDS" , type = "列传" , from = "武官列传之四" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城武官图鉴08'] = {id = 386 , note = "赵云列传" , desc = "字子龙，常山真定人。蜀汉五虎上将之一，初从公孙瓒，后归刘备。曹操取荆州，刘备败于当阳长阪，他力战救护甘夫人和备子刘禅。刘备得益州，任为翊军将军，从攻汉中。建兴六年，从诸葛亮攻关中，分兵拒曹真主力，终寡不敌众，退回汉中，次年卒。他曾以数十骑拒曹操大军，被刘备誉为一身都是胆。" , icon = "CB\\HandBook\\ICON\\wus08.DDS" , img = "CB\\HandBook\\IMG\\wul08.DDS" , type = "列传" , from = "武官列传之五" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城武官图鉴09'] = {id = 387 , note = "马超列传" , desc = "字孟起，扶风茂陵人。蜀汉五虎上将之一，后汉征西将军马腾长子。年十七随父马腾攻击长安，杀李傕将李蒙、王方。曹操诱杀马腾后，马超与韩遂举西凉兵报仇，酣战许褚。因曹操离间计而战败，往汉中投张鲁。张鲁使马超救刘璋与刘备军作战，马超与张飞大战百余合。后受张鲁谋士杨松诬陷，投奔刘备，因此促成了刘璋归降。刘备称帝后，以马超为骠骑将军，领凉州牧，镇守西境。" , icon = "CB\\HandBook\\ICON\\wus09.DDS" , img = "CB\\HandBook\\IMG\\wul09.DDS" , type = "列传" , from = "汉末英雄列传" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城武官图鉴10'] = {id = 388 , note = "黄忠列传" , desc = "字汉升，荆州南阳人。蜀汉五虎上将之一。黄忠原在刘表麾下任职中郎将，与刘表从子刘磐共守长沙。曹操南侵荆州后，统属于长沙太守韩玄手下。赤壁之战后刘备平定荆南四郡，黄忠归附刘备，并随刘备军入川。益州定后，被封为讨虏将军。219年汉中之战，黄忠在定军山战役中斩杀魏国名将夏侯渊，大败曹军。" , icon = "CB\\HandBook\\ICON\\wus10.DDS" , img = "CB\\HandBook\\IMG\\wul10.DDS" , type = "列传" , from = "汉末英雄列传" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城武官图鉴11'] = {id = 389 , note = "孙策列传" , desc = "字伯符，吴郡富春人。孙坚之子，孙权长兄。东汉末年割据江东。绰号“小霸王”。后因被刺客淬毒刺伤后身亡，寿止二十六岁。" , icon = "CB\\HandBook\\ICON\\wus15.DDS" , img = "CB\\HandBook\\IMG\\wul15.DDS" , type = "列传" , from = "武官列传之六" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城武官图鉴12'] = {id = 390 , note = "太史慈列传" , desc = "字子义，东莱黄县人。弓马熟练，箭法精良。原为刘繇部下，与小霸王孙策一战不分胜负。后被孙策收降，于赤壁之战前病逝，死时年仅四十一，临终长叹：丈夫生世，当带七尺之剑，以升天子之阶。今所志未从，奈何而死乎？" , icon = "CB\\HandBook\\ICON\\wus12.DDS" , img = "CB\\HandBook\\IMG\\wul12.DDS" , type = "列传" , from = "武官列传之七" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城武官图鉴13'] = {id = 391 , note = "甘宁列传" , desc = "字兴霸，巴郡临江人。建安九年率八百健儿依刘表，不见进用。建安十年转托黄祖，黄祖又以凡人畜之。期间曾射杀凌统之父凌操，因此与凌统有杀父之仇。建安十三年归吴见用于孙权，大有作为。破黄祖据楚关，攻曹仁取夷陵，镇益阳拒关羽，守西陵获朱光，百骑袭曹营，孙权评价甘宁说：孟德有张辽，孤有甘兴霸，足可敌矣。" , icon = "CB\\HandBook\\ICON\\wus13.DDS" , img = "CB\\HandBook\\IMG\\wul13.DDS" , type = "列传" , from = "武官列传之八" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城武官图鉴14'] = {id = 392 , note = "周泰列传" , desc = "字幼平，生卒年不详，九江下蔡人。孙策讨伐六县山贼时，周泰胆气绝伦，保卫孙权，勇战退敌，身受十二处伤。后屡次出战，在讨伐黄祖、赤壁之战、南郡之战、濡须口之战中多次勇战立功。孙权任命周泰留督濡须，拜平虏将军。朱然、徐盛等为周泰部下，心中不服。孙权特行酒到周泰座位，手自指其伤疤询问受伤缘由，周泰一一作答，于是诸将心服。" , icon = "CB\\HandBook\\ICON\\wus14.DDS" , img = "CB\\HandBook\\IMG\\wul14.DDS" , type = "列传" , from = "汉末英雄列传" , rank = 5 , effect = "" , hidden = 1}
collection_definition['白帝城武官图鉴15'] = {id = 393 , note = "凌统列传" , desc = "字公绩，三国吴郡馀杭人，吴将凌操之子。夏口一战中，凌操不幸中流矢死。凌统时年十五岁，随军征进，奋力抢父尸而归。建安十三年春，孙权进攻江夏，凌统为前锋斩黄祖部将张硕。后与周瑜等于乌林击败曹操兵马。合肥之战，凌统率三百亲兵从重围救出孙权，三百将士尽战死，凌统也被创。卒时年四十九岁。孙权闻讯，哀不自止。" , icon = "CB\\HandBook\\ICON\\wus15.DDS" , img = "CB\\HandBook\\IMG\\wul15.DDS" , type = "列传" , from = "汉末英雄列传" , rank = 5 , effect = "" , hidden = 1}
collection_definition['风景－殇之雪域'] = {id = 394 , note = "殇之雪域" , desc = "地之尽头，雪域极境，魔王城巅，寒冰王座。" , icon = "CB\\HandBook\\ICON\\shangzhixueyuxiao.dds" , img = "CB\\HandBook\\IMG\\shangzhixueyuda.dds" , type = "风景" , from = "出自 酒馆任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－留芳幽谷'] = {id = 395 , note = "留芳幽谷" , desc = "幽谷之中，神秘莫测，云深不知处。" , icon = "CB\\HandBook\\ICON\\liufangyouguxiao.dds" , img = "CB\\HandBook\\IMG\\liufangyouguda.dds" , type = "风景" , from = "出自 酒馆任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－楼兰沙海'] = {id = 396 , note = "楼兰沙海" , desc = "楼兰古国，西域绿洲。沙海茫茫，商旅驼铃。" , icon = "CB\\HandBook\\ICON\\loulanshahaixiao.dds" , img = "CB\\HandBook\\IMG\\loulanshahaida.dds" , type = "风景" , from = "出自 酒馆任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－迷花雨林'] = {id = 397 , note = "迷花雨林" , desc = "雨林遮日，奇花异草，宛如世界终结之处。" , icon = "CB\\HandBook\\ICON\\mihuayulinxiao.dds" , img = "CB\\HandBook\\IMG\\mihuayulinda.dds" , type = "风景" , from = "出自 酒馆任务" , rank = 1 , effect = "" , hidden = 1}
collection_definition['风景－川南'] = {id = 398 , note = "川南" , desc = "雨林遮日，奇花异草，宛如世界终结之处。" , icon = "CB\\HandBook\\ICON\\chuannan.dds" , img = "CB\\HandBook\\IMG\\chuannan.dds" , type = "风景" , from = "出自 酒馆任务" , rank = 1 , effect = "" , hidden = 1}

collection_definition['八阵图名将图鉴21'] = {id =399 , note = "魏延" , desc = "集齐10个蜀国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【黑血咒】^ffffff：持续损失气血，持续30秒\r^ff80ff【弱化】^ffffff：降低直抗，持续30秒\r^ff80ff【鬼杀刀】^ffffff：单体攻击，并造成晕眩6秒" , icon = "CB\\HandBook\\ICON\\八阵图魏延图标.dds" , img = "CB\\HandBook\\IMG\\八阵图魏延.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 2 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴15'] = {id =400 , note = "孟获" , desc = "集齐10个蜀国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【南疆奇咒】^ffffff：小范围群攻并降低敌人气血最大值\r^ff80ff【百兽击】^ffffff：群攻并造成晕眩5秒\r^ff80ff【天生蛮力】^ffffff：单体强攻" , icon = "CB\\HandBook\\ICON\\八阵图孟获图标.dds" , img = "CB\\HandBook\\IMG\\八阵图孟获.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 3 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴14'] = {id =401 , note = "马云鹭" , desc = "集齐10个蜀国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【五毒咒】^ffffff：持续损失气血，持续30秒\r^ff80ff【破风枪】^ffffff：对直线范围的敌人造成巨大伤害" , icon = "CB\\HandBook\\ICON\\八阵图马云鹭图标.dds" , img = "CB\\HandBook\\IMG\\八阵图马云鹭.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 4 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴08'] = {id =402 , note = "黄忠" , desc = "集齐10个蜀国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【老骥伏枥】^ffffff：提升自身攻击、防御和爆击率，但移动速度降低，持续15秒\r^ff80ff【连珠箭】^ffffff：万箭齐发，对扇形区域内敌人造成巨大伤害\r^ff80ff【缠字诀】^ffffff：如影随形，造成定身5秒" , icon = "CB\\HandBook\\ICON\\八阵图黄忠图标.dds" , img = "CB\\HandBook\\IMG\\八阵图黄忠.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 4 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴31'] = {id =403 , note = "诸葛亮" , desc = "集齐10个蜀国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【风卷残云】^ffffff：对扇形区域内敌人造成三段伤害和风袭效果，持续5秒\r^ff80ff【风袭】^ffffff：减速1米/秒，降低攻击速度、吟唱速度10%，可叠加5层\r^ff80ff【密云不雨】^ffffff：范围群攻，对敌人造成六段伤害\r^ff80ff【直捣黄龙】^ffffff：对直线范围的敌人造成巨大伤害\r^ff80ff【风盾】^ffffff：自身获得风盾状态，100%吸收伤害，持续10秒" , icon = "CB\\HandBook\\ICON\\八阵图诸葛亮图标.dds" , img = "CB\\HandBook\\IMG\\八阵图诸葛亮.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 6 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴28'] = {id =404 , note = "赵云" , desc = "集齐10个蜀国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【承影枪】^ffffff：对直线范围的敌人造成伤害\r^ff80ff【灭元斩】^ffffff：对扇形区域内敌人造成伤害\r^ff80ff【狂浪袭】^ffffff：攻击速度降低10%，叠加到5层时即死\r^ff80ff【清心诀】^ffffff：驱散马超降攻强状态" , icon = "CB\\HandBook\\ICON\\八阵图赵云图标.dds" , img = "CB\\HandBook\\IMG\\八阵图赵云.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 7 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴13'] = {id =405 , note = "马超" , desc = "集齐10个蜀国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【承影枪】^ffffff：对直线范围的敌人造成伤害\r^ff80ff【灭元斩】^ffffff：对扇形区域内敌人造成伤害\r^ff80ff【狂木潮】^ffffff：攻击强度降低10%，叠加到5层时即死\r^ff80ff【普善诀】^ffffff：驱散赵云降攻速状态" , icon = "CB\\HandBook\\ICON\\八阵图马超图标.dds" , img = "CB\\HandBook\\IMG\\八阵图马超.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 7 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴09'] = {id =406 , note = "刘备" , desc = "集齐10个蜀国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【子母剑】^ffffff：对直线范围的敌人造成伤害\r^ff80ff【沐皇恩】^ffffff：范围群攻，并造成沉默5秒\r^ff80ff【仁德】^ffffff：每3秒回复2%生命，持续30秒" , icon = "CB\\HandBook\\ICON\\八阵图刘备图标.dds" , img = "CB\\HandBook\\IMG\\八阵图刘备.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 8 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴07'] = {id =407 , note = "关羽" , desc = "集齐10个蜀国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【浩气四塞】^ffffff：对扇形区域内敌人造成伤害\r^ff80ff【青龙偃月】^ffffff：范围群攻\r^ff80ff【韦陀伏魔】^ffffff：对扇形区域内敌人造成伤害\r^ff80ff【武圣】^ffffff：范围内敌人的直抗间抗降低100，持续30秒" , icon = "CB\\HandBook\\ICON\\八阵图关羽图标.dds" , img = "CB\\HandBook\\IMG\\八阵图关羽.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 8 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴26'] = {id =408 , note = "张飞" , desc = "集齐10个蜀国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【丈八蛇矛】^ffffff：对扇形区域内敌人造成三段伤害\r^ff80ff【开山劲】^ffffff：对扇形区域内敌人造成伤害\r^ff80ff【燕人喝】^ffffff：小范围群攻，并造成晕眩3秒\r^ff80ff【肝胆裂】^ffffff：即时减少50斗气，100体力\r^ff80ff【暴怒】^ffffff：暴击提升60，持续30秒" , icon = "CB\\HandBook\\ICON\\八阵图张飞图标.dds" , img = "CB\\HandBook\\IMG\\八阵图张飞.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 8 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴04'] = {id =409 , note = "典韦" , desc = "集齐10个魏国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【忠兽】^ffffff：对扇形区域内敌人造成伤害，造成晕眩状态5秒\r^ff80ff【古之恶来】^ffffff：范围群攻\r^ff80ff【丧魂双戟】^ffffff：对扇形区域内敌人造成伤害" , icon = "CB\\HandBook\\ICON\\八阵图典韦图标.dds" , img = "CB\\HandBook\\IMG\\八阵图典韦.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 2 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴24'] = {id =410 , note = "许褚" , desc = "集齐10个魏国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【血河刃】^ffffff：对扇形区域内敌人造成伤害\r^ff80ff【虎痴】^ffffff：对目标范围内的敌人造成巨大伤害" , icon = "CB\\HandBook\\ICON\\八阵图许褚图标.dds" , img = "CB\\HandBook\\IMG\\八阵图许褚.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 3 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴22'] = {id =411 , note = "夏侯惇" , desc = "集齐10个魏国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【同归于尽】^ffffff：敌我皆伤，持续20秒\r^ff80ff【固若金汤】^ffffff：自身获得无敌状态，持续5秒\r^ff80ff【化精成虚】^ffffff：一定范围内，敌人体力斗气气血不断流失，持续10秒" , icon = "CB\\HandBook\\ICON\\八阵图夏侯惇图标.dds" , img = "CB\\HandBook\\IMG\\八阵图夏侯惇.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 4 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴27'] = {id =412 , note = "张辽" , desc = "集齐10个魏国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【天将奔】^ffffff：范围群攻\r^ff80ff【焦灼炎舞】^ffffff：持续损失气血，持续45秒" , icon = "CB\\HandBook\\ICON\\八阵图张辽图标.dds" , img = "CB\\HandBook\\IMG\\八阵图张辽.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 5 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴16'] = {id =413 , note = "司马懿" , desc = "集齐10个魏国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【天火燎原】^ffffff：对目标范围内敌人造成六段伤害，附加烧灼状态。命中减少150，每秒流血3%最大生命值，不可叠加，持续5秒\r^ff80ff【流星火】^ffffff：对目标范围内敌人造成五段伤害，附加晕眩状态5秒\r^ff80ff【火甲】^ffffff：自身获得火甲状态，被攻击则回复2%最大生命值，持续10秒\r^ff80ff【天虹潺潺】^ffffff：对目标范围内敌人造成伤害，若被击中目标身上有烧灼状态则眩晕5秒" , icon = "CB\\HandBook\\ICON\\八阵图司马懿图标.dds" , img = "CB\\HandBook\\IMG\\八阵图司马懿.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 6 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴29'] = {id =414 , note = "甄宓" , desc = "集齐10个魏国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【朱红杀阵】^ffffff：对扇形区域内敌人造成伤害\r^ff80ff【惊鸿舞】^ffffff：对小范围内敌人附加泪殇状态，每秒流失10点斗气，20点体力，持续10秒\r^ff80ff【凌波曲】^ffffff：自身获得轻云蔽月状态，暴击者受到惩罚，持续20分钟" , icon = "CB\\HandBook\\ICON\\八阵图甄宓图标.dds" , img = "CB\\HandBook\\IMG\\八阵图甄宓.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 7 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴25'] = {id =415 , note = "张春华" , desc = "集齐10个魏国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【靛雷裂地】^ffffff：对直线范围内敌人造成二段伤害，附加麻痹状态，持续3秒\r^ff80ff【游气化金】^ffffff：范围群攻造成五段伤害\r^ff80ff【五雷正法】^ffffff：范围群攻造成六段伤害\r^ff80ff【雷甲】^ffffff：自身获得雷甲状态，被攻击则反弹麻痹状态，持续10秒" , icon = "CB\\HandBook\\ICON\\八阵图张春华图标.dds" , img = "CB\\HandBook\\IMG\\八阵图张春华.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 7 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴01'] = {id = 416 , note = "曹操" , desc = "集齐10个魏国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【倚天】^ffffff：对扇形区域内敌人造成二段伤害\r^ff80ff【青梅煮酒】^ffffff：一定范围内，直抗间抗降低20，持续5秒\r^ff80ff【李代桃僵】^ffffff：自身获得奸雄状态，反弹80%伤害，持续10秒\r^ff80ff【周公吐哺】^ffffff：单体标记，持续8秒\r^ff80ff【天下归心】^ffffff：对直线范围内敌人造成伤害，目标若有曹操标记，额外扣除一半最大气血值" , icon = "CB\\HandBook\\ICON\\八阵图曹操图标.dds" , img = "CB\\HandBook\\IMG\\八阵图曹操.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 8 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴02'] = {id =417 , note = "曹丕" , desc = "集齐10个魏国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【三日结寒】^ffffff：对扇形区域内敌人造成二段伤害\r^ff80ff【点墨】^ffffff：单体标记，持续8秒\r^ff80ff【书风流墨意】^ffffff：一定范围内，沉默5秒，目标若有曹丕标记，额外沉默5秒\r^ff80ff【七步诗】^ffffff：随机发给一个玩家发一张七步诗，此玩家须在6秒内将诗篇对其他玩家使用，以将七步诗状态传染给下一个玩家。完成3次传递后，将最后一张七步诗对曹植使用，对曹植造成巨大伤害" , icon = "CB\\HandBook\\ICON\\八阵图曹丕图标.dds" , img = "CB\\HandBook\\IMG\\八阵图曹丕.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 8 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴03'] = {id =418 , note = "曹植" , desc = "集齐10个魏国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【三生醉梦】^ffffff：对扇形区域内敌人造成二段伤害\r^ff80ff【踏歌行】^ffffff：对直线范围内敌人造成伤害\r^ff80ff【枕花】^ffffff：单体标记，持续8秒\r^ff80ff【笑酒烈歌狂】^ffffff：一定范围内，晕眩5秒，目标若有曹植标记，额外晕眩5秒\r^ff80ff【洛神赋】^ffffff：随机发给一个玩家发一张洛神赋，此玩家须在6秒内将诗篇对其他玩家使用，以将洛神赋状态传染给下一个玩家。完成3次传递后，将最后一张洛神赋对曹丕使用，对曹丕造成巨大伤害" , icon = "CB\\HandBook\\ICON\\八阵图曹植图标.dds" , img = "CB\\HandBook\\IMG\\八阵图曹植.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 8 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴23'] = {id =419 , note = "小乔" , desc = "集齐9个吴国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【祭柳归灵】^ffffff：降低气血最大值，持续10秒\r^ff80ff【青风薪荣】^ffffff：持续损失气血，持续30秒" , icon = "CB\\HandBook\\ICON\\八阵图小乔图标.dds" , img = "CB\\HandBook\\IMG\\八阵图小乔.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 2 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴20'] = {id =420 , note = "太史慈" , desc = "集齐9个吴国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【食魂咒】^ffffff：对直线范围内敌人造成伤害，降低攻击强度30%，减速2，持续15秒；减20点防御，可叠加，持续10秒\r^ff80ff【追星破月】^ffffff：对直线范围内敌人造成伤害，附带晕眩状态6秒\r^ff80ff【罡风阵】^ffffff：范围群攻" , icon = "CB\\HandBook\\ICON\\八阵图太史慈图标.dds" , img = "CB\\HandBook\\IMG\\八阵图太史慈.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 3 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴06'] = {id =421 , note = "甘宁" , desc = "集齐9个吴国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【斗气审批】^ffffff：判断敌人斗气给予极大伤害\r^ff80ff【百结封】^ffffff：持续损失气血、冰冻、降低50%气血最大值，持续10秒" , icon = "CB\\HandBook\\ICON\\八阵图甘宁图标.dds" , img = "CB\\HandBook\\IMG\\八阵图甘宁.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 4 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴12'] = {id =422 , note = "吕蒙" , desc = "集齐9个吴国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【霞云罩身】^ffffff：自身获得附体之火状态，攻击强度大幅增加，持续60秒\r^ff80ff【十面埋伏】^ffffff：小范围多段群攻\r^ff80ff【诛杀阵】^ffffff：大范围群攻" , icon = "CB\\HandBook\\ICON\\八阵图吕蒙图标.dds" , img = "CB\\HandBook\\IMG\\八阵图吕蒙.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 5 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴10'] = {id =423 , note = "陆逊" , desc = "集齐9个吴国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【乌雪纷飞】^ffffff：小范围群攻\r^ff80ff【冰石乱坠】^ffffff：对目标范围内敌人造成5段伤害，每段均有几率附加冰气状态，每3秒持续损失2%最大气血值，持续7秒；若玩家处于冰气状态，则被冰冻5秒\r^ff80ff【冬云灌顶】^ffffff：对目标范围内敌人造成伤害，附加冰冻状态5秒\r^ff80ff【冰甲】^ffffff：自身获得冰甲状态，被攻击则反弹冰冻状态，持续10秒" , icon = "CB\\HandBook\\ICON\\八阵图陆逊图标.dds" , img = "CB\\HandBook\\IMG\\八阵图陆逊.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 6 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴30'] = {id =424 , note = "周瑜" , desc = "集齐9个吴国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【横剑摆渡】^ffffff：对扇形区域内敌人造成二段伤害\r^ff80ff【负手山河】^ffffff：对目标范围内敌人造成伤害，并附加鼓舞状态，攻击大幅提升，持续20秒\r^ff80ff【长河吟】^ffffff：范围内群体附加鼓舞状态，攻击大幅提升，持续20秒" , icon = "CB\\HandBook\\ICON\\八阵图周瑜图标.dds" , img = "CB\\HandBook\\IMG\\八阵图周瑜.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 7 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴18'] = {id =425 , note = "孙权" , desc = "集齐9个吴国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【金灵疾空】^ffffff：对扇形区域内敌人造成二段伤害\r^ff80ff【白虎星降】^ffffff：对目标范围内敌人造成五段伤害，每段吸取1%最大气血值，附加冰冻状态5秒\r^ff80ff【草木皆兵】^ffffff：对直线范围内敌人造成伤害，若目标有中毒状态，则获得沉默状态5秒；若目标有疲惫状态，则体力值上限降低5秒；若目标有衰弱状态，则斗气值上限降低5秒\r^ff80ff【天龙焰】^ffffff：对直线范围内敌人造成伤害，若目标的攻强、攻速、攻击任一正被孙策降低，则获得孙权重伤状态" , icon = "CB\\HandBook\\ICON\\八阵图孙权图标.dds" , img = "CB\\HandBook\\IMG\\八阵图孙权.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 8 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴17'] = {id =426 , note = "孙策" , desc = "集齐9个吴国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【涛澜动地】^ffffff：对直线范围内敌人造成伤害，若目标有中毒状态，则攻强降低50%，持续10秒；若目标有疲惫状态，则攻速降低50%，持续10秒；若目标有衰弱状态，则攻击降低50%，持续10秒\r^ff80ff【伏虎冲天】^ffffff： 一定范围内对敌人造成伤害，附加晕眩状态3秒，若目标有孙权重伤状态，则被秒杀\r^ff80ff【怒空摘星】^ffffff：对直线范围内敌人造成伤害，若目标正被孙权沉默、、降低体力上限、降低斗气上限任一，则获得孙策重伤状态" , icon = "CB\\HandBook\\ICON\\八阵图孙策图标.dds" , img = "CB\\HandBook\\IMG\\八阵图孙策.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 7 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴19'] = {id =427 , note = "孙尚香" , desc = "集齐9个吴国武将图鉴，每周可在长安张华处领取奖励\r^ff80ff【落英箭】^ffffff：单体目标中毒，持续损失气血，持续8秒\r^ff80ff【横云箭】^ffffff：单体目标疲惫，持续损失体力，持续8秒\r^ff80ff【秋水箭】^ffffff：单体目标衰弱，持续损失斗气，持续8秒\r^ff80ff【凤鸣江南】^ffffff：自身获得狂暴状态，攻速提升50%，攻强提升50%，闪避提升400，持续10秒\r^ff80ff【禁食咒】^ffffff：对扇形区域内敌人造成伤害，使其10秒内无法使用药膏" , icon = "CB\\HandBook\\ICON\\八阵图孙尚香图标.dds" , img = "CB\\HandBook\\IMG\\八阵图孙尚香.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 8 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴11'] = {id =428 , note = "吕布" , desc = "集齐吕布貂蝉图鉴，每周可在长安张华处领取奖励\r^ff80ff【勇冠三军】^ffffff：一定范围内对敌人造成三段严重伤害\r^ff80ff【九气破霄】^ffffff：一定范围内，群体晕眩4秒\r^ff80ff【方天画戟】^ffffff：一定范围内对敌人造成七段巨大伤害\r^ff80ff【冲冠一怒】^ffffff：自身获得狂暴状态，攻击提升500，暴击增加50，持续30秒" , icon = "CB\\HandBook\\ICON\\八阵图吕布图标.dds" , img = "CB\\HandBook\\IMG\\八阵图吕布.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 9 , effect = "" , hidden = 1}
collection_definition['八阵图名将图鉴05'] = {id =429 , note = "貂蝉" , desc = "集齐吕布貂蝉图鉴，每周可在长安张华处领取奖励\r^ff80ff【玉山倾】^ffffff：对扇形区域内敌人造成伤害\r^ff80ff【回波辞】^ffffff：单体目标沉默3秒\r^ff80ff【红袖添香】^ffffff：单体目标，附加魅惑状态，持续5秒\r^ff80ff【歌尽桃花】^ffffff：一定范围内附加疲惫和衰弱状态，持续10秒\r^ff80ff【香初上舞】^ffffff：回复自身气血" , icon = "CB\\HandBook\\ICON\\八阵图貂蝉图标.dds" , img = "CB\\HandBook\\IMG\\八阵图貂蝉.dds" , type = "八阵图" , from = "出自 外传-幻想八阵图·休门" , rank = 9 , effect = "" , hidden = 1}
collection_definition['战场达人合肥之战（英雄级）'] = {id =430 , note = "合肥之战" , desc = "收集战场达人图鉴可在陈寿处领取战场达人奖励！" , icon = "CB\\HandBook\\ICON\\八阵图孙权图标.dds" , img = "CB\\HandBook\\IMG\\八阵图孙权.dds" , type = "活动" , from = "出自 演义-合肥之战（英雄级）" , rank = 1 , effect = "" , hidden = 1}
collection_definition['战场达人英雄志·许褚传'] = {id =431 , note = "许褚传" , desc = "收集战场达人图鉴可在陈寿处领取战场达人奖励！" , icon = "CB\\HandBook\\ICON\\八阵图许褚图标.dds" , img = "CB\\HandBook\\IMG\\八阵图许褚.dds" , type = "活动" , from = "出自 外传-英雄志·许褚传" , rank = 1 , effect = "" , hidden = 1}
collection_definition['战场达人英雄志·甘宁传'] = {id =432 , note = "甘宁传" , desc = "收集战场达人图鉴可在陈寿处领取战场达人奖励！" , icon = "CB\\HandBook\\ICON\\八阵图甘宁图标.dds" , img = "CB\\HandBook\\IMG\\八阵图甘宁.dds" , type = "活动" , from = "出自 外传-英雄志·甘宁传" , rank = 1 , effect = "" , hidden = 1}
collection_definition['战场达人七擒孟获'] = {id =433 , note = "七擒孟获" , desc = "收集战场达人图鉴可在陈寿处领取战场达人奖励！" , icon = "CB\\HandBook\\ICON\\八阵图孟获图标.dds" , img = "CB\\HandBook\\IMG\\八阵图孟获.dds" , type = "活动" , from = "出自 演义-七擒孟获" , rank = 1 , effect = "" , hidden = 1}
collection_definition['战场达人幻想八阵图休门'] = {id =434 , note = "休门" , desc = "收集战场达人图鉴可在陈寿处领取战场达人奖励！" , icon = "CB\\HandBook\\ICON\\八阵图吕布图标.dds" , img = "CB\\HandBook\\IMG\\八阵图吕布.dds" , type = "活动" , from = "出自 外传-幻想八阵图休门" , rank = 1 , effect = "" , hidden = 1}
collection_definition['战场达人北邙皇陵'] = {id =435 , note = "北邙皇陵" , desc = "收集战场达人图鉴可在陈寿处领取战场达人奖励！" , icon = "CB\\HandBook\\ICON\\banadongfashi.dds" , img = "CB\\HandBook\\IMG\\banadongfashi.dds" , type = "活动" , from = "出自 无双-北邙皇陵" , rank = 1 , effect = "" , hidden = 1}
collection_definition['战场达人甘露寺'] = {id =436 , note = "甘露寺" , desc = "收集战场达人图鉴可在陈寿处领取战场达人奖励！" , icon = "CB\\HandBook\\ICON\\banadongmanbing.dds" , img = "CB\\HandBook\\IMG\\banadongmanbing.dds" , type = "活动" , from = "出自 演义-甘露寺" , rank = 1 , effect = "" , hidden = 1}
collection_definition['战场达人虎牢英雄级'] = {id =437 , note = "虎牢关群英会" , desc = "收集战场达人图鉴可在陈寿处领取战场达人奖励！" , icon = "CB\\HandBook\\ICON\\banadongtoumu.dds" , img = "CB\\HandBook\\IMG\\banadongtoumu.dds" , type = "活动" , from = "出自 无双-虎牢关群英会（英雄级）" , rank = 1 , effect = "" , hidden = 1}
collection_definition['战场达华容道'] = {id =438 , note = "华容道" , desc = "收集战场达人图鉴可在陈寿处领取战场达人奖励！" , icon = "CB\\HandBook\\ICON\\caocao.dds" , img = "CB\\HandBook\\IMG\\caocao.dds" , type = "活动" , from = "出自 演义-华容道" , rank = 1 , effect = "" , hidden = 1}

--（不要修改）返回图鉴描述

function collection_definition:GetCollectionDef()
	return self
end

---collection_dir部分为图鉴分类，
---如果一个{}中前面是字符串，后面是id，表明为一组次级分类图鉴


collection_dir =
	{
		{
			"图鉴",
			{
				"事件",
				44,
				45,
				46,
				8,
				9,
				10,
				33,
				34,
				35,
				36
			},
			{
				"人物",
				42,
				11,
				12,
				13,
				14,
				15,
				16,
				17,
				18,
				19,
				20,
				21,
				22,
				23,
				24,
				25,
				26,
				27,
				28,
				29,
				30,
				31,
				32,
				43,
				41,
				356,
				357,
				358,
				359,
				360,
				361,
				362,
				363
			},
			{
				"列传",
				364,
				365,
				366,
				369,
				370,
				371,
				374,
				376,
				379,
				381,
				384,
				385,
				386,
				389,
				390,
				391
			},
			{
				"印玺",
				72,
				73,
				74,
				75,
				76,
				77,
				78,
				79,
				80,
				81,
				82,
				83,
				84,
				85,
				86,
				87,
				88,
				89,
				90,
				91,
				92,
				93,
				94,
				95,
				96,
				136,
				137,
				138,
				139,
				140,
				141,
				142,
				143,
				144,
				145,
				146,
				147,
				148,
				149,
				150,
				151,
				152,
				153,
				154,
				155,
				156,
				157,
				158,
				159,
				160,
				230,
				234,
				238,
				242,
				243,
				244,
				245,
				246,
				247,
				248,
				249,
				250,
				251,
				252,
				253,
				254,
				255,
				256,
				257,
				258,
				259,
				260,
				261,
				262,
				263,
				264,
				265,
				266,
				267,
				268,
				269,
				270,
				271,
				272,
				273,
				274,
				275,
				276,
				277,
				278,
				279,
				280,
				281,
				282,
				283,
				284,
				285,
				286,
				287,
				288,
				289,
				290,
				291,
				292,
				293,
				297,
				301,
				305,
				306,
				307,
				308,
				309,
				310,
				311,
				312,
				313,
				314,
				315,
				316,
				317,
				318,
				319,
				320,
				321,
				322,
				323,
				324,
				325,
				326,
				327,
				328,
				329,
				330,
				331,
				332,
				333,
				334,
				335,
				336,
				337,
				338,
				339,
				340,
				341,
				342,
				343,
				344,
				345,
				346,
				347,
				348,
				349,
				350,
				351,
				352,
				353,
				354,
				355
			},
			{
				"珍宝",
			},
			{
				"奇遇",
				39,
				40
			},
			{
				"风景",
				47,
				48,
				49,
				50,
				51,
				52,
				53,
				54,
				55,
				56,
				57,
				58,
				59,
				60,
				61,
				62,
				63,
				64,
				65,
				66,
				67,
				68,
				69,
				70,
				71,
				216,
				217,
				218,
				219,
				220,
				221,
				222,
				394,
				395,
				396,
				397,
				223,
				224,
				225,
				226,
				227,
				228,
				229,
				398
			},
			{
				"活动",
				206,
				207,
				208,
				209,
				210,
				212,
				213,
				214,
				215,
				430,
				431,
				432,
				433,
				434,
				435,
				436,
				437,
				438
			},
			{
				"八阵图",
				399,
				400,
				401,
				402,
				403,
				404,
				405,
				406,
				407,
				408,
				409,
				410,
				411,
				412,
				413,
				414,
				415,
				416,
				417,
				418,
				419,
				420,
				421,
				422,
				423,
				424,
				425,
				426,
				427,
				428,
				429
			}
		}
	}

---（不要修改）返回图鉴分类

function collection_dir:GetDir()
	return self
end

--collection_definition = {}
--
--collection_definition['怪物河北1级顽猴'] = {id = 1 , note = "顽猴" , img = "Surfaces\head\怪物\猴子.DDS" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北2级野狗'] = {id = 2 , note = "野狗" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北3级蜜蜂'] = {id = 3 , note = "蜜蜂" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北4级凶狗'] = {id = 4 , note = "凶狗" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北5级毛贼'] = {id = 5 , note = "毛贼" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北6级窃贼'] = {id = 6 , note = "窃贼" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北7级越境草寇'] = {id = 7 , note = "越境草寇" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北8级越境流寇'] = {id = 8 , note = "越境流寇" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北10级稀有流寇王'] = {id = 9 , note = "稀有流寇王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物关中8级平原工蜂'] = {id = 10 , note = "平原工蜂" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北8级青丘飞蝗'] = {id = 11 , note = "青丘飞蝗" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北9级青丘凶蝗'] = {id = 12 , note = "青丘凶蝗" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物关中9级平原黄鼬'] = {id = 13 , note = "平原黄鼬" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北10级易水豺'] = {id = 14 , note = "易水豺" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北10级拾荒盗匪'] = {id = 15 , note = "拾荒盗匪" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北11级南山豺'] = {id = 16 , note = "南山豺" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北11级拦路劫匪'] = {id = 17 , note = "拦路劫匪" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北11级盗墓贼'] = {id = 18 , note = "盗墓贼" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北13级稀有盗墓贼王'] = {id = 19 , note = "稀有盗墓贼王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北11级旱河黄鼬'] = {id = 20 , note = "旱河黄鼬" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北12级枯水黑鼬'] = {id = 21 , note = "枯水黑鼬" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北12级黑山恶贼'] = {id = 22 , note = "黑山恶贼" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北13级黑山土匪'] = {id = 23 , note = "黑山土匪" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北13级黑山暴徒'] = {id = 24 , note = "黑山暴徒" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北13级神秘杀手'] = {id = 25 , note = "神秘杀手" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北13级杨凤'] = {id = 26 , note = "杨凤" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北13级于毒'] = {id = 27 , note = "于毒" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北14级唐周'] = {id = 28 , note = "唐周" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北15级稀有山贼王'] = {id = 29 , note = "稀有山贼王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北13级黄巾逃兵'] = {id = 30 , note = "黄巾逃兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北14级黄巾溃兵'] = {id = 31 , note = "黄巾溃兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北14级黄巾新兵'] = {id = 32 , note = "黄巾新兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北14级黄巾护卫'] = {id = 33 , note = "黄巾护卫" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北15级黄巾杀手'] = {id = 34 , note = "黄巾杀手" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北15级黄巾死士'] = {id = 35 , note = "黄巾死士" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北17级黄衫儿'] = {id = 36 , note = "黄衫儿" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉17级稀有黄巾贼王'] = {id = 37 , note = "稀有黄巾贼王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉16级雄蜂'] = {id = 38 , note = "雄蜂" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉16级响尾蛇'] = {id = 39 , note = "响尾蛇" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉17级蜂后'] = {id = 40 , note = "蜂后" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉17级凶暴响尾蛇'] = {id = 41 , note = "凶暴响尾蛇" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉17级蜂妖'] = {id = 42 , note = "蜂妖" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉18级密林刺客'] = {id = 43 , note = "密林刺客" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物关中18级平原狡狐'] = {id = 44 , note = "平原狡狐" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉18级氐人勇士'] = {id = 45 , note = "氐人勇士" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉19级氐人兵士'] = {id = 46 , note = "氐人兵士" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉19级氐人杀手'] = {id = 47 , note = "氐人杀手" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉21级稀有氐人王'] = {id = 48 , note = "稀有氐人王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物关中19级黄巾匪兵'] = {id = 49 , note = "黄巾匪兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物关中20级黄巾悍兵'] = {id = 50 , note = "黄巾悍兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉20级荒漠秃鹫'] = {id = 51 , note = "荒漠秃鹫" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉20级荒郊马贼'] = {id = 52 , note = "荒郊马贼" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉20级赤墨暗探'] = {id = 53 , note = "赤墨暗探" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉20级羌族游骑'] = {id = 54 , note = "羌族游骑" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉20级羌兵法师'] = {id = 55 , note = "羌兵法师" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉21级羌兵探子'] = {id = 56 , note = "羌兵探子" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉21级西原马贼'] = {id = 57 , note = "西原马贼" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉21级马贼头领风卷云'] = {id = 58 , note = "马贼头领风卷云" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉22级马贼头领林掠地'] = {id = 59 , note = "马贼头领林掠地" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉23级马贼头领屠万户'] = {id = 60 , note = "马贼头领屠万户" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉22级东原马贼'] = {id = 61 , note = "东原马贼" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉22级白影秃鹫'] = {id = 62 , note = "白影秃鹫" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉24级稀有秃鹫王'] = {id = 63 , note = "稀有秃鹫王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉23级巨石坂马贼'] = {id = 64 , note = "巨石坂马贼" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉24级马贼大将伍习'] = {id = 65 , note = "马贼大将伍习" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉23级烧何羌哨兵'] = {id = 66 , note = "烧何羌哨兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉24级烧何羌精兵'] = {id = 67 , note = "烧何羌精兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉26级稀有烧何羌王'] = {id = 68 , note = "稀有烧何羌王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉25级玉门盗匪'] = {id = 69 , note = "玉门盗匪" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉25级西蜀叛兵'] = {id = 70 , note = "西蜀叛兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉25级王屠夫'] = {id = 71 , note = "王屠夫" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉25级雄沙狐'] = {id = 72 , note = "雄沙狐" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉26级雌沙狐'] = {id = 73 , note = "雌沙狐" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉26级番僧劳工'] = {id = 74 , note = "番僧劳工" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉26级番僧护法'] = {id = 75 , note = "番僧护法" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉27级番僧咒师'] = {id = 76 , note = "番僧咒师" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉27级金光法王'] = {id = 77 , note = "金光法王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉29级稀有番僧王'] = {id = 78 , note = "稀有番僧王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉27级火影猕猴'] = {id = 79 , note = "火影猕猴" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉27级火影龙蜥'] = {id = 80 , note = "火影龙蜥" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀28级西蜀逃兵'] = {id = 81 , note = "西蜀逃兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀28级西蜀残兵'] = {id = 82 , note = "西蜀残兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀29级利爪龙蜥'] = {id = 83 , note = "利爪龙蜥" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀29级西蜀溃兵'] = {id = 84 , note = "西蜀溃兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀29级西蜀败兵'] = {id = 85 , note = "西蜀败兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀29级五步蛇'] = {id = 86 , note = "五步蛇" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀30级荒坡豺'] = {id = 87 , note = "荒坡豺" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀30级庞羲'] = {id = 88 , note = "庞羲" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀30级泰山'] = {id = 89 , note = "泰山" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀30级南蛮骑兵'] = {id = 90 , note = "南蛮骑兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀30级溪洞蛮前哨'] = {id = 91 , note = "溪洞蛮前哨" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀30级溪洞蛮力士'] = {id = 92 , note = "溪洞蛮力士" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀31级溪洞蛮战士'] = {id = 93 , note = "溪洞蛮战士" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀33级稀有野人王'] = {id = 94 , note = "稀有野人王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀31级野谷豺'] = {id = 95 , note = "野谷豺" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀31级司空圣手'] = {id = 96 , note = "司空圣手" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀31级豺王灰风'] = {id = 97 , note = "豺王灰风" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀31级五斗米信徒'] = {id = 98 , note = "五斗米信徒" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀32级五斗米祭酒'] = {id = 99 , note = "五斗米祭酒" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀32级五斗米教民'] = {id = 100 , note = "五斗米教民" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀32级穿山犰狳'] = {id = 101 , note = "穿山犰狳" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀32级血牙'] = {id = 102 , note = "血牙" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀32级慧眼灵猴'] = {id = 103 , note = "慧眼灵猴" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀33级观棋灵猴'] = {id = 104 , note = "观棋灵猴" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀34级迷路灵猿'] = {id = 105 , note = "迷路灵猿" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀33级尖牙龙蜥'] = {id = 106 , note = "尖牙龙蜥" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀33级独角蜥王'] = {id = 107 , note = "独角蜥王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀35级稀有龙蜥王'] = {id = 108 , note = "稀有龙蜥王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀33级赤火真君'] = {id = 109 , note = "赤火真君" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀34级绿野螳螂'] = {id = 110 , note = "绿野螳螂" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀35级螳螂王'] = {id = 111 , note = "螳螂王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀34级黑龙'] = {id = 112 , note = "黑龙" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀34级竹影刺客'] = {id = 113 , note = "竹影刺客" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀34级竹影伏兵'] = {id = 114 , note = "竹影伏兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀35级竹影杀手'] = {id = 115 , note = "竹影杀手" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀37级稀有刺客王'] = {id = 116 , note = "稀有刺客王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀35级蛮族狼骑兵'] = {id = 117 , note = "蛮族狼骑兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀35级蛮族野猪骑兵'] = {id = 118 , note = "蛮族野猪骑兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀36级蛮族嗜血骑兵'] = {id = 119 , note = "蛮族嗜血骑兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀36级绿水刀螂'] = {id = 120 , note = "绿水刀螂" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀36级青城守卫'] = {id = 121 , note = "青城守卫" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀36级士族家将'] = {id = 122 , note = "士族家将" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀37级士族暴民'] = {id = 123 , note = "士族暴民" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀37级士族部曲'] = {id = 124 , note = "士族部曲" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀36级建宁巡逻兵'] = {id = 125 , note = "建宁巡逻兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀37级建宁精兵'] = {id = 126 , note = "建宁精兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀37级建宁兵队长'] = {id = 127 , note = "建宁兵队长" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀39级建宁兵王'] = {id = 128 , note = "建宁兵王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀37级李梦仪'] = {id = 129 , note = "李梦仪" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀37级赵阔'] = {id = 130 , note = "赵阔" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀38级高定'] = {id = 131 , note = "高定" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北50级黄巾力士'] = {id = 132 , note = "黄巾力士" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北51级黄巾术士'] = {id = 133 , note = "黄巾术士" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物河北53级稀有黄巾术士王'] = {id = 134 , note = "稀有黄巾术士王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉55级羌兵刀手'] = {id = 135 , note = "羌兵刀手" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉56级羌兵长矛手'] = {id = 136 , note = "羌兵长矛手" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉56级羌兵咒术师'] = {id = 137 , note = "羌兵咒术师" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉57级羌兵勇士'] = {id = 138 , note = "羌兵勇士" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物西凉59级稀有羌兵王'] = {id = 139 , note = "稀有羌兵王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀58级五斗米精兵'] = {id = 140 , note = "五斗米精兵" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀59级五斗米司众'] = {id = 141 , note = "五斗米司众" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀60级五斗米天师'] = {id = 142 , note = "五斗米天师" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['怪物巴蜀62级稀有五斗米王'] = {id = 143 , note = "稀有五斗米王" , img = "" , type = "怪物" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北01桃园'] = {id = 144 , note = "桃园" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北02北桃园涧'] = {id = 145 , note = "北桃园涧" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北03南桃园涧'] = {id = 146 , note = "南桃园涧" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北04落雨滩'] = {id = 147 , note = "落雨滩" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北05清风坡'] = {id = 148 , note = "清风坡" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北06平原关'] = {id = 149 , note = "平原关" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北07青丘'] = {id = 150 , note = "青丘" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北08邓家庄'] = {id = 151 , note = "邓家庄" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北09白马津'] = {id = 152 , note = "白马津" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北10汜水关'] = {id = 153 , note = "汜水关" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北11信都平原'] = {id = 154 , note = "信都平原" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北12灵山'] = {id = 155 , note = "灵山" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北13漳水河道'] = {id = 156 , note = "漳水河道" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北14冀州城'] = {id = 157 , note = "冀州城" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北15巨鹿寨'] = {id = 158 , note = "巨鹿寨" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北16东屏山'] = {id = 159 , note = "东屏山" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北17古云泉'] = {id = 160 , note = "古云泉" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北18常山'] = {id = 161 , note = "常山" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北19壶关'] = {id = 162 , note = "壶关" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北20黄巾坛'] = {id = 163 , note = "黄巾坛" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北21结义台'] = {id = 164 , note = "结义台" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北22易水'] = {id = 165 , note = "易水" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北23苏氏旧宅'] = {id = 166 , note = "苏氏旧宅" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北24清凉驿'] = {id = 167 , note = "清凉驿" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图河北25河北'] = {id = 168 , note = "河北" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉01北地关'] = {id = 169 , note = "北地关" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉02出关道'] = {id = 170 , note = "出关道" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉03葡萄园'] = {id = 171 , note = "葡萄园" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉04胡扬林'] = {id = 172 , note = "胡扬林" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉05琵琶山'] = {id = 173 , note = "琵琶山" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉06芒草原'] = {id = 174 , note = "芒草原" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉07凉州城'] = {id = 175 , note = "凉州城" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉08白土原'] = {id = 176 , note = "白土原" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉09羌兵大营'] = {id = 177 , note = "羌兵大营" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉10孪鸟戈壁'] = {id = 178 , note = "孪鸟戈壁" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉11巨石坂'] = {id = 179 , note = "巨石坂" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉12龙尾坡'] = {id = 180 , note = "龙尾坡" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉13高平城废墟'] = {id = 181 , note = "高平城废墟" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉14冀城镇'] = {id = 182 , note = "冀城镇" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉15玉门驿'] = {id = 183 , note = "玉门驿" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉16玉门关'] = {id = 184 , note = "玉门关" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉17武威寺'] = {id = 185 , note = "武威寺" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉18渭水南岸'] = {id = 186 , note = "渭水南岸" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉19红枫谷'] = {id = 187 , note = "红枫谷" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉20斜谷关'] = {id = 188 , note = "斜谷关" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉21情侣石'] = {id = 189 , note = "情侣石" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉22渭水'] = {id = 190 , note = "渭水" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图西凉23西凉'] = {id = 191 , note = "西凉" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀01剑门关'] = {id = 192 , note = "剑门关" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀02剑阁栈道'] = {id = 193 , note = "剑阁栈道" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀03落凤坡'] = {id = 194 , note = "落凤坡" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀04青川'] = {id = 195 , note = "青川" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀05五丁壮士冢'] = {id = 196 , note = "五丁壮士冢" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀06月溪谷'] = {id = 197 , note = "月溪谷" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀07采石场'] = {id = 198 , note = "采石场" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀08豺狼坡'] = {id = 199 , note = "豺狼坡" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀09锦屏峰'] = {id = 200 , note = "锦屏峰" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀10江由滩'] = {id = 201 , note = "江由滩" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀11梓林'] = {id = 202 , note = "梓林" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀12太平驿'] = {id = 203 , note = "太平驿" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀13潜龙湖'] = {id = 204 , note = "潜龙湖" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀14鲍家庄'] = {id = 205 , note = "鲍家庄" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀15绵竹关'] = {id = 206 , note = "绵竹关" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀16竹海'] = {id = 207 , note = "竹海" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀17成都城'] = {id = 208 , note = "成都城" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀18鸡鸣原'] = {id = 209 , note = "鸡鸣原" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀19青城寨'] = {id = 210 , note = "青城寨" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀20万胜冈'] = {id = 211 , note = "万胜冈" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀21五斗米营地'] = {id = 212 , note = "五斗米营地" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀22卢津关'] = {id = 213 , note = "卢津关" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀23浣花溪'] = {id = 214 , note = "浣花溪" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图巴蜀24巴蜀'] = {id = 215 , note = "巴蜀" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图关中01潼关'] = {id = 216 , note = "潼关" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图关中02龙首原'] = {id = 217 , note = "龙首原" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图关中03长安城'] = {id = 218 , note = "长安城" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图关中04乐游原'] = {id = 219 , note = "乐游原" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图关中05吕布军营'] = {id = 220 , note = "吕布军营" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图关中06岐山原'] = {id = 221 , note = "岐山原" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图关中07陈仓关'] = {id = 222 , note = "陈仓关" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图关中08鸿固原'] = {id = 223 , note = "鸿固原" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图关中09大禹庙'] = {id = 224 , note = "大禹庙" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图关中10青泥道'] = {id = 225 , note = "青泥道" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图关中11青泥隘口'] = {id = 226 , note = "青泥隘口" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图关中12五丈原'] = {id = 227 , note = "五丈原" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}
--collection_definition['地图关中13关中'] = {id = 228 , note = "关中" , img = "" , type = "地图" , desc = "" , from = "出自 " , rank = 1 , effect = ""}

--collection_dir =
--	{
--		{
--			"怪物",
--			{
--				"野兽",
--				2,
--				4,
--				13,
--				14,
--				16,
--				20,
--				21,
--				39,
--				41,
--				44,
--				51,
--				62,
--				63,
--				72,
--				73,
--				79,
--				80,
--				83,
--				86,
--				87,
--				95,
--				97,
--				101,
--				103,
--				104,
--				105,
--				106,
--				107,
--				108,
--				110,
--				111,
--				120
--			},
--			{
--				"昆虫",
--				3,
--				10,
--				11,
--				12,
--				38,
--				40,
--				42
--			},
--			{
--				"贼寇",
--				5,
--				6,
--				7,
--				8,
--				9,
--				15,
--				17,
--				18,
--				19,
--				22,
--				23,
--				24,
--				26,
--				27,
--				28,
--				29,
--				52,
--				57,
--				58,
--				59,
--				60,
--				61,
--				64,
--				65,
--				69,
--				71,
--				96,
--				129
--			},
--			{
--				"乱党",
--				25,
--				43,
--				53,
--				70,
--				81,
--				82,
--				84,
--				85,
--				89,
--				98,
--				99,
--				100,
--				109,
--				112,
--				113,
--				114,
--				115,
--				116,
--				121,
--				122,
--				123,
--				124,
--				125,
--				126,
--				127,
--				128,
--				130,
--				140,
--				141,
--				142,
--				143
--			},
--			{
--				"黄巾",
--				30,
--				31,
--				32,
--				33,
--				34,
--				35,
--				36,
--				37,
--				49,
--				50,
--				132,
--				133,
--				134
--			},
--			{
--				"异族",
--				45,
--				46,
--				47,
--				48,
--				54,
--				55,
--				56,
--				66,
--				67,
--				68,
--				74,
--				75,
--				76,
--				77,
--				78,
--				88,
--				90,
--				91,
--				92,
--				93,
--				94,
--				102,
--				117,
--				118,
--				119,
--				131,
--				135,
--				136,
--				137,
--				138,
--				139,
--			}
--		},
--		{
--			"地图",
--			{
--				"神州",
--				168,
--				191,
--				215,
--				228
--			},
--			{
--				"山河",
--				155,
--				159,
--				161,
--				165,
--				173,
--				190,
--				204,
--				214
--			},
--			{
--				"地理",
--				145,
--				146,
--				147,
--				148,
--				150,
--				152,
--				154,
--				156,
--				160,
--				170,
--				172,
--				174,
--				176,
--				178,
--				179,
--				180,
--				186,
--				187,
--				193,
--				194,
--				195,
--				197,
--				199,
--				200,
--				201,
--				202,
--				207,
--				209,
--				211,
--				217,
--				219,
--				221,
--				223,
--				225,
--				227
--			},
--			{
--				"名胜",
--				144,
--				164,
--				189
--			},
--			{
--				"古迹",
--				224
--			},
--			{
--				"战场",
--			},
--			{
--				"秘境",
--			},
--			{
--				"城镇",
--				157,
--				175,
--				208,
--				218
--			},
--			{
--				"重地",
--				158,
--				163,
--				177,
--				181,
--				185,
--				196,
--				198,
--				210,
--				212,
--				220
--			},
--			{
--				"关隘",
--				149,
--				153,
--				162,
--				169,
--				184,
--				188,
--				192,
--				206,
--				213,
--				216,
--				222,
--				226
--			},
--			{
--				"庄院",
--				151,
--				166,
--				171,
--				182,
--				205,
--			},
--			{
--				"驿站",
--				167,
--				183,
--				203
--			}
--		}
--	}
