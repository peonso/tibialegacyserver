function onUse(cid, item, frompos, item2, topos)
if item.uid == 10062 then
  queststatus = getPlayerStorageValue(cid,10062)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a griffin shield.")
   doPlayerAddItem(cid,2533,1)
   setPlayerStorageValue(cid,10062,1)
  else
   doPlayerSendTextMessage(cid,22,"The dead skeleton is empty.")
  end
else
  return false
end
return true
end
