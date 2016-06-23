function onUse(cid, item, frompos, item2, topos)
if item.uid == 10053 then
  queststatus = getPlayerStorageValue(cid,10053)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a bag.")
   bag = doPlayerAddItem(cid,1987,1)
   doAddContainerItem(bag,2175,1)
   doAddContainerItem(bag,2145,2)
   doAddContainerItem(bag,2148,100)
   setPlayerStorageValue(cid,10053,1)
  else
   doPlayerSendTextMessage(cid,22,"The small drawer is empty.")
  end
else
  return 0
end
return 1
end

