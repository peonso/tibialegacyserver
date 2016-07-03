-- by Nottinghster
function onStepIn(cid, item, pos)

switch1pos = {x=33399, y=32794, z=14, stackpos=1}
switch2pos = {x=33382, y=32786, z=14, stackpos=1}
switch3pos = {x=33368, y=32763, z=14, stackpos=1}
switch4pos = {x=33357, y=32749, z=14, stackpos=1}
switch5pos = {x=33305, y=32734, z=14, stackpos=1}
switch6pos = {x=33338, y=32702, z=14, stackpos=1}
switch7pos = {x=33358, y=32701, z=14, stackpos=1}
switch8pos = {x=33349, y=32680, z=14, stackpos=1}
switch9pos = {x=33320, y=32682, z=14, stackpos=1}
teleportpos = {x=33366, y=32806, z=14}

getswitch1 = getThingfromPos(switch1pos)
getswitch2 = getThingfromPos(switch2pos)
getswitch3 = getThingfromPos(switch3pos)
getswitch4 = getThingfromPos(switch4pos)
getswitch5 = getThingfromPos(switch5pos)
getswitch6 = getThingfromPos(switch6pos)
getswitch7 = getThingfromPos(switch7pos)
getswitch8 = getThingfromPos(switch8pos)
getswitch9 = getThingfromPos(switch9pos)

if item.actionid == 13000 and getswitch1.itemid == 1946 and getswitch2.itemid == 1946 and getswitch3.itemid == 1946 and getswitch4.itemid == 1946 and getswitch5.itemid == 1946 and getswitch6.itemid == 1946 and getswitch7.itemid == 1946 and getswitch8.itemid == 1946 and getswitch9.itemid == 1946 then
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