function onUse(cid, item, frompos, item2, topos)
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
  return 0
end
return 1
end

