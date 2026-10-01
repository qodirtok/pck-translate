
AT = {
	stand = 1,
	run = 2,
	walk = 3,
	skill = 4,
	die = 5,
	back = 6,
	turnleft = 7,
	turnright = 8,
}
--Player is -1 Chariot is -2 0-n is 对应挂点模型动作
-- chariotid : 	chariot's template id
-- pos: 		player's position in chariot
-- at:			action type defined in table AT above
-- skillid:		casting skill id
-- skilllevel:	casting skill level
-- race:        0为中原，1为南蛮
-- bodytype:    0为标准；1为健壮；2为娇小(男，男女本相反，此脚本中把女的名字相应作了调整)
function getChariotActionInfo(chariotid, pos, at, skillid, skilllevel, race, bodytype)
	local tbl = {}
	if chariotid == 73836 then
		if at == AT.stand then 
			tbl[-1] = "站立_通用"
			tbl[-2] = "站立"
			tbl[0] = "站立"
		elseif at == AT.run then
			tbl[-1] = "站立_通用"
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-1] = "站立_通用"
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
		elseif at == AT.skill then
			if skillid == 4051 and skilllevel == 1 then
				tbl[-1] = "指向吟唱_通用"
				tbl[0] = "普通攻击1"
				tbl[3] = "技能攻击2"
			elseif skillid == 4052 and skilllevel == 1 then
				tbl[-1] = "指向吟唱_通用"
				tbl[0] = "普通攻击1"
				tbl[2] = "普通攻击1"
				tbl[3] = "技能攻击3"
			elseif skillid == 4093 and skilllevel == 1 then
				tbl[-1] = "指向吟唱_通用"
				tbl[0] = "普通攻击1"
				tbl[2] = "普通攻击1"
				tbl[3] = "技能攻击4"
			elseif skillid == 4094 and skilllevel == 1 then
				tbl[-1] = "指向吟唱_通用"
				tbl[0] = "普通攻击1"
				tbl[2] = "普通攻击1"
				tbl[3] = "技能攻击1"
			end
		end
	end
	if chariotid == 74514 or chariotid == 74519 or chariotid == 75214 or chariotid == 75215 or chariotid == 75311 or chariotid == 75312 or chariotid == 75313 or chariotid == 75314 or chariotid == 78597 then
		if at == AT.stand then 
			tbl[-2] = "站立"
			tbl[0] = "站立"
		elseif at == AT.run then
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
			tbl[3] = "死亡2"
		elseif at == AT.skill then
			if skillid == 4051 and skilllevel == 1 then
				tbl[3] = "技能攻击2"
			elseif skillid == 4052 and skilllevel == 1 then
				tbl[3] = "技能攻击3"
			elseif skillid == 4093 and skilllevel == 1 then
				tbl[3] = "技能攻击4"
			elseif skillid == 4094 and skilllevel == 1 then
				tbl[3] = "技能攻击1"
			end
		end
	end
	if chariotid == 78209 or chariotid == 78210 or chariotid == 78211 or chariotid == 78218 or chariotid == 78219 or chariotid == 78220 then
		if at == AT.stand then 
			tbl[-2] = "站立"
			tbl[0] = "站立"
		elseif at == AT.run then
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
			tbl[3] = "死亡2"
		elseif at == AT.skill then
			if skillid == 4386 and skilllevel == 1 then
				tbl[3] = "技能攻击2"
			elseif skillid == 4387 and skilllevel == 1 then
				tbl[3] = "技能攻击3"
			elseif skillid == 4388 and skilllevel == 1 then
				tbl[3] = "技能攻击4"
			elseif skillid == 4389 and skilllevel == 1 then
				tbl[3] = "技能攻击1"
			end
		end
	end
	if chariotid == 79167 or chariotid == 79170 or chariotid == 79173  then
		if at == AT.stand then 
			tbl[-2] = "站立"
			tbl[0] = "站立"
		elseif at == AT.run then
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
			tbl[3] = "死亡2"
		elseif at == AT.skill then
			if skillid == 4439 and skilllevel == 1 then
				tbl[3] = "技能攻击2"
			elseif skillid == 4440 and skilllevel == 1 then
				tbl[3] = "技能攻击3"
			elseif skillid == 4441 and skilllevel == 1 then
				tbl[3] = "技能攻击4"
			elseif skillid == 4442 and skilllevel == 1 then
				tbl[3] = "技能攻击1"
			end
		end
	end
	if chariotid == 74515 or chariotid == 74520 or chariotid == 75216 or chariotid == 75217 or chariotid == 75315 or chariotid == 75316 or chariotid == 75317 or chariotid == 75318 or chariotid == 78595 then
		if at == AT.stand then 
			tbl[-2] = "站立"
			tbl[0] = "站立"
		elseif at == AT.run then
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
			tbl[1] = "死亡2"
		elseif at == AT.skill then
			if pos == 0 then
				if skillid == 4106 and skilllevel == 1 then
					tbl[1] = "技能攻击3"
				elseif skillid == 4107 and skilllevel == 1 then
					tbl[1] = "技能攻击4"
				elseif skillid == 4108 and skilllevel == 1 then
					tbl[1] = "技能攻击2"
				elseif skillid == 4109 and skilllevel == 1 then
					tbl[1] = "技能攻击1"
				end
			end
		end
	end
	if chariotid == 78212 or chariotid == 78213 or chariotid == 78214 or chariotid == 78221 or chariotid == 78222 or chariotid == 78223 then
		if at == AT.stand then 
			tbl[-2] = "站立"
			tbl[0] = "站立"
		elseif at == AT.run then
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
			tbl[1] = "死亡2"
		elseif at == AT.skill then
			if pos == 0 then
				if skillid == 4394 and skilllevel == 1 then
					tbl[1] = "技能攻击3"
				elseif skillid == 4395 and skilllevel == 1 then
					tbl[1] = "技能攻击4"
				elseif skillid == 4396 and skilllevel == 1 then
					tbl[1] = "技能攻击2"
				elseif skillid == 4397 and skilllevel == 1 then
					tbl[1] = "技能攻击1"
				end
			end
		end
	end
	if chariotid == 79168 or chariotid == 79171 or chariotid == 79174 then
		if at == AT.stand then 
			tbl[-2] = "站立"
			tbl[0] = "站立"
		elseif at == AT.run then
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
			tbl[1] = "死亡2"
		elseif at == AT.skill then
			if pos == 0 then
				if skillid == 4447 and skilllevel == 1 then
					tbl[1] = "技能攻击3"
				elseif skillid == 4448 and skilllevel == 1 then
					tbl[1] = "技能攻击4"
				elseif skillid == 4449 and skilllevel == 1 then
					tbl[1] = "技能攻击2"
				elseif skillid == 4450 and skilllevel == 1 then
					tbl[1] = "技能攻击1"
				end
			end
		end
	end
	if chariotid == 74516 or chariotid == 74521 or chariotid == 75319 or chariotid == 75320 or chariotid == 78596 then
		if at == AT.stand then 
			tbl[-2] = "站立"
		elseif at == AT.run then
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
			tbl[1] = "死亡2"
		elseif at == AT.skill then
			if pos == 0 then
				if skillid == 4102 and skilllevel == 1 then
					tbl[1] = "技能攻击1"
				elseif skillid == 4103 and skilllevel == 1 then
					tbl[1] = "技能攻击2"
				elseif skillid == 4104 and skilllevel == 1 then
					tbl[-2] = "技能攻击3"
					tbl[1] = "技能攻击3"
				elseif skillid == 4105 and skilllevel == 1 then
					tbl[1] = "技能攻击4"
				end
			end
		end
	end
	if chariotid == 78215 or chariotid == 78216 or chariotid == 78217 or chariotid == 78224 or chariotid == 78225 or chariotid == 78226 then
		if at == AT.stand then 
			tbl[-2] = "站立"
		elseif at == AT.run then
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
			tbl[1] = "死亡2"
		elseif at == AT.skill then
			if pos == 0 then
				if skillid == 4390 and skilllevel == 1 then
					tbl[1] = "技能攻击1"
				elseif skillid == 4391 and skilllevel == 1 then
					tbl[1] = "技能攻击2"
				elseif skillid == 4392 and skilllevel == 1 then
					tbl[-2] = "技能攻击3"
					tbl[1] = "技能攻击3"
				elseif skillid == 4393 and skilllevel == 1 then
					tbl[1] = "技能攻击4"
				end
			end
		end
	end
	if chariotid == 79169 or chariotid == 79172 or chariotid == 79175 then
		if at == AT.stand then 
			tbl[-2] = "站立"
		elseif at == AT.run then
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
			tbl[1] = "死亡2"
		elseif at == AT.skill then
			if pos == 0 then
				if skillid == 4443 and skilllevel == 1 then
					tbl[1] = "技能攻击1"
				elseif skillid == 4444 and skilllevel == 1 then
					tbl[1] = "技能攻击2"
				elseif skillid == 4445 and skilllevel == 1 then
					tbl[-2] = "技能攻击3"
					tbl[1] = "技能攻击3"
				elseif skillid == 4446 and skilllevel == 1 then
					tbl[1] = "技能攻击4"
				end
			end
		end
	end
	if chariotid == 74517 or chariotid == 74522 or chariotid == 75321 or chariotid == 75322 then
		if at == AT.stand then 
			tbl[-2] = "站立"
			tbl[0] = "站立"
		elseif at == AT.run then
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
			tbl[1] = "死亡2"
		elseif at == AT.skill then
			if pos == 0 then
				if skillid == 4110 then
					tbl[1] = "技能攻击2"
				elseif skillid == 4111 then
					tbl[1] = "技能攻击3"
				elseif skillid == 4112 then
					tbl[1] = "技能攻击4"
				elseif skillid == 4113 then
					tbl[1] = "技能攻击1"
				end
			end
		end
	end
	if chariotid == 78229 then
		if at == AT.stand then 
			tbl[-2] = "站立"
		elseif at == AT.run then
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
			tbl[1] = "死亡2"
		elseif at == AT.skill then
			if pos == 0 then
				if skillid == 4398 then
					tbl[-2] = "技能攻击1"
				elseif skillid == 4399 then
					tbl[-2] = "技能攻击2"
				elseif skillid == 4400 then
					tbl[-2] = "技能攻击3"
				elseif skillid == 4401 then
					tbl[-2] = "技能攻击4"
				end
			end
		end
	end
	if chariotid == 74518 or chariotid == 74523 or chariotid == 75323 or chariotid == 75324 then
		if at == AT.stand then 
			if pos == 1 or pos == 2 then
				tbl[-2] = "站立"
				tbl[-1] = "驾驶动作_战车"
			elseif pos == 0 then
				tbl[-2] = "站立"	
				tbl[-1] = "驾驶马车_战车"
			end
		elseif at == AT.run then
			if pos == 1 or pos == 2 then
				tbl[-2] = "奔跑"
				tbl[-1] = "驾驶动作_战车"
			elseif pos == 0 then
				tbl[-2] = "奔跑"	
				tbl[-1] = "驾驶马车_战车"				
			end
		elseif at == AT.walk then
			if pos == 1 or pos == 2 then
				tbl[-2] = "奔跑"
				tbl[-1] = "驾驶动作_战车"
			elseif pos == 0 then
				tbl[-2] = "奔跑"		
				tbl[-1] = "驾驶马车_战车"
			end
		elseif at == AT.back then
			if pos == 1 or pos == 2 then
				tbl[-2] = "后退"
				tbl[-1] = "驾驶动作_战车"
			elseif pos == 0 then
				tbl[-2] = "后退"	
				tbl[-1] = "驾驶马车_战车"				
			end
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
			if pos == 1 or pos == 2 then
				tbl[-2] = "左转"
				tbl[-1] = "驾驶动作_战车"
			elseif pos == 0 then
				tbl[-2] = "左转"	
				tbl[-1] = "驾驶马车_战车"				
			end
		elseif at == AT.turnright then
			tbl[-2] = "右转"
			if pos == 1 or pos == 2 then
				tbl[-2] = "右转"
				tbl[-1] = "驾驶动作_战车"
			elseif pos == 0 then
				tbl[-2] = "右转"	
				tbl[-1] = "驾驶马车_战车"				
			end
		elseif at == AT.die then
			tbl[-2] = "死亡"
			tbl[1] = "死亡2"
		elseif at == AT.skill then
			if pos == 1 then
				if skillid == 4121 and skilllevel == 1 then
					tbl[1] = "技能攻击1"
					tbl[-1] = "驾驶动作_战车"
				elseif skillid == 4122 and skilllevel == 1 then
					tbl[1] = "技能攻击2"
					tbl[-1] = "驾驶动作_战车"
				elseif skillid == 4123 and skilllevel == 1 then
					tbl[1] = "技能攻击3"
					tbl[-1] = "驾驶动作_战车"
				elseif skillid == 4124 and skilllevel == 1 then
					tbl[1] = "技能攻击4"
					tbl[-1] = "驾驶动作_战车"
				end
			elseif pos == 2 then
				if skillid == 4121 and skilllevel == 1 then
					tbl[2] = "技能攻击1"
					tbl[-1] = "驾驶动作_战车"
				elseif skillid == 4122 and skilllevel == 1 then
					tbl[2] = "技能攻击2"
					tbl[-1] = "驾驶动作_战车"
				elseif skillid == 4123 and skilllevel == 1 then
					tbl[2] = "技能攻击3"
					tbl[-1] = "驾驶动作_战车"
				elseif skillid == 4124 and skilllevel == 1 then
					tbl[2] = "技能攻击4"
					tbl[-1] = "驾驶动作_战车"
				end
			end
			
		end
	end
	if chariotid == 75212 or chariotid == 75213 then
		if race == 0 then
			if bodytype == 1 then
				if at == AT.stand then 
					tbl[-2] = "站立"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1健壮_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2健壮_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3健壮_战车"		
					end
				elseif at == AT.run then
					tbl[-2] = "奔跑"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1健壮_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2健壮_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3健壮_战车"		
					end
				elseif at == AT.walk then
					tbl[-2] = "行走"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1健壮_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2健壮_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3健壮_战车"		
					end
				elseif at == AT.back then
					tbl[-2] = "后退"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1健壮_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2健壮_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3健壮_战车"		
					end
				elseif at == AT.turnleft then
					tbl[-2] = "左转"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1健壮_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2健壮_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3健壮_战车"		
					end
				elseif at == AT.turnright then
					tbl[-2] = "右转"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1健壮_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2健壮_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3健壮_战车"		
					end
				elseif at == AT.die then
					tbl[-2] = "死亡"
				elseif at == AT.skill then
					if skillid == 4184 and skilllevel == 1 then
						tbl[-2] = "技能攻击1"
					elseif skillid == 4185 and skilllevel == 1 then
						tbl[-2] = "技能攻击2" 
					end
				end
			elseif bodytype == 2 then
					if at == AT.stand then 
						tbl[-2] = "站立"
						if pos == 0 then
						tbl[-1] = "乘坐马车动作1娇小_战车"
						elseif pos == 1 then
						tbl[-1] = "乘坐马车动作2娇小_战车"	
						elseif pos == 2 then
						tbl[-1] = "乘坐马车动作3娇小_战车"		
						end
					elseif at == AT.run then
						tbl[-2] = "奔跑"
						if pos == 0 then
						tbl[-1] = "乘坐马车动作1娇小_战车"
						elseif pos == 1 then
						tbl[-1] = "乘坐马车动作2娇小_战车"	
						elseif pos == 2 then
						tbl[-1] = "乘坐马车动作3娇小_战车"		
						end
					elseif at == AT.walk then
						tbl[-2] = "行走"
						if pos == 0 then
						tbl[-1] = "乘坐马车动作1娇小_战车"
						elseif pos == 1 then
						tbl[-1] = "乘坐马车动作2娇小_战车"	
						elseif pos == 2 then
						tbl[-1] = "乘坐马车动作3娇小_战车"		
						end
					elseif at == AT.back then
						tbl[-2] = "后退"
						if pos == 0 then
						tbl[-1] = "乘坐马车动作1娇小_战车"
						elseif pos == 1 then
						tbl[-1] = "乘坐马车动作2娇小_战车"	
						elseif pos == 2 then
						tbl[-1] = "乘坐马车动作3娇小_战车"		
						end
					elseif at == AT.turnleft then
						tbl[-2] = "左转"
						if pos == 0 then
						tbl[-1] = "乘坐马车动作1娇小_战车"
						elseif pos == 1 then
						tbl[-1] = "乘坐马车动作2娇小_战车"	
						elseif pos == 2 then
						tbl[-1] = "乘坐马车动作3娇小_战车"		
						end
					elseif at == AT.turnright then
						tbl[-2] = "右转"
						if pos == 0 then
						tbl[-1] = "乘坐马车动作1娇小_战车"
						elseif pos == 1 then
						tbl[-1] = "乘坐马车动作2娇小_战车"	
						elseif pos == 2 then
						tbl[-1] = "乘坐马车动作3娇小_战车"		
						end
				elseif at == AT.die then
					tbl[-2] = "死亡"
				elseif at == AT.skill then
					if skillid == 4184 and skilllevel == 1 then
						tbl[-2] = "技能攻击1"
					elseif skillid == 4185 and skilllevel == 1 then
						tbl[-2] = "技能攻击2" 
					end
				end
			elseif bodytype == 0 then
				if at == AT.stand then 
					tbl[-2] = "站立"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3_战车"		
					end
				elseif at == AT.run then
					tbl[-2] = "奔跑"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3_战车"		
					end
				elseif at == AT.walk then
					tbl[-2] = "行走"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3_战车"		
					end
				elseif at == AT.back then
					tbl[-2] = "后退"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3_战车"		
					end
				elseif at == AT.turnleft then
					tbl[-2] = "左转"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3_战车"		
					end
				elseif at == AT.turnright then
					tbl[-2] = "右转"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3_战车"		
					end
				elseif at == AT.die then
					tbl[-2] = "死亡"
				elseif at == AT.skill then
					if skillid == 4184 and skilllevel == 1 then
						tbl[-2] = "技能攻击1"
					elseif skillid == 4185 and skilllevel == 1 then
						tbl[-2] = "技能攻击2" 
					end
				end
			end
		elseif race == 1 then
			if bodytype == 0 then
				if at == AT.stand then 
					tbl[-2] = "站立"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南标准_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南标准_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南标准_战车"		
					end
				elseif at == AT.run then
					tbl[-2] = "奔跑"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南标准_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南标准_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南标准_战车"		
					end
				elseif at == AT.walk then
					tbl[-2] = "行走"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南标准_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南标准_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南标准_战车"		
					end
				elseif at == AT.back then
					tbl[-2] = "后退"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南标准_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南标准_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南标准_战车"		
					end
				elseif at == AT.turnleft then
					tbl[-2] = "左转"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南标准_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南标准_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南标准_战车"		
					end
				elseif at == AT.turnright then
					tbl[-2] = "右转"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南标准_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南标准_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南标准_战车"		
					end
				elseif at == AT.die then
					tbl[-2] = "死亡"
				elseif at == AT.skill then
					if skillid == 4184 and skilllevel == 1 then
						tbl[-2] = "技能攻击1"
					elseif skillid == 4185 and skilllevel == 1 then
						tbl[-2] = "技能攻击2" 
					end
				end
			elseif bodytype == 1 then
				if at == AT.stand then 
					tbl[-2] = "站立"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南健壮_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南健壮_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南健壮_战车"		
					end
				elseif at == AT.run then
					tbl[-2] = "奔跑"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南健壮_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南健壮_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南健壮_战车"		
					end
				elseif at == AT.walk then
					tbl[-2] = "行走"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南健壮_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南健壮_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南健壮_战车"		
					end
				elseif at == AT.back then
					tbl[-2] = "后退"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南健壮_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南健壮_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南健壮_战车"		
					end
				elseif at == AT.turnleft then
					tbl[-2] = "左转"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南健壮_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南健壮_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南健壮_战车"		
					end
				elseif at == AT.turnright then
					tbl[-2] = "右转"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南健壮_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南健壮_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南健壮_战车"		
					end
				elseif at == AT.die then
					tbl[-2] = "死亡"
				elseif at == AT.skill then
					if skillid == 4184 and skilllevel == 1 then
						tbl[-2] = "技能攻击1"
					elseif skillid == 4185 and skilllevel == 1 then
						tbl[-2] = "技能攻击2" 
					end
				end
			elseif bodytype == 2 then
				if at == AT.stand then 
					tbl[-2] = "站立"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南娇小_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南娇小_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南娇小_战车"		
					end
				elseif at == AT.run then
					tbl[-2] = "奔跑"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南娇小_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南娇小_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南娇小_战车"		
					end
				elseif at == AT.walk then
					tbl[-2] = "行走"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南娇小_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南娇小_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南娇小_战车"		
					end
				elseif at == AT.back then
					tbl[-2] = "后退"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南娇小_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南娇小_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南娇小_战车"		
					end
				elseif at == AT.turnleft then
					tbl[-2] = "左转"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南娇小_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南娇小_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南娇小_战车"		
					end
				elseif at == AT.turnright then
					tbl[-2] = "右转"
					if pos == 0 then
					tbl[-1] = "乘坐马车动作1巫南娇小_战车"
					elseif pos == 1 then
					tbl[-1] = "乘坐马车动作2巫南娇小_战车"	
					elseif pos == 2 then
					tbl[-1] = "乘坐马车动作3巫南娇小_战车"		
					end
				elseif at == AT.die then
					tbl[-2] = "死亡"
				elseif at == AT.skill then
					if skillid == 4184 and skilllevel == 1 then
						tbl[-2] = "技能攻击1"
					elseif skillid == 4185 and skilllevel == 1 then
						tbl[-2] = "技能攻击2" 
					end
				end
			end
		end
	end
	if chariotid == 78566 then
		if at == AT.stand then 
			tbl[-1] = "驾驶马车_战车"
			tbl[-2] = "站立"
			tbl[0] = "站立"
		elseif at == AT.run then
			tbl[-2] = "奔跑"
			tbl[-1] = "驾驶马车_战车"
		elseif at == AT.walk then
			tbl[-2] = "行走"
			tbl[-1] = "驾驶马车_战车"
		elseif at == AT.back then
			tbl[-2] = "后退"
			tbl[-1] = "驾驶马车_战车"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
			tbl[-1] = "驾驶马车_战车"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
			tbl[-1] = "驾驶马车_战车"
		end
	end
	if chariotid == 81727 then
		if at == AT.stand then 
			tbl[-1] = "驾驶马车_战车"
			tbl[-2] = "站立"
			tbl[0] = "站立"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
		elseif at == AT.skill then
		    if pos == 0 then
                if skillid == 4675 and skilllevel == 1 then		
          		   tbl[-1] = "指向吟唱_通用"
				   tbl[0] = "技能攻击1"
				   tbl[3] = "技能攻击1"
				elseif skillid == 4674 and skilllevel == 1 then
				    tbl[-1] = "指向吟唱_通用"
				    tbl[0] = "技能攻击2"
				    tbl[3] = "技能攻击2"   
				end   
			end
		end
	end
	if chariotid == 90332 then
		if at == AT.stand then 
			tbl[-2] = "站立"
			tbl[0] = "站立"
		elseif at == AT.run then
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
			tbl[3] = "死亡2"
		elseif at == AT.skill then
			if skillid == 4051 and skilllevel == 1 then
				tbl[3] = "技能攻击2"
			elseif skillid == 4052 and skilllevel == 1 then
				tbl[3] = "技能攻击3"
			elseif skillid == 4093 and skilllevel == 1 then
				tbl[3] = "技能攻击4"
			end
		end
	end
	if chariotid == 90333 then
		if at == AT.stand then 
			tbl[-2] = "站立"
			tbl[0] = "站立"
		elseif at == AT.run then
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
			tbl[1] = "死亡2"
		elseif at == AT.skill then
			if pos == 0 then
				if skillid == 4106 and skilllevel == 1 then
					tbl[1] = "技能攻击3"
				elseif skillid == 5611 and skilllevel == 1 then
					tbl[1] = "技能攻击4"
				end
			end
		end
	end
	if chariotid == 90386 then
		if at == AT.stand then 
			tbl[-2] = "站立"
		elseif at == AT.run then
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
			tbl[1] = "死亡2"
		elseif at == AT.skill then
			if pos == 0 then
				if skillid == 5621 and skilllevel == 1 then
					tbl[1] = "技能攻击1"
				end
			end
		end
	end
	if chariotid == 94198 or chariotid == 94200 or chariotid == 94202 then 
		if at == AT.stand then 
			tbl[-2] = "站立"
		elseif at == AT.run then
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
			tbl[-2] = "左转"
		elseif at == AT.turnright then
			tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
		elseif at == AT.skill then
			if skillid == 4183 and skilllevel == 1 then
				tbl[-2] = "技能攻击3"
			elseif skillid == 5760 and skilllevel == 1 then
				tbl[-1] = "技能攻击1"
				tbl[-2] = "技能攻击1"
				tbl[0] = "技能攻击1"
			elseif skillid == 5762 and skilllevel == 1 then
				tbl[-2] = "技能攻击2"
				tbl[0] = "技能攻击2"
			end
		end
	end
	if chariotid == 94199 or chariotid == 94201 or chariotid == 94203 then
		if at == AT.stand then 
			tbl[-1] = "驾驶动作_战车"
			tbl[-2] = "站立"
		elseif at == AT.run then
			tbl[-1] = "驾驶动作_战车"
			tbl[-2] = "行走"
		elseif at == AT.walk then
			tbl[-1] = "驾驶动作_战车"
			tbl[-2] = "行走"
		elseif at == AT.back then
			tbl[-2] = "后退"
		elseif at == AT.turnleft then
		    tbl[-2] = "左转"
		elseif at == AT.turnright then
		    tbl[-2] = "右转"
		elseif at == AT.die then
			tbl[-2] = "死亡"
		elseif at == AT.skill then
			if skillid == 5766 then
				tbl[-1] = "指向吟唱_通用"
			elseif skillid == 5757 and skilllevel == 1 then
				tbl[-1] = "驾驶动作_战车"
				tbl[0] = "技能攻击1"
			elseif skillid == 5759 and skilllevel == 1 then
				tbl[-1] = "驾驶动作_战车"
				tbl[0] = "技能攻击3"
			end
		end
	end
	return tbl
end

-- 需要点地的技能，加入到这个列表里，只要找到skid，就是需要点地的，找不到就是不用点地的。
ChariotSkillInfo = {}
ChariotSkillInfo[4094] = true
ChariotSkillInfo[4105] = true
ChariotSkillInfo[4107] = true
ChariotSkillInfo[4108] = true
ChariotSkillInfo[4109] = true
ChariotSkillInfo[4113] = true
ChariotSkillInfo[4122] = true
ChariotSkillInfo[4123] = true
ChariotSkillInfo[4124] = true
ChariotSkillInfo[4389] = true
ChariotSkillInfo[4393] = true
ChariotSkillInfo[4395] = true
ChariotSkillInfo[4396] = true
ChariotSkillInfo[4397] = true
ChariotSkillInfo[4442] = true
ChariotSkillInfo[4446] = true
ChariotSkillInfo[4448] = true
ChariotSkillInfo[4449] = true
ChariotSkillInfo[4450] = true
ChariotSkillInfo[4674] = true
ChariotSkillInfo[5611] = true
ChariotSkillInfo[5757] = true
ChariotSkillInfo[5759] = true

function getChariotSkillInfo( skid )
	if ChariotSkillInfo[skid] ~= nil then
		return true;
	else
		return false;
	end
end