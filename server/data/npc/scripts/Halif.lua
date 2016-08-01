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


shopModule:addSellableItem({'rope'}, 2120, 8)


shopModule:addBuyableItem({'torch'}, 2050, 2)
shopModule:addBuyableItem({'candelabrum'}, 2041, 8)
shopModule:addBuyableItem({'candlestick'}, 2047, 2)
shopModule:addBuyableItem({'bag'}, 1992, 4)
shopModule:addBuyableItem({'scroll'}, 1949, 5)
shopModule:addBuyableItem({'document'}, 1968, 12)
shopModule:addBuyableItem({'parchment'}, 1967, 8)
shopModule:addBuyableItem({'shovel'}, 2554, 10)
shopModule:addBuyableItem({'backpack'}, 1999, 10)
shopModule:addBuyableItem({'scythe'}, 2550, 50)
shopModule:addBuyableItem({'pick'}, 2553, 50)
shopModule:addBuyableItem({'watch'}, 2036, 20)
shopModule:addBuyableItem({'rope'}, 2120, 50)
shopModule:addBuyableItem({'rod'}, 2580, 150, 0, 'fishing rod')
shopModule:addBuyableItem({'crowbar'}, 2416, 260)
shopModule:addBuyableItem({'present'}, 1990, 10)
shopModule:addBuyableItem({'bucket'}, 2005, 4, 0)
shopModule:addBuyableItem({'cup'}, 2013, 2, 0)
shopModule:addBuyableItem({'plate'}, 2035, 6)
shopModule:addBuyableItem({'bottle'}, 2007, 3, 0)
shopModule:addBuyableItem({'oil'}, 2006, 20, 11, 'vial of oil')
shopModule:addBuyableItem({'water'}, 2006, 40, 0, 'water hose')
shopModule:addBuyableItem({'worm'}, 3976, 1, 0, 'worms')



keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, I guess your cleverness already made the profession of the humble equipment tradesman obvious to you."})
keywordHandler:addKeyword({'light'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell torches, candlesticks, candelabras, and oil, o seeker of enlightment."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Halif Ibn Onor, known as Halif the honest."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would love to tell you the time, but I can not make the watchmaker's kids starve as a gazelle in the heart of the desert."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am deeply sorry but you have to look for that elsewhere."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, bags, ropes, backpacks, plates, cups, scrolls, documents, parchments, watches, fishing rods and worms. Of course, I sell lightsources, too."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, bags, ropes, backpacks, plates, cups, scrolls, documents, parchments, watches, fishing rods and worms. Of course, I sell lightsources, too."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, bags, ropes, backpacks, plates, cups, scrolls, documents, parchments, watches, fishing rods and worms. Of course, I sell lightsources, too."})
keywordHandler:addKeyword({'hav'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, bags, ropes, backpacks, plates, cups, scrolls, documents, parchments, watches, fishing rods and worms. Of course, I sell lightsources, too."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, bags, ropes, backpacks, plates, cups, scrolls, documents, parchments, watches, fishing rods and worms. Of course, I sell lightsources, too."})


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())