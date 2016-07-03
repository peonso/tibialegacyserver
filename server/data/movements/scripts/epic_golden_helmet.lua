-- by Nottinghster

function onStepIn(cid, item, pos)

	Helmet = {x=32418, y=32248, z=14, stackpos=255}
	Trash = {x=32420, y=32248, z=14, stackpos=255}
	
	getHelmet = getThingfromPos(Helmet)
	getTrash = getThingfromPos(Trash)
	
	if item.uid == 10075 then
		if getHelmet.itemid == 2457 and getTrash.itemid == 2258 then
			doRemoveItem(getHelmet.uid,1)
			doRemoveItem(getTrash.uid,1)
			doPlayerAddItem(cid, 2471, 1)
			doSendMagicEffect(Helmet,13)
			doSendMagicEffect(Trash,13)
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have discovered the secret about the Golden Helmet. Congratulations!")
		end	
	end

    return TRUE
end