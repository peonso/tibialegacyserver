function onUse(cid, item, frompos, item2, topos)
if item.uid == 1005 then
  queststatus = getPlayerStorageValue(cid,1005)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a key.")
   item_uid = doPlayerAddItem(cid,2088,1)
   doSetItemActionId(item_uid,7000)
   setPlayerStorageValue(cid,1005,1)
  else
   doPlayerSendTextMessage(cid,22,"The slain skeleton is empty.")
  end
else
  return false
end
return true
end

