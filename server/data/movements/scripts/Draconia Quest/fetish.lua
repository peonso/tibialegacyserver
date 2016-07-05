-- by Nottinghster

function onStepIn(cid, item, pos)

	fetish = {x=32816, y=31601, z=9, stackpos=1}
	newpos = {x=32701, y=31639, z=6}

	getfetish = getThingfromPos(fetish)
	
	if item.actionid == 2112 and getfetish.itemid == 2194 and getPlayerStorageValue(cid,66) == true then
		doTeleportThing(cid,newpos)
		doRemoveItem(getfetish.uid,1)
		doSendMagicEffect(fetish, CONST_ME_MAGIC_RED)
		doSendMagicEffect(getCreaturePosition(cid), 10)
	else
		pos.x = pos.x+2
		doTeleportThing(cid, pos)
		doSendMagicEffect(pos, 10)
	end
	return true
end