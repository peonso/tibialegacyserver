-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

function onUse(cid, item, frompos, item2, topos)
	if(item.actionid == 0) then
		doTransformItem(item.uid, item.itemid+1)
		return TRUE
	end

	local canEnter = (getPlayerStorageValue(cid, item.actionid) >= 1)
	if not(canEnter) then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "The door is sealed against unwanted intruders.")
		return TRUE
	end

	doTransformItem(item.uid, item.itemid+1)
	local canGo = (queryTileAddThing(cid, frompos, bit.bor(2, 4)) == RETURNVALUE_NOERROR)
	if not(canGo) then
		return FALSE
	end

	local dir = getDirectionTo(getPlayerPosition(cid), frompos)
	doMoveCreature(cid, dir)
	return TRUE
end