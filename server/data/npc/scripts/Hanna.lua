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


shopModule:addSellableItem({'white pearl'}, 					ID_whitepearl, 160)
shopModule:addSellableItem({'black pearl'}, 					ID_blackpearl, 280)
shopModule:addSellableItem({'small diamond'}, 					ID_smalldiamond, 300)
shopModule:addSellableItem({'small sapphire'}, 					ID_smallsapphire, 250)
shopModule:addSellableItem({'small ruby'}, 					ID_smallruby, 250)
shopModule:addSellableItem({'small emerald'}, 					ID_smallemerald, 250)
shopModule:addSellableItem({'small amethyst'}, 					ID_smallamethyst, 200)

shopModule:addBuyableItem({'wedding ring'}, 					ID_weddingring, 990)
shopModule:addBuyableItem({'golden amulet'}, 					ID_goldenamulet, 6600)
shopModule:addBuyableItem({'ruby necklace'}, 					ID_rubynecklace, 3560)
shopModule:addBuyableItem({'white pearl'}, 					ID_whitepearl, 320)
shopModule:addBuyableItem({'black pearl'}, 					ID_blackpearl, 560)
shopModule:addBuyableItem({'small diamond'}, 					ID_smalldiamond, 600)
shopModule:addBuyableItem({'small sapphire'}, 					ID_smallsapphire, 500)
shopModule:addBuyableItem({'small ruby'}, 					ID_smallruby, 500)
shopModule:addBuyableItem({'small emerald'}, 					ID_smallemerald, 500)
shopModule:addBuyableItem({'small amethyst'}, 					ID_smallamethyst, 400)
 


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a jeweler. Maybe you want to have a look at my wonderful offers."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Hanna."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you various gems, pearls or some wonderful jewels."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you various gems, pearls or some wonderful jewels."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you various gems, pearls or some wonderful jewels."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you various gems, pearls or some wonderful jewels."})
keywordHandler:addKeyword({'gem'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can buy and sell small diamonds, sapphires, rubies, emeralds, and amethysts."})
keywordHandler:addKeyword({'pearl'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are white and black pearls you can buy or sell."})
keywordHandler:addKeyword({'jewl'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Currently you can purchase wedding rings, golden amulets, and ruby necklaces."})
keywordHandler:addKeyword({'talon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't trade or work with these magic gems. It's better you ask a mage about this."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Currently it is |TIME|."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
