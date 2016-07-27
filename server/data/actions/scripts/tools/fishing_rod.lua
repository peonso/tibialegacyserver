local FISH_WATER = {4608, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616}
local NOFISH_WATER = {493, 4617, 4618, 4619, 4210, 4621, 4622, 4623, 4624, 4625, 4820, 4821, 4822, 4823, 4824, 4825}
local ITEM_WORM = 3976
local ITEM_FISH = 2667
local ITEM_FISHING_ROD = 2580
local ITEM_NORTHERN_PIKE = 2669

local function calculateWidth(lootList, index)
	if lootList[index][2] > 0 and lootList[index][3] > 0 then
		local ret = lootList[index][3] * 100000
		if lootList[index][1] == 0 then --not drop anything
			ret = ret / getConfigValue("rate_loot")
		else
			ret = ret * (2/(lootList[index][2]+1))
		end
		return math.max(math.ceil(ret),1)
	else
		return false
	end
end

local function calculateTotalWidth(lootList)
	local ret = 0
	local listSize = table.getn(lootList)
	for aux = 1, listSize do
		ret = ret + calculateWidth(lootList,aux)
	end
	return ret
end

function onUse(cid, item, frompos, item2, topos)

	if(topos.x == CONTAINER_POSITION) then
		doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTPOSSIBLE)
		return true
	end
	
	if (isInArray(NOFISH_WATER, item2.itemid) ) then
		doSendMagicEffect(topos, CONST_ME_LOSEENERGY)
		return true
	end

	local formula = (getPlayerSkill(cid, CONST_SKILL_FISHING) / 200) + (0.85 * math.random())
	local hasFished = false;

	local canGainSkill = not(getTilePzInfo(getThingPos(cid)) or (getPlayerItemCount(cid, ITEM_WORM) < 1 and item.itemid == ITEM_FISHING_ROD))

	-- First verify the most common case
	if (isInArray(FISH_WATER, item2.itemid) ) then
		-- The water has a fish. Verify if the player can gain skills
		if(canGainSkill) then
			if(formula > 0.7) then
				doPlayerAddItem(cid, ITEM_FISH)
				doPlayerAddSkillTry(cid, CONST_SKILL_FISHING, 1)
				doTransformItem(item2.uid, item2.itemid + 9)
				hasFished = true;
			end
			doPlayerAddSkillTry(cid, CONST_SKILL_FISHING, 1)
		end
		doSendMagicEffect(topos, CONST_ME_LOSEENERGY)
	else
		return false
	end

	if hasFished then
		doPlayerRemoveItem(cid, ITEM_WORM, 1)
	end
	doDecayItem(item2.uid)

	return true
end
