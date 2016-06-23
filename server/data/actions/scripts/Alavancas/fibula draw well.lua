-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

function onUse(cid, item, frompos, item2, topos)
	if item.actionid == 1621 then
		newpos = {x=32172, y=32439, z=8}
		doTeleportThing(cid,newpos)
		return TRUE
	end
end