-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

function onUse(cid, item, frompos, item2, topos)
	if item.actionid == 1622 then
		newpos = {x=32354, y=32131, z=9}
		doTeleportThing(cid,newpos)
	end
	return TRUE
end