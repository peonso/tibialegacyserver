-- by Nottinghster
function onStepIn(cid, item, pos)

	newpos = {x=32273, y=31856, z=15}
	
	if item.actionid == 692 then
		doTeleportThing(cid, newpos)
		doSendMagicEffect(getCreaturePosition(cid), 10)
	else
	end
	return true
end