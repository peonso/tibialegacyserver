function onSay(cid, words, param)
	local storage = STORAGE_ZNOTEAAC
	local delaytime = 30 -- Exhaust In Seconds.
	if param == '' then
		doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_ORANGE, "Command param required.")
		return false
	end
	if getPlayerStorageValue(cid,storage) <= os.time() then
		doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"Your report has been received successfully!")
		db.executeQuery("INSERT INTO `znote_player_reports` (`id` ,`name` ,`posx` ,`posy` ,`posz` ,`report_description` ,`date`)VALUES (NULL ,  " .. db.escapeString(getPlayerName(cid)) .. ",  '" .. getPlayerPosition(cid).x .. "',  '" .. getPlayerPosition(cid).y .. "',  '" .. getPlayerPosition(cid).z .. "',  " .. db.escapeString(param) .. ",  '" .. os.time() .. "')")
		setPlayerStorageValue(cid,storage,os.time() + delaytime)
	else
		doPlayerSendTextMessage(cid,MESSAGE_STATUS_WARNING,"You have to wait " .. getPlayerStorageValue(cid,storage) - os.time() .. " seconds to report again.")
	end
	return false
end