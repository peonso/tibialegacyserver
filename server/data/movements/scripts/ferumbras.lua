-- by Nottinghster

function onStepIn(cid, item, frompos, item2, topos) 

	if item.actionid == 28591 and isPlayer(cid) == FALSE then
	doTeleportThing(cid, {x=32121, y=32699, z=7})
	doSendMagicEffect(getCreaturePosition(cid), 11)
	
	elseif item.actionid == 28590 and isPlayer(cid) == TRUE and getPlayerStorageValue(cid, XXX) == TRUE then
	doTeleportThing(cid, {x=32121, y=32703, z=7})
	--doPlayerSay(cid, "You have entered at Ferumbras Citadel\nBe prepared to die!", TALKTYPE_ORANGE)
	doSendMagicEffect(getCreaturePosition(cid), 10)
	
	elseif item.actionid == 28590 and isPlayer(cid) == TRUE and getPlayerStorageValue(cid, XXX) == FALSE then
	doTeleportThing(cid, {x=32421, y=32635, z=7})
	doPlayerSay(cid, "This entrance has been sealed by the Edron Academy.", TALKTYPE_ORANGE)
	doSendMagicEffect(getCreaturePosition(cid), 11)	
	end

return TRUE
end	