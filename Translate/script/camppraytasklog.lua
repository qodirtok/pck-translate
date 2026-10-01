-- Prayer Altar Tip Info
CampTaskLogInfo = {}
CampTaskLogInfo[1541] = "^7fffff上交了7个烧鸡，获得了祈福值7点\r"
CampTaskLogInfo[31790] = "^7fffff上交了1个贡品·烤鱼，增加了2点祈福值，100点国家资金。\r"
CampTaskLogInfo[31791] = "^7fffff上交了1个贡品·烧鸡，增加了5点祈福值，200点国家资金。\r"
CampTaskLogInfo[31792] = "^7fffff上交了1个贡品·烤乳猪，增加了10点祈福值，500点国家资金。\r"
CampTaskLogInfo[31785] = "^7fffff上交了1个贡品·烤鱼，增加了2点祈福值，100点国家资金。\r"
CampTaskLogInfo[31786] = "^7fffff上交了1个贡品·烧鸡，增加了5点祈福值，200点国家资金。\r"
CampTaskLogInfo[31787] = "^7fffff上交了1个贡品·烤乳猪，增加了10点祈福值，500点国家资金。\r"
CampTaskLogInfo[31795] = "^7fffff上交了1个贡品·烤鱼，增加了2点祈福值，100点国家资金。\r"
CampTaskLogInfo[31796] = "^7fffff上交了1个贡品·烧鸡，增加了5点祈福值，200点国家资金。\r"
CampTaskLogInfo[31797] = "^7fffff上交了1个贡品·烤乳猪，增加了10点祈福值，500点国家资金。\r"

CampPrayTaskLog = {}

function CampPrayTaskLog:Info( taskid )
	local Prefix = "^fff600 "
	local DefaultLog = "^0000ff上交了祈福物品，为国家增加了祈福值\r"
	if( CampTaskLogInfo[taskid] ) then
		return Prefix, CampTaskLogInfo[taskid]
	else
		return Prefix, DefaultLog
	end
end
