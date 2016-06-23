-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

function onUse(cid, item, frompos, item2, topos)
	npos = {x = frompos.x, y = frompos.y, z = frompos.z}
	if (isInArray(LADDER, item2.itemid) == TRUE) then
		npos.y = npos.y + 1
		npos.z = npos.z - 1
		doTeleportThing(cid, npos)
	else
		npos.z = npos.z + 1
		doTeleportThing(cid, npos)
	end
	
	return TRUE
end