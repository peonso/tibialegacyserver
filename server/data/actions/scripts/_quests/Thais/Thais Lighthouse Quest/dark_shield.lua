function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 1660 then
  queststatus = getPlayerStorageValue(cid,1660)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a dark shield.")
   doPlayerAddItem(cid,2521,1)
   setPlayerStorageValue(cid,1660,1)
  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

