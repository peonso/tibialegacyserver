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

shopModule:addBuyableItem({'torch'}, 2050, 2)
shopModule:addBuyableItem({'candelabrum'}, 2041, 8)
shopModule:addBuyableItem({'candlestick'}, 2047, 2)
shopModule:addBuyableItem({'oil'}, 2006, 20, 11, 'vial of oil')
shopModule:addBuyableItem({'coal basin'}, 3912, 25)
shopModule:addBuyableItem({'bag'}, 1993, 5)
shopModule:addBuyableItem({'backpack'}, 2000, 20)
shopModule:addBuyableItem({'present'}, 1990, 10)
shopModule:addBuyableItem({'scroll'}, 1949, 5)
shopModule:addBuyableItem({'document'}, 1968, 12)
shopModule:addBuyableItem({'parchment'}, 1967, 8)
shopModule:addBuyableItem({'brown book'}, 1971, 15)
shopModule:addBuyableItem({'black book'}, 1972, 15)
shopModule:addBuyableItem({'small book'}, 1973, 15)
shopModule:addBuyableItem({'watch'}, 2036, 20)
shopModule:addBuyableItem({'football'}, 2109, 111)

shopModule:addBuyableItem({'water pipe'}, 2099, 40)
shopModule:addBuyableItem({'birdcage'}, 3922, 50)
shopModule:addBuyableItem({'globe'}, 3923, 50)
shopModule:addBuyableItem({'pendulum clock'}, 3917, 75)
shopModule:addBuyableItem({'table lamp'}, 3924, 35)
shopModule:addBuyableItem({'cuckoo clock'}, 1877, 40)

keywordHandler:addKeyword({'decoration'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell coal basin, water pipe, birdcage, globe, pendulum clock, table lamp and cuckoo clock."})

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling several kinds of equipment and decoration. What is your need?"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Shiantis."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I won't tell you for free, but maybe you want to buy a watch?"})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would love to see the royal taxes lowered."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would love to see the royal taxes lowered."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think it's needed for protection. We pay enough taxes for this."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ferumbras dolls were not the saleshit we expected. Sold all stock to a strange guy who bought a bunch of needles, too."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, we run out of stock. I expect another load of wodden excalibug simulacra to arrive next week."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heard the merchants will petition the king to lower the taxes."})
keywordHandler:addKeyword({'tax'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heard the merchants will petition the king to lower the taxes."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As you can see, our inventory is large, just have a look."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As you can see, our inventory is large, just have a look."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As you can see, our inventory is large, just have a look."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As you can see, our inventory is large, just have a look."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As you can see, our inventory is large, just have a look."})
keywordHandler:addKeyword({'containers'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In that department we offer bags, backpacks, and present boxes."})
keywordHandler:addKeyword({'illumination'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In that department we offer torches, candlesticks, candelabra, oil and coal basins."})
keywordHandler:addKeyword({'paperware'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In that department we offer scrolls, documents, parchments, and books."})
keywordHandler:addKeyword({'book'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I offer different kind of books: brown, black and small books. Which book do you want?"})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You will have to visit that spooky magic market for that stuff."})
keywordHandler:addKeyword({'fluid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You will have to visit that spooky magic market for that stuff."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

	if msgcontains(msg, 'vial') or msgcontains(msg, 'deposit') or msgcontains(msg, 'flask') then
		npcHandler:say("I will pay you 5 gold for every empty vial. Ok?", 1)
		talk_state = 857
	elseif talk_state == 857 and msgcontains(msg, 'yes') then
		if sellPlayerEmptyVials(cid) == true then
			npcHandler:say("Here's your money!", 1)
			talk_state = 0
		else
			npcHandler:say("You don't have any empty vials!", 1)
			talk_state = 0
		end
	end

	return true
end	
	
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())