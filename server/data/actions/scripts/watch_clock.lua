-- by Nottinghster

function onUse(cid, item, fromPosition, itemEx, toPosition)
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "The time is " .. getTibiaTime() .. ".")
	return true
end 