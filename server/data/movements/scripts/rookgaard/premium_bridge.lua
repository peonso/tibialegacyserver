-- by Nottinghster

function onStepIn(cid, item, pos)
	if isPremium(cid) == false then
		pos.x = pos.x+3
		doTeleportThing(cid, pos)
		doSendMagicEffect(getPlayerPosition(cid), 12)
	else
		doPlayerSendCancel(cid,"")
	end
	
	return true
end
