dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end


keywordHandler:addKeyword({'passage'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can fly you to Femor Hills or Darashia if you like. Where do you want to go?"})
keywordHandler:addKeyword({'go'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can fly you to Femor Hills or Darashia if you like. Where do you want to go?"})
keywordHandler:addKeyword({'transport'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can fly you to Femor Hills or Darashia if you like. Where do you want to go?"})
keywordHandler:addKeyword({'ride'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can fly you to Femor Hills or Darashia if you like. Where do you want to go?"})
keywordHandler:addKeyword({'trip'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can fly you to Femor Hills or Darashia if you like. Where do you want to go?"})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can fly you to Femor Hills or Darashia if you like. Where do you want to go?"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's |TIME| right now."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if msgcontains(msg, 'hill') or msgcontains(msg, 'femor') then
	npcHandler:say('Do you want to get a ride to the Femor Hills for 60 gold?')
	talk_state = 1
	
	elseif msgcontains(msg,'yes') and talk_state == 1 then
		if getTilePzInfo(getPlayerPosition(cid)) == false then
			if getPlayerMoney(cid) >= 60 then
				selfSay('Hold on!')
				doPlayerRemoveMoney(cid, 60)
				doTeleportThing(cid, {x=32535,y=31837,z=4})
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
	
	if msgcontains(msg, 'darashia') or msgcontains(msg, 'Darashia') or msgcontains(msg, 'darama') or msgcontains(msg, 'Darama') then
	npcHandler:say('Do you want to get a ride to Darashia on Darama for 40 gold?')
	talk_state = 2
	
	elseif msgcontains(msg,'yes') and talk_state == 2 then
		if getTilePzInfo(getPlayerPosition(cid)) == false then
			if getPlayerMoney(cid) >= 40 then
				selfSay('Hold on!')
				doPlayerRemoveMoney(cid, 40)
				doTeleportThing(cid, {x=33269,y=32441,z=6})
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