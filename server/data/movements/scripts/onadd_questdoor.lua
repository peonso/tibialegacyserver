-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Movement Scripts)

function onAddItem(item, tile, pos)
	if(item.actionid == 0) then
		return TRUE
	end

	doSetItemSpecialDescription(item.uid, "The door is sealed against unwanted intruders.")
end