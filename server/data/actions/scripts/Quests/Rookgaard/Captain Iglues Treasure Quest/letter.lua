function onUse(cid, item, frompos, item2, topos)
if item.uid == 1024 then
  queststatus = getPlayerStorageValue(cid,1024)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a letter.")
   item_uid = doPlayerAddItem(cid,2597,1)
   setPlayerStorageValue(cid,1024,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

