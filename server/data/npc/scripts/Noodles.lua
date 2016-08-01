dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()						npcHandler:onThink()						end

npcHandler:setMessage(MESSAGE_GREET, '<sniff> Woof! <sniff>')
npcHandler:setMessage(MESSAGE_PLACEDINQUEUE, 'Grrr! Woof!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Woof?? <sniff> <sniff>')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Woof! <wiggle>')

keywordHandler:addKeyword({'cat','queen','eloise'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'GRRRRRRR! WOOOOOOF! WOOOOOF! WOOOOOF!'})	
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Meeep! Meeep!'})
--keywordHandler:addKeyword({'th'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = '<sniff>'})
keywordHandler:addKeyword({'ar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Woof!'})
keywordHandler:addKeyword({'bo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = '<wiggle>'})
--keywordHandler:addKeyword({'an'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Grrrr!'})
keywordHandler:addKeyword({'go'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Woof! Woof!'})
keywordHandler:addKeyword({'how are you','king','tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Wooooof! <wiggle> <wiggle> <wiggle>'})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	-- The Postman Missions Quest
	if msgcontains(msg, 'sniff banana') and getPlayerStorageValue(cid,233) == 0 then
	npcHandler:say('Woof!')
	selfGotoIdle()
	
	elseif msgcontains(msg, 'sniff banana') and getPlayerStorageValue(cid,233) == 7 and getPlayerStorageValue(cid,251) == 1 and getPlayerItemCount(cid,2219) >= 1 then
	npcHandler:say('<sniff> <sniff>')
	topic = 2
	
	elseif msgcontains(msg, 'sniff fur') and getPlayerStorageValue(cid,233) == 0 then
	npcHandler:say('Woof!')
	selfGotoIdle()
	
	elseif msgcontains(msg, 'sniff fur') and getPlayerStorageValue(cid,233) == 7 and getPlayerStorageValue(cid,251) == 1 and getPlayerItemCount(cid,2220) >= 1 then
	npcHandler:say('<sniff> <sniff>')
	topic = 2

	elseif msgcontains(msg, 'sniff cheese') and getPlayerStorageValue(cid,233) == 0 then
	npcHandler:say('Woof!')
	selfGotoIdle()
	
	elseif msgcontains(msg, 'sniff cheese') and getPlayerStorageValue(cid,233) == 7 and getPlayerStorageValue(cid,251) == 1 and getPlayerItemCount(cid,2235) >= 1 then
	npcHandler:say('<sniff> <sniff>')
	topic = 3
	
	elseif msgcontains(msg, 'sniff banana') and getPlayerStorageValue(cid,233) == 7 and getPlayerStorageValue(cid,251) == 2 and getPlayerItemCount(cid,2219) >= 1 then
	npcHandler:say('<sniff> <sniff>')
	topic = 2

	elseif msgcontains(msg, 'sniff fur') and getPlayerStorageValue(cid,233) == 7 and getPlayerStorageValue(cid,251) == 2 and getPlayerItemCount(cid,2220) >= 1 then
	npcHandler:say('<sniff> <sniff>')
	topic = 3
	
	elseif msgcontains(msg, 'sniff cheese') and getPlayerStorageValue(cid,233) == 7 and getPlayerStorageValue(cid,251) == 2 and getPlayerItemCount(cid,2235) >= 1 then
	npcHandler:say('<sniff> <sniff>')
	topic = 2
		
	elseif msgcontains(msg, 'sniff banana') and getPlayerStorageValue(cid,233) == 7 and getPlayerStorageValue(cid,251) == 3 and getPlayerItemCount(cid,2219) >= 1 then
	npcHandler:say('<sniff> <sniff>')
	topic = 3

	elseif msgcontains(msg, 'sniff fur') and getPlayerStorageValue(cid,233) == 7 and getPlayerStorageValue(cid,251) == 3 and getPlayerItemCount(cid,2220) >= 1 then
	npcHandler:say('<sniff> <sniff>')
	topic = 2
	
	elseif msgcontains(msg, 'sniff cheese') and getPlayerStorageValue(cid,233) == 7 and getPlayerStorageValue(cid,251) == 3 and getPlayerItemCount(cid,2235) >= 1 then
	npcHandler:say('<sniff> <sniff>')
	topic = 2
	
	elseif topic == 2 and msgcontains(msg, 'like that') then
	npcHandler:say('Woof!')
	topic = 0
	
	elseif topic == 3 and msgcontains(msg, 'like that') then
	npcHandler:say('Meeep! Grrrrr! <spits>')
	setPlayerStorageValue(cid,233,8)
	topic = 0
	end

	return true
end	
	
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())