function onUse(cid, item, frompos, item2, topos)
playerpos = getPlayerPosition(cid)
nplayer1pos = {x=32762, y=32333, z=13}

playerpos = getPlayerPosition(cid)

if item.uid == 10260 and item.itemid == 1945 then
doTransformItem(item.uid,item.itemid+1)
doSendMagicEffect(playerpos,2)
doTeleportThing(cid,nplayer1pos)
doSendMagicEffect(nplayer1pos,10)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 10260 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end  
