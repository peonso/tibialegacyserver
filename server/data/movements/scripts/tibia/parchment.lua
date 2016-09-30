function onRemoveItem(item, tile, position)
	local demonPositions = {
		{x=33060, y=31623, z=15},
		{x=33066, y=31623, z=15},
		{x=33060, y=31627, z=15},
		{x=33066, y=31627, z=15}
	}

	doSetItemActionId(item.uid, 0)
	for i = 1, #demonPositions do
		doSummonCreature("Demon", demonPositions[i])
	end

	return true
end