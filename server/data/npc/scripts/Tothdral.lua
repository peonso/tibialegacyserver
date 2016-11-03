dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the foremost astrologer and supreme magus of this city."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Tothdral. They call me 'The Seeker Beyond the Grave'."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time is your problem. It is no longer mine."})
keywordHandler:addKeyword({'temple'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our temple is a centre of spirituality and learning. The temple and the serpentine tower work hand in hand for the good of all people, whether they are alive or undead."})
keywordHandler:addKeyword({'oldpharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He has been given a chance to ascend. I am sure he will feel nothing but thankfulness for this divine son, our revered pharaoh."})
keywordHandler:addKeyword({'pharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The immortal pharaoh is our god and our example. He alone holds the secrets that will save us all from the greedy grasp of the false gods."})
keywordHandler:addKeyword({'scarab'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you know how to listen to them they will reveal ancient secrets to you."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This world is only a shadow of the worlds that have been. That was long ago, before the true gods fought each other in the godwars and the false gods rose to claim their heritage."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those cities that bow to the false gods will fall prey to their treacherous greed sooner or later."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those cities that bow to the false gods will fall prey to their treacherous greed sooner or later."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those cities that bow to the false gods will fall prey to their treacherous greed sooner or later."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those cities that bow to the false gods will fall prey to their treacherous greed sooner or later."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves should have learned their lessons, but these boneheaded fools still don't see there is only one way to escape the false gods' grasp."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves should have learned their lessons, but these boneheaded fools still don't see there is only one way to escape the false gods' grasp."})
keywordHandler:addKeyword({'dwarv'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves should have learned their lessons, but these boneheaded fools still don't see there is only one way to escape the false gods' grasp."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves are nothing but idle riff-raff. They embrace the vain amusements of physical pleasure. Eternal damnation will be their lot."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves are nothing but idle riff-raff. They embrace the vain amusements of physical pleasure. Eternal damnation will be their lot."})
keywordHandler:addKeyword({'daraman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He was so close. ... and still he failed to draw the right conclusions."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This continent is mostly free from the servants of the false gods. Those who live here may hope to become worthy one day of the first steps towards ascension."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Their foolishness is great, but perhaps they still can be saved. If only they listened and accepted the next step to ascension."})
keywordHandler:addKeyword({'next step'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Undeath alone will rid you of the temptations that blur your vision of the true path."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This city is as old as the sands that surround it, and it is built on previous settlements that date back even further in time. Perhaps only the wise scarabs know the full story of this place."})
keywordHandler:addKeyword({'mortality'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Mortality is your curse. When you are worthy the burden of mortality will be taken from your shoulders."})
keywordHandler:addKeyword({'false'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The self-styled gods were nothing but minor servants of the true gods. They steal the soul of any mortal foolish enough to believe in them. They plan to use the stolen souls to ascend to true godhood."})
keywordHandler:addKeyword({'godswar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This war brought about the end of the true universe. That which is left now is but a shadow of former glories, a bleak remainder of what once was. The true gods perished and their essence was dispersed throughout the remaining universe."})
keywordHandler:addKeyword({'great suffering'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The great suffering is a phase of steady decline that will end eventually in void and emptiness unless some divine power such as our pharaoh will reverse it. Mend your ways and follow him! Perhaps you will be chosen to join him in his noble struggle."})
keywordHandler:addKeyword({'ascension'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The essence of the true gods is omnipresent in the universe. We all share this divine heritage, for every single one of us carries the divine spark inside him. This is the reason we all have a chance to ascend to godhood, too."})
keywordHandler:addKeyword({"Akh'rah Uthun"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Akh'rah Uthun is the trinity of existence, the three that are one. The Akh, the shell, the Rah, the source of power, and the Uthun, our consciousness, form this union."})
keywordHandler:addKeyword({"steal souls"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The false gods harvest the souls of the dead to secure their stolen powers and status."})
keywordHandler:addKeyword({'Akh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Akh is a tool. As long as it is alive it is a burden and source of weakness, but if you ascend to undeath it becomes a useful tool that can be used to work towards greater ends."})
keywordHandler:addKeyword({'undea'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Undeath is an improvement. It is the gateway to goals that are nobler than eating, drinking or other fulfilments of trivial physical needs.."})
keywordHandler:addKeyword({'Rah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Rah is what the ignorant might call the soul. But it's more than that. It is the divine spark in all of us, the source of energy that keeps us alive."})
keywordHandler:addKeyword({'uthun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Uthun is the part of the trinity that is easiest to form. It consists of our recollections of the past and of our thoughts. It is that which determines who we are in this world and it gives us guidance throughout our existence."})
keywordHandler:addKeyword({'mourn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dead mourn the living because they are weak and excluded from ascension."})
keywordHandler:addKeyword({'arena'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The arena is a suitable distraction for the Uthun of the mortals. It might even serve as a place for them to prove their worth. If they pass the test they may be freed of their mortal shells."})
keywordHandler:addKeyword({'palace'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The residence of the pharaoh should be worshipped just as the pharaoh is worshipped. Don't enter until you have business there."})


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
npcHandler:say("Sorry! I only sell spells to sorcerers!", 1)
talk_state = 0
end

elseif talk_state == 8754 and msgcontains(msg, '') then
npcHandler:say("Maybe next time.", 1)
talk_state = 0
--End of the System that does the job after confirm spell--
	
elseif msgcontains(msg, 'spell') or msgcontains(msg, 'Spell') then
npcHandler:say("I sell 'Find Person', 'Light', 'Light Healing', 'Light Magic Missile', 'Antidote', 'Intense Healing', 'Poison Field', 'Great Light', 'Fire Field', 'Heavy Magic Missile', 'Magic Shield', 'Fireball', 'Energy Field', 'Destroy Field' and. ...", 1)
npcHandler:say("'Fire Wave', 'Ultimate Healing', 'Great Fireball', 'Firebomb', 'Energy Beam', 'Creature Illusion', 'Poison Wall', 'Explosion', 'Fire Wall', 'Great Energy Beam', 'Invisible', 'Summon Creature', 'Energy Wall', 'Energy Wave' and 'Sudden Death'.", 5)
talk_state = 0
end		
    return true
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())