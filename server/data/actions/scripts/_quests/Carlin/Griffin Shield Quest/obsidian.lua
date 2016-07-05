function onUse(cid, item, frompos, item2, topos)
if item.uid == 10064 then
  queststatus = getPlayerStorageValue(cid,10064)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a obsidian lance.")
   doPlayerAddItem(cid,2425,1)
   setPlayerStorageValue(cid,10064,1)
  else
   doPlayerSendTextMessage(cid,22,"The dead human is empty.")
  end
else
  return false
end
return true
end

