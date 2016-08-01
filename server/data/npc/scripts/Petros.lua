dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)
 
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Petros"})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I take along people to Venore, Port Hope and Ankrahmun."})
keywordHandler:addKeyword({'ghost'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, I don't believe in ghosts."})
keywordHandler:addKeyword({'ship'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My boat is ready to bring you to Venore, Port Hope or Ankrahmun."})
keywordHandler:addKeyword({'boat'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My boat is ready to bring you to Venore, Port Hope or Ankrahmun."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	local venore = {x=32954,y=32023,z=6, stackpos=0}
	local porthope = {x=32530,y=32784,z=6, stackpos=0}
	local ankrahmun = {x=33091,y=32883,z=6, stackpos=0}
	
-- Venore
if msgcontains(msg, 'venore') then
	if isPremium(cid) == true then
		npcHandler:say('Do you seek a passage to Venore for free?')
		talk_state = 1
		town_boat = venore
	else
		npcHandler:say('Do you seek a passage to Venore for 60 gold?')
		talk_state = 1
		price = 60
		town_boat = venore
	end	
	
-- Port Hope
elseif msgcontains(msg, 'port hope') then
	if isPremium(cid) == true then
		npcHandler:say('Do you seek a passage to Port Hope for free')
		talk_state = 1
		town_boat = porthope
	else
		npcHandler:say('Do you seek a passage to Port Hope for 170 gold?')
		talk_state = 1
		price = 170
		town_boat = porthope
	end
	
-- Ankrahmun
elseif msgcontains(msg, 'ankrahmun') then
	if isPremium(cid) == true then
		npcHandler:say('Do you seek a passage to Ankrahmun for free')
		talk_state = 1
		town_boat = ankrahmun
	else
		npcHandler:say('Do you seek a passage to Ankrahmun for 100 gold?')
		talk_state = 1
		price = 170
		town_boat = ankrahmun
	end
	
-- Confirm Yes or No 
elseif msgcontains(msg, 'yes') and talk_state == 1 then
	if isPremium(cid) == true then
		if getTilePzInfo(getPlayerPosition(cid)) == 1 then
			if getPlayerMoney(cid) >= price or isPremium(cid) == true then
				if isPremium(cid) == true then
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