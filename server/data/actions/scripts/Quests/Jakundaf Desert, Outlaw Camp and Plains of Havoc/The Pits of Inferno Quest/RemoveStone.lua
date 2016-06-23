function onUse(cid, item, frompos, item2, topos)
gatepos = {x=32827, y=32273, z=11, stackpos=1}
getgate = getThingfromPos(gatepos)

if item.uid == 10258 and item.itemid == 1945 and getgate.itemid == 1304 then
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry not possible.")
end
  return 1
  end