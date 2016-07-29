-- by Nottinghster

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if (CONSTRUCTIONS[item.itemid] == nil) then
		return false
	elseif (fromPosition.x == CONTAINER_POSITION) then
		doPlayerSendCancel(cid, "You must put the construction kit on the floor first.")
	elseif not(getTileHouseInfo(getPlayerPosition(cid)) ~= false) then
		doPlayerSendCancel(cid, "You must open the construction kit in your house.")
	else
		doTransformItem(item.uid, CONSTRUCTIONS[item.itemid])
		if item.actionid ~= 0 then
			doSetItemActionId(item.uid, item.actionid)
		end
		doSendMagicEffect(fromPosition, CONST_ME_POFF)
	end
	
	return true
end