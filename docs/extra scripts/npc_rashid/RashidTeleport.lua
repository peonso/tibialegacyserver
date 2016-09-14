--	globalevents.xml
--	you need to place Rashid spawn, this script just teleport him to the correct position
--	<globalevent name="RashidSpawn" type="startup" script="RashidTeleport.lua" />

function onStartup()
	local config = {
		['Monday'] = {x=32639, y=31666, z=8}, -- Ab'Dendriel
		['Tuesday'] = {x=32362, y=32207, z=7}, -- Thais
		['Wednesday'] = {x=32579, y=32754, z=7}, -- Port Hope
		['Thursday'] = {x=33066, y=32880, z=6}, -- Ankrahmun
		['Friday'] = {x=33239, y=32483, z=7}, -- Darashia
		['Saturday'] ={x=33171, y=31810, z=6}, -- Edron
		['Sunday'] = {x=32326, y=31783, z=6} -- Carlin
	}

	local creature = getCreatureByName('Rashid')
	doTeleportThing(creature, config[os.date('%A')])
	
	return true
end