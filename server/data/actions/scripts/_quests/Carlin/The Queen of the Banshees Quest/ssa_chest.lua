-- by Nottinghster
function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 10007 then
  queststatus = getPlayerStorageValue(cid,10007)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a stone skin amulet.")
   item_uid = doPlayerAddItem(cid,2197,5)
   setPlayerStorageValue(cid,10007,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

