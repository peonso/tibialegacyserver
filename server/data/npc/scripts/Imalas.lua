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

shopModule:addBuyableItem({'banana'}, 					ID_banana, 2)
shopModule:addBuyableItem({'cherry'}, 					ID_cherry, 1)
shopModule:addBuyableItem({'grapes'}, 					ID_grape, 3)
shopModule:addBuyableItem({'melon'}, 					ID_melon, 8)
shopModule:addBuyableItem({'pumpkin'}, 					ID_pumpkin, 10)
shopModule:addBuyableItem({'carrot'}, 					ID_carrot, 2)
shopModule:addBuyableItem({'cookie'}, 					ID_cookie, 2)
shopModule:addBuyableItem({'roll'}, 					ID_roll, 2)
shopModule:addBuyableItem({'brown bread'}, 					ID_brownbread, 3)
shopModule:addBuyableItem({'egg'}, 					ID_egg, 2)
shopModule:addBuyableItem({'cheese'}, 					ID_cheese, 5)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm a shopkeeper. You can buy food here."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Imalas."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I have no watch."})
keywordHandler:addKeyword({'ghostlands'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry I know nothing more then it has to be a horrible place and that scares me enough."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just have a look at my blackboard."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just have a look at my blackboard."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just have a look at my blackboard."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just have a look at my blackboard."})

npcHandler:addModule(FocusModule:new())