dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

function greetCallback(cid)
	npcHandler:setMessage(MESSAGE_GREET, "Hiho! <mumbles>")
	return true
end

npcHandler:setCallback(CALLBACK_GREET, greetCallback)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the captain of the emperor's personal bodyguards."})
keywordHandler:addKeyword({'shop'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the captain of the emperor's personal bodyguards."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Tulf Beardweaver, son of Earth, from the Dragoneaters."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I am on duty!"})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you go to a dwarfs' city, do as the dwarfs do."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I doubt anyone can make it through our lines of defense."})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I despise the habit to challenge the prisoners of Dwarcatra or provoke the boys in the mines."})
keywordHandler:addKeyword({'mines'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The mines aren't meant for foreigners. The miners there have enough troubles."})
keywordHandler:addKeyword({'bodyguard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We keep up law and order here, though the boys would rather need some practice like taking care for the trouble in the mines."})
keywordHandler:addKeyword({'trouble'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The mines are raided again and again by the bandits of the Horned Fox."})
keywordHandler:addKeyword({'horned fox'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a renegade minotaur who has a hidden lair somewhere near our mines."})
keywordHandler:addKeyword({'lair'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The lair of the Horned Fox is surely well guarded and even better hidden."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's |TIME| right now."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())