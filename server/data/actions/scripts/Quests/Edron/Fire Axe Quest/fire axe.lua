-- Script by Nottinghster
function onUse(cid, item, frompos, item2, topos)
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
  return 0
end
return 1
end

