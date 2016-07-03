-- by Nottinghster
function onStepIn(cid, item, pos)

	coin = {x=33098, y=32816, z=13, stackpos=1}
	newpos = {x=33093, y=32824, z=13}

	getcoin = getThingfromPos(coin)
	
	if item.actionid == 6000 and getcoin.itemid == 2159 then
		doTeleportThing(cid,newpos)
		doRemoveItem(getcoin.uid,1)
		doSendMagicEffect(coin, CONST_ME_MAGIC_RED)
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)	
		else
	end
	
	if item.actionid == 5999 then
	doTeleportThing(cid, {x=33097, y=32815, z=13})
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)	
	end
	return true
end