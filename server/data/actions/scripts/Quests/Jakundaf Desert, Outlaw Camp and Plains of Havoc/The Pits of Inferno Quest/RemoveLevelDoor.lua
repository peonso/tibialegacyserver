function onUse(cid, item, frompos, item2, topos)
gatepos = {x=430, y=1396, z=12, stackpos=1}
getgate = getThingfromPos(gatepos)

if item.uid == 10259 and item.itemid == 1945 and getgate.itemid == 5112 then
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid+1)
else
doPlayerSendCancel(cid,"Sorry not possible.")
end
  return 1
  end