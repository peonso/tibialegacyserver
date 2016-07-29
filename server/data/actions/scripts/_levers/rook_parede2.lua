-- by Nottinghster

function onUse(cid, item, fromPosition, itemEx, toPosition)
gatepos = {x=32090, y=32149, z=10, stackpos=1}
getgate = getThingfromPos(gatepos)

if item.uid == 9997 and item.itemid == 1945 and getgate.itemid == 1037 then
 doRemoveItem(getgate.uid,1)
 doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 9997 and item.itemid == 1946 and getgate.itemid == 0 then
 doCreateItem(1037,1,gatepos)
 doTransformItem(item.uid,item.itemid-1)
else
 doPlayerSendCancel(cid,"Not Possible")
end
return true
end