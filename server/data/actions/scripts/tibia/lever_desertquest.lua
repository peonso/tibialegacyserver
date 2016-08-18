 -- Script by Colandus!
-- Free to edit!
 
function onUse(cid, item, fromPosition, itemEx, toPosition)
	-- Item ID and Uniqueid --
	switchUniqueID = 8890
	switchID = 1945
	switch2ID = 1946
	swordID	= 2376
	crossbowID = 2455
	appleID	= 2674
	spellbookID	= 2175
 
 
	-- Level to do the quest --
	questlevel = 20
 
 
	piece1pos = {x=32673, y=32094, z=8, stackpos=1} -- Where the first piece will be placed
	getpiece1 = getThingfromPos(piece1pos)
 
	piece2pos = {x=32673, y=32083, z=8, stackpos=1} -- Where the second piece will be placed
	getpiece2 = getThingfromPos(piece2pos)
 
	piece3pos = {x=32667, y=32089, z=8, stackpos=1} -- Where the third piece will be placed
	getpiece3 = getThingfromPos(piece3pos)
 
	piece4pos = {x=32679, y=32089, z=8, stackpos=1} -- Where the fourth piece will be placed
	getpiece4 = getThingfromPos(piece4pos)
 
	player1pos = {x=32673, y=32093, z=8, stackpos=253} -- Where player1 will stand before pressing lever
	player1 = getThingfromPos(player1pos)
	player2pos = {x=32673, y=32085, z=8, stackpos=253} -- Where player2 will stand before pressing lever
	player2 = getThingfromPos(player2pos)
	player3pos = {x=32669, y=32089, z=8, stackpos=253} -- Where player3 will stand before pressing lever
	player3 = getThingfromPos(player3pos)
	player4pos = {x=32677, y=32089, z=8, stackpos=253} -- Where player4 will stand before pressing lever
	player4 = getThingfromPos(player4pos)
 
	knightvoc = getPlayerVocation(player1.uid)   -- The vocation of player1
	paladinvoc = getPlayerVocation(player2.uid)  -- The vocation of player2
	druidvoc = getPlayerVocation(player3.uid)    -- The vocation of player3
	sorcerervoc = getPlayerVocation(player4.uid) -- The vocation of player4
 
	nplayer1pos = {x=32672, y=32070, z=8} -- The new position of player1
	nplayer2pos = {x=32671, y=32070, z=8} -- The new position of player2
	nplayer3pos = {x=32672, y=32069, z=8} -- The new position of player3
	nplayer4pos = {x=32671, y=32069, z=8} -- The new position of player4
 
 
	player1level = getPlayerLevel(player1.uid) -- Checking the level of player1
	player2level = getPlayerLevel(player2.uid) -- Checking the level of player2
	player3level = getPlayerLevel(player3.uid) -- Checking the level of player3
	player4level = getPlayerLevel(player4.uid) -- Checking the level of player4
 
 
	-- Check if all players has the correct vocation
	if knightvoc == 4 or knightvoc == 8 and
	paladinvoc == 3 or paladinvoc == 7 and
	druidvoc == 2 or druidvoc == 6 and
	sorcerervoc == 1 or sorcerervoc == 5 then	
 
 
	-- Check if all players are standing on the correct positions
	if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then
		if player1level >= questlevel and player2level >= questlevel and player3level >= questlevel and	player4level >= questlevel then
			if item.uid == switchUniqueID and item.itemid == switchID and getpiece1.itemid == swordID and getpiece2.itemid == crossbowID and getpiece3.itemid == appleID and getpiece4.itemid == spellbookID then
				doSendMagicEffect(player1pos,2)
				doTeleportThing(player1.uid,nplayer1pos)
				doSendMagicEffect(nplayer1pos,10)
				doRemoveItem(getpiece1.uid,1)
 
				doSendMagicEffect(player2pos,2)
				doTeleportThing(player2.uid,nplayer2pos)
				doSendMagicEffect(nplayer2pos,10)
				doRemoveItem(getpiece2.uid,1)
 
				doSendMagicEffect(player3pos,2)
				doTeleportThing(player3.uid,nplayer3pos)
				doSendMagicEffect(nplayer3pos,10)
				doRemoveItem(getpiece3.uid,1)
 
				doSendMagicEffect(player4pos,2)
				doTeleportThing(player4.uid,nplayer4pos)	
				doSendMagicEffect(nplayer4pos,10)
				doRemoveItem(getpiece4.uid,1)
 
				doTransformItem(item.uid,item.itemid+1)
			elseif item.uid == switchUniqueID and item.itemid == switch2ID then
				doTransformItem(item.uid,item.itemid-1)
			else
				doPlayerSendCancel(cid,"Sorry, you need to put the correct stuffs at the correct basins.")
			end
			else
			return false
			end
		else
			doPlayerSendCancel(cid,"Sorry, all players in your team must to be level " .. questlevel .. ".")
		end
	else
		doPlayerSendCancel(cid,"Sorry, all 4 players must be on right positions.")
	end
	return true
end