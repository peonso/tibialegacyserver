dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()						npcHandler:onThink()						end

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if msgcontains(msg, 'passage') then
	npcHandler:say('Since you are my friend now I will sail you to the isle of the kings for 10 gold. Is that okay for you?')
	talk_state = 1

		elseif msgcontains(msg,'yes') and talk_state == 1 then
		if getTilePzInfo(getPlayerPosition(cid)) == false then
			if getPlayerMoney(cid) >= 10 then
				selfSay('Have a nice trip!')
				doPlayerRemoveMoney(cid, 10)
				doTeleportThing(cid, {x=32190,y=31957,z=6})
				doSendMagicEffect(getCreaturePosition(cid), 10)
				talk_state = 0
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
		else
			npcHandler:say('First get rid of those blood stains! You are not going to ruin my vehicle!')
			talk_state = 0
	end
end
	
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())