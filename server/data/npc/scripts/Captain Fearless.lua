dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

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

local function addTravelKeyword(keyword, cost, destination, action)
	local travelKeyword = keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = 'Do you seek a passage to ' .. titleCase(keyword) .. ' for |TRAVELCOST|?', cost = cost, discount = 'postman'})
		travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = cost, discount = 'postman', destination = destination })
		travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, text = 'We would like to serve you some time.', reset = true})
end

addTravelKeyword('ab\'dendriel', 90, BOATPOS_AB)
addTravelKeyword('ankrahmun', 150, BOATPOS_ANKRAHMUN)
addTravelKeyword('carlin', 130, BOATPOS_CARLIN)
addTravelKeyword('edron', 40, BOATPOS_EDRON)
addTravelKeyword('port hope', 160, BOATPOS_PORT)
addTravelKeyword('thais', 170, BOATPOS_THAIS)

-- (do_later)
function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

	if msgcontains(msg, 'darashia') then
		npcHandler:say('I warn you! This route is haunted by a ghostship. Do you really want to go there?')
		talk_state = 2
	elseif msgcontains(msg, 'yes') and talk_state == 2 then
		npcHandler:say('Do you seek a passage to Darashia for 60 gold?')
		talk_state = 3
		town_boat = darashia
		price = 60
	-- Ghost Ship
	elseif msgcontains(msg, 'yes') and talk_state == 3 then
		if isPremium(cid) == true then
			if isPzLocked(cid) == false then
				if getPlayerMoney(cid) >= price or isPremium(cid) == true then
					if math.random(1,10) == 1 then
						doPlayerRemoveMoney(cid, price)
						selfSay('Set the sails!')
						doTeleportThing(cid, BOATPOS_GHOSTSHIP)
						doSendMagicEffect(getCreaturePosition(cid), 10)
						talk_state = 0
					else
						selfSay('Set the sails!')
						doPlayerRemoveMoney(cid, price)
						doTeleportThing(cid, BOATPOS_DARASHIA)
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