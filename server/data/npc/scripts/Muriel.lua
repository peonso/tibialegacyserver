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
	if getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 5 then
	npcHandler:setMessage(MESSAGE_GREET, "Welcome back, ".. getPlayerName(cid) .."!")
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Greetings, ".. getPlayerName(cid) .."! Looking for wisdom and power, eh?")
	return true
	end	
end	
npcHandler:setCallback(CALLBACK_GREET, greetCallback)


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the second sorcerer. I am selling spellbooks and spells."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You may call me Muriel."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time is unimportant."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king is a patron of the arcane arts."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king is a patron of the arcane arts."})
keywordHandler:addKeyword({'quentin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He has some minor magic powers."})
keywordHandler:addKeyword({'lynda'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Pretty and compentent."})
keywordHandler:addKeyword({'harkath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He's not as dumb as the average fighter but a warrior nonetheless."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We supply the army with some sorcerer recruits now and then."})
keywordHandler:addKeyword({'general'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We supply the army with some sorcerer recruits now and then."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I wonder how he actually got this awesome powers."})
keywordHandler:addKeyword({'sam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A simple smith."})
keywordHandler:addKeyword({'xodet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He has our permission to sell mana fluids."})
keywordHandler:addKeyword({'frodo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A bar is no place that suits a scholar like me."})
keywordHandler:addKeyword({'elane'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She is quite proud of her puny magic tricks."})
keywordHandler:addKeyword({'muriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't like jokes about my name!"})
keywordHandler:addKeyword({'gregor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Knights! Childs with swords. Not worth of any attention."})
keywordHandler:addKeyword({'marvik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Marvik and his Sorcerers lack spells with real power."})
keywordHandler:addKeyword({'bozo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He's not a jester but a poor joke himself."})
keywordHandler:addKeyword({'baxter'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't know him."})
keywordHandler:addKeyword({'oswald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Only his boss keeps him from being burned to ashes."})
keywordHandler:addKeyword({'sherry'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Simple farmers."})
keywordHandler:addKeyword({'donald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Simple farmers."})
keywordHandler:addKeyword({'mcronald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Simple farmers."})
keywordHandler:addKeyword({'lugri'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is rumoured to posses some secrets our guild might find ... interesting."})
keywordHandler:addKeyword({'lungelen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She keeps the whole wisdom of our ancestors and leads our guild."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The enchantements on this weapon must be awesome."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our guild is working on a new spell, but I won't give away any details yet."})
keywordHandler:addKeyword({'flaming'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These pits, you refer to, might be the legendary 'Pits of Inferno', also known as the 'Nightmare Pits'."})
keywordHandler:addKeyword({'inferno'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are rumoured to be hidden somewhere in the Plains of Havoc, far to the east."})
keywordHandler:addKeyword({'nightmare'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are rumoured to be hidden somewhere in the Plains of Havoc, far to the east."})
keywordHandler:addKeyword({'wisdom'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The wisdom of spellcasting is the source of power."})
keywordHandler:addKeyword({'ancestor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There were many generations of sorcerers in the past. Today a lot of people want to join us."})
keywordHandler:addKeyword({'sorcerer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A sorcerer spends his lifetime studying spells to gain power."})
keywordHandler:addKeyword({'power'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Of course, power is the most important thing in the universe."})
keywordHandler:addKeyword({'vocation'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Your vocation is your profession. There are four vocations in Tibia: Sorcerers, paladins, knights, and Sorcerers."})
keywordHandler:addKeyword({'wand'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm sorry, you can find wand and rods at Xodet's magic shop."})
keywordHandler:addKeyword({'rod'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm sorry, you can find wand and rods at Xodet's magic shop."})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
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

elseif msgcontains(msg, 'creature illusion') or msgcontains(msg, 'Creature illusion') then
	spellprice = 1000
	spellvoc = {1, 2, 5, 6}
	spellname = "creature illusion"
	spellmagiclevel = 10
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
		talk_state = 0
		end

elseif msgcontains(msg, 'sudden death') or msgcontains(msg, 'Sudden death') then
	spellprice = 3000
	spellvoc = {1, 5}
	spellname = "sudden death"
	spellmagiclevel = 25
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'energy wave') or msgcontains(msg, 'Energy wave') then
	spellprice = 2500
	spellvoc = {1, 5}
	spellname = "energy wave"
	spellmagiclevel = 20
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'energy wall') or msgcontains(msg, 'Energy wall') then
	spellprice = 2500
	spellvoc = {1, 2, 5, 6}
	spellname = "energy wall"
	spellmagiclevel = 18
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'summon creature') or msgcontains(msg, 'Summon creature') then
	spellprice = 2000
	spellvoc = {1, 2, 5, 6}
	spellname = "summon creature"
	spellmagiclevel = 16
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
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
		
elseif msgcontains(msg, 'great energy beam') or msgcontains(msg, 'Great energy beam') then
	spellprice = 1800
	spellvoc = {1, 5}
	spellname = "great energy beam"
	spellmagiclevel = 14
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'fire wall') or msgcontains(msg, 'fire wall') then
	spellprice = 2000
	spellvoc = {1, 2, 5, 6}
	spellname = "fire wall"
	spellmagiclevel = 13
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'explosion') or msgcontains(msg, 'Explosion') then
	spellprice = 1800
	spellvoc = {1, 2, 5, 6}
	spellname = "explosion"
	spellmagiclevel = 12
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'poison wall') or msgcontains(msg, 'poison wall') then
	spellprice = 1600
	spellvoc = {1, 2, 5, 6}
	spellname = "poison wall"
	spellmagiclevel = 11
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'energy beam') or msgcontains(msg, 'Energy beam') then
	spellprice = 1000
	spellvoc = {1, 5}
	spellname = "energy beam"
	spellmagiclevel = 10
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'firebomb') or msgcontains(msg, 'Firebomb') then
	spellprice = 1500
	spellvoc = {1, 2, 5, 6}
	spellname = "firebomb"
	spellmagiclevel = 9
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'great fireball') or msgcontains(msg, 'Great fireball') then
	spellprice = 1200
	spellvoc = {1, 2, 5, 6}
	spellname = "great fireball"
	spellmagiclevel = 9
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
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
		
elseif msgcontains(msg, 'fire wave') or msgcontains(msg, 'Fire wave') then
	spellprice = 850
	spellvoc = {1, 5}
	spellname = "fire wave"
	spellmagiclevel = 7
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers.", 1)
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
		
elseif msgcontains(msg, 'energy field') or msgcontains(msg, 'Energy field') then
	spellprice = 700
	spellvoc = {1, 2, 5, 6}
	spellname = "energy field"
	spellmagiclevel = 5
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
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
		
elseif msgcontains(msg, 'fire field') or msgcontains(msg, 'Fire field') then
	spellprice = 500
	spellvoc = {1, 2, 5, 6}
	spellname = "fire field"
	spellmagiclevel = 3
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
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
		
elseif msgcontains(msg, 'poison field') or msgcontains(msg, 'Poison field') then
	spellprice = 300
	spellvoc = {1, 2, 5, 6}
	spellname = "poison field"
	spellmagiclevel = 2
		if isInArray(spellvoc, getPlayerVocation(cid)) then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
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
if getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 5 then
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
else
npcHandler:say("Sorry, I only sell spells to sorcerers!", 1)
talk_state = 0
end
elseif talk_state == 8754 and msgcontains(msg, '') then
npcHandler:say("Maybe next time.", 1)
talk_state = 0
--End of the System that does the job after confirm spell--

elseif msgcontains(msg, 'spellbook') or msgcontains(msg, 'spellbook') then
npcHandler:say("In a spellbook, your spells are listed. There you can find the pronunciation of each spell. Do you want to buy one for 150 gold?", 1)
talk_state = 814

elseif talk_state == 814 and msgcontains(msg, 'yes') or talk_state == 814 and msgcontains(msg, 'Yes') then
	if doPlayerRemoveMoney(cid, 150) == true then
	doPlayerAddItem(cid, 2175, 1)
	npcHandler:say("Here you are.", 1)
	else
	npcHandler:say("Come back when you have enough money.", 1)
	end
	talk_state = 0
elseif talk_state == 814 and msgcontains(msg, '') then
	npcHandler:say("Hmm, maybe next time.", 1)
	talk_state = 0
	
elseif msgcontains(msg, 'spell') or msgcontains(msg, 'Spell') then
npcHandler:say("I sell 'Find Person', 'Light', 'Light Healing', 'Light Magic Missile', 'Antidote', 'Intense Healing', 'Poison Field', 'Great Light', 'Fire Field', 'Heavy Magic Missile', 'Magic Shiel', 'Fireball', 'Energy Field', 'Destroy Field', 'Fire Wave' and. ...", 1)
npcHandler:say("'Ultimate Healing', 'Great Fireball', 'Firebomb', 'Energy Beam', 'Creature Illusion', 'Poison Wall', 'Explosion', 'Fire Wall', 'Great Energy Beam', 'Invisible', 'Summon Creature', 'Energy Wall', 'Energy Wave' and 'Sudden Death'.", 5)
talk_state = 0
	
elseif msgcontains(msg, 'rune') or msgcontains(msg, 'Rune') then
npcHandler:say("Each spell, that starts with 'Ad', needs a rune. You have to hold a blank rune in one of your hands when you cast it. You can buy runes at the magic shop.", 1)
talk_state = 0
	
end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())