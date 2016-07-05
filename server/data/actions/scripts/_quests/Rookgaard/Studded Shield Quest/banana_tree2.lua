function onUse(cid, item, frompos, item2, topos)
if item.uid == 9911 then
  queststatus = getPlayerStorageValue(cid,9911)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a banana.")
   item_uid = doPlayerAddItem(cid,2676,1)
   setPlayerStorageValue(cid,9911,1)
  else
   doPlayerSendTextMessage(cid,22,"The palm is empty.")
  end
else
  return false
end
return true
end