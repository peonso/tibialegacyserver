-- by Nottinghster
function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.uid == 1018 then
  queststatus = getPlayerStorageValue(cid,1018)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a fire axe.")
   doPlayerAddItem(cid, 2432, 1)
   setPlayerStorageValue(cid,1018,1)

  else
   doPlayerSendTextMessage(cid,22,"The corpse is empty.")
  end
else
  return false
end
return true
end

