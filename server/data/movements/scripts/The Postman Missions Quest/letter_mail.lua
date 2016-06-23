function onAddItem(moveitem, tileitem, pos)

cidtile1 = {x=31949,y=31711,z=6,stackpos=253}
cidtile2 = {x=31949,y=31712,z=6,stackpos=253}
cidtile3 = {x=31948,y=31712,z=6,stackpos=253}
cid1 = getThingfromPos(cidtile1)
cid2 = getThingfromPos(cidtile2)
cid3 = getThingfromPos(cidtile3)

mail = {x=31948, y=31711, z=6,stackpos=1}
getmail = getThingfromPos(mail)

	if tileitem.uid == 10074 then
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
	
	return TRUE
end