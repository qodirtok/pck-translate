monster_ecm = {}
--[[ 
at: 			action type      
mid: 		monster templ id
skid:	¹ÖÎï¹¥»÷Ê±£¬Îª¹¥»÷¼¼ÄÜID£»¹ÖÎï±»¹¥»÷Ê±£¬Îª±»¹¥»÷¼¼ÄÜID


AT:
"Õ¾Á¢" = 0
"ĞİÏĞ"
"Õ½¶·Õ¾Á¢"
"¼¼ÄÜ1"
"ĞĞ×ß"
"ÆÕÍ¨¹¥»÷1" = 5
"ÆÕÍ¨¹¥»÷2"
"±¼ÅÜ"
"ËÀÍö"
"ÆğÌø"
"ÌøÔ¾ÂäµØ" = 10
"ÌøÔ¾Ñ­»·"
"Ä§¹¥1"
"ÊÜÉË" = 13

// NPC¶¯×÷
"±§ĞØ½»Ì¸"
"ÉìÊÖ½»Ì¸"
"½»Ì¸Ñ­»·"
"ĞİÏĞ¶¯×÷1"
"ĞİÏĞ¶¯×÷2"
"Õ¾Á¢"
"ĞĞ×ß"
"±¼ÅÜ"
"¹¥»÷"
"ËÀÍö"
"³öÉú"
"½»Ì¸"
"ÏûÊ§"
"¹¥»÷1"
"¹¥»÷2"
"¹¥»÷3"
"×ó×ª"
"ÓÒ×ª"
"¿ÕÏĞ"
"ÆÕÍ¨¹¥»÷3"
"ÆÕÍ¨¹¥»÷4"
"Ö÷¶¯×çÖä_½üÉí1_»¤ÎÀ"
"Ö÷¶¯×£¸£_½üÉí1_»¤ÎÀ"
]]--
function monster_ecm:getMonsterECMName( at, mid, skid )
	
	local ret = ""
	---------------------------------------------------
	if mid == 74698 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74699 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74700 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74701 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74702 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74703 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74704 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end	
	if mid == 746705 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end	
	if mid == 74706 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74707 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74708 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74709 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74710 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74711 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74712 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74713 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74714 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74715 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74716 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end	if mid == 74717 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74718 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end	if mid == 74719 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74720 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end	
	if mid == 74749 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end	
	if mid == 74750 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end	
	if mid == 74751 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end	
	if mid == 74752 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end	
	if mid == 74753 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74754 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74755 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74756 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74757 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74758 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74759 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 74760 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
				elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 75234 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 75235 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then

				ret = "ËÀÍö2"

		end
	end
	if mid == 75236 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then
				ret = "ËÀÍö2"
		end
	end
	if mid == 75237 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then
				ret = "ËÀÍö2"
		end
	end
	if mid == 75238 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then
				ret = "ËÀÍö2"
		end
	end
	if mid == 75239 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then
				ret = "ËÀÍö2"
		end
	end
	if mid == 75240 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then
				ret = "ËÀÍö2"
		end
	end
	if mid == 75241 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 23 then
				ret = "ËÀÍö2"
		end
	end
	if mid == 74402 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 8 then
				ret = "ËÀÍö2"
		end
	end
--ÊÔ¼İÕ½³¡Ïà¹Ø¹Ö
	if mid == 74978 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 8 then
				ret = "ËÀÍö2"
		end
	end
	if mid == 74979 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 8 then
				ret = "ËÀÍö2"
		end
	end
	if mid == 74980 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 8 then
				ret = "ËÀÍö2"
		end
	end
	if mid == 74981 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 8 then
				ret = "ËÀÍö2"
		end
	end
	if mid == 74982 then
		if at == 13 then
			if skid == 4051 then
				ret = "»ğÑæÊÜÉË"
			elseif skid == 4093 then
				ret = "»÷ÍË"				
			elseif skid == 4186 or skid == 4187 or skid == 4188 or skid == 4189 or skid == 4190 then
				ret = "»÷ÍË"
			end
		elseif at == 8 then
				ret = "ËÀÍö2"
		end
	end
	if mid == 79157 then
		if at == 8 then
			ret = "ËÀÍö2"
		end
	end
	-------------------------------------------------
	return ret
end

--local ret = monster_ecm:getMonsterECMName(13, 75846, 0,3522)
--print(ret)