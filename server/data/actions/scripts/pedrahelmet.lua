-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 0 then
return 0
end 

if item2.itemid == 2147 then
doTransformItem(item2.uid,2343)
doRemoveItem(item.uid,2342)
else
return 0
end
return 1
end