-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

function onUse(cid, item, frompos, item2, topos)
gatepos = {x=32483, y=31633, z=9, stackpos=0}
getgate = getThingfromPos(gatepos)

if item.uid == 4321 and item.itemid == 1945 and getgate.itemid == 355 then
doCreateItem(369,1,gatepos)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 4321 and item.itemid == 1946 and getgate.itemid == 369 then
doCreateItem(355,1,gatepos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry not possible.")
end
return TRUE
end
