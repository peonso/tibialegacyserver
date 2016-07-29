function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 10027 then
  queststatus = getPlayerStorageValue(cid,10027)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a doublet.")
   item_uid = doPlayerAddItem(cid,2485,1)
   setPlayerStorageValue(cid,10027,1)

  else
   doPlayerSendTextMessage(cid,22,"The barrel is empty.")
  end
else
  return false
end
return true
end

