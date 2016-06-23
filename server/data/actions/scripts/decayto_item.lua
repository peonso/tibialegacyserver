-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

local ITEM_CANDELABRUM_ON = 2057
local ITEM_CANDELABRUM_OFF = 2041

function onUse(cid, item, frompos, item2, topos)	
	if (isInArray(DECAYTO_ITEM_INCREMENT, item.itemid) == TRUE) then
		doTransformItem(item.uid, item.itemid + 1)
	elseif (item.itemid == ITEM_CANDELABRUM_ON) then
		doTransformItem(item.uid, ITEM_CANDELABRUM_OFF)
	else
		doTransformItem(item.uid, item.itemid - 1)
	end
	
	doDecayItem(item.uid)
	return TRUE
end 