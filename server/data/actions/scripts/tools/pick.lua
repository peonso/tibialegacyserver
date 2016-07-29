local function __doTransformHole__(parameters)
	local thing = getTileItemById(parameters.pos, MUD_HOLE)
	local newItem = doTransformItem(thing.uid, parameters.oldType)
	if parameters.oldaid ~= 0 and newItem then
		doSetItemActionId(thing.uid, parameters.oldaid)
	end	
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local MUD_HOLE = 392
	local duration = 5 * 60000 -- 5 minutes

	local itemGround = getThingFromPos({x = toPosition.x, y = toPosition.y, z = toPosition.z + 1, stackpos = STACKPOS_GROUND})
	if(isInArray(ROPE_SPOT, itemGround.itemid) and isMoveable(itemEx.uid) == false and isCorpse(itemEx.uid) == false) then
		doTransformItem(itemEx.uid, MUD_HOLE)
		doSendMagicEffect(toPosition, CONST_ME_POFF)
		if itemEx.actionid ~= 0 then
			doSetItemActionId(itemEx.uid, itemEx.actionid)
		end
		addEvent(__doTransformHole__, duration, {oldType = itemEx.itemid, pos = toPosition, oldaid = itemEx.actionid})
		return true
	end

	return false
end