function onUse(cid, item, frompos, item2, topos)

mail = {x=32013, y=31562, z=4,stackpos=1}
getmail = getThingfromPos(mail)

	if item2.uid == 10073 and getPlayerStorageValue(cid,228) == 1 and getmail.itemid == 2593 then
		doSendMagicEffect(mail,CONST_ME_MAGIC_GREEN)
		setPlayerStorageValue(cid,228,2)
	else
		doPlayerSendCancel(cid,'Sorry, not possible.')
	end
	
	return TRUE
end
