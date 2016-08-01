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
	npcHandler:setMessage(MESSAGE_GREET, "Greetings, young man. Looking for a passage or some fish, ".. getPlayerName(cid) .."?")
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Greetings, young lady. Looking for a passage or some fish, ".. getPlayerName(cid) .."?")
	return true
	end	
end	
npcHandler:setCallback(CALLBACK_GREET, greetCallback)

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)
shopModule:addBuyableItem({'fish'}, 2667, 5)

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Pemaret, the fisherman."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm a fisherman and I take along people to Edron. You can also buy some fresh fish."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I love to sail on the seas of Tibia."})
keywordHandler:addKeyword({'sea'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I love to sail on the seas of Tibia."})
keywordHandler:addKeyword({'cormaya'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a lovely and peaceful isle. Did you already visit the nice sandy beach?"})
keywordHandler:addKeyword({'isle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a lovely and peaceful isle. Did you already visit the nice sandy beach?"})
keywordHandler:addKeyword({'beach'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There is a nice sandy beach in the west of Cormaya."})
keywordHandler:addKeyword({'ship'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My boat is ready to bring you to Edron."})
keywordHandler:addKeyword({'boat'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My boat is ready to bring you to Edron."})
keywordHandler:addKeyword({'passage'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My boat is ready to bring you to Edron."})

local travelNode = keywordHandler:addKeyword({'eremo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Oh, you know the good old sage Eremo. I can bring you to his little island. Do you want me to do that?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 0, destination = {x = 33316, y = 31883, z = 7} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Then stay here.'})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	-- Edron
	if msgcontains(msg, 'edron') then
		if getPlayerStorageValue(cid,227) == 1 then
			npcHandler:say('Do you want to get to Edron for 20 gold?')
			talk_state = 1
		else
			npcHandler:say('Do you want to get to Edron for 20 gold?')
			talk_state = 1	
		end
	
elseif msgcontains(msg,'yes') and talk_state == 1 then
	if isPremium(cid) == true then
		if getTilePzInfo(getPlayerPosition(cid)) == false then
			if getPlayerMoney(cid) >= 20 then
				if getPlayerStorageValue(cid,227) == 1 then
					selfSay('Here we go!')
					doPlayerRemoveMoney(cid, 20)
					setPlayerStorageValue(cid,227,5)
					doTeleportThing(cid, {x=33173, y=31764, z=6})
					doSendMagicEffect(getCreaturePosition(cid), 10)
					talk_state = 0
				else
					selfSay('Here we go!')
					doPlayerRemoveMoney(cid, 20)
					doTeleportThing(cid, {x=33173, y=31764, z=6})
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
end

return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())