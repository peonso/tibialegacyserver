-- by Nottinghster
function onStepIn(cid, item, pos)

	coin = {x=33161, y=32831, z=10, stackpos=1}
	newpos = {x=33156, y=32832, z=10}

	getcoin = getThingfromPos(coin)
	
	if item.actionid == 6013 and getcoin.itemid == 2159 then
		doTeleportThing(cid,newpos)
		doRemoveItem(getcoin.uid,1)
		doSendMagicEffect(coin, CONST_ME_MAGIC_RED)
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)
		else
	end
	
	if item.actionid == 6014 then
	doTeleportThing(cid, {x=33162, y=32832, z=10})
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)	
	end
	return true
end