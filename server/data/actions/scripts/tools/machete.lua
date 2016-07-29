function onUse(cid, item, fromPosition, itemEx, toPosition)
	local ret = false

	if (isInArray(JUNGLE_GRASS_REMOVE, itemEx.itemid) ) then
		doRemoveItem(itemEx.uid)
		return true
	elseif (isInArray(JUNGLE_GRASS_TRANSFORM, itemEx.itemid) ) then
		doTransformItem(itemEx.uid, itemEx.itemid - 1)
		doDecayItem(itemEx.uid)
		ret = true
	end

	if itemEx.actionid ~= 0 and ret then
		doSetItemActionId(itemEx.uid, itemEx.actionid)
	end

	return ret
end