function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 1009 then
		queststatus = getPlayerStorageValue(cid,1009)
		if queststatus == -1 and getPlayerAccess(cid) == 0 then
			doPlayerSendTextMessage(cid,22,"You have found a carlin sword.")
			doPlayerAddItem(cid, 2395, 1)
			setPlayerStorageValue(cid,1009,1)
		else
			doPlayerSendTextMessage(cid,22,"The chest is empty.")
		end
	else
		return false
	end
	return true
end