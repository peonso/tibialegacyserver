function onLogin(cid)
	local i = 1
	
	for _, pid in ipairs(getPlayersOnlineList()) do
		i = i + 1
	end
	local current = i - 1
	
	if getEternalStorageValue(STORAGE_SERVERRECORD) == nil then
		setEternalStorageValue(STORAGE_SERVERRECORD, 0)
	end	
	
	oldRecord = getEternalStorageValue(STORAGE_SERVERRECORD)
	
	if current > oldRecord then
		addEvent(doBroadcastMessage, 150, "New record: " .. current .. " players are logged in.", MESSAGE_STATUS_DEFAULT)
		setEternalStorageValue(STORAGE_SERVERRECORD, current)
		db.executeQuery("INSERT INTO `server_record` (`record`, `timestamp`) VALUES (" .. current .. ", " .. os.time() .. ");")
		if current >= 2 then
			print(" - New record. " .. current .. " players. " ..os.date("%d %b %H:%M", (os.time())))
		end
	end
	
	return true
end