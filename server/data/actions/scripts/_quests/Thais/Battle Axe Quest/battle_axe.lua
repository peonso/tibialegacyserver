function onUse(cid, item, frompos, item2, topos)
if item.uid == 1658 then
  queststatus = getPlayerStorageValue(cid,1658)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a battle axe.")
   doPlayerAddItem(cid,2378,1)
   setPlayerStorageValue(cid,1658,1)
  else
   doPlayerSendTextMessage(cid,22,"The dead skeleton is empty.")
  end
else
  return false
end
return true
end

