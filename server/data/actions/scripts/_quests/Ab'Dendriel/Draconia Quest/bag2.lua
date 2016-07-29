-- by Nottinghster

function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 1656 then
  queststatus = getPlayerStorageValue(cid,1656)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a bag.")
   bag = doPlayerAddItem(cid,1987,1)
   doAddContainerItem(bag,2197,1)
   doAddContainerItem(bag,2167,1)
   setPlayerStorageValue(cid,1656,1)
  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

