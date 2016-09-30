local wallPositions = {
	{x=33210, y=31630, z=13},
	{x=33211, y=31630, z=13},
	{x=33212, y=31630, z=13}
}

function onStepIn(cid, item, position)
	
	doTransformItem(item.uid,item.itemid-1)

	local positions = {
		{x=33190, y=31629, z=13},
		{x=33191, y=31629, z=13}
	}

	for i = 1, #positions do
		local creature = getTopCreature(positions[i])
		if not creature then
			return true
		end
	end

	for i = 1, #wallPositions do
		local wallItem = getTileItemById(wallPositions[i], 1050)
		if wallItem.itemid == 1050 then
			doRemoveItem(wallItem.uid,1)
		end
	end

	return true
end

function onStepOut(cid, item, position)

	doTransformItem(item.uid,item.itemid+1)

	for i = 1, #wallPositions do
		local wallItem = getThingfromPos(wallPositions[i])
		if wallItem.itemid == 1050 then
			return true
		end
		local nextTile = {x = wallPositions[i].x, y = wallPositions[i].y+1, z = wallPositions[i].z}
		doRelocate(wallPositions[i], nextTile)
		doCreateItem(1050,1,wallPositions[i])
	end

	return true
end