function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 10015 then
  queststatus = getPlayerStorageValue(cid,10015)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a tower shield.")
   item_uid = doPlayerAddItem(cid,2528,1)
   setPlayerStorageValue(cid,10015,1)

  else
   doPlayerSendTextMessage(cid,22,"The dead skeleton is empty.")
  end
else
  return false
end
return true
end

