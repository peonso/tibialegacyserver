function onStepIn(cid, item, pos)

	local phoenixegg = {x=32477, y=31900, z=1, stackpos=1}
	local gold = {x=32478, y=31900, z=1, stackpos=1}
	local talons = {x=32479, y=31900, z=1, stackpos=1}
	local wand = {x=32480, y=31900, z=1, stackpos=1}
	
	if item.actionid == 50009 then --Phoenix Egg
		setPlayerStorageValue(cid,STORAGE_PARADOX1,1)
		doSendMagicEffect(phoenixegg,5)
	elseif item.actionid == 50010 then --10k
		setPlayerStorageValue(cid,STORAGE_PARADOX2,1)
		doSendMagicEffect(gold,5)
	elseif item.actionid == 50011 then --32 Talons
		setPlayerStorageValue(cid,STORAGE_PARADOX3,1)
		doSendMagicEffect(talons, 5)
	elseif item.actionid == 50012 then --Wand Of Cosmic
		setPlayerStorageValue(cid,STORAGE_PARADOX4,1)
		doSendMagicEffect(wand, 5)
	end
	
	return true
end
