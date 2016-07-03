-- by Nottinghster

function onStepIn(cid, item, pos)

spike = {x=32101, y=32085, z=7, stackpos=2}
getspike = getThingfromPos(spike)

if item.uid == 10071 and getspike.itemid == 2383 then
doSendMagicEffect(spike,13)
doRemoveItem(getspike.uid,1)
elseif item.uid == 10071 and getspike.itemid == 0 then
doCreateItem(2383, spike)
doSendMagicEffect(spike,13)
end

return true
end