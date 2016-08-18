function onStartup()

	print(":: StartUp - " ..os.date("%d %b %Y %X", (os.time())))
	setGlobalStorageValue(STORAGE.swordFury, -1)

end