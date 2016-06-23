function onUse(cid, item, frompos, item2, topos)
if item.uid == 10063 then
  queststatus = getPlayerStorageValue(cid,10063)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a dwarven axe.")
   doPlayerAddItem(cid,2435,1)
   setPlayerStorageValue(cid,10063,1)
  else
   doPlayerSendTextMessage(cid,22,"The dead skeleton is empty.")
  end
else
  return 0
end
return 1
end

