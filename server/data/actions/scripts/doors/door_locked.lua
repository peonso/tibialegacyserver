-- by Nottinghster

function onUse(cid, item, frompos, item2, topos)
	if(item.actionid == 0) then
		doTransformItem(item.uid, item.itemid+2)
		return true
	end

	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is locked.")
	return true
end