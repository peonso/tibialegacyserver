local function __doTransformHole__(parameters)
	local thing = getTileItemById(parameters.pos, MUD_HOLE)
	local newItem = doTransformItem(thing.uid, parameters.oldType)
	if parameters.oldaid ~= 0 and newItem then
		doSetItemActionId(thing.uid, parameters.oldaid)
	end	
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local TILE_SAND = 231
	local ITEM_SCARAB_COIN = 2159
	local TUMB_ENTRANCE = 777
	local SCARAB_TILE = 101
	local MUD_HOLE = 489
	local SCARAB_COIN_TILE = 102
	local duration = 5 * 60000 -- 5 minutes

	if (isInArray(CLOSED_HOLE, itemEx.itemid) ) then
		doTransformItem(itemEx.uid, itemEx.itemid + 1)
	elseif (itemEx.itemid == TILE_SAND) then
		if (itemEx.actionid == TUMB_ENTRANCE) then
			if (math.random(1, 5) == 1) then
				doTransformItem(itemEx.uid, MUD_HOLE)
				addEvent(__doTransformHole__, duration, {oldType = itemEx.itemid, pos = toPosition, oldaid = itemEx.actionid})
				if itemEx.actionid ~= 0 then
					doSetItemActionId(itemEx.uid, itemEx.actionid)
				end
			end
		elseif (itemEx.actionid == SCARAB_TILE) then
			if (math.random(1, 20) == 1) then
				doSummonCreature("Scarab", toPosition)
				doSetItemActionId(itemEx.uid, SCARAB_TILE + 2)
			end
		elseif (itemEx.actionid == SCARAB_COIN_TILE) then
			if (math.random(1, 20) == 1) then
				doCreateItem(ITEM_SCARAB_COIN, toPosition)
				doSetItemActionId(itemEx.uid, SCARAB_COIN_TILE + 2)
			end
		elseif (itemEx.actionid == SCARAB_TILE + 2) then
			if (math.random(1, 40) == 1) then
				doSetItemActionId(itemEx.uid, SCARAB_TILE)
			end
		elseif (itemEx.actionid == SCARAB_COIN_TILE + 2) then
			if (math.random(1, 40) == 1) then
				doSetItemActionId(itemEx.uid, SCARAB_COIN_TILE)
			end
		end
		doSendMagicEffect(toPosition, CONST_ME_POFF)
	else
		return false
	end

	doDecayItem(itemEx.uid)
	return true
end