Lottery_Desc = {};

	
function Lottery_Desc:GetLotteryDesc(id, dicedata)
	if id == 6576 then	-- Divine Wood Treasure Box
		if ZLottery_FindSameNum(dicedata,4)==3 then
			return "First Prize"
		elseif ZLottery_FindSameNum(dicedata,4)==2 or ZLottery_FindSameNum(dicedata,3)==3
			or ZLottery_FindSameNum(dicedata,2)==3 or ZLottery_FindSameNum(dicedata,1)==3 then
			return "Second Prize"		
		elseif ZLottery_FindSameNum(dicedata,4)==1 then
			return "Third Prize"
		else	
			return "Fourth Prize"	
		end		
		
	elseif id == 7916 then	-- Mysterious Turtle Golden Cauldron
		if ZLottery_FindSameNum(dicedata,1)==3 then
			return "First Prize"
		elseif ZLottery_FindSameNum(dicedata,2)==3 then
			return "Second Prize"		
		elseif ZLottery_FindSameNum(dicedata,3)==3 or 
		(ZLottery_FindSameNum(dicedata,1)==1 and ZLottery_FindSameNum(dicedata,2)==1 and ZLottery_FindSameNum(dicedata,3)==1) then  
			return "Third Prize"
		else	
			return "Fourth Prize"	
		end	
		
	elseif id == 10484 then	--仙工宝箱
		if ZLottery_FindSameNum(dicedata,1)==3 then
			return "First Prize"
		elseif ZLottery_FindSameNum(dicedata,1)==2 then
			return "Second Prize"		
		elseif ZLottery_FindSameNum(dicedata,1)==1 then  
			return "Third Prize"
		else	
			return "Fourth Prize"	
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

