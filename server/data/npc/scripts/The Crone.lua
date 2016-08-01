dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end


keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't remember my name, neither my days as a mortal."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Once I was Vashresamun's favourite handmaiden. But I have fallen from her grace and now I am exiled from her tomb."})
keywordHandler:addKeyword({'grace'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do not ask about that, mortal. Memories bring too much grief."})
keywordHandler:addKeyword({'fallen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do not ask about that, mortal. Memories bring too much grief."})
keywordHandler:addKeyword({'exiled'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do not ask about that, mortal. Memories bring too much grief."})
keywordHandler:addKeyword({'vashresamun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I mourn the dark day I was exiled from her tomb."})
keywordHandler:addKeyword({'tomb'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Her tomb is sealed and can only be entered by a certain melody."})
keywordHandler:addKeyword({'melody'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Vashresamun erased the memory of the tune from my mind, I only remember its name: the secret of the rose garden."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())