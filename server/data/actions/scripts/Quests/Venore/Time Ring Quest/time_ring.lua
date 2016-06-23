function onUse(cid, item, frompos, item2, topos)
if item.uid == 10039 then
  queststatus = getPlayerStorageValue(cid,10039)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a time ring.")
   item_uid = doPlayerAddItem(cid,2169,1)
   setPlayerStorageValue(cid,10039,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return 0
end
return 1
end

