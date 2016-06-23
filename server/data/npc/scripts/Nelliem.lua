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

shopModule:addBuyableItem({'shovel'}, 					ID_shovel, 20)
shopModule:addBuyableItem({'scythe'}, 					ID_scythe, 25)
shopModule:addBuyableItem({'pick'}, 					ID_pick, 50)
shopModule:addBuyableItem({'rope'}, 					ID_rope, 50)
shopModule:addBuyableItem({'rod'}, 					ID_fishingrod, 150, 0, 'fishing rod')
shopModule:addBuyableItem({'crowbar'}, 					ID_crowbar, 260)
shopModule:addBuyableItem({'machete'}, 					ID_machete, 35)
shopModule:addBuyableItem({'pitchfork'}, 					ID_pitchfork, 25)
shopModule:addBuyableItem({'rake'}, 					ID_rake, 20)
shopModule:addBuyableItem({'hoe'}, 					ID_hoe, 15)
shopModule:addBuyableItem({'broom'}, 					ID_broom, 12)
shopModule:addBuyableItem({'worm'}, 					ID_worm, 1)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "To keep my thumbs green and to sell our garden equipment, as you can see on that shelves."})
keywordHandler:addKeyword({'crunor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "May he bless all plants."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Nelliem."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a good time to sow some seeds."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, machetes, ropes, pitchforks, rakes, hoes, brooms, fishing rods, worms and brandnew crowbars from Kazordoon."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, machetes, ropes, pitchforks, rakes, hoes, brooms, fishing rods, worms and brandnew crowbars from Kazordoon."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, machetes, ropes, pitchforks, rakes, hoes, brooms, fishing rods, worms and brandnew crowbars from Kazordoon."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, machetes, ropes, pitchforks, rakes, hoes, brooms, fishing rods, worms and brandnew crowbars from Kazordoon."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, machetes, ropes, pitchforks, rakes, hoes, brooms, fishing rods, worms and brandnew crowbars from Kazordoon."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
