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

shopModule:addBuyableItem({'lyre'}, 2071, 120)
shopModule:addBuyableItem({'lute'}, 2072, 195)
shopModule:addBuyableItem({'drum'}, 2073, 140)
shopModule:addBuyableItem({'fanfare'}, 2075, 150, 0, 'simple fanfare')


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I make instruments and sometimes I'm wandering through the lands of Tibia as a bard."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Quero."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I don't know what time it is."})
keywordHandler:addKeyword({'music'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I love the music of the elves."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They live in the northeast of Tibia."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They live in the northeast of Tibia."})
keywordHandler:addKeyword({'bard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Selling instruments isn't enough to live on and I love music. That's why I wander through the lands from time to time."})
keywordHandler:addKeyword({'benjamin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He's nice."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can buy a lyre, lute, drum, and simple fanfare."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can buy a lyre, lute, drum, and simple fanfare."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can buy a lyre, lute, drum, and simple fanfare."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can buy a lyre, lute, drum, and simple fanfare."})
keywordHandler:addKeyword({'instrument'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can buy a lyre, lute, drum, and simple fanfare."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())