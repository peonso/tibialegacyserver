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

shopModule:addBuyableItem({'health', 'life'}, 2006, 60, 10, 'life fluid')

keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thanks to the gods, I am fine."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I just sell some revitalizing life fluids."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a druid and healer, a follower of Crunor."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Hyacinth."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time does not matter to me."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can only sell life fluids, ask Cipfried for further help."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Most of the so called monsters of this isle are just creatures of the gods. On the mainland there are some beasts that truly are monstrous."})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dungeons are dangerous for unexperienced adventurers."})
keywordHandler:addKeyword({'sewer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I rarely visit the town."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As far as I know there is a library in the village. Teach yourself about the gods."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care about kings, queens, and the like."})
keywordHandler:addKeyword({'obi'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A greedy and annoying person as most people are."})
keywordHandler:addKeyword({'seymour'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He has some inner devils that torture him."})
keywordHandler:addKeyword({'dallheim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A man of the sword."})
keywordHandler:addKeyword({'cipfried'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "His healing powers equal even mine."})
keywordHandler:addKeyword({'amber'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I never talked to her longer."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care much about weapons."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am one of the few magic users on this isle. But I sense a follower of the dark path of magic hiding somewhere in the depths of the dungeons."})
keywordHandler:addKeyword({'spell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can't teach you magic. On the mainland you will learn your spells soon enough."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is shaped by the will of the gods, so we don't have to question it."})

npcHandler:addModule(FocusModule:new())