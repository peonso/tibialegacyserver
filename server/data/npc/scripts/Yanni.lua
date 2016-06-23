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

shopModule:addSellableItem({'leather armor'}, 					ID_leatherarmor, 12)
shopModule:addSellableItem({'chain armor'}, 					ID_chainarmor, 70)
shopModule:addSellableItem({'brass armor'}, 					ID_brassarmor, 150)
shopModule:addSellableItem({'plate armor'}, 					ID_platearmor, 400)
shopModule:addSellableItem({'chain legs'}, 					ID_chainlegs, 25)
shopModule:addSellableItem({'leather helmet'}, 					ID_leatherhelmet, 4)
shopModule:addSellableItem({'chain helmet'}, 					ID_chainhelmet, 17)
shopModule:addSellableItem({'steel helmet'}, 					ID_steelhelmet, 190)
shopModule:addSellableItem({'wooden shield'}, 					ID_woodenshield, 5)
shopModule:addSellableItem({'battle shield'}, 					ID_battleshield, 95)
shopModule:addSellableItem({'steel shield'}, 					ID_steelshield, 80)
shopModule:addBuyableItem({'chain armor'}, 					ID_chainarmor, 200)
shopModule:addBuyableItem({'brass armor'}, 					ID_brassarmor, 450)
shopModule:addBuyableItem({'chain helmet'}, 					ID_chainhelmet, 52)
shopModule:addBuyableItem({'steel shield'}, 					ID_steelshield, 240)
shopModule:addBuyableItem({'wooden shield'}, 					ID_woodenshield, 15)
shopModule:addBuyableItem({'chain legs'}, 					ID_chainlegs, 80)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I work for Abran Ironeye in the armor department."})
keywordHandler:addKeyword({'shop'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This shop belongs to Abran Ironeye."})
keywordHandler:addKeyword({'market'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This shop belongs to Abran Ironeye."})
keywordHandler:addKeyword({'ironhouse'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This shop belongs to Abran Ironeye."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Yanni."})
keywordHandler:addKeyword({'Abran Ironeye'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A very hard boss, but if you ever talk to him, tell him I said he's a great man."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't believe in the excalibug myth"})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I know nothing of interest."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you'd like to help, then buy something, because I'm paid on a commisioned basis."})
keywordHandler:addKeyword({'commision'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Commison is when you get paid only when you sell something. If I don't make some sales soon, my kids will get hungry!"})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Monsters? Where! I'm horrified of monsters."})
keywordHandler:addKeyword({'thank'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You're welcome."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell armor, legs, helmets, and shields."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell armor, legs, helmets, and shields."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell armor, legs, helmets, and shields."})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain helmets. Do you want to buy any?"})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain and brass armor. What do you need?"})
keywordHandler:addKeyword({'shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling wooden shields and steel shields. What do you want?"})
keywordHandler:addKeyword({'trousers'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs. Do you want to buy any?"})
keywordHandler:addKeyword({'legs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs. Do you want to buy any?"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is |TIME|."}) 

npcHandler:addModule(FocusModule:new())