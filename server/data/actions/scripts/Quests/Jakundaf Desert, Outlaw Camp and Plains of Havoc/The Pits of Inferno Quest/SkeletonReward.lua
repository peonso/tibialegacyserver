function onUse(cid, item, frompos, item2, topos)

	if item.uid == 10282 then
		queststatus = getPlayerStorageValue(cid,10282)
		if queststatus == -1 and getPlayerAccess(cid) == 0 then
			bp = doPlayerAddItem(cid,1988,1) --pirate backpack
			doAddContainerItem(bp,2168,1) --Life Ring
			doAddContainerItem(bp,2143,5) --White Pearls
			doAddContainerItem(bp,2152,11) --Platinum Coins
			setPlayerStorageValue(cid,10282,1)
			doSendMagicEffect(frompos,12)
			doPlayerSendTextMessage(cid,22,'You have found something in the skeleton.')
	elseif queststatus == 1 then	
		doPlayerSendTextMessage(cid,22,'The corpse is empty.')
end
return 1
else
return 0
end
end