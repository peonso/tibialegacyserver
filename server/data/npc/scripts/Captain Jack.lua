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
	
	if msgcontains(msg, 'continent') then
	npcHandler:say('Friends of Dalbrect are my friends too! So you are looking for a passage to the continent for 20 gold?')
	talk_state = 1

	elseif msgcontains(msg,'yes') and talk_state == 1 then
		if getTilePzInfo(getPlayerPosition(cid)) == FALSE then
			if getPlayerMoney(cid) >= 20 then
				selfSay('Have a nice trip!')
				doPlayerRemoveMoney(cid, 20)
				doTeleportThing(cid, {x=32205,y=31756,z=6})
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