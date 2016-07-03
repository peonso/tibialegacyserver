-- by Nottinghster

function onUse(cid, item, frompos, item2, topos)
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "The time is " .. getTibiaTime() .. ".")
	return true
end 