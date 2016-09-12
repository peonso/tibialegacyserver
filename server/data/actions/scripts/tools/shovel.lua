local TILE_SAND = 231
local ITEM_SCARAB_COIN = 2159
local TUMB_ENTRANCE = 25001
local SCARAB_TILE = 25002
local SAND_HOLE = 489
local duration = 5*60000 -- 5 minutes

local function __doTransformHole__(parameters)
	local thing = getTileItemById(parameters.pos, SAND_HOLE)
	local newItem = doTransformItem(thing.uid, parameters.oldType)
	if parameters.oldaid ~= 0 and newItem then
		doSetItemActionId(thing.uid, parameters.oldaid)
	end	
end

local function __resetTile__(parameters)
	local thing = getTileItemById(parameters.pos, TILE_SAND)
	doSetItemActionId(thing.uid, SCARAB_TILE)
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if (isInArray(CLOSED_HOLE, itemEx.itemid) ) then
		doTransformItem(itemEx.uid, itemEx.itemid + 1)
	elseif (itemEx.itemid == TILE_SAND) then
		if (itemEx.actionid == TUMB_ENTRANCE) then
			if (math.random(1, 5) == 1) then
				doTransformItem(itemEx.uid, SAND_HOLE)
				addEvent(__doTransformHole__, duration, {oldType = itemEx.itemid, pos = toPosition, oldaid = itemEx.actionid})
				if itemEx.actionid ~= 0 then
					doSetItemActionId(itemEx.uid, itemEx.actionid)
				end
			end
		elseif (itemEx.actionid == SCARAB_TILE) then
			addEvent(__resetTile__, 30*60000, {pos = toPosition})
			doSetItemActionId(itemEx.uid, 101)
			if (math.random(1, 20) == 1) then
				doCreateItem(ITEM_SCARAB_COIN, toPosition)
			else
				doSummonCreature("Scarab", toPosition)
			end
		end
		doSendMagicEffect(toPosition, CONST_ME_POFF)
	else
		return false
	end

	for i = 1, #POOLS do
		local pool = getTileItemById(toPosition, POOLS[i]).uid
		if pool > 0 then
			doRemoveItem(pool,1)
		end
	end

	doDecayItem(itemEx.uid)
	return true
end