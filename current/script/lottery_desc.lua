Lottery_Desc = {};

	
function Lottery_Desc:GetLotteryDesc(id, dicedata)
	if id == 6576 then	--神木宝盒
		if ZLottery_FindSameNum(dicedata,4)==3 then
			return "一等奖"
		elseif ZLottery_FindSameNum(dicedata,4)==2 or ZLottery_FindSameNum(dicedata,3)==3
			or ZLottery_FindSameNum(dicedata,2)==3 or ZLottery_FindSameNum(dicedata,1)==3 then
			return "二等奖"		
		elseif ZLottery_FindSameNum(dicedata,4)==1 then
			return "三等奖"
		else	
			return "四等奖"	
		end		
		
	elseif id == 7916 then	--玄龟金鼎
		if ZLottery_FindSameNum(dicedata,1)==3 then
			return "一等奖"
		elseif ZLottery_FindSameNum(dicedata,2)==3 then
			return "二等奖"		
		elseif ZLottery_FindSameNum(dicedata,3)==3 or 
		(ZLottery_FindSameNum(dicedata,1)==1 and ZLottery_FindSameNum(dicedata,2)==1 and ZLottery_FindSameNum(dicedata,3)==1) then  
			return "三等奖"
		else	
			return "四等奖"	
		end	
		
	elseif id == 10484 then	--仙工宝箱
		if ZLottery_FindSameNum(dicedata,1)==3 then
			return "一等奖"
		elseif ZLottery_FindSameNum(dicedata,1)==2 then
			return "二等奖"		
		elseif ZLottery_FindSameNum(dicedata,1)==1 then  
			return "三等奖"
		else	
			return "四等奖"	
		end		
			
	end		
	return ""
end


function ZLottery_FindSameNum(s1,a) --寻找某个数的个数
	local i,j
	j=0
	for i=1,table.getn(s1) do
		if s1[i]==a then 
		j=j+1
		end 
	end 
	return j	
end 

