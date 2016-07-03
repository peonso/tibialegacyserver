-- by Nottinghster

function onAddItem(moveitem, tileitem, pos)

	corpse1 = {x=31978, y=32142, z=10, stackpos=2}
	corpse2 = {x=31979, y=32142, z=10, stackpos=2}
	corpse3 = {x=31980, y=32142, z=10, stackpos=2}
	corpse4 = {x=31982, y=32142, z=10, stackpos=2}
	corpse5 = {x=31983, y=32142, z=10, stackpos=2}
	corpse6 = {x=31984, y=32142, z=10, stackpos=2}

	MINOTAUR = {2830,2831,2832,2833,2834}
	ORC = {2820,2860,2861,2862,2863,2864,2865}
	TROLL = {2806,2928,2929,2930}
	WOLF = {2826,2924,2925,2926,2927}
	SPIDER = {2807,2822,2823,3068}
	DEER = {2835,2836,2837,2838}

	getcorpse1 = getThingfromPos(corpse1)
	getcorpse2 = getThingfromPos(corpse2)
	getcorpse3 = getThingfromPos(corpse3)
	getcorpse4 = getThingfromPos(corpse4)
	getcorpse5 = getThingfromPos(corpse5)
	getcorpse6 = getThingfromPos(corpse6)

	if tileitem.uid == 10070 then
		if moveitem.itemid == 2025 and moveitem.type == 2 and isInArray(MINOTAUR, getcorpse1.itemid) == 1 and isInArray(ORC, getcorpse2.itemid) == 1 and isInArray(TROLL, getcorpse3.itemid) == 1 and isInArray(WOLF, getcorpse4.itemid) == 1 and isInArray(SPIDER, getcorpse5.itemid) == 1 and isInArray(DEER, getcorpse6.itemid) == 1 then
			doSendMagicEffect(corpse1,13)
			doSendMagicEffect(corpse2,13)
			doSendMagicEffect(corpse3,13)
			doSendMagicEffect(corpse4,13)
			doSendMagicEffect(corpse5,13)
			doSendMagicEffect(corpse6,13)
			doSendMagicEffect({x=31981, y=32142, z=10},15)
			doRemoveItem(getcorpse1.uid,1)
			doRemoveItem(getcorpse2.uid,1)
			doRemoveItem(getcorpse3.uid,1)
			doRemoveItem(getcorpse4.uid,1)
			doRemoveItem(getcorpse5.uid,1)
			doRemoveItem(getcorpse6.uid,1)
			key = doCreateItem(2091,1,{x=31981, y=32144, z=10, stackpos=1})
			doSetItemActionId(key,9995)
		end
	end

	return TRUE
end