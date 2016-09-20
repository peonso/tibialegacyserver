function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local wallPositions = {
		{x=32186, y=31626, z=8, stackpos=1},
		{x=32187, y=31626, z=8, stackpos=1},
		{x=32188, y=31626, z=8, stackpos=1},
		{x=32189, y=31626, z=8, stackpos=1}
	}
	local wallItem
	
	for i = 1, #wallPositions do
		wallItem = getThingfromPos(wallPositions[i])
		if wallItem then
			doSendMagicEffect(wallPositions[i], CONST_ME_POFF)
			doRemoveItem(wallItem.uid,1)
		end
	end
	doSendMagicEffect(fromPosition, CONST_ME_POFF)
	doRemoveItem(item.uid,1)
	
	return true
end