function onUse(cid, item, frompos, item2, topos)
if item.uid == 10067 then
  queststatus = getPlayerStorageValue(cid,10067)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a letterbag.")
   doPlayerAddItem(cid,2333,1)
   setPlayerStorageValue(cid,10067,1)
  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return 0
end
return 1
end

