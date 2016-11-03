dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

function greetCallback(cid)
	if getPlayerVocation(cid) == 3 or getPlayerVocation(cid) == 7 then
	npcHandler:setMessage(MESSAGE_GREET, "Hi, ".. getPlayerName(cid) .."! What can I do for you?")
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Welcome to the paladins, ".. getPlayerName(cid) .."! Can I help you?")
	return true
	end	
end

npcHandler:setCallback(CALLBACK_GREET, greetCallback)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the leader of the Paladins. I help our members."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Elane. I am the famous leader of the Paladins."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oops. I have forgotten my watch."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "King Tibianus is a wise ruler."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "King Tibianus is a wise ruler."})
keywordHandler:addKeyword({'quentin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A humble monk and a wise man."})
keywordHandler:addKeyword({'lynda'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hm, a litte too nice for my taste."})
keywordHandler:addKeyword({'harkath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A fine warrior and a skilled general."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some paladins serve in the kings army."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Someday I will slay that bastard!"})
keywordHandler:addKeyword({'general'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Harkath Bloodblade is the royal general."})
keywordHandler:addKeyword({'sam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Strong man. But a little shy."})
keywordHandler:addKeyword({'gorn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He sells a lot of useful equipment."})
keywordHandler:addKeyword({'frodo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The alcohol he sells shrouds the mind and the eye."})
keywordHandler:addKeyword({'galuna'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One of the most important members of our guild. She makes all the bows and arrows we need."})
keywordHandler:addKeyword({'bozo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "How spineless do you have to be to become a jester?"})
keywordHandler:addKeyword({'baxter'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He has some potential."})
keywordHandler:addKeyword({'oswald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If there wouldn't be higher powers to protect him..."})
keywordHandler:addKeyword({'sherry'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The McRonalds are simple farmers."})
keywordHandler:addKeyword({'donald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The McRonalds are simple farmers."})
keywordHandler:addKeyword({'mcronald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The McRonalds are simple farmers."})
keywordHandler:addKeyword({'elane'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes?"})
keywordHandler:addKeyword({'muriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just another arrogant sorcerer."})
keywordHandler:addKeyword({'gregor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He and his guildfellows lack the grace of a true warrior."})
keywordHandler:addKeyword({'marvik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A skilled healer, that's for sure."})
keywordHandler:addKeyword({'lugri'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A follower of evil that will get what he deserves one day."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A weapon of myth. I don't believe that this weapon exists."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a paladin, not a storyteller."})
keywordHandler:addKeyword({'member'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Every paladin profits from his vocation. It has many advantages to be a paladin."})
keywordHandler:addKeyword({'profit'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We will help you to improve your skills. Besides I offer spells for paladins."})
keywordHandler:addKeyword({'advantage'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We will help you to improve your skills. Besides I offer spells for paladins."})
keywordHandler:addKeyword({'vocation'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Your vocation is your profession. There are four vocations in Tibia: Paladins, knights, sorcerers, and druids."})
keywordHandler:addKeyword({'paladin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Paladins are great warriors and magicians. Besides that we are excellent missile fighters. Many people in Tibia want to join us."})
keywordHandler:addKeyword({'skill'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Paladins are great warriors and magicians. Besides that we are excellent missile fighters. Many people in Tibia want to join us."})
keywordHandler:addKeyword({'warrior'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Of course, we aren't as strong as knights, but no druid or sorcerer will ever defeat a paladin with a sword."})
keywordHandler:addKeyword({'magician'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are many magic spells and runes paladins can use."})
keywordHandler:addKeyword({'spellbook'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In a spellbook your spells are listed. There you will find the pronunciation of each spell. If you want to buy one, visit Xodet in his magic shop."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if getPlayerVocation(cid) == 3 or getPlayerVocation(cid) == 7 then
	else
		if msgcontains(msg, '') then
		npcHandler:say("Sorry, I only sell spells to paladins.", 1)
		return false
		end
	end
	
--name the spell--
if msgcontains(msg, 'find person') or msgcontains(msg, 'Find person') then
	spellprice = 80
	spellvoc = {1, 2, 3, 4, 5, 6, 7, 8}
	spellname = "find person"
	spellmagiclevel = 0
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for all vocations.", 1)
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

elseif msgcontains(msg, 'invisible') or msgcontains(msg, 'Invisible') then
	spellprice = 1000
	spellvoc = {1, 2, 3, 5, 6, 7}
	spellname = "invisible "
	spellmagiclevel = 15
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'explosive arrow') or msgcontains(msg, 'Explosive arrow') then
	spellprice = 1000
	spellvoc = {3, 7}
	spellname = "explosive arrow"
	spellmagiclevel = 10
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for royal paladins.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'destroy field') or msgcontains(msg, 'Destroy field') then
	spellprice = 350
	spellvoc = {1, 2, 3, 5, 6, 7}
	spellname = "destroy field"
	spellmagiclevel = 6
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'poison arrow') or msgcontains(msg, 'Poison arrow') then
	spellprice = 700
	spellvoc = {3, 7}
	spellname = "poison arrow"
	spellmagiclevel = 5
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for paladins.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'fireball') or msgcontains(msg, 'fireball') then
	spellprice = 800
	spellvoc = {1, 2, 3, 5, 6, 7}
	spellname = "fireball"
	spellmagiclevel = 5
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'magic shield') or msgcontains(msg, 'magic shield') then
	spellprice = 450
	spellvoc = {1, 2, 3, 5, 6, 7}
	spellname = "magic shield"
	spellmagiclevel = 4
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'heavy magic missile') or msgcontains(msg, 'Heavy magic missile') then
	spellprice = 600
	spellvoc = {1, 2, 3, 5, 6, 7}
	spellname = "heavy magic missile"
	spellmagiclevel = 3
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'great light') or msgcontains(msg, 'Great light') then
	spellprice = 500
	spellvoc = {1, 2, 3, 4, 5, 6, 7, 8}
	spellname = "great light"
	spellmagiclevel = 3
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for all vocations.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'conjure arrow') or msgcontains(msg, 'Conjure arrow') then
	spellprice = 450
	spellvoc = {3, 7}
	spellname = "conjure arrow"
	spellmagiclevel = 2
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for paladins.", 1)
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
		
elseif msgcontains(msg, 'light magic missile') or msgcontains(msg, 'Light magic missile') then
	spellprice = 200
	spellvoc = {1, 2, 3, 5, 6, 7}
	spellname = "light magic missile"
	spellmagiclevel = 1
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'light healing') or msgcontains(msg, 'Light healing') then
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
		
elseif msgcontains(msg, 'create food') or msgcontains(msg, 'Create food') then
	spellprice = 150
	spellvoc = {2, 3, 6, 7}
	spellname = "create food"
	spellmagiclevel = 0
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for druids and paladins.", 1)
		talk_state = 0
		end	
	
elseif msgcontains(msg, 'light') or msgcontains(msg, 'Light') then
	spellprice = 100
	spellvoc = {1, 2, 3, 4, 5, 6, 7, 8}
	spellname = "light"
	spellmagiclevel = 0
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
	
elseif msgcontains(msg, 'spell') or msgcontains(msg, 'Spell') then
npcHandler:say("I sell 'find person', 'light', 'create food', 'light healing', 'light magic missile', 'antidote', 'intense healing', 'conjure arrow', 'great light', 'heavy magic missile', 'magic shield' and. ...", 1)
npcHandler:say("'fireball', 'poison arrow', 'destroy field', 'ultimate healing', 'explosive arrow' and 'invisible'.", 5)
talk_state = 0

elseif msgcontains(msg, 'missile') or msgcontains(msg, 'Missile') then
npcHandler:say("Paladins are the best missile fighters in Tibia!", 1)
talk_state = 0

end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())