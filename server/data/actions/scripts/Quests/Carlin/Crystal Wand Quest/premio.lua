-- Script by Nottinghster
function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 10051 then
   		queststatus = getPlayerStorageValue(cid,10051)
   		if queststatus == -1 and getPlayerAccess(cid) == 0 then
   			doPlayerSendTextMessage(cid,22,"You have found a sudden death rune with 6 charges.")
   			doPlayerAddItem(cid,2268,6)
   			setPlayerStorageValue(cid,10051,1)
   		else
   			doPlayerSendTextMessage(cid,22,"The chest box is empty.")
   		end
		
   	elseif item.uid == 10052 then
   		queststatus = getPlayerStorageValue(cid,10052)
   		if queststatus == -1 and getPlayerAccess(cid) == 0 then
   			doPlayerSendTextMessage(cid,22,"You have found a crystal wand.")
   			doPlayerAddItem(cid,2184,1)
   			setPlayerStorageValue(cid,10052,1)
   		else
   			doPlayerSendTextMessage(cid,22,"The chest box is empty.")
   		end
	else
		return 0
   	end
   	return 1
end
