-- by Nottinghster
function onStepIn(cid, item, pos)

	coin = {x=33293, y=32741, z=13, stackpos=1}
	newpos = {x=33299, y=32742, z=13}

	getcoin = getThingfromPos(coin)
	
	if item.actionid == 6003 and getcoin.itemid == 2159 then
		doTeleportThing(cid,newpos)
		doRemoveItem(getcoin.uid,1)
		doSendMagicEffect(coin, CONST_ME_MAGIC_RED)
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)
	end
	
	if item.actionid == 6004 then
	doTeleportThing(cid, {x=33292, y=32742, z=13})
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)	
	end
	return true
end