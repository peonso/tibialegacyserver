-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

function onUse(cid, item, frompos, item2, topos)
	local nextTile = {x = frompos.x, y = frompos.y + 1, z = frompos.z} 
	doRelocate(frompos, nextTile)
	doTransformItem(item.uid, item.itemid - 1)

	return TRUE
end