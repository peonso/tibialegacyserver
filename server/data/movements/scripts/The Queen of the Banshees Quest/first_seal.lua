-- by Nottinghster
function onStepIn(cid, item, pos)

	ghost1 = {x=32277, y=31902, z=13}
	ghost2 = {x=32277, y=31903, z=13}
	demonskeleton = {x=32277, y=31904, z=13}
	newpos = {x=32266, y=31849, z=15}
	
	if item.actionid == 689 then
		doSummonCreature("Ghost", ghost1)
		doSummonCreature("Ghost", ghost2)
		doSummonCreature("Demon Skeleton", demonskeleton)
		
		doSendMagicEffect(ghost1, CONST_ME_MAGIC_RED)
		doSendMagicEffect(ghost2, CONST_ME_MAGIC_RED)
		doSendMagicEffect(demonskeleton, CONST_ME_MAGIC_RED)
		
		doTeleportThing(cid,newpos)
		setPlayerStorageValue(cid, 20001,1)
		doSendMagicEffect(getCreaturePosition(cid), 10)
	else
	end
	return true
end