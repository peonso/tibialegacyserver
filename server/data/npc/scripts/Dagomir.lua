dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

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
	FOCUS_GREETSWORDS = {'hi', 'hello'}
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

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

if msgcontains(msg, 'hi') or msgcontains(msg, 'hello') or msgcontains(msg, 'Hi') or msgcontains(msg, 'Hello') then
	npcHandler:say("Wha... what?? HOW DARE YOU!!?? LEAVE ME ALONE ON MY TOILET AT ONCE!", 1)

end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())