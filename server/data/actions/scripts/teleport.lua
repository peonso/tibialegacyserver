-- by Nottinghster

function onUse(cid, item, fromPosition, itemEx, toPosition)
	npos = {x = fromPosition.x, y = fromPosition.y, z = fromPosition.z}
	if (isInArray(LADDER, itemEx.itemid) == true) then
		npos.y = npos.y + 1
		npos.z = npos.z - 1
		doTeleportThing(cid, npos)
	else
		npos.z = npos.z + 1
		doTeleportThing(cid, npos)
	end
	
	return true
end