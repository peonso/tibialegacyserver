-- by Nottinghster
function onUse(cid, item, frompos, item2, topos)
if item.uid == 1026 then
  queststatus = getPlayerStorageValue(cid,1026)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a brass legs.")
   doPlayerAddItem(cid, 2478, 1)
   setPlayerStorageValue(cid,1026,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

