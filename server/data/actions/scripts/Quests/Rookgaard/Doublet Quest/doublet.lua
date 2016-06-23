function onUse(cid, item, frompos, item2, topos)
if item.uid == 10027 then
  queststatus = getPlayerStorageValue(cid,10027)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a doublet.")
   item_uid = doPlayerAddItem(cid,2485,1)
   setPlayerStorageValue(cid,10027,1)

  else
   doPlayerSendTextMessage(cid,22,"The barrel is empty.")
  end
else
  return 0
end
return 1
end

