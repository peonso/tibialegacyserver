function onStepIn(cid, item, topos, item2, frompos)
	local config = {
		firePos = {
			{x=32100, y=32084, z=7, stackpos=254},
			{x=32101, y=32084, z=7, stackpos=254},
			{x=32102, y=32084, z=7, stackpos=254},
			{x=32100, y=32085, z=7, stackpos=254},
			{x=32100, y=32086, z=7, stackpos=254},
			{x=32101, y=32086, z=7, stackpos=254},
			{x=32102, y=32086, z=7, stackpos=254},
			{x=32102, y=32085, z=7, stackpos=254}
		},
		swordPos = {x=32101, y=32085, z=7, stackpos=2},

		-- [actionid] = value which the storage must have to proceed
		[11003] = -1,
		[11004] = 0
	}
	
	if not cid then
		return true
	end

	local setting = config[item.actionid]
	if not setting then
		return true
	end

	local storage = getGlobalStorageValue(STORAGE.swordFury)
	if storage ~= setting then
		return true
	end

	setGlobalStorageValue(STORAGE.swordFury, storage + 1)
	if storage == 0 then
		local tmpItem
		for i = 1, #config.firePos do
			tmpItem = getThingfromPos(config.firePos[i])
			if tmpItem.itemid == 1487 then
				doTransformItem(tmpItem.uid,tmpItem.itemid+2)
			end
		end

		tmpItem = getThingfromPos(config.swordPos)
		if tmpItem then
			doRemoveItem(tmpItem.uid,1)
			doSendMagicEffect(config.swordPos, CONST_ME_MAGIC_RED)
		end
	end
	return true
end