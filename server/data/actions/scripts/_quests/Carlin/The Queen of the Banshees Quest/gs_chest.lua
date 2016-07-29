-- by Nottinghster
function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 10005 then
  queststatus = getPlayerStorageValue(cid,10005)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found giant sword.")
   item_uid = doPlayerAddItem(cid,2393,1)
   setPlayerStorageValue(cid,10005,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

