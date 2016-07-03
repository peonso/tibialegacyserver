function onUse(cid, item, frompos, item2, topos)
if item.uid == 1022 then
  queststatus = getPlayerStorageValue(cid,1022)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a torch.")
   item_uid = doPlayerAddItem(cid,2050,1)
   setPlayerStorageValue(cid,1022,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

