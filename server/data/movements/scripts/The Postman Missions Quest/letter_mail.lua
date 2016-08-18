function onAddItem(moveitem, tileitem, pos)
	local cidtile1 = {x=31949,y=31711,z=6,stackpos=253}
	local cidtile2 = {x=31949,y=31712,z=6,stackpos=253}
	local cidtile3 = {x=31948,y=31712,z=6,stackpos=253}
	local cid1 = getThingfromPos(cidtile1)
	local cid2 = getThingfromPos(cidtile2)
	local cid3 = getThingfromPos(cidtile3)
	local mail = {x=31948, y=31711, z=6,stackpos=1}
	local getmail = getThingfromPos(mail)

	if tileitem.actionid == 50015 then
		if getmail.itemid == 2334 and moveitem.itemid == 2333 and cid1.uid > 0 then
			doRemoveItem(moveitem.uid, 1)
			doSendMagicEffect(mail,CONST_ME_SOUND_GREEN)
			setPlayerStorageValue(cid1.uid,244,2)
		end
		if getmail.itemid == 2334 and moveitem.itemid == 2333 and cid2.uid > 0 then
			doRemoveItem(moveitem.uid, 1)
			doSendMagicEffect(mail,CONST_ME_SOUND_GREEN)
			setPlayerStorageValue(cid2.uid,244,2)
		end
		if getmail.itemid == 2334 and moveitem.itemid == 2333 and cid3.uid > 0 then
			doRemoveItem(moveitem.uid, 1)
			doSendMagicEffect(mail,CONST_ME_SOUND_GREEN)
			setPlayerStorageValue(cid3.uid,244,2)
		end			
	end
	
	return true
end