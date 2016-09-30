function onUse(cid, item, fromPosition, itemEx, toPosition)

	if item.itemid == 1368 then
		local tpPos = {x = fromPosition.x+1, y = fromPosition.y, z = fromPosition.z+1}
		doTeleportThing(cid,tpPos)
	elseif item.itemid == 1369 then
		local tpPos = {x = fromPosition.x, y = fromPosition.y, z = fromPosition.z+1}
		doTeleportThing(cid,tpPos)
	end

	return true
end