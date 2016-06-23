-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

function onUse(cid, item, frompos, item2, topos)
gatepos1 = {x=32604, y=31904, z=3, stackpos=1}
getgate1 = getThingfromPos(gatepos1)

gatepos2 = {x=32605, y=31904, z=3, stackpos=1}
getgate2 = getThingfromPos(gatepos2)

gatepos3 = {x=32604, y=31905, z=3, stackpos=1}
getgate3 = getThingfromPos(gatepos3)

gatepos4 = {x=32605, y=31905, z=3, stackpos=1}
getgate4 = getThingfromPos(gatepos4)

if item.uid == 2469 and item.itemid == 1945 and getgate1.itemid == 1300 and getgate2.itemid == 1301 and getgate3.itemid == 1302 and getgate4.itemid == 1303 then
 doRemoveItem(getgate1.uid,1)
 doRemoveItem(getgate2.uid,1)
 doRemoveItem(getgate3.uid,1)
 doRemoveItem(getgate4.uid,1)
 doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 2469 and item.itemid == 1946 and getgate1.itemid == 0 and getgate2.itemid == 0 and getgate3.itemid == 0 and getgate4.itemid == 0 then
 doCreateItem(1300,1,gatepos1)
 doCreateItem(1301,1,gatepos2)
 doCreateItem(1302,1,gatepos3)
 doCreateItem(1303,1,gatepos4)
 doTransformItem(item.uid,item.itemid-1)
else
 doPlayerSendCancel(cid,"Sorry, not possible.")
end
return TRUE
end