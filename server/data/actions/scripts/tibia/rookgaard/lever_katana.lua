function onUse(cid, item, fromPosition, itemEx, toPosition)
	local doorPos = {x=32177, y=32148, z=11, stackpos=1}
	local relocatePos = {x=32178, y=32148, z=11}
	local doorItem = getThingfromPos(doorPos)

	if item.itemid == 1946 then
		doTransformItem(item.uid,item.itemid-1)
	elseif item.itemid == 1945 then
		doTransformItem(item.uid,item.itemid+1)
	end

	if doorItem.itemid == 1211 then
		doTransformItem(doorItem.uid,doorItem.itemid-2)
	elseif doorItem.itemid == 1209 then
		doRelocate(doorPos, relocatePos)
		doTransformItem(doorItem.uid,doorItem.itemid+2)
	else
		doTransformItem(doorItem.uid,doorItem.itemid+1)
	end
	
	doSetItemActionId(doorItem.uid,11013)

	return true
end