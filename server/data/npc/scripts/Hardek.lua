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


shopModule:addSellableItem({'brass shield'}, 					ID_brassshield, 16)
shopModule:addSellableItem({'plate shield'}, 					ID_plateshield, 31)
shopModule:addSellableItem({'battle shield'}, 					ID_battleshield, 95)
shopModule:addSellableItem({'guardian shield'}, 					ID_guardianshield, 180)
shopModule:addSellableItem({'dragon shield'}, 					ID_dragonshield, 360)
shopModule:addSellableItem({'coat'}, 					ID_coat, 1)
shopModule:addSellableItem({'jacket'}, 					ID_jacket, 1)
shopModule:addSellableItem({'brass armor'}, 					ID_brassarmor, 112)
shopModule:addSellableItem({'knight armor'}, 					ID_knightarmor, 875)
shopModule:addSellableItem({'golden armor'}, 					ID_goldenarmor, 1500)
shopModule:addSellableItem({'brass helmet'}, 					ID_brasshelmet, 30)
shopModule:addSellableItem({'viking helmet'}, 					ID_vikinghelmet, 66)
shopModule:addSellableItem({'iron helmet'}, 					ID_ironhelmet, 145)
shopModule:addSellableItem({'devil helmet'}, 					ID_devilhelmet, 450)
shopModule:addSellableItem({'warrior helmet'}, 					ID_warriorhelmet, 696)
shopModule:addSellableItem({'leather legs'}, 					ID_leatherlegs, 1)
shopModule:addSellableItem({'chain legs'}, 					ID_chainlegs, 20)
shopModule:addSellableItem({'brass legs'}, 					ID_brasslegs, 49)
shopModule:addSellableItem({'plate legs'}, 					ID_platelegs, 115)
shopModule:addSellableItem({'knight legs'}, 					ID_knightlegs, 375)
shopModule:addSellableItem({'dagger'}, 					ID_dagger, 1)
shopModule:addSellableItem({'longsword'}, 					ID_longsword, 51)
shopModule:addSellableItem({'spike sword'}, 					ID_spikesword, 225)
shopModule:addSellableItem({'fire sword'}, 					ID_firesword, 1000)
shopModule:addSellableItem({'mace'}, 					ID_mace, 23)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am buying some weapons and armors."})
keywordHandler:addKeyword({'forestaller'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am buying some weapons and armors."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Hardek, the forestaller."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I buy stuff. If you want to sell something, offer it to me, and we'll see if it catches my interest."})
keywordHandler:addKeyword({'thank'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You are welcome."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is |TIME|."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
