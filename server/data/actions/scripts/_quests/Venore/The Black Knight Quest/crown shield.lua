function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 10013 then
  queststatus = getPlayerStorageValue(cid,10013)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a crown shield.")
   item_uid = doPlayerAddItem(cid,2519,1)
   setPlayerStorageValue(cid,10013,1)

  else
   doPlayerSendTextMessage(cid,22,"The dead tree is empty.")
  end
else
  return false
end
return true
end

