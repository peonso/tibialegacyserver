dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Not that I like to talk to you, but I am Elathriel Shadowslayer."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the leader of the Kuridai and the Az'irel of Ab'dendriel. Humans would call it sheriff, executioner, or avenger."})
keywordHandler:addKeyword({'sheriff'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sometimes people get imprisoned for some time. True criminals will be cast out and for comitting the worst crimes offenders are thrown into the hellgate."})
keywordHandler:addKeyword({'executioner'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sometimes people get imprisoned for some time. True criminals will be cast out and for comitting the worst crimes offenders are thrown into the hellgate."})
keywordHandler:addKeyword({'avenger'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sometimes people get imprisoned for some time. True criminals will be cast out and for comitting the worst crimes offenders are thrown into the hellgate."})
keywordHandler:addKeyword({'hellgate'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It was here among other structures, like the depot tower, before our people came here. It's secured by a sealed door."})
keywordHandler:addKeyword({'door'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "For safety we keep the door to the hellgate locked all times. I have the keys to open it when needed."})
keywordHandler:addKeyword({'sealed'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "For safety we keep the door to the hellgate locked all times. I have the keys to open it when needed."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I couldn't care less."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We watch this city and the actions of its inhabitants closely."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The thain kingdom and we share some enemys, so its only logical to cooperate in a few areas."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The merchants of venore provide us with some usefull goods. Still I an convinced that they get more out of our bargain then we do."})
keywordHandler:addKeyword({'roderick'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is tolerated here as the spokesman of the thaian king."})
keywordHandler:addKeyword({'olrik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This human is too unimportant to be even mentioned."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's hard for some of my people to grasp the true concept of a strong leader."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A human weakling, not much more."})
keywordHandler:addKeyword({'eloise'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A human weakling, not much more."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My people are divided in castes in these times, until they comprehend that only the way of the Kuridai can save us all."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We might use the shelter earth and hills provide us, but their obsession for metal is a waste of time."})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are useful ... and better stay useful."})
keywordHandler:addKeyword({'troll'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Like all inferior races they can be at least used for something good. The other castes are just jealous about our use of them."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's one of the more useful concepts we can learn from the other races."})
keywordHandler:addKeyword({'cenath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Arrogant bastards, but they wield quite powerful magics."})
keywordHandler:addKeyword({'kuridai'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are the heart of the elven society. We forge, we build, and we don't allow our people to be pushed around."})
keywordHandler:addKeyword({'deraisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Confused cowards. With all their skill they still tend to hide and run. What a waste."})
keywordHandler:addKeyword({'abdaisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Even more undecided then the deraisim."})
keywordHandler:addKeyword({'teshial'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Dreamers are of no practical use. I don't mourn their demise."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Even if he'd walk through the town above the other castes won't see the necessity to follow OUR way."})
keywordHandler:addKeyword({'crunor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have no use for the treething. I worship Mortiur, the ravager, of course."})
keywordHandler:addKeyword({'mortiur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The celestial paladin of revenge. He was one of the greatest elven wariors of all times."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I still doubt it exists."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "News are confidential and not your business."})
keywordHandler:addKeyword({'druid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Druids' magic is too peaceful for my taste."})
keywordHandler:addKeyword({'sorcerer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have seen human sorcerers doing some impressive things ... before they died."})
keywordHandler:addKeyword({'spellbook'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't sell such stuff."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
		
	if msgcontains(msg, 'key') then
	npcHandler:say('If you are that curious, do you want to buy a key for 5000 gold? Don\'t blame me if you get sucked in.')
	talk_state = 1
	
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerMoney(cid) >= 5000 then
	npcHandler:say('Here you are.')
	doPlayerRemoveMoney(cid, 5000)
	key = doPlayerAddItem(cid, 2088,1)
	doSetItemActionId(key,3012)
	talk_state = 0
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerMoney(cid) < 5000 then
	npcHandler:say('Come back when you have enough money.')
	talk_state = 0
	elseif msgcontains(msg, 'no') and talk_state == 1 then
	npcHandler:say('Believe me, it\'s better for you that way.')
	talk_state = 0
	end

if getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 3 or getPlayerVocation(cid) == 6 or getPlayerVocation(cid) == 7 then
else
	if msgcontains(msg, '') then
	npcHandler:say("Sorry, I only teach paladins and druids!", 1)
	return false
	end
end
--name the spell--
if msgcontains(msg, 'light magic missile') or msgcontains(msg, 'Light magic missile') then
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
npcHandler:say("I sell 'light magic missile', 'heavy magic missile', 'fireball', 'great fireball', 'firebomb' and 'explosion'.", 1)
talk_state = 0	

elseif msgcontains(msg, 'magic') or msgcontains(msg, 'Magic') then
npcHandler:say("I mastered some spells of battle.", 1)
talk_state = 0	
	
end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())