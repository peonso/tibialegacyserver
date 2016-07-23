dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)
 

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the captain of the Poodle, the proudest ship on all oceans."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's Charles."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "His majesty himself was present at the day the Poodle was launched."})
keywordHandler:addKeyword({'jungle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a fascinating forest, full of exotic life. If it weren't for my duties, I would spend some time just exploring this jungle."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We live in a fascinating world with even more fascinating oceans. And all its major harbours are known to me."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "An inland town of dwarves, somewhere in the middle of nowhere."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's fun to see a seasoned dwarven fighter turnining into a shivering green something as soon as we get a mild breeze on sea."})
keywordHandler:addKeyword({'dwarfs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's fun to see a seasoned dwarven fighter turnining into a shivering green something as soon as we get a mild breeze on sea."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My visits there were interesting and I learnt a lot about the elves and their city. I can only recommend a visit there and if it is only to admire the amazing architectural style in which the city was built."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves are very special creatures. They keep in touch with nature almost like druids. Although I don't really understand their way of life, I think we could learn one or two things of them."})
keywordHandler:addKeyword({'elfs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves are very special creatures. They keep in touch with nature almost like druids. Although I don't really understand their way of life, I think we could learn one or two things of them."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sailed around the whole continent once and I have seen many of its wonders. For sure there are more waiting to be discovered."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is that for the land what giant sea serpents are for the sea."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You better ask some knight about it."})
keywordHandler:addKeyword({'apes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would love to catch a living exemplar and bring it to Thais so the king could see it."})
keywordHandler:addKeyword({'lizard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They have a small settlement in the southeast of the jungle next to the coast. It looks somewhat primitive but there is evidence it was erected only recently."})
keywordHandler:addKeyword({'dworcs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They attacked us when we set our feet on the south shore of the continent. They are poison using savages, nothing more."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is precisely |TIME|."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

if msgcontains(msg, 'major') and npcHandler.focus == cid or msgcontains(msg, 'harbour') and npcHandler.focus == cid then
		npcHandler:say("Well the harbours of thais, venore, carlin, edron, darashia and ankrahmun. Do you have any questions about one of those harbours?", 1)
		talk_state = 921
elseif talk_state == 921 and msgcontains(msg, 'venore') and npcHandler.focus == cid and npcHandler.focus == cid then
		npcHandler:say("The Venorans build fine ships. Enough said about them.", 1)
		talk_state = 0		
elseif talk_state == 921 and msgcontains(msg, 'thais') and npcHandler.focus == cid and npcHandler.focus == cid then
		npcHandler:say("Thais is the proud capital of the largest kingdom in the known world.", 1)
		talk_state = 0
elseif talk_state == 921 and msgcontains(msg, 'carlin') and npcHandler.focus == cid and npcHandler.focus == cid then
		npcHandler:say("Rebellious women might be amusing for a while, but it is time for them to stop this nonsense and return to the kingdom.", 1)
		talk_state = 0
elseif talk_state == 921 and msgcontains(msg, 'edron') and npcHandler.focus == cid and npcHandler.focus == cid then
		npcHandler:say("The coastline of Edron is treacherous and it takes some skills to sail a ship safely into the harbour.", 1)
		talk_state = 0
elseif talk_state == 921 and msgcontains(msg, 'darashia') and npcHandler.focus == cid and npcHandler.focus == cid then
		npcHandler:say("An unremarkable little town with a small harbour and quiet people.", 1)
		talk_state = 0
elseif talk_state == 921 and msgcontains(msg, 'ankrahmun') and npcHandler.focus == cid and npcHandler.focus == cid then
		npcHandler:say("The city is surely worth a look although its inhabitants are somewhat strange and their customs oddish.", 1)
		talk_state = 0		
end		

	local venore = {x=32954,y=32023,z=6, stackpos=0}
	local thais = {x=32312,y=32211,z=6, stackpos=0}
	local darashia = {x=33290,y=32481,z=6, stackpos=0}
	local edron = {x=33175,y=31764,z=6, stackpos=0}
	local ankrahmun = {x=33091,y=32883,z=6, stackpos=0}
	
-- Venore
if msgcontains(msg, 'venore') then
	if isPremium(cid) == true then
		npcHandler:say('Do you seek a passage to Venore for free?')
		talk_state = 1
		town_boat = venore
	else
		npcHandler:say('Do you seek a passage to Venore for 160 gold?')
		talk_state = 1
		town_boat = venore
		price = 160
	end
	
-- Thais
elseif msgcontains(msg, 'thais') then
	if isPremium(cid) == true then
		npcHandler:say('Do you seek a passage to Thais for free?')
		talk_state = 1
		town_boat = thais
	else
		npcHandler:say('Do you seek a passage to Thais for 160 gold?')
		talk_state = 1
		town_boat = thais
		price = 160
	end
	
-- Darashia
elseif msgcontains(msg, 'darashia') then
	if isPremium(cid) == true then
		npcHandler:say('Do you seek a passage to Darashia for free?')
		talk_state = 1
		town_boat = darashia
	else
		npcHandler:say('Do you seek a passage to Darashia for 180 gold?')
		talk_state = 1
		town_boat = darashia
		price = 180
	end
	
-- Edron
elseif msgcontains(msg, 'edron') then
	if isPremium(cid) == true then
		npcHandler:say('Do you seek a passage to Edron for free?')
		talk_state = 1
		town_boat = edron
	else
		npcHandler:say('Do you seek a passage to Edron for 150 gold?')
		talk_state = 1
		town_boat = edron
		price = 150
	end
	
-- Ankrahmun
elseif msgcontains(msg, 'ankrahmun') then
	if isPremium(cid) == true then
		npcHandler:say('Do you seek a passage to Ankrahmun for free?')
		talk_state = 1
		town_boat = ankrahmun
	else
		npcHandler:say('Do you seek a passage to Ankrahmun for 110 gold?')
		talk_state = 1
		town_boat = ankrahmun
		price = 110
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
