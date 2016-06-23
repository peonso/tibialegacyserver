function onUse(cid, item, frompos, item2, topos)
if item.uid == 10011 then
  queststatus = getPlayerStorageValue(cid,10011)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a silver key.")
   item_uid = doPlayerAddItem(cid,2088,1)
   doSetItemActionId(item_uid,5010)
   setPlayerStorageValue(cid,10011,1)
  else
   doPlayerSendTextMessage(cid,22,"The dead tree is empty.")
  end
else
  return 0
end
return 1
end

