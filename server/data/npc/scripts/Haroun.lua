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

shopModule:addSellableItem({'magic lightwand'}, 					ID_magiclightwand, 35)
shopModule:addSellableItem({'sword ring'}, 					ID_swordring, 100)
shopModule:addSellableItem({'axe ring'}, 					ID_axering, 100)
shopModule:addSellableItem({'club ring'}, 					ID_clubring, 100)
shopModule:addSellableItem({'stone skin amulet'}, 					ID_stoneskinamulet, 500)
shopModule:addSellableItem({'elven amulet'}, 					ID_elvenamulet, 100)
shopModule:addSellableItem({'garlic necklace'}, 					ID_garlicnecklace, 50)
shopModule:addSellableItem({'bronze amulet'}, 					ID_bronzeamulet, 50)
shopModule:addSellableItem({'stealth ring'}, 					ID_stealthring, 200)
shopModule:addSellableItem({'power ring'}, 					ID_powerring, 50)
shopModule:addSellableItem({'mind stone'}, 					ID_mindstone, 100)
shopModule:addSellableItem({'life crystal'}, 					ID_lifecrystal, 50)
shopModule:addSellableItem({'orb'}, 					ID_orb, 750)
shopModule:addSellableItem({'wand of vortex'}, 					ID_wandofvortex, 100)
shopModule:addSellableItem({'wand of dragonbreath'}, 					ID_wandofdragonbreath, 200)
shopModule:addSellableItem({'wand of plague'}, 					ID_wandofplague, 1000)
shopModule:addSellableItem({'wand of cosmic energy'}, 					ID_wandofcosmicenergy, 2000)
shopModule:addSellableItem({'wand of inferno'}, 					ID_wandofinferno, 3000)

shopModule:addBuyableItem({'magic lightwand'}, 					ID_magiclightwand, 120)
shopModule:addBuyableItem({'sword ring'}, 					ID_swordring, 500)
shopModule:addBuyableItem({'axe ring'}, 					ID_axering, 500)
shopModule:addBuyableItem({'club ring'}, 					ID_clubring, 500)
shopModule:addBuyableItem({'stone skin amulet'}, 					ID_stoneskinamulet, 5000, 5)
shopModule:addBuyableItem({'elven amulet'}, 					ID_elvenamulet, 500, 50)
shopModule:addBuyableItem({'garlic necklace'}, 					ID_garlicnecklace, 100, 150)
shopModule:addBuyableItem({'bronze amulet'}, 					ID_bronzeamulet, 100, 200)
shopModule:addBuyableItem({'stealth ring'}, 					ID_stealthring, 5000)
shopModule:addBuyableItem({'power ring'}, 					ID_powerring, 100)

keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm afraid I do not trade with weapons or armour. Nah'bob only deals with magical equipment."})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm afraid I do not trade with weapons or armour. Nah'bob only deals with magical equipment."})
keywordHandler:addKeyword({'legs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm afraid I do not trade with weapons or armour. Nah'bob only deals with magical equipment."})
keywordHandler:addKeyword({'wares'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I only deal with magical equipment. Our range of goods include amulets, rings, wands and some special items."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I only deal with magical equipment. Our range of goods include amulets, rings, wands and some special items."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I only deal with magical equipment. Our range of goods include amulets, rings, wands and some special items."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I only deal with magical equipment. Our range of goods include amulets, rings, wands and some special items."})
keywordHandler:addKeyword({'magical'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I only deal with magical equipment. Our range of goods include amulets, rings, wands and some special items."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I only deal with magical equipment. Our range of goods include amulets, rings, wands and some special items."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I only deal with magical equipment. Our range of goods include amulets, rings, wands and some special items."})
keywordHandler:addKeyword({'amulet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling and buying bronze amulets, stone skin amulets, elven amulets and garlic necklaces."})
keywordHandler:addKeyword({'ring'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling and buying stealth rings, power rings, sword rings, axe rings, and club rings."})
keywordHandler:addKeyword({'wand'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm buying wands of vortex, wands of dragonbreath, wands of plague, wands of cosmic energy and wands of inferno as well as magic light wands."})
keywordHandler:addKeyword({'rod'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm not interested in rods."})
keywordHandler:addKeyword({'special'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling and buying magic light wands. I'm currently also looking for mind stones, life crystals and orbs."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())