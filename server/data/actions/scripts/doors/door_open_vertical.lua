function onUse(cid, item, fromPosition, itemEx, toPosition)
	-- Get the tile to move the things on the door to
	local nextTile = {x=fromPosition.x+1, y=fromPosition.y, z=fromPosition.z}

	-- Move all moveable things to the next tile
	doRelocate(fromPosition, nextTile)

	-- Transform the door
	-- doRelocate can trigger other scripts (stepOut) so the uid might be invalid
	if(isValidUID(item.uid)) then
		doTransformItem(item.uid, item.itemid-1)
	end

	return true
end
