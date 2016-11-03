dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... Selling Spells"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... Chatterbone"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... Time?... Not important... anymore."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "..."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "..."})
keywordHandler:addKeyword({'vladruc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... Maaaaassssterrrrr"})
keywordHandler:addKeyword({'urghain'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... Maaaaassssterrrrr"})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... un...important"})
keywordHandler:addKeyword({'market'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... You buy?"})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... we hid it... so long ago... so long..."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... they build a new city... Carlin shall be its name..."})
keywordHandler:addKeyword({'flaming'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... we conquered them... held them so long... long ago..."})
keywordHandler:addKeyword({'inferno'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... we conquered them... held them so long... long ago..."})
keywordHandler:addKeyword({'sorcerer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... You... buy spells?"})
keywordHandler:addKeyword({'power'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... You... buy spells?"})
keywordHandler:addKeyword({'druid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... Ask Smiley..."})
keywordHandler:addKeyword({'spellbook'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... You buy book... store spells... other counter..."})
keywordHandler:addKeyword({'rune'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "... Runes... mighty stones... other counter..."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 5 then
	else
		if msgcontains(msg, '') then
		npcHandler:say("... Only sorcerers...", 1)
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

elseif msgcontains(msg, 'spell') then
npcHandler:say("... I teach for.. 'find person', 'light', 'light healing', 'light magic missile', 'antidote', 'intense healing', 'poison field', 'great light', 'fire field', 'heavy magic missile', 'magic shield', 'fireball', 'energy field', 'destroy field' and. ...", 1)
npcHandler:say("'fire wave', 'ultimate healing', 'great fireball', 'firebomb', 'energy beam', 'creature illusion', 'poison wall', 'explosion', 'fire wall', 'great energy beam', 'invisible', 'summon creature', 'energy wall', 'energy wave' and 'sudden death'.", 5)
talk_state = 0	
	
end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())