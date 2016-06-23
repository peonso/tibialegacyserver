local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)	npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)	npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg) end
function onThink()	npcHandler:onThink() end

function greetCallback(cid)
	if getPlayerItemCount(cid, 2787) >= 1 then
		npcHandler:say('AHHH MUSHRRROOOMSSS! NOW MY PAIN WILL BE EASSSED FOR A WHILE! TAKE THISS AND LEAVE THE DRAGONSSS\' CEMETERY AT ONCE!')
		doPlayerRemoveItem(cid,2787, 1)
		doPlayerAddItem(cid,2194, 1)
		setPlayerStorageValue(cid, 66, 1)
	else
		npcHandler:say('LEAVE THE DRAGONS\' CEMETERY AT ONCE!')
		return false
	end
end

npcHandler:setCallback(CALLBACK_GREET, greetCallback)	
npcHandler:addModule(FocusModule:new())