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
shopModule:addBuyableItem({'letter'}, 2597, 5)

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Chemar Ibn Kalith."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a licensed carpetpilot and responsible for the Darashian airmail. I can bring you to the Femor Hills, Edron, or you can buy letters and parcels."})
keywordHandler:addKeyword({'caliph'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The caliph depends heavily on his carpetfleet for commerce and for war alike."})
keywordHandler:addKeyword({'kazzan'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The caliph depends heavily on his carpetfleet for commerce and for war alike."})
keywordHandler:addKeyword({'daraman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The prophet of our people; praised be his name."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This scourge of the west may have connections to the evil soils in Drefia."})
keywordHandler:addKeyword({'derfia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In the west a big city existed. Its people were corrupted and drew the wrath of the djinn upon them and Drefia was destroyed."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have been almost everywhere in the world and think it's only a myth."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think it's a rolemodel for what befalls people if they forget the teachings of Daraman."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That city is getting noisier and more crowded each month."})
keywordHandler:addKeyword({'news'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our carpetpilots bring in too many news to recall them all."})
keywordHandler:addKeyword({'rumour'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our carpetpilots bring in too many news to recall them all."})
keywordHandler:addKeyword({'rumor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our carpetpilots bring in too many news to recall them all."})
keywordHandler:addKeyword({'passage'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can fly you to Femor Hills or Edron if you like. Where do you want to go?"})
keywordHandler:addKeyword({'go'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can fly you to Femor Hills or Edron if you like. Where do you want to go?"})
keywordHandler:addKeyword({'transport'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can fly you to Femor Hills or Edron if you like. Where do you want to go?"})
keywordHandler:addKeyword({'ride'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can fly you to Femor Hills or Edron if you like. Where do you want to go?"})
keywordHandler:addKeyword({'trip'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can fly you to Femor Hills or Edron if you like. Where do you want to go?"})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can fly you to Femor Hills or Edron if you like. Where do you want to go?"})
keywordHandler:addKeyword({'femur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Are you sure that you are not talking about the FEMOR Hills?"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's |TIME|, precisely."})

local function addTravelKeyword(keyword, cost, destination, text, action)
	local travelKeyword = keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = text, cost = cost, discount = 'postman'})
		travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = cost, discount = 'postman', destination = destination })
		travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, text = 'We would like to serve you some time.', reset = true})
end

addTravelKeyword('hills', 60, CARPETPOS_FEMOR, 'Do you want to get a ride to the Femor Hills for 60 gold?')
addTravelKeyword('femor', 60, CARPETPOS_FEMOR, 'Do you want to get a ride to the Femor Hills for 60 gold?')
addTravelKeyword('edron', 40, CARPETPOS_EDRON, 'Do you want to get a ride to Edron for 40 gold?')

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	

	if msgcontains(msg, 'flying') and npcHandler.focus == cid then	
		npcHandler:say("Do you want to buy a flying carpet for 5000 platinum coins?", 1)
		talk_state = 7358
	elseif talk_state == 7358 and msgcontains(msg, 'yes') and npcHandler.focus == cid then
		if getPlayerItemCount(cid,2160) >= 500 then
			npcHandler:say("Oh, I am sorry, but you have no pilot licence.", 1)
			talk_state = 0
		else
			npcHandler:say("You don't own enough worldly wealth to afford this item.", 1)
			talk_state = 0
		end
	
	elseif talk_state == 7358 and msgcontains(msg, 'no') and npcHandler.focus == cid then
		npcHandler:say("Maybe another day then, my friend.", 1)
		talk_state = 0

	elseif msgcontains(msg, 'mail') and npcHandler.focus == cid then
		npcHandler:say("Our mail system is unique! And everyone can use it. Do you want to know more about it?", 1)
		talk_state = 4278	
	elseif talk_state == 4278 and msgcontains(msg, 'yes') and npcHandler.focus == cid then
		npcHandler:say("The Darashian Airmail System enables you to send and receive letters and parcels. You can buy them here if you want.", 1)
		talk_state = 0

	elseif msgcontains(msg, 'parcel') and npcHandler.focus == cid then
		npcHandler:say("Do you want to buy a parcel for 15 gold?", 1)
		talk_state = 3532
	elseif talk_state == 3532 and msgcontains(msg, 'yes') and npcHandler.focus == cid then
		if doPlayerRemoveMoney(cid, 15) == true then
			doPlayerAddItem(cid, 2595, 1)
			doPlayerAddItem(cid, 2599, 1)
			npcHandler:say("Here you are. Don't forget to write the name and the address of the receiver on the label. The label has to be in the parcel before you put the parcel in a mailbox.", 1)
			talk_state = 0
		else
			npcHandler:say("Oh, you have not enough gold to buy a parcel.", 1)
			talk_state = 0
		end
	elseif msgcontains(msg, 'fly') and npcHandler.focus == cid then
		npcHandler:say("I can fly you to Femor Hills or Edron if you like. Where do you want to go?", 1)
		talk_state = 0	
	end
	
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())