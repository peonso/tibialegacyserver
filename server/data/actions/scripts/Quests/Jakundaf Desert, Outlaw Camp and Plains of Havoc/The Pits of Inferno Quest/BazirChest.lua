function onUse(cid, item, frompos, item2, topos)
if item.uid == 10272 then
if item.itemid == 1746 then

  nplayer1pos = {x=32799, y=32465, z=14}
  doTeleportThing(cid,nplayer1pos)
  doSendMagicEffect(nplayer1pos,10)
  doSendMagicEffect(topos,6)
  doSendMagicEffect(frompos,6)

end
end
return 1
end