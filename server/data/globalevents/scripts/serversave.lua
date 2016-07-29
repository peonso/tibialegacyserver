local shutdownAtServerSave = true

local function serverSave()
	if shutdownAtServerSave then
		doSetGameState(GAME_STATE_SHUTDOWN)
	else
		doSetGameState(GAME_STATE_CLOSED)
		doSaveServer(true)
		doSetGameState(GAME_STATE_NORMAL)
	end
end

local function secondServerSaveWarning()
	broadcastMessage("Server is saving game in one minute. Please logout.", MESSAGE_STATUS_WARNING)
	addEvent(serverSave, 60000)
end

local function firstServerSaveWarning()
	broadcastMessage("Server is saving game in 3 minutes. Please logout.", MESSAGE_STATUS_WARNING)
	addEvent(secondServerSaveWarning, 120000)
end

function onTime(interval)
	broadcastMessage("Server is saving game in 5 minutes. Please logout.", MESSAGE_STATUS_WARNING)
	doSetGameState(GAME_STATE_STARTUP)
	addEvent(firstServerSaveWarning, 120000)
	return true
end
