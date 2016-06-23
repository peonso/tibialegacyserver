dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

	function FocusModule:init(handler)
	FOCUS_GREETSWORDS = {'charach'}
	FOCUS_FAREWELLSWORDS = {'xbxyxeewzzxxwe'}
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

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

if msgcontains(msg, 'goshak charcha') then
	npcHandler:say("Maruk goshak ta?", 1)
	talk_state = 101
elseif msgcontains(msg, 'goshak burka bata') then
npcHandler:say("Maruk goshak ta?", 1)
talk_state = 103
elseif msgcontains(msg, 'goshak burka') then
	npcHandler:say("Maruk goshak ta?", 1)
	talk_state = 102						
elseif msgcontains(msg, 'goshak hakhak') then
	npcHandler:say("Maruk goshak ta?", 1)
	talk_state = 104
elseif msgcontains(msg, 'goshak bora') then
	npcHandler:say("Maruk goshak ta?", 1)
	talk_state = 105
elseif msgcontains(msg, 'goshak tulak bora') then
	npcHandler:say("Maruk goshak ta?", 1)
	talk_state = 106
elseif msgcontains(msg, 'goshak grofa') then
	npcHandler:say("Maruk goshak ta?", 1)
	talk_state = 107
elseif msgcontains(msg, 'goshak donga') then
	npcHandler:say("Maruk goshak ta?", 1)
	talk_state = 108	
elseif msgcontains(msg, 'goshak batuk') then
	npcHandler:say("Ahhhh, maruk goshak batuk?", 1)
	talk_state = 109
elseif msgcontains(msg, 'goshak pixo') then
	npcHandler:say("Maruk goshak tefar pixo ul batuk?", 1)
	talk_state = 110
elseif talk_state == 101 and msgcontains(msg, 'mok') == TRUE then
	if doPlayerRemoveMoney(cid, 25) then
	npcHandler:say("Maruk rambo zambo!", 1)
	doPlayerAddItem(cid, ID_sabre)
	talk_state = 806
	else
	npcHandler:say("Maruk nixda!", 1)
	talk_state = 806
	end
elseif talk_state == 102 and msgcontains(msg, 'mok') then
	if doPlayerRemoveMoney(cid, 30) == TRUE then
	npcHandler:say("Maruk rambo zambo!", 1)
	doPlayerAddItem(cid, ID_shortsword)
	talk_state = 806
	else
	npcHandler:say("Maruk nixda!", 1)
	talk_state = 806
	end
elseif talk_state == 103 and msgcontains(msg, 'mok') then
	if doPlayerRemoveMoney(cid, 85) == TRUE then
	npcHandler:say("Maruk rambo zambo!", 1)
	doPlayerAddItem(cid, ID_sword)
	talk_state = 806
	else
	npcHandler:say("Maruk nixda!", 1)
	talk_state = 806
	end
elseif talk_state == 104 and msgcontains(msg, 'mok') then
	if doPlayerRemoveMoney(cid, 85) == TRUE then
	npcHandler:say("Maruk rambo zambo!", 1)
	doPlayerAddItem(cid, ID_hatchet)
	talk_state = 806
	else
	npcHandler:say("Maruk nixda!", 1)
	talk_state = 806
	end
elseif talk_state == 105 and msgcontains(msg, 'mok') then
	if doPlayerRemoveMoney(cid, 25) == TRUE then
	npcHandler:say("Maruk rambo zambo!", 1)
	doPlayerAddItem(cid, ID_leatherarmor)
	talk_state = 806
	else
	npcHandler:say("Maruk nixda!", 1)
	talk_state = 806
	end	
elseif talk_state == 106 and msgcontains(msg, 'mok') then
	if doPlayerRemoveMoney(cid, 90) == TRUE then
	npcHandler:say("Maruk rambo zambo!", 1)
	doPlayerAddItem(cid, ID_studdedarmor)
	talk_state = 806
	else
	npcHandler:say("Maruk nixda!", 1)
	talk_state = 806
	end	
elseif talk_state == 107 and msgcontains(msg, 'mok') then
	if doPlayerRemoveMoney(cid, 60) == TRUE then
	npcHandler:say("Maruk rambo zambo!", 1)
	doPlayerAddItem(cid, ID_studdedhelmet)
	talk_state = 806
	else
	npcHandler:say("Maruk nixda!", 1)
	talk_state = 806
	end	
elseif talk_state == 108 and msgcontains(msg, 'mok') then
	if doPlayerRemoveMoney(cid, 65) == TRUE then
	npcHandler:say("Maruk rambo zambo!", 1)
	doPlayerAddItem(cid, ID_brassshield)
	talk_state = 806
	else
	npcHandler:say("Maruk nixda!", 1)
	talk_state = 806
	end	
elseif talk_state == 109 and msgcontains(msg, 'mok') then
	if doPlayerRemoveMoney(cid, 400) == TRUE then
	npcHandler:say("Maruk rambo zambo!", 1)
	doPlayerAddItem(cid, ID_bow)
	talk_state = 806
	else
	npcHandler:say("Maruk nixda!", 1)
	talk_state = 806
	end	
elseif talk_state == 110 and msgcontains(msg, 'mok') then
	if doPlayerRemoveMoney(cid, 30) == TRUE then
	npcHandler:say("Maruk rambo zambo!", 1)
	doPlayerAddItem(cid, ID_arrow, 10)
	talk_state = 806
	else
	npcHandler:say("Maruk nixda!", 1)
	talk_state = 806
	end
	
end		
    return TRUE
end

keywordHandler:addKeyword({'ikem'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ikem pashak porak, bata, dora. Ba goshak maruk?"})
keywordHandler:addKeyword({'goshak porak'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ikem pashak charcha, burka, burka bata, hakhak. Ba goshak maruk?"})
keywordHandler:addKeyword({'goshak bata'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ikem pashak aka bora, tulak bora, grofa. Ba goshak maruk?"})
keywordHandler:addKeyword({'goshak dora'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ikem pashak donga. Ba goshak maruk?"})
keywordHandler:addKeyword({'yes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "huh?"})
keywordHandler:addKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "huh?"})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())