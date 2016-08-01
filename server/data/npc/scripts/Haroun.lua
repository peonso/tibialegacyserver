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

shopModule:addSellableItem({'magic lightwand'}, 2162, 35)
shopModule:addSellableItem({'sword ring'}, 2207, 100)
shopModule:addSellableItem({'axe ring'}, 2208, 100)
shopModule:addSellableItem({'club ring'}, 2209, 100)
shopModule:addSellableItem({'stone skin amulet'}, 2197, 500)
shopModule:addSellableItem({'elven amulet'}, 2198, 100)
shopModule:addSellableItem({'garlic necklace'}, 2199, 50)
shopModule:addSellableItem({'bronze amulet'}, 2172, 50)
shopModule:addSellableItem({'stealth ring'}, 2165, 200)
shopModule:addSellableItem({'power ring'}, 2166, 50)
shopModule:addSellableItem({'mind stone'}, 2178, 100)
shopModule:addSellableItem({'life crystal'}, 2177, 50)
shopModule:addSellableItem({'orb'}, 2176, 750)
shopModule:addSellableItem({'wand of vortex'}, 2190, 100)
shopModule:addSellableItem({'wand of dragonbreath'}, 2191, 200)
shopModule:addSellableItem({'wand of plague'}, 2188, 1000)
shopModule:addSellableItem({'wand of cosmic energy'}, 2189, 2000)
shopModule:addSellableItem({'wand of inferno'}, 2187, 3000)

shopModule:addBuyableItem({'magic lightwand'}, 2162, 120)
shopModule:addBuyableItem({'sword ring'}, 2207, 500)
shopModule:addBuyableItem({'axe ring'}, 2208, 500)
shopModule:addBuyableItem({'club ring'}, 2209, 500)
shopModule:addBuyableItem({'stone skin amulet'}, 2197, 5000, 5)
shopModule:addBuyableItem({'elven amulet'}, 2198, 500, 50)
shopModule:addBuyableItem({'garlic necklace'}, 2199, 100, 150)
shopModule:addBuyableItem({'bronze amulet'}, 2172, 100, 200)
shopModule:addBuyableItem({'stealth ring'}, 2165, 5000)
shopModule:addBuyableItem({'power ring'}, 2166, 100)

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