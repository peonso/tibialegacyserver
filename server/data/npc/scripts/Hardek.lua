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


shopModule:addSellableItem({'brass shield'}, 2511, 16)
shopModule:addSellableItem({'plate shield'}, 2510, 31)
shopModule:addSellableItem({'battle shield'}, 2513, 95)
shopModule:addSellableItem({'guardian shield'}, 2515, 180)
shopModule:addSellableItem({'dragon shield'}, 2516, 360)
shopModule:addSellableItem({'coat'}, 2651, 1)
shopModule:addSellableItem({'jacket'}, 2650, 1)
shopModule:addSellableItem({'brass armor'}, 2465, 112)
shopModule:addSellableItem({'knight armor'}, 2476, 875)
shopModule:addSellableItem({'golden armor'}, 2466, 1500)
shopModule:addSellableItem({'brass helmet'}, 2460, 30)
shopModule:addSellableItem({'viking helmet'}, 2473, 66)
shopModule:addSellableItem({'iron helmet'}, 2459, 145)
shopModule:addSellableItem({'devil helmet'}, 2462, 450)
shopModule:addSellableItem({'warrior helmet'}, 2475, 696)
shopModule:addSellableItem({'leather legs'}, 2649, 1)
shopModule:addSellableItem({'chain legs'}, 2648, 20)
shopModule:addSellableItem({'brass legs'}, 2478, 49)
shopModule:addSellableItem({'plate legs'}, 2647, 115)
shopModule:addSellableItem({'knight legs'}, 2477, 375)
shopModule:addSellableItem({'dagger'}, 2379, 1)
shopModule:addSellableItem({'longsword'}, 2397, 51)
shopModule:addSellableItem({'spike sword'}, 2383, 225)
shopModule:addSellableItem({'fire sword'}, 2392, 1000)
shopModule:addSellableItem({'mace'}, 2398, 23)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am buying some weapons and armors."})
keywordHandler:addKeyword({'forestaller'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am buying some weapons and armors."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Hardek, the forestaller."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I buy stuff. If you want to sell something, offer it to me, and we'll see if it catches my interest."})
keywordHandler:addKeyword({'thank'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You are welcome."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is |TIME|."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())