

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
 
 function onThink()	npcHandler:onThink()
 end		
 
	function FocusModule:init(handler)
	FOCUS_GREETSWORDS = {'hi queen', 'hello queen', 'hail queen', 'salutations'}
	FOCUS_FAREWELLSWORDS = {'bye', 'farewell'}
		self.npcHandler = handler
		for i, word in pairs(FOCUS_GREETSWORDS) do
			local obj = {}
			table.insert(obj, word)
			obj.callback = FOCUS_GREETSWORDS.callback or FocusModule.messageMatcher
			handler.keywordHandler:addKeyword(obj, FocusModule.onGreet, {module = self})
		end
		
		for i, word in pairs(FOCUS_FAREWELLSWORDS) do
			local obj = {}
			table.insert(obj, word)
			obj.callback = FOCUS_FAREWELLSWORDS.callback or FocusModule.messageMatcher
			handler.keywordHandler:addKeyword(obj, FocusModule.onFarewell, {module = self})
		end
		
		return true
	end

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
if msgcontains(msg, "hello") or msgcontains(msg, "hi") then
npcHandler:say("MIND YOUR MANNERS COMMONER! To address the queen greet with her title!", 1)

elseif msgcontains(msg, "bye") or msgcontains(msg, "farewell") then
npcHandler:say("LONG LIVE THE QUEEN! You may leave now!", 1)

	elseif msgcontains(msg, "idiot") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	elseif msgcontains(msg, "asshole") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	elseif msgcontains(msg, "retard") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	elseif msgcontains(msg, "sucker") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	elseif msgcontains(msg, "fag") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)	
	elseif msgcontains(msg, "fuck") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	elseif msgcontains(msg, "shut up") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)	
	elseif msgcontains(msg, "shit") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)		
	elseif msgcontains(msg, "ugly") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	elseif msgcontains(msg, "smell") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	elseif msgcontains(msg, "blow") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	elseif msgcontains(msg, "cock") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	elseif msgcontains(msg, "dick") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	elseif msgcontains(msg, "pussy") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)	
	elseif msgcontains(msg, "vagina") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	elseif msgcontains(msg, "bitch") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
			elseif msgcontains(msg, "nigger") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())