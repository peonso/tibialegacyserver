function onUse(cid, item, frompos, item2, topos)
if item.uid == 10017 then
  queststatus = getPlayerStorageValue(cid,10017)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a knight axe.")
   item_uid = doPlayerAddItem(cid,2430,1)
   setPlayerStorageValue(cid,10017,1)

  else
   doPlayerSendTextMessage(cid,22,"The dead human is empty.")
  end
else
  return 0
end
return 1
end

