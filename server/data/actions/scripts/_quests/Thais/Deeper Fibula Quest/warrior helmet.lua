function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 10016 then
  queststatus = getPlayerStorageValue(cid,10016)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a warrior helmet.")
   item_uid = doPlayerAddItem(cid,2475,1)
   setPlayerStorageValue(cid,10016,1)

  else
   doPlayerSendTextMessage(cid,22,"The dead human is empty.")
  end
else
  return false
end
return true
end

