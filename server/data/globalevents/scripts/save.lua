function onThink(interval, lastExecution, thinkInterval)
    local PlayersOnline = getPlayersOnlineList()
        for o = 1, table.maxn(PlayersOnline) do
           doSavePlayer(PlayersOnline[o])
        end
        print(" - Server saved. " ..os.date("%d %b %H:%M", (os.time())))
		doBroadcastMessage("Server is saving.")
   return true
end