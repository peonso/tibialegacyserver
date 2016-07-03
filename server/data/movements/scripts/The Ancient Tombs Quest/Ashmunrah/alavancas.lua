-- by Nottinghster
function onStepIn(cid, item, pos)

switch1pos = {x=33176, y=32880, z=11, stackpos=2}
switch2pos = {x=33182, y=32880, z=11, stackpos=2}
switch3pos = {x=33175, y=32884, z=11, stackpos=2}
switch4pos = {x=33183, y=32884, z=11, stackpos=2}
switch5pos = {x=33176, y=32889, z=11, stackpos=2}
switch6pos = {x=33181, y=32889, z=11, stackpos=2}
teleportpos = {x=33198, y=32885, z=11}

getswitch1 = getThingfromPos(switch1pos)
getswitch2 = getThingfromPos(switch2pos)
getswitch3 = getThingfromPos(switch3pos)
getswitch4 = getThingfromPos(switch4pos)
getswitch5 = getThingfromPos(switch5pos)
getswitch6 = getThingfromPos(switch6pos)

if item.actionid == 13001 and
getswitch1.itemid == 1946 and
getswitch2.itemid == 1946 and
getswitch3.itemid == 1946 and
getswitch4.itemid == 1946 and
getswitch5.itemid == 1946 and
getswitch6.itemid == 1946 then

doTeleportThing(cid,teleportpos)
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)
else
pos.y = pos.y-2
doTeleportThing(cid, pos)
doSendMagicEffect(pos, 10)
doPlayerSendCancel(cid,"You need to flip all levers to pass on teleport.")
end
return true
end