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

shopModule:addBuyableItem({'lemonade'}, 2007, 5, 5, 'bottle of refreshing lemonade')
shopModule:addBuyableItem({'milk'}, 2007, 4, 6, 'bottle of our revitalizing milk')
shopModule:addBuyableItem({'water'}, 2007, 2, 1, 'bottle of crystal clear water') 

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the owner of this place of relaxation."})
keywordHandler:addKeyword({'saloon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the owner of this place of relaxation."})
keywordHandler:addKeyword({'cellar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's pretty, isn't it?"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Dane."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heard nothing interesting lately."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you milk, water, and lemonade."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you milk, water, and lemonade."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you milk, water, and lemonade."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, we just sell drinks."})
keywordHandler:addKeyword({'alcohol'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Alcohol makes people too aggressive. We don't need such stuff in Carlin."})
keywordHandler:addKeyword({'wine'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Alcohol makes people too aggressive. We don't need such stuff in Carlin."})
keywordHandler:addKeyword({'beer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Alcohol makes people too aggressive. We don't need such stuff in Carlin."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is exactly |TIME|."})

npcHandler:addModule(FocusModule:new())