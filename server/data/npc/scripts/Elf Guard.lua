dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is unimportant, only my duty does matter."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a guardian of this town. I have no time to chat!"})
keywordHandler:addKeyword({'town'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is the elven town of Ab'Dendriel."})
keywordHandler:addKeyword({'city'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is the elven town of Ab'Dendriel."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is the elven town of Ab'Dendriel."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The city of the humans lies somewhere far to the south beyond the mountains of the dwarfs."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This city of humankind is located to the west of our area."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarfish settlement is hidden somewhere in the mountains in the south."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The elves of this city are the casts of the Cenath, the Kuridai, and the Deraisim."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The elves of this city are the casts of the Cenath, the Kuridai, and the Deraisim."})
keywordHandler:addKeyword({'cenath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Cenath are magic users. Look for them on the upper levels of the town."})
keywordHandler:addKeyword({'kuridai'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Kuridai are the smiths and craftsmen. Look for them in the underground parts of the city."})
keywordHandler:addKeyword({'deraisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Deraisim are scouts and hunters. You may find them on the groundlevel of the city."})
keywordHandler:addKeyword({'abdaisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Abdaisim are wanderers. Since they live as nomads and travel the world you won't find them here."})
keywordHandler:addKeyword({'teshial'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are no Teshial."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is not allowed to enter this city."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Such a thing is a human concept. We have no need for that, though some Kuridai might think otherwise."})
keywordHandler:addKeyword({'spell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ask around in Ab'Dendriel. Many elves can teach you something about magic. The Cenath love magic most of all."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ask around in Ab'Dendriel. Many elves can teach you something about magic. The Cenath love magic most of all."})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you are looking for that kind of equipment you should ask a Kuridai."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you are looking for that kind of equipment you should ask a Kuridai."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ask some Deraisim where you can get food."})
keywordHandler:addKeyword({"tha'shi ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In the crude human language you would translate it with 'My life for Ab'Dendriel' or even 'I am one with Ab'Dendriel'."})
keywordHandler:addKeyword({"bahaha aka"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This means 'Take your punishment, defiler'."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text =  "It's |TIME|."})

npcHandler:addModule(FocusModule:new())