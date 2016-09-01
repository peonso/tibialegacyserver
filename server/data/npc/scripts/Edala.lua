dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a mystic of the suns. I provide protective blessings for those in need."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Edala, pilgrim."})
keywordHandler:addKeyword({'mystic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We mystics are philosophers and healers."})
keywordHandler:addKeyword({'cenath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't consider me a member of any caste, and I don't want to talk about this matter."})
keywordHandler:addKeyword({'kuridai'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't consider me a member of any caste, and I don't want to talk about this matter."})
keywordHandler:addKeyword({'deraisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't consider me a member of any caste, and I don't want to talk about this matter."})
keywordHandler:addKeyword({'abdaisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't consider me a member of any caste, and I don't want to talk about this matter."})
keywordHandler:addKeyword({'teshial'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't consider me a member of any caste, and I don't want to talk about this matter."})
keywordHandler:addKeyword({'crunor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Crunor is great in his beauty."})
keywordHandler:addKeyword({'priyla'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The daughter of the stars is my patron."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is true that this weapon brings great power. But you should not look for power. It is wisdom you really need."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "News? I don't care about news."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

if msgcontains(msg, 'heal') then
if getCreatureHealth(cid) <= 39 then
	npcHandler:say("You are looking really bad. Let me heal your wounds.", 1)
	doCreatureAddHealth(cid, -getCreatureHealth(cid)+40)
	doSendMagicEffect(getPlayerPosition(cid), 12)
	talk_state = 0
	return true
	else
	npcHandler:say("You aren't looking really bad. Sorry, I can't help you.", 1)
	return true
	end
	talk_state = 0
end		
	if(npcHandler.focus ~= cid) then
		return false
	end	
	
if msgcontains(msg, 'bless') then
	npcHandler:say("There are five different blessings available in five sacred places. These blessings are: the spiritual shielding, the spark of the phoenix, the embrace of tibia, the fire of the suns and the wisdom of solitude.", 1)
	talk_state = 0

elseif msgcontains(msg, 'fire') or msgcontains(msg, 'sun') then
	npcHandler:say("Do you wish to receive the blessing of the two suns? It will cost you 10.000 gold, pilgrim.", 1)
	talk_state = 1394


elseif talk_state == 1394 and msgcontains(msg, 'yes') then
	if doPlayerRemoveMoney(cid, 10000) == true then
		if doPlayerAddBless(cid, 3) == true then
		npcHandler:say("Kneel down and receive the warmth of sunfire, pilgrim.", 1)
		doSendMagicEffect(getPlayerPosition(cid), 13)
		setPlayerStorageValue(cid, 30006, 1)
		talk_state = 0		
		else
		doPlayerAddMoney(cid, 10000)
		npcHandler:say("You already possess this blessing.", 1)
		talk_state = 0			
		end
	else
	npcHandler:say("Oh. You do not have enough money.", 1)
	talk_state = 0	
	end
	
elseif talk_state == 1394 and msgcontains(msg, '') then
	npcHandler:say("Ok. Suits me.", 1)
	talk_state = 0	
	
elseif msgcontains(msg, 'phoenix') then
	npcHandler:say("The spark of the phoenix is given by the dwarven priests of earth and fire in Kazordoon.", 1)
	talk_state = 0
	
elseif msgcontains(msg, 'embrace') then
	npcHandler:say("The druids north of Carlin will provide you with the embrace of tibia.", 1)
	talk_state = 0
	
elseif msgcontains(msg, 'suns') then
	npcHandler:say("You can ask for the blessing of the two suns in the suntower near Ab'Dendriel.", 1)
	talk_state = 0
	
elseif msgcontains(msg, 'wisdom') then
	npcHandler:say("Talk to the hermit Eremo on the isle of Cormaya about this blessing.", 1)
	talk_state = 0
	
elseif msgcontains(msg, 'spiritual') then
	npcHandler:say("You can ask for the blessing of spiritual shielding the whiteflower temple south of Thais.", 1)
	talk_state = 0
end	
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())