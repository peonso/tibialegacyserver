-- by Nottinghster
function onStepIn(cid, item, pos)

	white = {x=32173, y=31871, z=15, stackpos=255}
	black = {x=32180, y=31871, z=15, stackpos=255}
	newpos = {x=32177, y=31863, z=15}

	getwhite = getThingfromPos(white)
	getblack = getThingfromPos(black)
	
	if item.actionid == 1336 and getwhite.itemid == 2143 and getblack.itemid == 2144 then
		doTeleportThing(cid,newpos)
		setPlayerStorageValue(cid, 20002,1)
		doRemoveItem(getwhite.uid,1)
		doRemoveItem(getblack.uid,1)
		doSendMagicEffect(white, CONST_ME_POFF)
		doSendMagicEffect(black, CONST_ME_POFF)
		doSendMagicEffect(getCreaturePosition(cid), 10)
	else
	pos.y = pos.y+2
	doTeleportThing(cid, pos)
	doSendMagicEffect(pos, 10)
	end
	return true
end