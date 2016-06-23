function onUse(cid, item, frompos, item2, topos)
gatepos = {x=32802, y=32336, z=11, stackpos=1}
getgate = getThingfromPos(gatepos)
splash = {x=32795, y=32337, z=11, stackpos=1}
oil = getThingfromPos(splash)

if item.uid == 10203 and item.itemid == 1945 and getgate.itemid == 1304 and oil.itemid == 2025 and oil.type == 11 then
 doRemoveItem(getgate.uid,1)
 doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 10203 and item.itemid == 1946 and getgate.itemid == 0 then
 doCreateItem(1304,1,gatepos)
 doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"The lever is creaking and rusty.")
end
return TRUE
end
