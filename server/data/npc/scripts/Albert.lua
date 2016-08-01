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
if getCreatureHealth(cid) <= 39 then
	npcHandler:setMessage(MESSAGE_GREET, "You are looking really bad, Let me heal your wounds.")
	doCreatureAddHealth(cid, -getCreatureHealth(cid)+40)
	doSendMagicEffect(getPlayerPosition(cid), 12)
	talk_state = 0
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Welcome in my humble hut, ".. getPlayerName(cid) ..".")
	return true
	end
end	

npcHandler:setCallback(CALLBACK_GREET, greetCallback)

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a healer."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My Name is Albert Fibulanian."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The sinful city of Thais is a monument of corruption and murder. I am glad I left for Edron and thank the gods every day for this isle."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The sinful city of Thais is a monument of corruption and murder. I am glad I left for Edron and thank the gods every day for this isle."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The gods of good take care of us."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king does much to enhance the life of his people, but he could do more."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king does much to enhance the life of his people, but he could do more."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Tibia is a world big enough for everyone. I wish people would realize that."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I dream of times which see no need for armies or warriors."})
keywordHandler:addKeyword({'banor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I dream of times which see no need for armies or warriors."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The fallen one is a perfect example where evil leads us to."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's only another instrument of pain and destruction."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have only news about weather, taxes, and harvests. I heared nothing that might interest a traveller like you."})
keywordHandler:addKeyword({'daniel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I healed his wounds, but nothing can heal his soul after the betrayal of some of his knightly brethren."})
keywordHandler:addKeyword({'kaine'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Another victim of his own ambitions. I mourn for his soul."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Now, it is |TIME|."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

if msgcontains(msg, 'heal') then
if getCreatureHealth(cid) <= 39 then
	npcHandler:say("You are looking really bad. Let me heal your wounds.", 1)
	doCreatureAddHealth(cid, -getCreatureHealth(cid)+40)
	doSendMagicEffect(getPlayerPosition(cid), 12)
	talk_state = 0
	return true
	else
	npcHandler:say("You aren't looking really bad. Sorry, I can't help you.", 1)
	return true
	end
	talk_state = 0
end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())