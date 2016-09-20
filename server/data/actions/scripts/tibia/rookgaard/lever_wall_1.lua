function onUse(cid, item, fromPosition, itemEx, toPosition)
	local gatePos = {x=32095, y=32173, z=8, stackpos=1}
	local nextTile = {x=gatePos.x, y=gatePos.y+1, z=gatePos.z}
	local gateItem = getThingfromPos(gatePos)

	if item.itemid == 1945 and gateItem.itemid == 1026 then
		doRemoveItem(gateItem.uid,1)
		doTransformItem(item.uid,item.itemid+1)
	elseif item.itemid == 1946 then
		doRelocate(gatePos, nextTile)
		doCreateItem(1026,1,gatePos)
		doTransformItem(item.uid,item.itemid-1)
	else
		doPlayerSendCancel(cid,"Sorry not possible.")
	end
	
	return true
end