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

shopModule:addSellableItem({'leather armor'}, 2467, 5)
shopModule:addSellableItem({'chain armor'}, 2464, 40)
shopModule:addSellableItem({'brass armor'}, 2465, 112)
shopModule:addSellableItem({'plate armor'}, 2463, 240)
shopModule:addSellableItem({'steel helmet'}, 2457, 293)
shopModule:addSellableItem({'chain helmet'}, 2458, 12)
shopModule:addSellableItem({'brass helmet'}, 2460, 30)
shopModule:addSellableItem({'leather helmet'}, 2461, 3)
shopModule:addSellableItem({'viking helmet'}, 2473, 66)
shopModule:addSellableItem({'plate shield'}, 2510, 45)
shopModule:addSellableItem({'brass shield'}, 2511, 16)
shopModule:addSellableItem({'wooden shield'}, 2512, 3)
shopModule:addSellableItem({'battle shield'}, 2513, 60)
shopModule:addSellableItem({'brass legs'}, 2478, 49)
shopModule:addSellableItem({'chain legs'}, 2648, 20)

shopModule:addBuyableItem({'leather armor'}, 2467, 35)
shopModule:addBuyableItem({'chain armor'}, 2464, 200)
shopModule:addBuyableItem({'brass armor'}, 2465, 450)
shopModule:addBuyableItem({'leather helmet'}, 2461, 12)
shopModule:addBuyableItem({'chain helmet'}, 2458, 52)
shopModule:addBuyableItem({'brass helmet'}, 2460, 120)
shopModule:addBuyableItem({'viking helmet'}, 2473, 265)
shopModule:addBuyableItem({'wooden shield'}, 2512, 15)
shopModule:addBuyableItem({'brass shield'}, 2511, 65)
shopModule:addBuyableItem({'plate shield'}, 2510, 125)
shopModule:addBuyableItem({'brass legs'}, 2478, 195)
shopModule:addBuyableItem({'chain legs'}, 2648, 80)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell various kinds of masterly crafted armor. The wares I offer are as numerous as the sand of the desert."})
keywordHandler:addKeyword({'shop'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell various kinds of masterly crafted armor. The wares I offer are as numerous as the sand of the desert."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Azil Ibn Izal."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell and buy armor, helmets, and shields."})
keywordHandler:addKeyword({'drefia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "O brave one! Before you go there, please make sure that you buy the best armor you can afford."})
keywordHandler:addKeyword({'thank'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You are welcome, o richest of the wealthiest."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "So, what do you need? I sell armor, helmets, shields, and trousers."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "So, what do you need? I sell armor, helmets, shields, and trousers."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "So, what do you need? I sell armor, helmets, shields, and trousers."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are armor, helmets, trousers, and shields."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You see me sad, but you have to ask another tradesman for that."})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling leather helmets, chain helmets, brass helmets, and viking helmets. What do you want?"})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling leather armor, chain armor, and brass armor. What do you need?"})
keywordHandler:addKeyword({'shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling wooden shields, brass shields, and plate shields. What do you want?"})
keywordHandler:addKeyword({'trousers'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs and brass legs. What do you need?"})
keywordHandler:addKeyword({'leg'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs and brass legs. What do you need?"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's |TIME| right now, o honoured one."})

npcHandler:addModule(FocusModule:new())