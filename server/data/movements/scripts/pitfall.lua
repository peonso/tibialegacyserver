-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Movement Scripts)

function onStepIn(cid, item, pos)
	if item.itemid == 293 then
		doTransformItem(item.uid, 294)
    end
	
    return TRUE
end