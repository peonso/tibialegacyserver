function onUse(cid, item, fromPosition, itemEx, toPosition)
	local gatePos = {x=32483, y=31633, z=9, stackpos=0}
	local nextTile = {x=gatePos.x, y=gatePos.y, z=gatePos.z+1}
	local gateItem = getThingfromPos(gatePos)

	if item.itemid == 1945 and (gateItem.itemid == 355 or gateItem.itemid == 354) then
		doRelocate(gatePos, nextTile)
		doTransformItem(gateItem.uid,392)
		doDecayItem(gateItem.uid)
		doTransformItem(item.uid,item.itemid+1)
	elseif item.itemid == 1946 then
		doTransformItem(item.uid,item.itemid-1)
	else
		doTransformItem(item.uid,item.itemid+1)
	end

	return true
end
