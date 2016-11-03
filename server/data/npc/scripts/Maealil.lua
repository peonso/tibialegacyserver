dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a mystic."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am known as Maealil."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't own one of those little machines."})
keywordHandler:addKeyword({'mystic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a philosopher and healer."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are an ancient race, abandoned by the gods and doomed to find our way alone."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They cultivate earth but don't understand it."})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are somewhat orcish in their nature."})
keywordHandler:addKeyword({'cenath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My parents were Deraisim but joined the Cenath caste before my birth."})
keywordHandler:addKeyword({'kuridai'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hope they don't do something foolish one day."})
keywordHandler:addKeyword({'deraisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Unfortunately they are to busy to care for the finer things in life."})
keywordHandler:addKeyword({'abdaisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They should join our town for their and our own safety."})
keywordHandler:addKeyword({'teshial'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would love to learn more about the Teshial."})
keywordHandler:addKeyword({'dream'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would love to learn more about the Teshial."})
keywordHandler:addKeyword({'crunor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The great tree is the beginning for all things living and Priyla helps us to understand that."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Only another servant of evil."})
keywordHandler:addKeyword({'priyla'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The daughter of the stars gives us knowledge and teaches us magic."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Is that a new kind of bug the Deraisim found?"})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't know anything of importance."})
keywordHandler:addKeyword({'druid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Druids are great healers."})
keywordHandler:addKeyword({'sorcerer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They understand so few..."})
keywordHandler:addKeyword({'spellbook'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have none here."})
keywordHandler:addKeyword({'spell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I teach the spells 'Light Healing', 'Antidote', 'Antidote Rune', 'Intense Healing', 'Intense Healing Rune, 'Ultimate Healing', and 'Ultimate Healing Rune'."})
keywordHandler:addKeyword({'bles'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The lifeforce of this world is waning. There are no more blessings avaliable on this world."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can heal you or even teach you some spells of healing."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

if msg == "heal" then
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
    return true
end

if(npcHandler.focus ~= cid) then
	return false
end	
	if getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 3 or getPlayerVocation(cid) == 6 or getPlayerVocation(cid) == 7 then
	else
		if msgcontains(msg, '') then
		npcHandler:say("Sorry, I only teach paladins and druids!", 1)
		return false
		end
	end
	
--name the spell--
if msgcontains(msg, 'light healing') or msgcontains(msg, 'Light healing') then
	spellprice = 170
	spellvoc = {1, 2, 3, 4, 5, 6, 7, 8}
	spellname = "light healing"
	spellmagiclevel = 1
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for all vocations.", 1)
		talk_state = 0
		end	

elseif msgcontains(msg, 'ultimate healing rune') or msgcontains(msg, 'Ultimate healing rune') then
	spellprice = 1500
	spellvoc = {2, 6}
	spellname = "ultimate healing rune"
	spellmagiclevel = 11
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for druids.", 1)
		talk_state = 0
		end		

elseif msgcontains(msg, 'ultimate healing') or msgcontains(msg, 'Ultimate healing') then
	spellprice = 1000
	spellvoc = {1, 2, 3, 5, 6, 7}
	spellname = "ultimate healing"
	spellmagiclevel = 8
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
		talk_state = 0
		end
		
elseif msgcontains(msg, 'antidote rune') or msgcontains(msg, 'Antidote rune') then
	spellprice = 600
	spellvoc = {2, 6}
	spellname = "antidote rune"
	spellmagiclevel = 5
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for druids.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'intense healing rune') or msgcontains(msg, 'intense healing rune') then
	spellprice = 600
	spellvoc = {2, 6}
	spellname = "intense healing rune"
	spellmagiclevel = 4
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for druids.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'intense healing') or msgcontains(msg, 'Intense healing') then
	spellprice = 350
	spellvoc = {1, 2, 3, 5, 6, 7}
	spellname = "intense healing"
	spellmagiclevel = 2
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'antidote') or msgcontains(msg, 'Antidote') then
	spellprice = 150
	spellvoc = {1, 2, 3, 4, 5, 6, 7, 8}
	spellname = "antidote"
	spellmagiclevel = 2
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for all vocations.", 1)
		talk_state = 0
		end
--End of Give spell--
	
--System that does the job after confirm spell--
elseif talk_state == 8754 and msgcontains(msg, 'yes') then
	if isInArray(spellvoc, getPlayerVocation(cid)) then
		if getPlayerMagLevel(cid) >= spellmagiclevel then
			if not getPlayerLearnedInstantSpell(cid, spellname) then
				if doPlayerRemoveMoney(cid, spellprice) == true then
				playerLearnInstantSpell(cid, spellname)
				doSendMagicEffect(getPlayerPosition(cid), 14)
				npcHandler:say("Here you are. Look in your spellbook for the pronounciation of this spell.", 1)
				talk_state = 0
				else
				npcHandler:say("Oh. You do not have enough money.", 1)
				talk_state = 0			
				end
			else
			npcHandler:say("You already know how to cast this spell.", 1)
			talk_state = 0	
			end
		else
		npcHandler:say("You must have magic level ".. spellmagiclevel .." or better to learn this spell!", 1)
		talk_state = 0
		end
	end
elseif talk_state == 8754 and msgcontains(msg, '') then
npcHandler:say("Maybe next time.", 1)
talk_state = 0
--End of the System that does the job after confirm spell--
	
end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())