function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 10054 then
  queststatus = getPlayerStorageValue(cid,10054)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a bag.")
   bag = doPlayerAddItem(cid,1987,1)
   doAddContainerItem(bag,2006,7)
   doAddContainerItem(bag,2260,1)
   setPlayerStorageValue(cid,10054,1)
  else
   doPlayerSendTextMessage(cid,22,"The small drawer is empty.")
  end
else
  return false
end
return true
end

