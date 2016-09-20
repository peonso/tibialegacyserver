function onUse(cid, item, fromPosition, itemEx, toPosition)
	local barrelPos = {x=32614, y=32209, z=10, stackpos=1}
	local nextTile1 = {x=barrelPos.x-1, y=barrelPos.y, z=barrelPos.z, stackpos=1}
	local nextTile2 = {x=barrelPos.x, y=barrelPos.y-1, z=barrelPos.z, stackpos=1}
	local barrelItem = getTileItemById(barrelPos, 1774)
	local ringPos = {x=32613, y=32220, z=10, stackpos=1}
	local ringItem = getTileItemById(ringPos, 2166)

	if item.itemid == 1945 then
		if barrelItem.itemid == 1774 then
			doRemoveItem(barrelItem.uid,1)
			doRemoveItem(getThingfromPos({x=32614,y=32208,z=10,stackpos=1}).uid,1)
			doRelocate(barrelPos, nextTile2)
			doCreateItem(1774,1,{x=32614,y=32208,z=10})
			doRemoveItem(getThingfromPos({x=32614,y=32206,z=10,stackpos=1}).uid,1)
			doRemoveItem(getThingfromPos({x=32614,y=32205,z=10,stackpos=1}).uid,1)
			doCreateItem(1323,1,{x=32614,y=32204,z=10})
			doCreateItem(1336,1,{x=32614,y=32205,z=10})
			doCreateItem(1025,1,{x=32614,y=32206,z=10})
			doSendMagicEffect({x=32615,y=32224,z=10}, CONST_ME_HITBYFIRE)
			doSendMagicEffect({x=32614,y=32224,z=10}, CONST_ME_HITBYFIRE)
		else
			doRelocate(barrelPos, nextTile1)
		end
		doRemoveItem(getThingfromPos({x=32614,y=32221,z=10,stackpos=1}).uid,1)
		doRemoveItem(getThingfromPos({x=32615,y=32223,z=10,stackpos=1}).uid,1)
		doCreateItem(1309,1,{x=32615,y=32223,z=10})
		doCreateItem(1487,1,{x=32615,y=32221,z=10})
		doCreateItem(1488,1,{x=32615,y=32223,z=10})
		doCreateItem(1487,1,{x=32613,y=32220,z=10})
		doSendMagicEffect({x=32613,y=32220,z=10}, CONST_ME_GREEN_RINGS)
		doCreateItem(1025,1,{x=32614,y=32209,z=10})
		doRemoveItem(ringItem.uid,1)
		doTransformItem(item.uid,item.itemid+1)
	elseif item.itemid == 1946 then
		doSendMagicEffect(fromPosition, CONST_ME_POFF)
		doPlayerSendCancel(cid,"Sorry not possible.")
	else
		doPlayerSendCancel(cid,"Sorry not possible.")
	end

	return true
end