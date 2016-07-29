function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 10031 then
  queststatus = getPlayerStorageValue(cid,10031)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a knight armor.")
   item_uid = doPlayerAddItem(cid,2476,1)
   setPlayerStorageValue(cid,10031,1)
  else
   doPlayerSendTextMessage(cid,22,"The box is empty.")
  end
else
  return false
end
return true
end

