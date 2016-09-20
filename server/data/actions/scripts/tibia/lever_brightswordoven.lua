function onUse(cid, item, fromPosition, itemEx, toPosition)
	local ovenPos = {x=32623, y=32188, z=9, stackpos=1}
	local nextTile = {x=ovenPos.x, y=ovenPos.y+1, z=ovenPos.z, stackpos=1}
	local nextTile2 = {x=ovenPos.x, y=ovenPos.y+2, z=ovenPos.z, stackpos=1}
	local ovenItem

	if item.itemid == 1945 then
		ovenItem = getThingfromPos(ovenPos)
		doRemoveItem(ovenItem.uid,1)
		doRelocate(nextTile, nextTile2)
		doCreateItem(1787,1,nextTile)
		doTransformItem(item.uid,item.itemid+1)
	elseif item.itemid == 1946 then
		ovenItem = getThingfromPos(nextTile)
		doRemoveItem(ovenItem.uid,1)
		doRelocate(ovenPos, nextTile)
		doCreateItem(1787,1,ovenPos)
		doTransformItem(item.uid,item.itemid-1)
	else
		doPlayerSendCancel(cid,"Sorry not possible.")
	end
	
	return true
end