-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Movement Scripts)

function onAddItem(item, tile, pos)
	if(item.actionid == 0) then
		doTransformItem(item.uid, item.itemid+1)
	end
	return TRUE
end