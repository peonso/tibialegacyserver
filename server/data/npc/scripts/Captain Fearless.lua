dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

function greetCallback(cid)
	if getPlayerSex(cid) == 1 then
	npcHandler:setMessage(MESSAGE_GREET, "Welcome on board, Sir ".. getPlayerName(cid) ..".")
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Welcome on board, Madam ".. getPlayerName(cid) ..".")
	return true
	end	
end	

npcHandler:setCallback(CALLBACK_GREET, greetCallback)

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Captain Fearless from the Royal Tibia Line."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the captain of this sailing-ship."})
keywordHandler:addKeyword({'captain'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the captain of this sailing-ship."})
keywordHandler:addKeyword({'ship'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Royal Tibia Line connects all seaside towns of Tibia."})
keywordHandler:addKeyword({'line'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Royal Tibia Line connects all seaside towns of Tibia."})
keywordHandler:addKeyword({'company'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Royal Tibia Line connects all seaside towns of Tibia."})
keywordHandler:addKeyword({'route'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Royal Tibia Line connects all seaside towns of Tibia."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Royal Tibia Line connects all seaside towns of Tibia."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We can transport everything you want."})
keywordHandler:addKeyword({'passanger'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We would like to welcome you on board."})
keywordHandler:addKeyword({'trip'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where do you want to go? To Thais, Carlin, Ab'Dendriel, Port Hope, Edron, Darashia or Ankrahmun?"})
keywordHandler:addKeyword({'passage'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where do you want to go? To Thais, Carlin, Ab'Dendriel, Port Hope, Edron, Darashia or Ankrahmun?"})
keywordHandler:addKeyword({'town'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where do you want to go? To Thais, Carlin, Ab'Dendriel, Port Hope, Edron, Darashia or Ankrahmun?"})
keywordHandler:addKeyword({'destination'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where do you want to go? To Thais, Carlin, Ab'Dendriel, Port Hope, Edron, Darashia or Ankrahmun?"})
keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where do you want to go? To Thais, Carlin, Ab'Dendriel, Port Hope, Edron, Darashia or Ankrahmun?"})
keywordHandler:addKeyword({'go'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where do you want to go? To Thais, Carlin, Ab'Dendriel, Port Hope, Edron, Darashia or Ankrahmun?"})
keywordHandler:addKeyword({'ice'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm sorry, but we don't serve the routes to the Ice Islands."})
keywordHandler:addKeyword({'senja'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm sorry, but we don't serve the routes to the Ice Islands."})
keywordHandler:addKeyword({'folda'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm sorry, but we don't serve the routes to the Ice Islands."})
keywordHandler:addKeyword({'vega'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm sorry, but we don't serve the routes to the Ice Islands."})
keywordHandler:addKeyword({'ghost'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There's a legend of a ghostship cruising between Venore and Darashia. Many captains are afraid to sail this route. Hah, but not me!"})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is Venore. Where do you want to go?"})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	-- NPC Captain Fearless Venore Boat feito por Rodrigo (Nottinghster)
	
	local thais = {x=32312,y=32211,z=6, stackpos=0}
	local carlin = {x=32387,y=31821,z=6, stackpos=0}
	local abdendriel = {x=32733,y=31668,z=6, stackpos=0}
	local darashia = {x=33290,y=32481,z=6, stackpos=0}
	local edron = {x=33175,y=31764,z=6, stackpos=0}
	local ankrahmun = {x=33091,y=32883,z=6, stackpos=0}
	local porthope = {x=32530,y=32784,z=6, stackpos=0}
	local ghostship = {x=33330,y=32172,z=5, stackpos=0}
	
-- Thais
if msgcontains(msg, 'thais') then
	if isPlayerVip(cid) == true then
		npcHandler:say('Do you seek a passage to Thais for free?')
		talk_state = 1
		town_boat = thais
	else
		npcHandler:say('Do you seek a passage to Thais for 170 gold?')
		talk_state = 1
		town_boat = thais
		price = 170
	end
	
-- Carlin
elseif msgcontains(msg, 'carlin') then
	if isPlayerVip(cid) == true then
		npcHandler:say('Do you seek a passage to Carlin for free?')
		talk_state = 1
		town_boat = carlin
	else
		npcHandler:say('Do you seek a passage to Carlin for 130 gold?')
		talk_state = 1
		town_boat = carlin
		price = 130
	end
	
-- Ab'Dendriel
elseif msgcontains(msg, 'ab\'dendriel') then
	if isPlayerVip(cid) == true then
		npcHandler:say('Do you seek a passage to Ab\'Dendriel for free?')
		talk_state = 1
		town_boat = abdendriel
	else
		npcHandler:say('Do you seek a passage to Ab\'dendriel for 90 gold?')
		talk_state = 1
		town_boat = abdendriel
		price = 90
	end
	
-- Darashia
elseif msgcontains(msg, 'darashia') then
	if isPlayerVip(cid) == true then
		npcHandler:say('Do you seek a passage to Darashia for free?')
		talk_state = 2
		town_boat = darashia
	else
		npcHandler:say('Do you seek a passage to Darashia for 60 gold?')
		talk_state = 2
		town_boat = darashia
		price = 60
	end

-- Edron
elseif msgcontains(msg, 'edron') then
	if isPlayerVip(cid) == true then
		npcHandler:say('Do you seek a passage to Edron for free?')
		talk_state = 1
		town_boat = edron
	else
		npcHandler:say('Do you seek a passage to Edron for 40 gold?')
		talk_state = 1
		town_boat = edron
		price = 40
	end
	
-- Ankrahmun
elseif msgcontains(msg, 'ankrahmun') then
	if isPlayerVip(cid) == true then
		npcHandler:say('Do you seek a passage to Ankrahmun for free?')
		talk_state = 1
		town_boat = ankrahmun
	else
		npcHandler:say('Do you seek a passage to Ankrahmun for 150 gold?')
		talk_state = 1
		town_boat = ankrahmun
		price = 150
	end
	
-- Port Hope
elseif msgcontains(msg, 'port hope') then
	if isPlayerVip(cid) == true then
		npcHandler:say('Do you seek a passage to Port Hope for free?')
		talk_state = 1
		town_boat = porthope
	else
		npcHandler:say('Do you seek a passage to Port Hope for 160 gold?')
		talk_state = 1
		town_boat = porthope
		price = 160
	end
	
-- Confirm Yes or No 
elseif msgcontains(msg, 'yes') and talk_state == 1 then
	if isPremium(cid) == true then
		if getTilePzInfo(getPlayerPosition(cid)) == 1 then
			if getPlayerMoney(cid) >= price or isPlayerVip(cid) == true then
				if isPlayerVip(cid) == true then
					selfSay('Set the sails!')
					doTeleportThing(cid, town_boat)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				else
					selfSay('Set the sails!')
					doPlayerRemoveMoney(cid, price)
					doTeleportThing(cid, town_boat)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				end
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
		else
			npcHandler:say('First get rid of those blood stains! You are not going to ruin my vehicle!')
			talk_state = 0
		end
	else
		npcHandler:say('I\'m sorry, but you need a premium account in order to travel onboard our ships.')
		talk_state = 0
	end
elseif msgcontains(msg, 'no') and talk_state == 1 then
	npcHandler:say('We would like to serve you some time.')
	talk_state = 0
	
-- Ghost Ship
elseif msgcontains(msg, 'yes') and talk_state == 2 then
	if isPremium(cid) == true then
		if getTilePzInfo(getPlayerPosition(cid)) == 1 then
			if getPlayerMoney(cid) >= price or isPlayerVip(cid) == true then
				if math.random(1,10) == 1 then
					doPlayerRemoveMoney(cid, price)
					selfSay('Set the sails!')
					doTeleportThing(cid, ghostship)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				else
					selfSay('Set the sails!')
					doPlayerRemoveMoney(cid, price)
					doTeleportThing(cid, darashia)
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				end
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
		else
			npcHandler:say('First get rid of those blood stains! You are not going to ruin my vehicle!')
			talk_state = 0
		end
	else
		npcHandler:say('I\'m sorry, but you need a premium account in order to travel onboard our ships.')
		talk_state = 0
	end
elseif msgcontains(msg, 'no') and talk_state == 2 then
	npcHandler:say('We would like to serve you some time.')
	talk_state = 0	
end

	return true	
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())