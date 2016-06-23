-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

local MAX_FOOD = 1200

function onUse(cid, item, frompos, item2, topos)
	if (FOODS[item.itemid] == nil) then
		return FALSE
	end

	local size = FOODS[item.itemid][1]
	local sound = FOODS[item.itemid][2]

	if (getPlayerFood(cid) + size > MAX_FOOD) then
		doPlayerSendCancel(cid, "You are full.")
		return TRUE
	end
	
	doPlayerFeed(cid, size)
	doRemoveItem(item.uid, 1)
	doPlayerSay(cid, sound, TALKTYPE_SAY)
	return TRUE
end