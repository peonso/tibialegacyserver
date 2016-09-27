function onLogin(cid)

	local events = {
		"RemoveBlesses", --Register the kill/die event
		-- "Give_Bag_After_Death", --Register the Give_Bag_After_Death event not default
		"lootMessage", --Register loot message
	}
	
	-- Register events
	for i = 1, #events do
		registerCreatureEvent(cid, events[i])
	end

	-- enable//disable Loot Message
	sendLootMessage = false 
	if sendLootMessage == true then
		setPlayerStorageValue(cid, STORAGE_LOOTMESSAGE, 1)
	else
		setPlayerStorageValue(cid, STORAGE_LOOTMESSAGE, -1)
	end
	
	-- Register the Stage event
	if getBooleanFromString(getConfigInfo("experience_stages"), false) then
		registerCreatureEvent(cid, "ExpStage")
		checkStageChange(cid)
	end
	
	-- Add a backpack if it is a relogin after a death
	if getPlayerStorageValue(cid, STORAGE_DEATH_BAG) == 1 then
		if getPlayerSlotItem(cid, CONST_SLOT_BACKPACK).uid == 0 and getPlayerStorageValue(cid, getConfigInfo("storage_sendrook")) ~= 1 then
			local item_bag = doCreateItemEx(ITEM_BAG, 1)
			doPlayerAddItemEx(cid, item_bag, false, CONST_SLOT_BACKPACK)
		end
		setPlayerStorageValue(cid, STORAGE_DEATH_BAG, -1)
	end

	--Handle character sent to newbie island from main
	if getPlayerStorageValue(cid, getConfigInfo("storage_sendrook")) == 1 then
		-- first items
		if (getPlayerSex(cid) == 0) then
			doPlayerAddItem(cid, 2651, 1)
		else
			doPlayerAddItem(cid, 2650, 1) -- jacket
		end
		local club = doCreateItemEx(2382, 1) -- club
		doPlayerAddItemEx(cid, club, true, CONST_SLOT_LEFT)
		local bp = doPlayerAddItem(cid, 1987, 1) -- bag
		doAddContainerItem(bp, 2050, 1) -- torch
		doAddContainerItem(bp, 2674, 2) -- apples
		-- remove house
		local house = House.getHouseByOwner(cid)
		if(house) then
			house:setOwner(0) --Remove the house from the player, the server takes care of the rest
		end
		-- reset storage
		setPlayerStorageValue(cid, getConfigInfo("storage_sendrook"), -1)
	end

	-- Remove blesses if necessary
	if getPlayerStorageValue(cid, STORAGE_REMOVE_BLESSES) == 1 then
		local i = 1
		while i <= 5 do
			doPlayerRemoveBless(cid, i)
			i = i + 1
		end
		setPlayerStorageValue(cid, STORAGE_REMOVE_BLESSES, -1)
	end

	-- Promotes player if necessary
	if(isPremium(cid)) then
		if(getPlayerStorageValue(cid, STORAGE_PROMOTION) == 1 and getPlayerVocation(cid) <= 4) then
			doPlayerSetVocation(cid, getPlayerVocation(cid)+4)
			doPlayerRemoveSkillLossPercent(cid, 30)
			setPlayerStorageValue(cid, STORAGE_PROMOTION, -1)
		end
		if(getPlayerStorageValue(cid, STORAGE_PREMIUM_ACCOUNT) == 1) then
			setPlayerStorageValue(cid, STORAGE_PREMIUM_ACCOUNT, -1)
		end
		return true
	end

	-- Player is not premium - remove premium privileges
	if(getPlayerStorageValue(cid, STORAGE_PREMIUM_ACCOUNT) == -1) then

		-- Change outfit
		local outfit = getCreatureOutfit(cid)
		local lookType = outfit.lookType
		if (getPlayerSex(cid) == 0) then
			if lookType < 136 or lookType > 139 then 
				lookType = 136
			end
		else
			if lookType < 128 or lookType > 131 then 
				lookType = 128
			end
		end
		doCreatureChangeOutfit(cid, {lookType = lookType, lookHead = outfit.lookHead, lookBody = outfit.lookBody, lookLegs = outfit.lookLegs, lookFeet = outfit.lookFeet})

		-- Clean house
		local house = House.getHouseByOwner(cid)
		if(house) and getBooleanFromString(getConfigInfo("house_only_premium"), true) then
			house:setOwner(0) --Remove the house from the player, the server takes care of the rest
		end
		
		-- Make sure player moves to free account zone and has a free account temple
		if getPlayerTown(cid) == 11 then -- Rookgaard
			doTeleportThing(cid, getTownTemplePosition(11))
		elseif getPlayerTown(cid) >= 6 and getPlayerTown(cid) <= 9 then -- if player temple is a Premium town
			doPlayerSetTown(cid, 3) -- Thais
			doTeleportThing(cid, getTownTemplePosition(3))
		else
			doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
		end
		
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Your premium account expired. You lost your Premium Account privileges.")
		setPlayerStorageValue(cid, STORAGE_PREMIUM_ACCOUNT, 1)
	end

	-- Remove promotion
	local isPromo = (getPlayerVocation(cid) > 4 and isPremium(cid) == false)
	if(isPromo) then
		doPlayerSetVocation(cid, getPlayerVocation(cid)-4)
		doPlayerRemoveSkillLossPercent(cid, -30)
		setPlayerStorageValue(cid, STORAGE_PROMOTION, 1)
	end

	return true
end
