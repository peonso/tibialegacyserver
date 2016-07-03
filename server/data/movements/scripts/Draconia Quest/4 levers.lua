-- by Nottinghster

function onStepIn(cid, item, pos)

switch1pos = {x=32802, y=31584, z=1, stackpos=1}
switch2pos = {x=32803, y=31584, z=1, stackpos=1}
switch3pos = {x=32804, y=31584, z=1, stackpos=1}
switch4pos = {x=32805, y=31584, z=1, stackpos=1}
telepos = {x=32701, y=31639, z=6}

getswitch1 = getThingfromPos(switch1pos)
getswitch2 = getThingfromPos(switch2pos)
getswitch3 = getThingfromPos(switch3pos)
getswitch4 = getThingfromPos(switch4pos)

if item.actionid == 988 and
getswitch1.itemid == 1945 and
getswitch2.itemid == 1946 and
getswitch3.itemid == 1945 and
getswitch4.itemid == 1946 then

doTeleportThing(cid,telepos)
doSendMagicEffect(getCreaturePosition(cid), 10)
else
pos.x = pos.x-2
doTeleportThing(cid, pos)
doSendMagicEffect(pos, 10)
end
return true
end