function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 10273 then
if item.itemid == 1850 then

  nplayer1pos = {x=32800, y=32469, z=13}
  doTeleportThing(cid,nplayer1pos)
  doSendMagicEffect(nplayer1pos,10)
  doSendMagicEffect(toPosition,6)
  doSendMagicEffect(fromPosition,6)

end
end
return true
end