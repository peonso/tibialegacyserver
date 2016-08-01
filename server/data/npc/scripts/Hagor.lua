dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Hagor, the old hunter."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I travel through the lands of Tibia and now Jakundaf Desert since years."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The gods made this world full of fascinating secrets and I will search them till my end."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais... It's a big city in Middle-Tibia. Lots of people live there."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Is this the city to the north? I heard rumours about it."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Tibianus is our king. To be honest, I didn't hear much of him till now."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Weapons? Do you have some? You better know how to use them!"})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'd really like to help you. Could you specify your request?"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time has no meaning to me."})
keywordHandler:addKeyword({'sword'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do you mean any sword in particular? Or just any sword?"})
keywordHandler:addKeyword({'desert'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, it's big, isn't it?"})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heared rumours that there is a sword called so. I don't know if it exists."})
keywordHandler:addKeyword({'fight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Fighting is an art. Know it and you will be strong, ignore it and you will die soon!"})
keywordHandler:addKeyword({'guild'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are many different guilds in Tibia. They come and go, come and go..."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are a lot of gods we believe in. Maybe you should check out different books to find out something about them."})
keywordHandler:addKeyword({'way'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Which way are you looking for in particular?"})
keywordHandler:addKeyword({'door'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Which door are you talking about? If it is locked, maybe you should try to find a key for it!"})
keywordHandler:addKeyword({'secret'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are many secrets. But I fear, I can't tell you much about them. They are also secret to me..."})
keywordHandler:addKeyword({'treasure'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Someone told me - I can't remember who it was - that there was a treasure hidden nearby."})
keywordHandler:addKeyword({'book'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, I really can recommend reading books. It might help you find what you are looking for!"})
keywordHandler:addKeyword({'gharonk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Gharonk is a very old language, only spoken by a few people. It's not a very complex language, but that does not mean that it is easy to understand!"})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Go ahead. I don't sell or buy anything!"})
keywordHandler:addKeyword({'exit'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, there is an exit for these dungeons. Just find the teleporter."})
keywordHandler:addKeyword({'library'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There is a library in here, right. I assume you are talking about this library. It's locked, as far as I know. But somewhere there has to be a key... maybe the librarian knows more?"})
keywordHandler:addKeyword({'roll'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, yes, I love them!"})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
if msgcontains(msg, 'morrin') or msgcontains(msg, 'Morrin') then
	npcHandler:say("Ah, I remember that man. We made a deal, guess about what.", 1)
	talk_state = 1

elseif talk_state == 1 and msgcontains(msg, 'key') or talk_state == 1 and  msgcontains(msg, 'Key') then
	npcHandler:say("Right! We can make the same deal if you give a fresh delicious roll. Do you have any?", 1)
	talk_state = 2	

elseif talk_state == 2 and msgcontains(msg, 'yes') or talk_state == 1 and  msgcontains(msg, 'Yes') then
	if doPlayerRemoveItem(cid, 2690, 1) == true then
	npcHandler:say("Oh, fine! Here you are.", 1)
	KEY = doPlayerAddItem(cid, 2088, 1)
	doSetItemActionId(KEY, 2010)
	doSetItemSpecialDescription(KEY, "(Key: 4022)")
	else
	npcHandler:say("Hey, you do not have one!", 1)
	end
	talk_state = 0	
	
	
elseif talk_state == 2 and msgcontains(msg, '') then
	npcHandler:say("Maybe next time.", 1)
	talk_state = 0

end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())