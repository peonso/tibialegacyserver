function onUse(cid, item, frompos, item2, topos)
if item.uid == 1006 then
  queststatus = getPlayerStorageValue(cid,1006)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a viking helmet.")
   item_uid = doPlayerAddItem(cid,2473,1)
   setPlayerStorageValue(cid,1006,1)

  else
   doPlayerSendTextMessage(cid,22,"The dead human body is empty.")
  end
else
  return false
end
return true
end

