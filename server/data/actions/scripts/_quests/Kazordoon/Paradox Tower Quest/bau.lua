-- by Nottinghster
function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 10035 then
   		queststatus = getPlayerStorageValue(cid,10035)
   		if queststatus == -1 and getPlayerAccess(cid) == 0 then
   			doPlayerSendTextMessage(cid,22,"You have found a Phoenix Egg.")
   			doPlayerAddItem(cid,2328,1)
			setPlayerStorageValue(cid, 10035, 1)
   		else
   			doPlayerSendTextMessage(cid,22,"The chest is empty.")
   		end
   	elseif item.uid == 10036 then
   		queststatus = getPlayerStorageValue(cid,10036)
   		if queststatus == -1 and getPlayerAccess(cid) == 0 then
   			doPlayerSendTextMessage(cid,22,"You have found 100 platinum coins.")
   			doPlayerAddItem(cid,2152,100)
			setPlayerStorageValue(cid, 10036, 1)
   		else
   			doPlayerSendTextMessage(cid,22,"The chest is empty.")
   		end
   	elseif item.uid == 10037 then
   		queststatus = getPlayerStorageValue(cid,10037)
   		if queststatus == -1 and getPlayerAccess(cid) == 0 then
   			doPlayerSendTextMessage(cid,22,"You have found 32 talons")
   			doPlayerAddItem(cid,2151,32)
			setPlayerStorageValue(cid, 10037, 1)
   		else
   			doPlayerSendTextMessage(cid,22,"The chest is empty.")
   		end
   	elseif item.uid == 10038 then
   		queststatus = getPlayerStorageValue(cid,10038)
   		if queststatus == -1 and getPlayerAccess(cid) == 0 then
   			doPlayerSendTextMessage(cid,22,"You have found a Wand Of Cosmic.")
			doPlayerAddItem(cid, 2189, 1)
			setPlayerStorageValue(cid,10038, 1)
   		else
   			doPlayerSendTextMessage(cid,22,"The chest is empty.")
   		end
	else
		return false
   	end

   	return true
end
