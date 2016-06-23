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

shopModule:addSellableItem({'might ring'}, 					ID_mightring, 250, 20)
shopModule:addSellableItem({'energy ring'}, 					ID_energyring, 100)
shopModule:addSellableItem({'life ring'}, 					ID_lifering, 50)
shopModule:addSellableItem({'time ring'}, 					ID_timering, 100)
shopModule:addSellableItem({'silver amulet'}, 					ID_silveramulet, 50)
shopModule:addSellableItem({'strange talisman'}, 					ID_strangetalisman, 30)
shopModule:addSellableItem({'dwarven ring'}, 					ID_dwarvenring, 100)
shopModule:addSellableItem({'ring of healing'}, 					ID_ringofhealing, 100)
shopModule:addSellableItem({'protection amulet'}, 					ID_protectionamulet, 100)
shopModule:addSellableItem({'dragon necklace'}, 					ID_dragonnecklace, 100)
shopModule:addSellableItem({'mysterious fetish'}, 					ID_mysteriousfetish, 50)
shopModule:addSellableItem({'ankh'}, 					ID_ankh, 100)
shopModule:addSellableItem({'snakebite rod'}, 					ID_snakebiterod, 100)
shopModule:addSellableItem({'moonlight rod'}, 					ID_moonlightrod, 200)
shopModule:addSellableItem({'volcanic rod'}, 					ID_volcanicrod, 1000)
shopModule:addSellableItem({'quagmire rod'}, 					ID_quagmirerod, 2000)
shopModule:addSellableItem({'tempest rod'}, 					ID_tempestrod, 3000)

shopModule:addBuyableItem({'might ring'}, 					ID_mightring, 5000, 20)
shopModule:addBuyableItem({'energy ring'}, 					ID_energyring, 2000)
shopModule:addBuyableItem({'life ring'}, 					ID_lifering, 900)
shopModule:addBuyableItem({'time ring'}, 					ID_timering, 2000)
shopModule:addBuyableItem({'silver amulet'}, 					ID_silveramulet, 100, 200)
shopModule:addBuyableItem({'strange talisman'}, 					ID_strangetalisman, 100, 200)
shopModule:addBuyableItem({'dwarven ring'}, 					ID_dwarvenring, 2000)
shopModule:addBuyableItem({'ring of healing'}, 					ID_ringofhealing, 2000)
shopModule:addBuyableItem({'protection amulet'}, 					ID_protectionamulet, 700, 250)
shopModule:addBuyableItem({'dragon necklace'}, 					ID_dragonnecklace, 1000, 200)

keywordHandler:addKeyword({'wares'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My task is to buy and sell supplies. We are dealing with magical equipment like rings, amulets, rods and some special items."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My task is to buy and sell supplies. We are dealing with magical equipment like rings, amulets, rods and some special items."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My task is to buy and sell supplies. We are dealing with magical equipment like rings, amulets, rods and some special items."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My task is to buy and sell supplies. We are dealing with magical equipment like rings, amulets, rods and some special items."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My task is to buy and sell supplies. We are dealing with magical equipment like rings, amulets, rods and some special items."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My task is to buy and sell supplies. We are dealing with magical equipment like rings, amulets, rods and some special items."})
keywordHandler:addKeyword({'amulet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling and buying strange talismans, silver amulets, protection amulets and dragon necklaces."})
keywordHandler:addKeyword({'ring'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling and buying might rings, energy rings, life rings, time rings, dwarven rings and rings of healing."})
keywordHandler:addKeyword({'rod'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm buying snakebite rods, moonlight rods, volcanic rods, quagmire rods and tempest rods."})
keywordHandler:addKeyword({'wand'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm not interested in wands."})
keywordHandler:addKeyword({'special'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm currently looking for some special items. Do you have any ankhs or a mysterious fetish?"})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())