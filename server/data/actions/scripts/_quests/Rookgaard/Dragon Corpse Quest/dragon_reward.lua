function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 1004 then
  queststatus = getPlayerStorageValue(cid,1004)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a bag.")
   bag = doPlayerAddItem(cid, 1987, 1)
   doAddContainerItem(bag, 2530, 1)
   doAddContainerItem(bag, 2480, 1)
   setPlayerStorageValue(cid,1004,1)
  else
   doPlayerSendTextMessage(cid,22,"The dragon corpse is empty.")
  end
else
  return false
end
return true
end

