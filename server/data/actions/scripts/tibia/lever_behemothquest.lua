function onUse(cid, item, fromPosition, itemEx, toPosition)
	local stonePositions={
		{x=33295, y=31677, z=15, stackpos=1},
		{x=33296, y=31677, z=15, stackpos=1},
		{x=33297, y=31677, z=15, stackpos=1},
		{x=33298, y=31677, z=15, stackpos=1},
		{x=33299, y=31677, z=15, stackpos=1}
	}
	local stoneItem
	
	if item.itemid == 1945 then
		for i=1, #stonePositions do
			stoneItem=getThingfromPos(stonePositions[i])
			if stoneItem then
				doSendMagicEffect(stonePositions[i], CONST_ME_POFF)
				doRemoveItem(stoneItem.uid,1)
			end
		end
		doTransformItem(item.uid,item.itemid+1)
	elseif item.itemid == 1946 then
		for i=1, #stonePositions do
			local nextTile={x=stonePositions[i].x, y=stonePositions[i].y+1, z=stonePositions[i].z}
			doRelocate(stonePositions[i], nextTile)
			doCreateItem(1304,1,stonePositions[i])
		end
		doTransformItem(item.uid,item.itemid-1)
	else
		doPlayerSendCancel(cid,"Sorry not possible.")
	end

	return true
end