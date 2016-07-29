function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 10057 then
  queststatus = getPlayerStorageValue(cid,10057)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a bag.")
   bag = doPlayerAddItem(cid,1987,1)
   doAddContainerItem(bag,2165,1)
   doAddContainerItem(bag,2151,2)
   doAddContainerItem(bag,2230,1)
   doAddContainerItem(bag,2229,1)
   doAddContainerItem(bag,1948,1)
   key = doAddContainerItem(bag,2091,1)
   doSetItemActionId(key, 6016)
   setPlayerStorageValue(cid,10057,1)
  else
   doPlayerSendTextMessage(cid,22,"The wooden coffin is empty.")
  end
else
  return false
end
return true
end

