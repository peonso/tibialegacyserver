function onUse(cid, item, fromPosition, itemEx, toPosition)
gatepos = {x=32837, y=32333, z=11, stackpos=1}
getgate = getThingfromPos(gatepos)

if item.uid == 10207 and item.itemid == 1945 and getgate.itemid == 5062 then
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 10207 and item.itemid == 1946 and getgate.itemid == 0 then
doCreateItem(5062,1,gatepos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry not possible.")
end
  return true
  end