-- by Nottinghster

function onUse(cid, item, frompos, item2, topos)
	if(item.actionid == 0) then
		doTransformItem(item.uid, item.itemid+1)
		return true
	end

	local canEnter = (getPlayerStorageValue(cid, item.actionid) >= 1)
	if not(canEnter) then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "The door is sealed against unwanted intruders.")
		return true
	end

	doTransformItem(item.uid, item.itemid+1)
	local canGo = (queryTileAddThing(cid, frompos, bit.bor(2, 4)) == RETURNVALUE_NOERROR)
	if not(canGo) then
		return false
	end

	local dir = getDirectionTo(getPlayerPosition(cid), frompos)
	doMoveCreature(cid, dir)
	return true
end