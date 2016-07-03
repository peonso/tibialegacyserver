-- by Nottinghster
function onStepIn(cid, item, pos)

	coin = {x=33233, y=32692, z=13, stackpos=1}
	newpos = {x =33234,y=32687,z=13}

	getcoin = getThingfromPos(coin)
	
	if item.actionid == 6016 and getcoin.itemid == 2159 then
		doTeleportThing(cid,newpos)
		doRemoveItem(getcoin.uid,1)
		doSendMagicEffect(coin, CONST_ME_MAGIC_RED)
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)
		else
	end
	
	if item.actionid == 6017 then
	doTeleportThing(cid, {x=33235,y=32694,z=13})
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)	
	end
	
	return true
end