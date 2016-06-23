-- Script by Nottinghster
function onUse(cid, item, frompos, item2, topos)
if item.uid == 1014 then
  queststatus = getPlayerStorageValue(cid,1014)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a bag.")
   bag = doPlayerAddItem(cid, 1987, 1)
   doAddContainerItem(bag, 2171, 1)
   doAddContainerItem(bag, 2168, 1)
   doAddContainerItem(bag, 2124, 1)
   doAddContainerItem(bag, 2145, 3)
   doAddContainerItem(bag, 2146, 4)
   setPlayerStorageValue(cid,1014,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return 0
end
return 1
end

