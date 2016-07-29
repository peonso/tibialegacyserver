function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 10024 then
  queststatus = getPlayerStorageValue(cid,10024)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a chain armor.")
   item_uid = doPlayerAddItem(cid,2464,1)
   setPlayerStorageValue(cid,10024,1)
  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

