dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Nemal."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have no job. I'm a wanderer."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, I used to live there a while ago. Nice town."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Aaaahh, Carlin, yes. I know this town. Strange graveyard there, isn't it?"})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "King...king...yes, there is one. I still can remember the time when we had an other king. What was his name again?"})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I always have weapons with me. You never know what's behind the next corner."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hmm.. help? How can I help you?"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I had a watch. It was nice, but I can't see the hands anymore."})
keywordHandler:addKeyword({'sword'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have a sword. It's very sharp. But I don't give it away, you never know."})
keywordHandler:addKeyword({'desert'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Desert? Where is one?"})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heard the name, but I don't trust rumours."})
keywordHandler:addKeyword({'fight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Better know how to fight!"})
keywordHandler:addKeyword({'guild'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hmmm.. I wouldn't ever join a guild, but i know of the existance of some."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't believe in gods, but a lot of people do. I never saw a god, why should I trust in someone I never met?"})
keywordHandler:addKeyword({'way'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are many ways. I don't know all of them."})
keywordHandler:addKeyword({'door'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Closed doors need keys. What a pity keys are not lying around like rubbish!"})
keywordHandler:addKeyword({'library'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can't read or write. What use would I have of a library?"})
keywordHandler:addKeyword({'secret'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Secrets should remain secret. No need of making them public."})
keywordHandler:addKeyword({'treasure'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can find some treasures here - some are bigger, some are smaller, some are of true value, some are of materialistic value"})
keywordHandler:addKeyword({'book'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can't read. I've never learned it."})
keywordHandler:addKeyword({'gharonk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My father knew this language."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't sell things. If you really need something, better walk straight to one of the towns or ask another adventurer."})
keywordHandler:addKeyword({'blind'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, I seem to be blind. But I am not sure - maybe the dungeons are too dark!"})


function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
if msgcontains(msg, 'potion') and msgcontains(msg, 'regain') and msgcontains(msg, 'vision') or msgcontains(msg, 'Potion') and msgcontains(msg, 'Regain') and msgcontains(msg, 'Vision') then
	npcHandler:say("I heard of a potion of regained vision ... but I can't remember how to make it! Maybe you can help me. Do you know something about it?", 1)
	talk_state = 2
			
elseif talk_state == 2 and msgcontains(msg, 'yes') or talk_state == 2 and msgcontains(msg, 'Yes') then
	npcHandler:say("So, did you bring the ingredients with you, stranger?", 1)
	talk_state = 3
elseif talk_state == 2 and msgcontains(msg, '') then
	npcHandler:say("Oh. Maybe someone else could do it, then.", 1)
	talk_state = 0
	
elseif talk_state == 3 and msgcontains(msg, 'yes') or talk_state == 3 and msgcontains(msg, 'Yes') then
	if doPlayerRemoveItem(cid, 2690, 1) == true and doPlayerRemoveItem(cid, 2692, 1) == true and doPlayerRemoveItem(cid, 2744, 1) == true and doPlayerRemoveItem(cid, 2693, 1) == true and doPlayerRemoveItem(cid, 2679, 1) == true then
	npcHandler:say("You seem to have them with you. Can you tell me, how many minutes I have to cook them?", 1)
	else
	npcHandler:say("It doesn't seem to me as if you have the correct ingredients with you, stranger!", 1)
	end
	talk_state = 4	

elseif talk_state == 3 and msgcontains(msg, '') then
	npcHandler:say("Maybe you can find them!", 1)
	talk_state = 0	

elseif talk_state == 4 and msgcontains(msg, '31') then
	npcHandler:say("Ah. It seems to work. But what are the words I have to speak?", 1)
	talk_state = 5	
elseif talk_state == 4 and msgcontains(msg, '') then
	npcHandler:say("Oh no, I don't think this is right.", 1)
	talk_state = 0
	
elseif talk_state == 5 and msgcontains(msg, 'nalus murtu') or talk_state == 5 and msgcontains(msg, 'Nalus Murtu') then
	npcHandler:say("Thank you! NALUS MURTUUU! ... I can see again! To show you, how grateful I am, I'll give you a key. Be wise when using it. I can't tell you, where it matches, but ... take good care, it is useless without mental powers!", 1)
		DESERTDEEPKEY = doPlayerAddItem(cid, 2088, 1)
		doSetItemActionId(DESERTDEEPKEY, 2012)
		doSetItemSpecialDescription(DESERTDEEPKEY, "(Key: 4037)")
	talk_state = 0	
elseif talk_state == 5 and msgcontains(msg, '') then
	npcHandler:say("Oh no, I don't think these are the right words.", 1)
	talk_state = 0	
	
end		
    return true
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())