-- by Nottinghster
function onStepIn(cid, item, pos)

	coin = {x=33073, y=32589, z=13, stackpos=1}
	newpos = {x=33079, y=32589, z=13}

	getcoin = getThingfromPos(coin)
	
	if item.actionid == 6005 and getcoin.itemid == 2159 then
		doTeleportThing(cid,newpos)
		doRemoveItem(getcoin.uid,1)
		doSendMagicEffect(coin, CONST_ME_MAGIC_RED)
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)
		else
	end
	
	if item.actionid == 6006 then
	doTeleportThing(cid, {x=33072, y=32590, z=13})
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)	
	end
	return true
end