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

shopModule:addBuyableItem({'wooden drawer'}, 3915, 20)
shopModule:addBuyableItem({'dresser'}, 3916, 25)
shopModule:addBuyableItem({'locker'}, 3918, 30)
shopModule:addBuyableItem({'large trunk'}, 3938, 10)
shopModule:addBuyableItem({'box'}, 1738, 10)
shopModule:addBuyableItem({'chest'}, 1740, 10)
shopModule:addBuyableItem({'crate'}, 1739, 10)
shopModule:addBuyableItem({'trough'}, 1775, 7)
shopModule:addBuyableItem({'barrel'}, 3932, 12)

keywordHandler:addKeyword({'container'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I seel wooden drawer, dresser, locker, large trunk, box, chest, crate, barrel and trough."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm into sellin' furniture. My grandfather was in that business, then my father, and so am I."})
keywordHandler:addKeyword({'shop'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm into sellin' furniture. My grandfather was in that business, then my father, and so am I."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm Borkas Flersson, but let's not waste precious tradin' time with smalltalk"})
keywordHandler:addKeyword({'thank'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "No prob."})
keywordHandler:addKeyword({'allen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hes my boss but he likes to be one of us and sells some of his wares personally."})
keywordHandler:addKeyword({'richardson'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hes my boss but he likes to be one of us and sells some of his wares personally."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling containers here."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling containers here."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling containers here."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling containers here."})
keywordHandler:addKeyword({'furniture'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling containers here."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling containers here."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time is |TIME| now."})

npcHandler:addModule(FocusModule:new())