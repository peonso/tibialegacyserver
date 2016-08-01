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
	if getPlayerSex(cid) == 1 then
	npcHandler:setMessage(MESSAGE_GREET, "Welcome home, Sir ".. getPlayerName(cid) ..".")
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Welcome home, Lady ".. getPlayerName(cid) ..".")
	return true
	end	
end	

npcHandler:setCallback(CALLBACK_GREET, greetCallback)

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am miss Penny, your secretary."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm your secretary. I'm organizing all those criminal records and your mail."})
keywordHandler:addKeyword({'criminal'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "<Sigh> It's an evil world, isn't it?"})
keywordHandler:addKeyword({'record'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "<Sigh> It's an evil world, isn't it?"})
keywordHandler:addKeyword({'mail'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can get a letter from me."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
if msgcontains(msg, 'letter') then
	doPlayerAddItem(cid, 2597, 1)
	npcHandler:say("Here you are.", 1)
	talk_state = 0

end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())