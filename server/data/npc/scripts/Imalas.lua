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

shopModule:addBuyableItem({'banana'}, 2676, 2)
shopModule:addBuyableItem({'cherry'}, 2679, 1)
shopModule:addBuyableItem({'grapes'}, 2681, 3)
shopModule:addBuyableItem({'melon'}, 2682, 8)
shopModule:addBuyableItem({'pumpkin'}, 2683, 10)
shopModule:addBuyableItem({'carrot'}, 2684, 2)
shopModule:addBuyableItem({'cookie'}, 2687, 2)
shopModule:addBuyableItem({'roll'}, 2690, 2)
shopModule:addBuyableItem({'brown bread'}, 2691, 3)
shopModule:addBuyableItem({'egg'}, 2695, 2)
shopModule:addBuyableItem({'cheese'}, 2696, 5)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm a shopkeeper. You can buy food here."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Imalas."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I have no watch."})
keywordHandler:addKeyword({'ghostlands'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry I know nothing more then it has to be a horrible place and that scares me enough."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just have a look at my blackboard."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just have a look at my blackboard."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just have a look at my blackboard."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just have a look at my blackboard."})

npcHandler:addModule(FocusModule:new())