function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 10026 then
  queststatus = getPlayerStorageValue(cid,10026)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found 12 arrows and 40 gold coins.")
   item_uid = doPlayerAddItem(cid,2544,12)
   item_uid = doPlayerAddItem(cid,2148,40)
   setPlayerStorageValue(cid,10026,1)
  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

