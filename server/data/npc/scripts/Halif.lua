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


shopModule:addSellableItem({'rope'}, 					ID_rope, 8)


shopModule:addBuyableItem({'torch'}, 					ID_torch, 2)
shopModule:addBuyableItem({'candelabrum'}, 					ID_candelabrum, 8)
shopModule:addBuyableItem({'candlestick'}, 					ID_candlestick, 2)
shopModule:addBuyableItem({'bag'}, 					ID_yellowbag, 4)
shopModule:addBuyableItem({'scroll'}, 					ID_scroll, 5)
shopModule:addBuyableItem({'document'}, 					ID_document, 12)
shopModule:addBuyableItem({'parchment'}, 					ID_parchment, 8)
shopModule:addBuyableItem({'shovel'}, 					ID_shovel, 10)
shopModule:addBuyableItem({'backpack'}, 					ID_yellowbackpack, 10)
shopModule:addBuyableItem({'scythe'}, 					ID_scythe, 50)
shopModule:addBuyableItem({'pick'}, 					ID_pick, 50)
shopModule:addBuyableItem({'watch'}, 					ID_watch, 20)
shopModule:addBuyableItem({'rope'}, 					ID_rope, 50)
shopModule:addBuyableItem({'rod'}, 					ID_fishingrod, 150, 0, 'fishing rod')
shopModule:addBuyableItem({'crowbar'}, 					ID_crowbar, 260)
shopModule:addBuyableItem({'present'}, 					ID_present, 10)
shopModule:addBuyableItem({'bucket'}, 					ID_bucket, 4, 0)
shopModule:addBuyableItem({'cup'}, 					ID_cup, 2, 0)
shopModule:addBuyableItem({'plate'}, 					ID_plate, 6)
shopModule:addBuyableItem({'bottle'}, 					ID_bottle, 3, 0)
shopModule:addBuyableItem({'oil'}, 					2006, 20, 11, 'vial of oil')
shopModule:addBuyableItem({'water'}, 					ID_waterhose, 40, 0, 'water hose')
shopModule:addBuyableItem({'worm'}, 					ID_worm, 1, 0, 'worms')



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
