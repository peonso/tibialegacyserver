-- by Nottinghster

function onUse(cid, item, frompos, item2, topos)
if item.uid == 10069 then
  queststatus = getPlayerStorageValue(cid,10069)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a spike sword.")
   item_uid = doPlayerAddItem(cid,2383,1)
   setPlayerStorageValue(cid,10069,1)
  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

