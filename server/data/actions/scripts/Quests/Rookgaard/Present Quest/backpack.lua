-- by Nottinghster

function onUse(cid, item, frompos, item2, topos)
if item.uid == 10020 then
  queststatus = getPlayerStorageValue(cid,10020)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a backpack.")
   backpack = doPlayerAddItem(cid, 1988, 1)
   doAddContainerItem(backpack, 1990, 1)
   doAddContainerItem(backpack, 2014, 1)
   doAddContainerItem(backpack, 2035, 1)
   doAddContainerItem(backpack, 2013, 1)
   setPlayerStorageValue(cid,10020,1)
  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

