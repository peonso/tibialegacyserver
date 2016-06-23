-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Movement Scripts)

function onStepIn(cid, item, pos)

if isPremium(cid) == FALSE then
pos.x = pos.x+3
doTeleportThing(cid, pos)
doSendMagicEffect(getPlayerPosition(cid), 12)
else
doPlayerSendCancel(cid,"")
end
return TRUE
end
