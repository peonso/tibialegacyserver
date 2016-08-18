function onStepIn(cid, item, position, fromPosition)
	local failPos = {x = position.x, y = position.y+2, z = position.z}

	if not cid then
		return true
	end

	if getPlayerLevel(cid) >= 2 then
		return true
	end

	doTeleportThing(cid, failPos)
	doSendMagicEffect(failPos, CONST_ME_MAGIC_BLUE)
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'You need to be at least Level 2 in order to pass.')
	
	return true
end