function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 10019 then
  queststatus = getPlayerStorageValue(cid,10019)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found an elven amulet.")
   item_uid = doPlayerAddItem(cid,2198,1)
   setPlayerStorageValue(cid,10019,1)

  else
   doPlayerSendTextMessage(cid,22,"The dead human is empty.")
  end
else
  return false
end
return true
end

