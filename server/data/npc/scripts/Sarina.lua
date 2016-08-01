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

shopModule:addBuyableItem({'scroll'}, 1949, 5)
shopModule:addBuyableItem({'document'}, 1968, 12)
shopModule:addBuyableItem({'parchment'}, 1967, 8)
shopModule:addBuyableItem({'bag'}, 1994, 5)
shopModule:addBuyableItem({'backpack'}, 2001, 20)
shopModule:addBuyableItem({'cup'}, 2013, 3, 0)
shopModule:addBuyableItem({'plate'}, 2035, 6)
shopModule:addBuyableItem({'watch'}, 2036, 20)
shopModule:addBuyableItem({'football'}, 2109, 111)
shopModule:addBuyableItem({'rope'}, 2120, 50)
shopModule:addBuyableItem({'scythe'}, 2550, 50)
shopModule:addBuyableItem({'pick'}, 2553, 50)
shopModule:addBuyableItem({'shovel'}, 2554, 50)
shopModule:addBuyableItem({'rod'}, 2580, 150, 0, 'fishing rod')
shopModule:addBuyableItem({'torch'}, 2050, 2)
shopModule:addBuyableItem({'candlestick'}, 2047, 3)
shopModule:addBuyableItem({'candelabrum'}, 2041, 8)
shopModule:addBuyableItem({'oil'}, 2006, 20, 11, 'vial of oil')
shopModule:addBuyableItem({'worm'}, 3976, 1)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling equipment of all kinds. Do you need anything?"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Sarina. I am selling everything the adventurer needs."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I don't sell food."})
keywordHandler:addKeyword({'ghostlands'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Since the druids sealed that placed with their magic, rarely anyone was there. Perhaps whatever haunted that place is long gone, who knows."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, fishing rods, worms, bags, ropes, backpacks, plates, cups, scrolls, documents, parchments, footballs, and watches. I also sell means of illumination."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, fishing rods, worms, bags, ropes, backpacks, plates, cups, scrolls, documents, parchments, footballs, and watches. I also sell means of illumination."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, fishing rods, worms, bags, ropes, backpacks, plates, cups, scrolls, documents, parchments, footballs, and watches. I also sell means of illumination."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, fishing rods, worms, bags, ropes, backpacks, plates, cups, scrolls, documents, parchments, footballs, and watches. I also sell means of illumination."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, fishing rods, worms, bags, ropes, backpacks, plates, cups, scrolls, documents, parchments, footballs, and watches. I also sell means of illumination."})
keywordHandler:addKeyword({'illumination'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell torches, candlesticks, candelabra, and oil."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is exactly |TIME|. Maybe you want to buy a watch?"})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())