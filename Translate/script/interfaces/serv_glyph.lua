local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local GameApi = GameApi
local EquipPart = 9

Win_ServGlyph = DlgTemplate:new({this = "Win_ServGlyph"})

--Equippable Parts
local EnchaseParts = "NSCRWPFH" --1,Weapon 2,Shoulder 3,Chest 4,Wrist 5,Waist 6,Pants 7,Foot 8,Horsewhip
local EnchasePartsString = {"Weapon","Shoulder","Chest","Wrist","Waist","Pants","Foot","Horsewhip"}

function Win_ServGlyph:Init()

end


function Win_ServGlyph:ShowDialog()
	self:Refresh(EquipPart)
end

------------------------
--Construct Equippable Parts String
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
--Main Module
------------------------
local function IsMatch (enchaseIDs, es)	-- es: will be overwritten
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
					EnchaseCompHint[#EnchaseCompHint+1] = "^e1e1e1" .. "Inscription Curse Effect: " .. EnchaseEffect .."\r".. "Inscribable Parts: " .. EnchaseParts
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
--Return Inscription Info
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
--Return Inscription Combo Info
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