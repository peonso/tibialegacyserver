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

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Captain Seahorse from the Royal Tibia Line."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the captain of this sailing-ship."})
keywordHandler:addKeyword({'captain'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the captain of this sailing-ship."})
keywordHandler:addKeyword({'ship'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Royal Tibia Line connects all seaside towns of Tibia."})
keywordHandler:addKeyword({'line'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Royal Tibia Line connects all seaside towns of Tibia."})
keywordHandler:addKeyword({'company'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Royal Tibia Line connects all seaside towns of Tibia."})
keywordHandler:addKeyword({'route'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Royal Tibia Line connects all seaside towns of Tibia."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Royal Tibia Line connects all seaside towns of Tibia."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We can transport everything you want."})
keywordHandler:addKeyword({'passanger'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We would like to welcome you on board."})
keywordHandler:addKeyword({'trip'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where do you want to go? To Thais, Carlin, Ab'Dendriel, Venore, Port Hope, Ankrahmun or the isle Cormaya?"})
keywordHandler:addKeyword({'passage'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where do you want to go? To Thais, Carlin, Ab'Dendriel, Venore, Port Hope, Ankrahmun or the isle Cormaya?"})
keywordHandler:addKeyword({'town'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where do you want to go? To Thais, Carlin, Ab'Dendriel, Venore, Port Hope, Ankrahmun or the isle Cormaya?"})
keywordHandler:addKeyword({'destination'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where do you want to go? To Thais, Carlin, Ab'Dendriel, Venore, Port Hope, Ankrahmun or the isle Cormaya?"})
keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where do you want to go? To Thais, Carlin, Ab'Dendriel, Venore, Port Hope, Ankrahmun or the isle Cormaya?"})
keywordHandler:addKeyword({'go'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where do you want to go? To Thais, Carlin, Ab'Dendriel, Venore, Port Hope, Ankrahmun or the isle Cormaya?"})
keywordHandler:addKeyword({'ice'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm sorry, but we don't serve the routes to the Ice Islands."})
keywordHandler:addKeyword({'senja'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm sorry, but we don't serve the routes to the Ice Islands."})
keywordHandler:addKeyword({'folda'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm sorry, but we don't serve the routes to the Ice Islands."})
keywordHandler:addKeyword({'vega'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm sorry, but we don't serve the routes to the Ice Islands."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm not sailing there. This route is afflicted by a ghost ship! However I've heard that Captain Fearless from Venore sails there."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm not sailing there. This route is afflicted by a ghost ship! However I've heard that Captain Fearless from Venore sails there."})
keywordHandler:addKeyword({'ghost'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Many people who sailed to Darashia never returned because they were attacked by a ghostship! I'll never sail there!"})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is Edron. Where do you want to go?"})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
		
	local thais = {x=32312,y=32211,z=6, stackpos=0}
	local carlin = {x=32387,y=31821,z=6, stackpos=0}
	local abdendriel = {x=32733,y=31668,z=6, stackpos=0}
	local cormaya = {x=33288,y=31956,z=6, stackpos=0}
	local venore = {x=32954,y=32023,z=6, stackpos=0}
	local ankrahmun = {x=33091,y=32883,z=6, stackpos=0}
	local porthope = {x=32530,y=32784,z=6, stackpos=0}
	
-- Thais
if msgcontains(msg, 'thais') then
	if isPlayerVip(cid) == true then
		npcHandler:say('Do you seek a passage to Thais for free?')
		talk_state = 1
		town_boat = thais
	else
		npcHandler:say('Do you seek a passage to Thais for 160 gold?')
		talk_state = 1
		town_boat = thais
		price = 160
	end
	
-- Carlin
elseif msgcontains(msg, 'carlin') then
	if isPlayerVip(cid) == true then
		npcHandler:say('Do you seek a passage to Carlin for free')
		talk_state = 1
		town_boat = carlin
	else
		npcHandler:say('Do you seek a passage to Carlin for 110 gold?')
		talk_state = 1
		town_boat = carlin
		price = 110
	end	
	
-- Ab'Dendriel
elseif msgcontains(msg, 'ab\'dendriel') then
	if isPlayerVip(cid) == true then
		npcHandler:say('Do you seek a passage to Ab\'dendriel for free?')
		talk_state = 1
		town_boat = abdendriel
	else	
		npcHandler:say('Do you seek a passage to Ab\'dendriel for 70 gold?')
		talk_state = 1
		town_boat = abdendriel
		price = 70
	end	
	
-- Cormaya
elseif msgcontains(msg, 'cormaya') then
	if isPlayerVip(cid) == true then
		npcHandler:say('Do you seek a passage to Cormaya for free?')
		talk_state = 1
		town_boat = cormaya
	else
		npcHandler:say('Do you seek a passage to Cormaya for 20 gold?')
		talk_state = 1
		town_boat = cormaya
		price = 20
	end
	
-- Venore
elseif msgcontains(msg, 'venore') then
	if isPlayerVip(cid) == true then
		npcHandler:say('Do you seek a passage to Venore for free?')
		talk_state = 1
		town_boat = venore
	else
		npcHandler:say('Do you seek a passage to Venore for 40 gold?')
		talk_state = 1
		town_boat = venore
		price = 40
	end
	
-- Ankrahmun
elseif msgcontains(msg, 'ankrahmun') then
	if isPlayerVip(cid) == true then
		npcHandler:say('Do you seek a passage to Ankrahmun for free?')
		talk_state = 1
		town_boat = ankrahmun
	else
		npcHandler:say('Do you seek a passage to Ankrahmun for 160 gold?')
		talk_state = 1
		town_boat = ankrahmun
		price = 160
	end
	
-- Port Hope
elseif msgcontains(msg, 'port hope') then
	if isPlayerVip(cid) == true then
		npcHandler:say('Do you seek a passage to Port Hope for free?')
		talk_state = 1
		town_boat = porthope
	else	
		npcHandler:say('Do you seek a passage to Port Hope for 150 gold?')
		talk_state = 1
		town_boat = porthope
		price = 150
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
end
	
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())