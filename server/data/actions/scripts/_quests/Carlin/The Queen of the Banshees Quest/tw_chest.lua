-- by Nottinghster
function onUse(cid, item, frompos, item2, topos)
if item.uid == 10008 then
  queststatus = getPlayerStorageValue(cid,10008)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found tower shield.")
   item_uid = doPlayerAddItem(cid,2528,1)
   setPlayerStorageValue(cid,10008,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

