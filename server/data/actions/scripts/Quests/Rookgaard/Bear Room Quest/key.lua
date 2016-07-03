function onUse(cid, item, frompos, item2, topos)
if item.uid == 10023 then
  queststatus = getPlayerStorageValue(cid,10023)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a key.")
   item_uid = doPlayerAddItem(cid,2089,1)
   doSetItemActionId(item_uid,4601)
   setPlayerStorageValue(cid,10023,1)
  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

