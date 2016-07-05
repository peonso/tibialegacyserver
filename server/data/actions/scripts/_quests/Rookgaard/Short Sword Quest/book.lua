function onUse(cid, item, frompos, item2, topos)
if item.uid == 10022 then
  queststatus = getPlayerStorageValue(cid,10022)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a book.")
   local book = doPlayerAddItem(cid,1950,1)
   doSetItemText(book,"Hardek *\nBozo *\nSam ****\nOswald\nPartos ***\nQuentin *\nTark ***\nHarsky ***\nStutch *\nFerumbras *\nFrodo **\nNoodles ****")
   setPlayerStorageValue(cid,10022,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end

