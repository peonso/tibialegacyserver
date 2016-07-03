-- by Nottinghster
function onUse(cid, item, frompos, item2, topos)
if item.uid == 1031 then
  queststatus = getPlayerStorageValue(cid,1031)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a steel shield.")
   doPlayerAddItem(cid, 2143, 3)
   doPlayerAddItem(cid, 2148, 100)
   doPlayerAddItem(cid, 2148, 75)
   setPlayerStorageValue(cid,1031,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

