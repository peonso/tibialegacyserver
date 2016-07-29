function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 1025 then
  queststatus = getPlayerStorageValue(cid,1025)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found some salmon.")
   item_uid = doPlayerAddItem(cid,2668,6)
   setPlayerStorageValue(cid,1025,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

