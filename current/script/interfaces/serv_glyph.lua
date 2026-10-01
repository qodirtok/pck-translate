local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local EquipPart = 9

Win_ServGlyph = DlgTemplate:new({this = "Win_ServGlyph"})

--可装部位
local EnchaseParts = "NSCRWPFH" --1,兵器weapoN 2,肩部Shoulder 3,上衣Chest 4,腕部wRist 5,腰部Waist 6,裤子Pants 7,足部Foot 8,马鞭Horsewhip
local EnchasePartsString = {"兵器","肩部","上衣","腕部","腰部","裤子","足部","马鞭"}

function Win_ServGlyph:Init()

end


function Win_ServGlyph:ShowDialog()
	self:Refresh(EquipPart)
end

------------------------
--拼可装备部位字符串
------------------------
local function ConvertPartStr (parts)
	local partString = ""
	local bFirst = true
	for i = 1 , 8 do
		if parts:sub (i, i) == EnchaseParts:sub (i, i) then
			if not bFirst then
				partString = partString .."，"
			end
			partString = partString .. EnchasePartsString[i]
			bFirst = false
		end
	end
	return partString
end

------------------------
--主要模块
------------------------
local function IsMatch (enchaseIDs, es)	-- es: 会被改写
	for iID = 1, 3 do
		if enchaseIDs[iID] ~= 0 then
			local bHas = false
			for iE = 1, 3 do
				if enchaseIDs[iID] == es[iE] then
					es[iE] = nil
					bHas = true
					break
				end
			end
			if not bHas then
				return false
			end
		end
	end
	return true
end

function Win_ServGlyph:Refresh(partID, enchaseID1, enchaseID2, enchaseID3)
	EquipPart = partID
	local enchaseIDs = {enchaseID1, enchaseID2, enchaseID3}
	local EnchaseCompList = {}
	local EnchaseCompHint = {}
	for i , enchase in ipairs (EnchaseComp) do
		if IsMatch(enchaseIDs, {enchase.e1, enchase.e2, enchase.e3}) or IsMatch(enchaseIDs, {enchase.e4, enchase.e2, enchase.e3}) or IsMatch(enchaseIDs, {enchase.e1, enchase.e5, enchase.e3}) or IsMatch(enchaseIDs, {enchase.e1, enchase.e2, enchase.e6}) or IsMatch(enchaseIDs, {enchase.e4, enchase.e5, enchase.e3}) or IsMatch(enchaseIDs, {enchase.e4, enchase.e5, enchase.e6}) or IsMatch(enchaseIDs, {enchase.e4, enchase.e2, enchase.e6})or IsMatch(enchaseIDs, {enchase.e1, enchase.e5, enchase.e6}) then
			if partID == 9 or  EnchaseParts:sub(partID, partID) == enchase.parts:sub(partID, partID) then
				local Enchase1 = EnchaseAll[enchase.e1]
				local Enchase2 = EnchaseAll[enchase.e2]
				local Enchase3 = EnchaseAll[enchase.e3]
				local Enchase4 = EnchaseAll[enchase.e4]
				local Enchase5 = EnchaseAll[enchase.e5]
				local Enchase6 = EnchaseAll[enchase.e6]
				if Enchase1 and Enchase2 and Enchase3 then
					local EnchaseCompName = Enchase1.shortname .."^ffffff·".. Enchase2.shortname .."^ffffff·".. Enchase3.shortname
					local EnchaseName = enchase.name
					local EnchaseParts = ConvertPartStr (enchase.parts)
					local EnchaseEffect = enchase.effect
					EnchaseCompList[#EnchaseCompList+1] = EnchaseCompName .."\t".. EnchaseName .."\t".. "^ff8000".. EnchaseEffect
					EnchaseCompHint[#EnchaseCompHint+1] = "^e1e1e1" .. "秘咒效果：" .. EnchaseEffect .."\r".. "可镶嵌部位：" .. EnchaseParts
				end
			end
		end
	end
	DlgApi.SetListText (self.this , "Lst_EnchaseComp", EnchaseCompList)
	for i = 1, #EnchaseCompList do
		DlgApi.SetListItemHint (self.this, "Lst_EnchaseComp", i-1, EnchaseCompHint[i])
	end
end

local function IsMatch(mask1, mask2)
	for i = 1, #mask1 do
		if mask2 == mask1[i] then
			return true
		end
	end
	return false	
end

function Win_ServGlyph:RefreshGlyphInfo(mask)
	local glyphList = {}
	local result = {}
	for i = 0 , EnchaseAll.n do
		if (i == 0) or (EnchaseAll[i] ~= nil and IsMatch(EnchaseAll[i].mask, mask)) then
			local iListItem = #glyphList
			local data = {}
			glyphList[iListItem+1] = EnchaseAll[i].name
			data.id = EnchaseAll[i].id
			data.pos = i
			result[iListItem+1] = data
		end
	end

	DlgApi.SetListText (self.this, "Combo_Enchase1", glyphList)
	DlgApi.SetListText (self.this, "Combo_Enchase2", glyphList)
	DlgApi.SetListText (self.this, "Combo_Enchase3", glyphList)
	DlgApi.SetListCurLine (self.this, "Combo_Enchase1", 0)
	DlgApi.SetListCurLine (self.this, "Combo_Enchase2", 0)
	DlgApi.SetListCurLine (self.this, "Combo_Enchase3", 0)

	return result
end

--------------------
--返回秘文信息
--------------------
function Win_ServGlyph:GetEnchaseID ()
	local result = {}
	for iEn = 0, EnchaseAll.n do
		local info = EnchaseAll[iEn]
		if info then
			result[iEn+1] = info.id
		end
	end
	return result
end

--------------------
--返回秘文组合信息
--------------------
function Win_ServGlyph:GetEnchaseComp ()
	local result = {}
	for iEn = 1, EnchaseComp.n do
		local info = EnchaseComp[iEn]
		if info then
			result[iEn] = info
		end
	end
	return result
end