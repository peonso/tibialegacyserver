function onUse(cid, item, frompos, item2, topos)
if item.uid == 10068 then
  queststatus = getPlayerStorageValue(cid,10068)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a present.")
   doPlayerAddItem(cid,2331,1)
   setPlayerStorageValue(cid,10068,1)
  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return 0
end
return 1
end

