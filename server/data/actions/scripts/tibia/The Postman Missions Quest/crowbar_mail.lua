function onUse(cid, item, fromPosition, itemEx, toPosition)

	local mail = {x=32013, y=31562, z=4,stackpos=1}
	local getmail = getThingfromPos(mail)

	if itemEx.uid == 50018 and getPlayerStorageValue(cid,228) == 1 and getmail.itemid == 2593 then
		doSendMagicEffect(mail,CONST_ME_MAGIC_GREEN)
		setPlayerStorageValue(cid,228,2)
	else
		doPlayerSendCancel(cid,'Sorry, not possible.')
	end
	
	return true
end
