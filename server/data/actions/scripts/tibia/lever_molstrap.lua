function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local fieldPositions = {
		{x=32487, y=31628, z=13},
		{x=32487, y=31629, z=13},
		{x=32488, y=31629, z=13},
		{x=32487, y=31627, z=13},
		{x=32486, y=31627, z=13},
		{x=32486, y=31628, z=13},
		{x=32486, y=31629, z=13},
		{x=32486, y=31630, z=13},
		{x=32487, y=31630, z=13},
		{x=32488, y=31630, z=13},
		{x=32486, y=31626, z=13},
		{x=32487, y=31626, z=13},
		{x=32488, y=31626, z=13}
	}
	
	for i = 1, #fieldPositions do
		doCreateItem(1491,1,fieldPositions[i])
	end
	doSendMagicEffect(fromPosition, CONST_ME_POFF)
	doRemoveItem(item.uid,1)
	
	return true
end