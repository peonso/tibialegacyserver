function onUse(cid, item, frompos, item2, topos)
if item.uid == 10029 then
  queststatus = getPlayerStorageValue(cid,10029)
  if queststatus == -1 and getPlayerAccess(cid) == 0 or queststatus == 0 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a fire sword.")
   doPlayerAddItem(cid,2392,1)
   setPlayerStorageValue(cid,10029,1)
  else
   doPlayerSendTextMessage(cid,22,"The box is empty.")
  end
else
  return FALSE
end
return TRUE
end

