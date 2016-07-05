function onUse(cid, item, frompos, item2, topos)

if item.uid == 10004 and getPlayerStorageValue(cid, 10004) == -1 then
doPlayerSendTextMessage(cid,22,"You have found a key.")
key = doPlayerAddItem(cid, 2089, 1)
doSetItemActionId(key,3899)
setPlayerStorageValue(cid, 10004,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
return true
end