--function by Armageddom--
function onStepIn(cid, item, frompos, item2, topos) 


if item.uid == 10202 then
getThingfromPos(getPlayerPosition(cid)) 
doSendMagicEffect(getPlayerPosition(cid),2) 
doTeleportThing(cid,{x=32791, y=32331, z=10}) 
doSendMagicEffect({x=32791, y=32331, z=10},10)
end 
return TRUE
end