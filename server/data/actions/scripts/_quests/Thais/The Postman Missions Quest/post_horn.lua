function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 10072 then
  queststatus = getPlayerStorageValue(cid,10072)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found Waldos Posthorn.")
   doPlayerAddItem(cid,2332,1)
   setPlayerStorageValue(cid,243,1)
   setPlayerStorageValue(cid,10072,1)
  else
   doPlayerSendTextMessage(cid,22,"The dead human is empty.")
  end
else
  return false
end
return true
end

