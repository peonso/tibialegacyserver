function onUse(cid, item, fromPosition, itemEx, toPosition)
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
  return false
end
return true
end

