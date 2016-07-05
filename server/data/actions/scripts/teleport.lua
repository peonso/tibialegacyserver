-- by Nottinghster

function onUse(cid, item, frompos, item2, topos)
	npos = {x = frompos.x, y = frompos.y, z = frompos.z}
	if (isInArray(LADDER, item2.itemid) == true) then
		npos.y = npos.y + 1
		npos.z = npos.z - 1
		doTeleportThing(cid, npos)
	else
		npos.z = npos.z + 1
		doTeleportThing(cid, npos)
	end
	
	return true
end