-- by Nottinghster

function onStepIn(cid, item, pos)
	local skull1 = {x=32563, y=31957, z=1, stackpos=255}
	local skull2 = {x=32565, y=31957, z=1, stackpos=255}
	local skull3 = {x=32567, y=31957, z=1, stackpos=255}
	local skull4 = {x=32569, y=31957, z=1, stackpos=255}
	local entrance = {x=32481, y=31926, z=7, stackpos=255}
	local getskull1 = getThingfromPos(skull1)
	local getskull2 = getThingfromPos(skull2)
	local getskull3 = getThingfromPos(skull3)
	local getskull4 = getThingfromPos(skull4)

	if item.actionid == 50014 and getskull1.itemid == 2229 and getskull2.itemid == 2229 and getskull3.itemid == 2229 and getskull4.itemid == 2229 then
		doRemoveItem(getskull1.uid,1)
		doRemoveItem(getskull2.uid,1)
		doRemoveItem(getskull3.uid,1)
		doRemoveItem(getskull4.uid,1)
		doCreateItem(1490,1,skull1)
		doCreateItem(1490,1,skull2)
		doCreateItem(1490,1,skull3)
		doCreateItem(1490,1,skull4)
		doSendMagicEffect(skull1, 8)
		doSendMagicEffect(skull2, 8)
		doSendMagicEffect(skull3, 8)
		doSendMagicEffect(skull4, 8)
		doTeleportThing(cid,entrance)
	end

	return true
end