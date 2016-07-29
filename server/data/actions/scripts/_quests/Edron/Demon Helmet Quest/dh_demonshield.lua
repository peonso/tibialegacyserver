-- by Nottinghster
function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 1003 then
  queststatus = getPlayerStorageValue(cid,1003)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a demon shield.")
   item_uid = doPlayerAddItem(cid,2520,1)
   setPlayerStorageValue(cid,1003,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

