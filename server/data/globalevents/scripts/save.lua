function onThink(interval, lastExecution, thinkInterval)
    local PlayersOnline = getPlayersOnlineList()
        for o = 1, table.maxn(PlayersOnline) do
           doSavePlayer(PlayersOnline[o])
        end
        print(":: Server save: " ..os.date("%X %b %d", (os.time())))
		doBroadcastMessage("Server is saving.")
   return 10
end