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
	npcHandler:setMessage(MESSAGE_GREET, "Oh, hello! <hicks>")
	return true
end	
npcHandler:setCallback(CALLBACK_GREET, greetCallback)

keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thanks I am <hicks> drunk <giggles>."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hey! Thats my drink, buy your own!"})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I forgot <hicks> what a job I have."})
keywordHandler:addKeyword({'karl'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A good guy with <hicks> good beer."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My Name? Uh... Wait! 'Bring down the trash, William you...' William, my name is William!"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Its precisely <hicks> after <hicks>."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I need another drink, then I'll help you. Promise."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I whish I'd live in Thais, the city of alcohol."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I whish I'd live in Thais, the city of alcohol."})
keywordHandler:addKeyword({'sewer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The sewers are our last refuge."})
keywordHandler:addKeyword({'refuge'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, refuge from <hicks> womanhood."})
keywordHandler:addKeyword({'todd'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In Todd we trust! TODD! TODD! TODD!"})


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())