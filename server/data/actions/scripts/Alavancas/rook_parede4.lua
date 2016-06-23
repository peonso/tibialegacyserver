-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

function onUse(cid, item, frompos, item2, topos)
gatepos = {x=32094, y=32149, z=10, stackpos=1}
getgate = getThingfromPos(gatepos)

if item.uid == 9995 and item.itemid == 1945 and getgate.itemid == 1037 then
 doRemoveItem(getgate.uid,1)
 doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 9995 and item.itemid == 1946 and getgate.itemid == 0 then
 doCreateItem(1037,1,gatepos)
 doTransformItem(item.uid,item.itemid-1)
else
 doPlayerSendCancel(cid,"Not Possible")
end
return TRUE
end