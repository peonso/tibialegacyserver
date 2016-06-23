dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end


keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Ishebad the chosen."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time does not matter to the undead."})
keywordHandler:addKeyword({'temple'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The temple will take care of your spiritual matters."})
keywordHandler:addKeyword({'pharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our immortal ruler, may he be blessed, is the keeper of our enlightenment and our saviour."})
keywordHandler:addKeyword({'ashmunrah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The fallen pharaoh did not see it was time to step back and let his son rule. So he met the fate that he deserved."})
keywordHandler:addKeyword({'scarab'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The scarabs are keepers of secrets. Some secrets are not ment for your mortals. Ever keep that in mind."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This world just awaits the wisdom of our pharaoh. It needs that wisdom and will soon learn to appreciate it."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Other cities are of no importance. Ankrahmun will become the center of the known world anyways."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Other cities are of no importance. Ankrahmun will become the center of the known world anyways."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Other cities are of no importance. Ankrahmun will become the center of the known world anyways."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Other cities are of no importance. Ankrahmun will become the center of the known world anyways."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Other cities are of no importance. Ankrahmun will become the center of the known world anyways."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Other cities are of no importance. Ankrahmun will become the center of the known world anyways."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The rule of our beloved pharaoh will soon spread this continent and one day the whole known world."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This village is so insignificant that our wise pharaoh has choosen to ignore it."})
keywordHandler:addKeyword({'Ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our city will become the capital of a worldwide empire."})
keywordHandler:addKeyword({'Arkhothep'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The pharaoh wants not to be disturbed. I am his grand vizier and responsible for the daily affairs of the city and promotions of heroes."})
keywordHandler:addKeyword({'pharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The pharaoh wants not to be disturbed. I am his grand vizier and responsible for the daily affairs of the city and promotions of heroes."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The pharaoh wants not to be disturbed. I am his grand vizier and responsible for the daily affairs of the city and promotions of heroes."})
keywordHandler:addKeyword({'mortality'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you please our pharaoh, he will reward you and free you from your mortality."})
keywordHandler:addKeyword({'ascension'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Consult a priest to learn how you could achieve ascension."})
keywordHandler:addKeyword({"Akh'rah Uthun"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Consult a priest to learn how you could achieve ascension."})
keywordHandler:addKeyword({'Akh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Consult a priest to learn how you could achieve ascension."})
keywordHandler:addKeyword({'Rah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Consult a priest to learn how you could achieve ascension."})
keywordHandler:addKeyword({'uthun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Consult a priest to learn how you could achieve ascension."})
keywordHandler:addKeyword({'undea'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Undeath is only for the choosen."})
keywordHandler:addKeyword({'mourn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You mortals are all to be mourned for your miserable existance."})
keywordHandler:addKeyword({'eremo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is said that he lives on a small island near Edron. Maybe the people there know more about him."})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

if msgcontains(msg, 'promotion') or msgcontains(msg, 'promote') then
	npcHandler:say("Do you want to be promoted in your vocation for 20000 gold?", 1)
	talk_state = 2578	

elseif talk_state == 2578 and msgcontains(msg, 'yes') then
	if getPlayerVocation(cid) >= 1 and getPlayerVocation(cid) <= 4 then
		if getPlayerLevel(cid) >= 20 then
			if isPremium(cid) == TRUE then
				if doPlayerRemoveMoney(cid, 20000) == TRUE then
				doPlayerSetVocation(cid, getPlayerVocation(cid)+4)
				CheckPlayerBlessings(cid)
				npcHandler:say("Congratulations! You are now promoted. Visit the sage Eremo for new spells.", 1)
				talk_state = 0		
				else
				npcHandler:say("You do not have enough money.", 1)
				talk_state = 0			
				end
			else
			npcHandler:say("You need a premium account in order to promote.", 1)
			talk_state = 0				
			end
		else
		npcHandler:say("You need to be at least level 20 in order to be promoted.", 1)
		talk_state = 0			
		end
	else
	npcHandler:say("You are already promoted.", 1)
	talk_state = 0	
	end

elseif msgcontains(msg, '') then
	npcHandler:say("I don't understand? are you trying to say \"promote\" or something?", 1)
	talk_state = 0	
end	
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
