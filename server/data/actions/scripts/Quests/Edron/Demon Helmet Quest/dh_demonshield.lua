-- Script by Nottinghster
function onUse(cid, item, frompos, item2, topos)
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
  return 0
end
return 1
end

