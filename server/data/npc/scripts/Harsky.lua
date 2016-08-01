
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()	npcHandler:onThink()
if getWorldUpTime() == 5 then
doMoveCreature(getNpcCid(  ), 0)
elseif getWorldUpTime() == 10 then
doMoveCreature(getNpcCid(  ), 2)
end
end

	function FocusModule:init(handler)
	FOCUS_GREETSWORDS = {'codezxwqhu'}
	FOCUS_FAREWELLSWORDS = {'caodeezxhwqhu'}
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
if msgcontains(msg, 'hello king') or msgcontains(msg, 'hail king') or msgcontains(msg, 'salutations king') then
	npcHandler:say("HAIL TO THE KING!", 1)
	talk_state = 0
	
elseif msgcontains(msg, 'hi') or msgcontains(msg, 'hello') then
	npcHandler:say("MIND YOUR MANNERS COMMONER! To address the king greet with his title!", 1)
	talk_state = 0

elseif msgcontains(msg, 'bye') or msgcontains(msg, 'farewell') then
	npcHandler:say("LONG LIVE THE KING! You may leave now!", 1)
	talk_state = 0

elseif msgcontains(msg, "idiot") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "asshole") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "retard") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "sucker") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "fag") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "fuck") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "shut up") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "shit") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0		
	elseif msgcontains(msg, "ugly") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "smell") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "blow") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "cock") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "dick") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "pussy") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0	
	elseif msgcontains(msg, "vagina") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "bitch") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
			elseif msgcontains(msg, "nigger") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +1)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	
end		
    return true
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())