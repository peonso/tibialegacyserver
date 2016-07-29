-- by Nottinghster
function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 1016 then
  queststatus = getPlayerStorageValue(cid,1016)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a vampire shield.")
   doPlayerAddItem(cid, 2534, 1)
   setPlayerStorageValue(cid,1016,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

