local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

	function FocusModule:init(handler)
	FOCUS_GREETSWORDS = {'hi bezil', 'hello bezil', 'hiho bezil'}
	FOCUS_FAREWELLSWORDS = {'bye', 'farewell', 'hi nezil', 'hello nezil', 'hiho nezil'}
		self.npcHandler = handler
		for i, word in pairs(FOCUS_GREETSWORDS) do
			local obj = {}
			table.insert(obj, word)
			obj.callback = FOCUS_GREETSWORDS.callback or FocusModule.messageMatcher
			handler.keywordHandler:addKeyword(obj, FocusModule.onGreet, {module = self})
		end
		
		for i, word in pairs(FOCUS_FAREWELLSWORDS) do
			local obj = {}
			table.insert(obj, word)
			obj.callback = FOCUS_FAREWELLSWORDS.callback or FocusModule.messageMatcher
			handler.keywordHandler:addKeyword(obj, FocusModule.onFarewell, {module = self})
		end
		
		return true
	end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addSellableItem({'vial', 'potion', 'flask'}, 2006, 5)
shopModule:addBuyableItem({'torch'}, 2050, 2)
shopModule:addBuyableItem({'candleb'}, 2041, 8, 0, 'candelabrum')
shopModule:addBuyableItem({'candlestick'}, 2047, 2)
shopModule:addBuyableItem({'bag'}, 1993, 4)
shopModule:addBuyableItem({'scroll'}, 1949, 5)
shopModule:addBuyableItem({'document'}, 1968, 12)
shopModule:addBuyableItem({'parchment'}, 1967, 8)
shopModule:addBuyableItem({'shovel'}, 2554, 10)
shopModule:addBuyableItem({'backpack'}, 2003, 10)
shopModule:addBuyableItem({'scythe'}, 2550, 40)
shopModule:addBuyableItem({'pick'}, 2553, 50)
shopModule:addBuyableItem({'watch'}, 2036, 20)
shopModule:addBuyableItem({'rope'}, 2120, 50)
shopModule:addBuyableItem({'rod'}, 2580, 150, 0, 'fishing rod')
shopModule:addBuyableItem({'crowbar'}, 2416, 260)
shopModule:addBuyableItem({'present'}, 1990, 10)
shopModule:addBuyableItem({'bucket'}, 2005, 4, 0)
shopModule:addBuyableItem({'bottle'}, 2007, 3, 0)
shopModule:addBuyableItem({'water'}, 2031, 10, 0, 'waterskin')
shopModule:addBuyableItem({'oil'}, 2006, 20, 11, 'vial of oil')
shopModule:addBuyableItem({'worm'}, 3976, 1, 0, 'worms')

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We sell equipment of all kinds. Is there anything you need?"})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We sell shovels, picks, scythes, bags, ropes, backpacks, cups, scrolls, documents, parchments, and watches. We also sell lightsources."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Let me see ... we have shovels, picks, scythes, bags, ropes, backpacks, scrolls, watches, some lightsources, fishing rods, worms and other stuff."})
keywordHandler:addKeyword({'light'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We sell torches, candlesticks, candelabra, and oil."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Bezil Coinbiter, daughter of Earth, of the Molten Rocks. I and my bro' Nezil are selling stuff, ye' know?"})
keywordHandler:addKeyword({'nezil'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He's my bro'."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, visit the Jolly Axeman Tavern for that."})
keywordHandler:addKeyword({'stuff'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, things like crowbars, water hoses, presents, buckets, bottles, and the like."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, things like crowbars, water hoses, presents, buckets, bottles, and the like."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, things like crowbars, water hoses, presents, buckets, bottles, and the like."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, things like crowbars, water hoses, presents, buckets, bottles, and the like."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think it's about |TIME|. If you'd bought a watch you'd know for sure."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
if  msgcontains(msg, 'nezil') or msgcontains(msg, 'Nezil') then
elseif msgcontains(msg, 'hi') or msgcontains(msg, 'Hi') or msgcontains(msg, 'hello') or msgcontains(msg, 'Hello') or msgcontains(msg, 'Hiho') or msgcontains(msg, 'hiho') then
	npcHandler:say("Are you talking to me, ".. getPlayerName(cid) .."?", 1)
		talk_state = 0
        end
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())