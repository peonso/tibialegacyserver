function onUse(cid, item, frompos, item2, topos)
if item.uid == 10033 then
  queststatus = getPlayerStorageValue(cid,10033)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a reward.")
   item_uid = doPlayerAddItem(cid,2536,1)
   item_uid = doPlayerAddItem(cid,2436,1)
   item_uid = doPlayerAddItem(cid,2656,1)
   setPlayerStorageValue(cid,10033,1)

  else
   doPlayerSendTextMessage(cid,22,"The stone coffin is empty.")
  end
else
  return 0
end
return 1
end

