-- by Nottinghster
function onStepIn(cid, item, pos)

	coin = {x=33276, y=32552, z=14, stackpos=1}
	newpos = {x=33271, y=32553, z=14}

	getcoin = getThingfromPos(coin)
	
	if item.actionid == 6009 and getcoin.itemid == 2159 then
		doTeleportThing(cid,newpos)
		doRemoveItem(getcoin.uid,1)
		doSendMagicEffect(coin, CONST_ME_MAGIC_RED)
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)
		else
	end
	
	if item.actionid == 6010 then
	doTeleportThing(cid, {x=33277, y=32553, z=14})
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)	
	end
	return true
end