function onAddItem(moveitem, tileitem, pos)
newpos = {x=32791, y=32334, z=10}
cidtile1 = {x=pos.x, y=pos.y+1, z=pos.z, stackpos=253}
cidtile2 = {x=pos.x+1, y=pos.y+1, z=pos.z, stackpos=253}
cid1 = getThingfromPos(cidtile1)
cid2 = getThingfromPos(cidtile2)

if tileitem.uid == 10200 then
	  if moveitem.itemid == 2025 and moveitem.type == 2 and cid1.uid > 0 and cid2.uid ~= cid1.uid then
      doRemoveItem(moveitem.uid, 1)
      doSendMagicEffect(pos,13)
      doTeleportThing(cid1.uid,newpos)
      doSendMagicEffect(newpos,10)
elseif tileitem.uid == 10200 then
	  if moveitem.itemid == 2025 and moveitem.type == 2 and cid1.uid ~= cid2.uid and cid2.uid > 0 then
      doRemoveItem(moveitem.uid, 1)
      doSendMagicEffect(pos,13)
      doTeleportThing(cid2.uid,newpos)
      doSendMagicEffect(newpos,10)
else
doSendMagicEffect(pos,2)
doRemoveItem(moveitem.uid, 1)
end
end
end
end