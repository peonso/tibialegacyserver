function onUse(cid, item, frompos, item2, topos)
if item.uid == 1008 then
  queststatus = getPlayerStorageValue(cid,1008)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a bag.")
   bag = doPlayerAddItem(cid, 1987, 1)
   doAddContainerItem(bag, 2545, 4)
   doAddContainerItem(bag, 2544, 10)
   setPlayerStorageValue(cid,1008,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

