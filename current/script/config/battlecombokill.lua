-- 连杀配置格式：
-- ComboKillTable[world_tag] = {
--		[killed_id] = {	minnum = 1,	maxnum = 3,	image = 0, gfx = 1,	sound = "",	broadcast = "" },
-- }
--
-- world_tag : 剧本模板id
-- killed_id : 被杀的id，0表示人，非0表示怪
-- minnum : 当前级别的最小连杀数
-- maxnum : 当前级别的最大连杀数
-- image : 界面替换的图片索引, 从0开始，-1表示空
-- gfx : 界面替换的光效索引, 从0开始，-1表示空
-- sound : 播放的音效路径
-- broadcast : 广播内容
-- showtime: 显示时间
-- 说明：
-- 1 如果多个level的最小和最大连杀数有重叠，优先取靠前的一组
-- 2 broadcast所填的广播的内容只有连杀广播开启以后才会生效，只有达到剧本模板规定的连杀数以后才会开启广播
-- 3 broadcast支持转义，游戏里 $name 会替换为当前的人物名称
-- 4 image和gfx所填的是界面里控件的索引而不是路径，索引从0开始，-1表示空，控件名字为Img_%d, Gfx_%d, %d为索引。


ComboKillTable = {}

--葭萌关
ComboKillTable[1009] = {
		-- 杀人
	[0] = {
		{ minnum = 1, maxnum = 1, image = 0, gfx = 0, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "大杀特杀！", showtime = 1, },
		{ minnum = 2, maxnum = 2, image = 1, gfx = 1, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "大杀特杀！", showtime = 1, },
		{ minnum = 3, maxnum = 3, image = 2, gfx = 2, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 大杀特杀！", showtime = 1, },
		{ minnum = 4, maxnum = 4, image = 3, gfx = 3, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 大杀特杀！", showtime = 1, },
		{ minnum = 5, maxnum = 5, image = 4, gfx = 4, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 大杀特杀！", showtime = 1, },
		{ minnum = 6, maxnum = 6, image = 5, gfx = 5, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 主宰战场！", showtime = 1, },
		{ minnum = 7, maxnum = 7, image = 6, gfx = 6, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 主宰战场！", showtime = 1, },
		{ minnum = 8, maxnum = 8, image = 7, gfx = 7, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 无人能挡！", showtime = 1, },
		{ minnum = 9, maxnum = 9, image = 8, gfx = 8, sound = "", broadcast = "$name 无人能挡！", showtime = 1, },
		{ minnum = 10, maxnum = 1000, image = 9, gfx = 9, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 已经成为战神！", showtime = 1, },
	},

	-- 杀怪
	[21449] = {
		{ minnum = 1, maxnum = 1, image = 0, gfx = 0, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "大杀特杀！", showtime = 1, },
		{ minnum = 2, maxnum = 2, image = 1, gfx = 1, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "大杀特杀！", showtime = 1, },
		{ minnum = 3, maxnum = 3, image = 2, gfx = 2, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 大杀特杀！", showtime = 1, },
		{ minnum = 4, maxnum = 4, image = 3, gfx = 3, sound = "", broadcast = "$name 主宰比赛！", },
		{ minnum = 5, maxnum = 1000, image = 9, gfx = 9, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 超越神了！我了个嚓啊！", showtime = 1, },
	},
}

--限时葭萌关
ComboKillTable[1068] = {
		-- 杀人
	[0] = {
		{ minnum = 1, maxnum = 1, image = 0, gfx = 0, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "大杀特杀！", showtime = 1, },
		{ minnum = 2, maxnum = 2, image = 1, gfx = 1, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "大杀特杀！", showtime = 1, },
		{ minnum = 3, maxnum = 3, image = 2, gfx = 2, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 大杀特杀！", showtime = 1, },
		{ minnum = 4, maxnum = 4, image = 3, gfx = 3, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 大杀特杀！", showtime = 1, },
		{ minnum = 5, maxnum = 5, image = 4, gfx = 4, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 大杀特杀！", showtime = 1, },
		{ minnum = 6, maxnum = 6, image = 5, gfx = 5, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 主宰战场！", showtime = 1, },
		{ minnum = 7, maxnum = 7, image = 6, gfx = 6, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 主宰战场！", showtime = 1, },
		{ minnum = 8, maxnum = 8, image = 7, gfx = 7, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 无人能挡！", showtime = 1, },
		{ minnum = 9, maxnum = 9, image = 8, gfx = 8, sound = "", broadcast = "$name 无人能挡！", showtime = 1, },
		{ minnum = 10, maxnum = 1000, image = 9, gfx = 9, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 已经成为战神！", showtime = 1, },
	},

	-- 杀怪
	[21449] = {
		{ minnum = 1, maxnum = 1, image = 0, gfx = 0, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "大杀特杀！", showtime = 1, },
		{ minnum = 2, maxnum = 2, image = 1, gfx = 1, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "大杀特杀！", showtime = 1, },
		{ minnum = 3, maxnum = 3, image = 2, gfx = 2, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 大杀特杀！", showtime = 1, },
		{ minnum = 4, maxnum = 4, image = 3, gfx = 3, sound = "", broadcast = "$name 主宰比赛！", },
		{ minnum = 5, maxnum = 1000, image = 9, gfx = 9, sound = "SFX\\程序联入\\击杀.WAV", broadcast = "$name 超越神了！我了个嚓啊！", showtime = 1, },
	},
}

--此处添加







ComboKillFunc = {}
-- 获得连杀特效资源
function ComboKillFunc:GetRes(instance_id, kill_id, kill_count)
	if ComboKillTable[instance_id] == nil or ComboKillTable[instance_id][kill_id] == nil then
		return nil
	end

	local r_img, r_gfx, r_snd, r_broadcast, r_showtime
	local CKTable = ComboKillTable[instance_id][kill_id]
	for k, v in ipairs(CKTable) do
		if kill_count >= v.minnum and kill_count <= v.maxnum then
			r_img, r_gfx, r_snd, r_broadcast, r_showtime = v.image, v.gfx, v.sound, v.broadcast, v.showtime
			break
		end
	end

	return r_img, r_gfx, r_snd, r_broadcast, r_showtime
end

