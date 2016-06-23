-- Script by Nottinghster
function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 10044 then
   		queststatus = getPlayerStorageValue(cid,10044)
   		if queststatus == -1 and getPlayerAccess(cid) == 0 then
   			doPlayerSendTextMessage(cid,22,"You have found a right horn.")
   			doPlayerAddItem(cid,2337,1)
   			setPlayerStorageValue(cid,10044,1)
   		else
   			doPlayerSendTextMessage(cid,22,"The sarcophagus is empty.")
   		end
		
   	elseif item.uid == 10045 then
   		queststatus = getPlayerStorageValue(cid,10045)
   		if queststatus == -1 and getPlayerAccess(cid) == 0 then
   			doPlayerSendTextMessage(cid,22,"You have found a left horn.")
   			doPlayerAddItem(cid,2338,1)
   			setPlayerStorageValue(cid,10045,1)
   		else
   			doPlayerSendTextMessage(cid,22,"The sarcophagus is empty.")
   		end
		
   	elseif item.uid == 10046 then
   		queststatus = getPlayerStorageValue(cid,10046)
   		if queststatus == -1 and getPlayerAccess(cid) == 0 then
   			doPlayerSendTextMessage(cid,22,"You have found a helmet ornament.")
   			doPlayerAddItem(cid,2335,1)
   			setPlayerStorageValue(cid,10046,1)
   		else
   			doPlayerSendTextMessage(cid,22,"The sarcophagus is empty.")
   		end
		
   	elseif item.uid == 10047 then
   		queststatus = getPlayerStorageValue(cid,10047)
   		if queststatus == -1 and getPlayerAccess(cid) == 0 then
   			doPlayerSendTextMessage(cid,22,"You have found a gem holder.")
   			doPlayerAddItem(cid, 2336, 1)
   			setPlayerStorageValue(cid,10047,1)
   		else
   			doPlayerSendTextMessage(cid,22,"The sarcophagus is empty.")
   		end
		
	elseif item.uid == 10048 then
   		queststatus = getPlayerStorageValue(cid,10048)
   		if queststatus == -1 and getPlayerAccess(cid) == 0 then
   			doPlayerSendTextMessage(cid,22,"You have found a damaged helmet.")
   			doPlayerAddItem(cid, 2339, 1)
   			setPlayerStorageValue(cid,10048,1)
   		else
   			doPlayerSendTextMessage(cid,22,"The sarcophagus is empty.")
   		end
		
	elseif item.uid == 10049 then
   		queststatus = getPlayerStorageValue(cid,10049)
   		if queststatus == -1 and getPlayerAccess(cid) == 0 then
   			doPlayerSendTextMessage(cid,22,"You have found a helmet piece.")
   			doPlayerAddItem(cid, 2340, 1)
   			setPlayerStorageValue(cid,10049,1)
   		else
   			doPlayerSendTextMessage(cid,22,"The sarcophagus is empty.")
   		end
	elseif item.uid == 10050 then
   		queststatus = getPlayerStorageValue(cid,10050)
   		if queststatus == -1 and getPlayerAccess(cid) == 0 then
   			doPlayerSendTextMessage(cid,22,"You have found a helmet adornment.")
   			doPlayerAddItem(cid, 2341, 1)
   			setPlayerStorageValue(cid,10050,1)
   		else
   			doPlayerSendTextMessage(cid,22,"The sarcophagus is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
