function onUse(cid, item, frompos, item2, topos)
if item.uid == 10034 then
  queststatus = getPlayerStorageValue(cid,10034)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a crusader helmet.")
   item_uid = doPlayerAddItem(cid,2497,1)
   setPlayerStorageValue(cid,10034,1)
  else
   doPlayerSendTextMessage(cid,22,"The slain skeleton is empty.")
  end
else
  return 0
end
return 1
end

