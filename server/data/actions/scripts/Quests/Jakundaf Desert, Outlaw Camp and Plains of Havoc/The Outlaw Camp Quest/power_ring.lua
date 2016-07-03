function onUse(cid, item, frompos, item2, topos)

local power_ring = {x=32594, y=32214, z=9,stackpos=2}
local parede = {x=32604, y=32216, z=9, stackpos=1}
local event = 0

getpower_ring = getThingfromPos(power_ring)
getparede = getThingfromPos(parede)

if item.uid == 8889 and item.itemid == 1945 and getpower_ring.itemid == 2166 and getparede.itemid == 1026 then
doRemoveItem(getpower_ring.uid,1)
doRemoveItem(getparede.uid,1)
doTransformItem(item.uid, 1946)
event = addEvent(doCreateItem, 2 * 60 * 1000, 1026, 1, parede)
else
doPlayerSendCancel(cid, "There is something missing.")
end
if item.itemid == 1946 then
stopEvent(event)
doPlayerSendCancel(cid, "")
doCreateItem(1026, 1, parede)
doTransformItem(item.uid, 1945)
end
return true
end
