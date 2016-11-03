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
	if getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 6 then
	npcHandler:setMessage(MESSAGE_GREET, "Crunor's blessings. I am glad to see you again, ".. getPlayerName(cid) .."!")
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Welcome to our humble guild, wanderer. May I be of any assistance to you?")
	return true
	end	
end	
npcHandler:setCallback(CALLBACK_GREET, greetCallback)


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a humble preacher of the true revelation in the temple of the mourned flesh. I heal and teach magic spells to those who are spiritual enough."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the mourned Rahkem."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time is a tool in the hands of the false gods, but it also serves to free us from our mortal prisons."})
keywordHandler:addKeyword({'temple'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Here we mourn our mortal existence. Our flesh is our weakness and our curse, the bait for all the trials and tribulations the false gods let loose on the world."})
keywordHandler:addKeyword({'pharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our immortal ruler, may he be blessed, is the keeper of our enlightenment and our saviour."})
keywordHandler:addKeyword({'scarab'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The eternal burrowers are the keepers of all the secrets their kind has unearthed in countless aeons."})
keywordHandler:addKeyword({'ashmunrah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The foolish old pharaoh withheld knowledge and power from his son, knowing that he would surpass him in every aspect. But in his infinite mercy his son granted him the chance to ascend."})
keywordHandler:addKeyword({'uman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The beings Uman and Zathroth merged forever in the blaze that followed when the last of the true gods perished."})
keywordHandler:addKeyword({'zathroth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The beings Uman and Zathroth merged forever in the blaze that followed when the last of the true gods perished."})
keywordHandler:addKeyword({'banor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Banor was the most devout minion of the false gods. Their lickspittle lapdog. Seeing they needed additional strength they granted him some of their powers, and he became a lesser false god himself."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is likely that our world is a part of one of the dead true gods or one of his manifestations that somehow escaped destruction. We must assume this is all that is left of the original universe."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The cities that bow to the false gods will be afflicted with plague and fear until they embrace the wisdom of the pharaoh."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The cities that bow to the false gods will be afflicted with plague and fear until they embrace the wisdom of the pharaoh."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The cities that bow to the false gods will be afflicted with plague and fear until they embrace the wisdom of the pharaoh."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The cities that bow to the false gods will be afflicted with plague and fear until they embrace the wisdom of the pharaoh."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves suffered, but they have drawn wrong conclusions. If they do not listen to the revelations of our immortal pharaoh, pain and grief will prove to be better teachers this time."})
keywordHandler:addKeyword({'dwar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves suffered, but they have drawn wrong conclusions. If they do not listen to the revelations of our immortal pharaoh, pain and grief will prove to be better teachers this time."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The foolish elves hold on to life too hard to see the way to salvation. However, if we teach them to remove the shackles of flesh through pain and suffering, they might begin to see their mistake."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The foolish elves hold on to life too hard to see the way to salvation. However, if we teach them to remove the shackles of flesh through pain and suffering, they might begin to see their mistake."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The foolish elves hold on to life too hard to see the way to salvation. However, if we teach them to remove the shackles of flesh through pain and suffering, they might begin to see their mistake."})
keywordHandler:addKeyword({'daraman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We call Daraman the one-eyed prophet, for he clearly saw that ascension is possible, but he was blind to the fact that mortality itself and not mere temptation is the first obstacle that must be overcome."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The continent was named after Daraman, the prophet during the reign of Ashmunrah. The new pharaoh acknowledged the power that is in names and did not change the name when he acceded to the throne."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The followers of Daraman suffer the curse of the flesh. They can't reach ascension because they never really take the all-important initial step - they only pretend to do so."})
keywordHandler:addKeyword({'initial'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In his preachings Daraman taught that you can conquer the tempations of the flesh through denial. However, the truth is that this constant struggle between temptation and the will blurs your vision, so no follower of Daraman can focus on ascension."})
keywordHandler:addKeyword({'Ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This city is a marvel of old. Our forefathers built it here on the ruins of an even older civilisation."})
keywordHandler:addKeyword({'mortality'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Mortality is our prison. It makes us vulnerable for the temptations of the false gods."})
keywordHandler:addKeyword({'false'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The so-called gods are just the weakest of their kind. They are pitiful remnants from the terrible godswar between the elder gods which tore the universe appart."})
keywordHandler:addKeyword({'godswar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In ancient times the elder gods waged war upon each other. Those that call themselves gods today were the lowest of their minions. When the last of the true gods died the great suffering begun."})
keywordHandler:addKeyword({'great suffering'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The universe is dying. Death placed his mark on everything. Only the pharaoh can grant us freedom from mortality and open up the path of true ascension to us."})
keywordHandler:addKeyword({'ascension'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The sentient beings are all that is left of the essence of the elder gods. We can awake the dormant powers that slumber in us all. But ascension is a thorny path to follow."})
keywordHandler:addKeyword({'thorny'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our mortal shells make us vulnerable to the temptations of the false gods. Only by leaving our mortality behind, we can study the true path of ascension. The balance of Akh'rah Uthun has to be changed to our favour."})
keywordHandler:addKeyword({"Akh'rah"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Akh'rah Uthun is the unity of the Akh, our body, the Rah, our soul and the Uthun, our memories and experiences."})
keywordHandler:addKeyword({'balance'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As long as it is mortal the body breeds temptations and distractions. Its needs make it easy for the false gods to lead us from the path of enlightenment and to ultimately steal our souls."})
keywordHandler:addKeyword({'soul'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "When a mortal is bound to one of the false gods by his faith this god will harvest his Rah on his death and strip away his Uthun, casting it into the void."})
keywordHandler:addKeyword({'Akh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Your flesh is traitorous and weak. The pharaoh grants the power to conquer death to those who serve him well. Once they have entered this state of being neither dead nor alive they are ready to enter the path of ascension."})
keywordHandler:addKeyword({'undea'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Undeath is freedom from mortal needs. It is the first obvious step to divinity."})
keywordHandler:addKeyword({'rah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Rah is the ultimate treasure. The false gods need the stolen Rah to sustain their usurped powers."})
keywordHandler:addKeyword({'uthun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The memory is what makes our personality. It is what defines us ... and its utterly worthless to the gods. For this reason destroy it to harvest our Rah."})
keywordHandler:addKeyword({'mourn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We mortals are all to be mourned for our prison of flesh. Only through loyal servitude to the pharaoh, praised be his existence, may we escape this prison and find our true destiny."})
keywordHandler:addKeyword({'arena'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The arena is a fitting place to test your mortal shell and to feed the power of the Rah and the Uthun."})
keywordHandler:addKeyword({'palace'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The residence of our immortal king is a temple in its own right because it is the home of a true god."})
keywordHandler:addKeyword({'bles'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The lifeforce of this world is waning. There are no more blessings avaliable on this world."})
keywordHandler:addKeyword({'donat'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Well, I can offer "premium light" and "remove vial".. but only for premium players!'})


function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if msg == "heal" then
		if getCreatureHealth(cid) <= 39 then
		NPCSay("You are looking really bad. Let me heal your wounds.", 1)
		doCreatureAddHealth(cid, -getCreatureHealth(cid)+40)
		doSendMagicEffect(getPlayerPosition(cid), 12)
		talk_state = 0
		return true
		else
		NPCSay("You aren't looking really bad. Sorry, I can't help you.", 1)
		return true
		end
		talk_state = 0	
		return true
	end

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
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for all vocations.", 1)
			talk_state = 0
		end

	elseif msgcontains(msg, 'sudden death') or msgcontains(msg, 'Sudden death') then
		spellprice = 3000
		spellvoc = {1, 5}
		spellname = "sudden death"
		spellmagiclevel = 25
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'energy wave') or msgcontains(msg, 'Energy wave') then
		spellprice = 2500
		spellvoc = {1, 5}
		spellname = "energy wave"
		spellmagiclevel = 20
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'great energy beam') or msgcontains(msg, 'Great energy beam') then
		spellprice = 1800
		spellvoc = {1, 5}
		spellname = "great energy beam"
		spellmagiclevel = 14
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'energy beam') or msgcontains(msg, 'Energy beam') then
		spellprice = 1000
		spellvoc = {1, 5}
		spellname = "energy beam"
		spellmagiclevel = 10
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'fire wave') or msgcontains(msg, 'Fire wave') then
		spellprice = 850
		spellvoc = {1, 5}
		spellname = "fire wave"
		spellmagiclevel = 7
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'energy wall') or msgcontains(msg, 'Energy wall') then
		spellprice = 2500
		spellvoc = {1, 2, 5, 6}
		spellname = "energy wall"
		spellmagiclevel = 18
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers and druids.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'summon creature') or msgcontains(msg, 'Summon creature') then
		spellprice = 2000
		spellvoc = {1, 2, 5, 6}
		spellname = "summon creature"
		spellmagiclevel = 16
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers and druids.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'invisible') or msgcontains(msg, 'Invisible') then
		spellprice = 1000
		spellvoc = {1, 2, 3, 5, 6, 7}
		spellname = "invisible "
		spellmagiclevel = 15
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'fire wall') or msgcontains(msg, 'fire wall') then
		spellprice = 2000
		spellvoc = {1, 2, 5, 6}
		spellname = "fire wall"
		spellmagiclevel = 13
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers and druids.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'explosion') or msgcontains(msg, 'Explosion') then
		spellprice = 1800
		spellvoc = {1, 2, 5, 6}
		spellname = "explosion"
		spellmagiclevel = 12
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers and druids.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'poison wall') or msgcontains(msg, 'poison wall') then
		spellprice = 1600
		spellvoc = {1, 2, 5, 6}
		spellname = "poison wall"
		spellmagiclevel = 11
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers and druids.", 1)
			talk_state = 0
		end	
			
	elseif msgcontains(msg, 'chameleon') or msgcontains(msg, 'Chameleon') then
		spellprice = 1300
		spellvoc = {2, 6}
		spellname = "chameleon"
		spellmagiclevel = 11
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for druids.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'ultimate healing rune') or msgcontains(msg, 'Ultimate healing rune') then
		spellprice = 1500
		spellvoc = {2, 6}
		spellname = "ultimate healing rune"
		spellmagiclevel = 11
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for druids.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'convince creature') or msgcontains(msg, 'convince creature') then
		spellprice = 1500
		spellvoc = {2, 6}
		spellname = "convince creature"
		spellmagiclevel = 10
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for druids.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'creature illusion') or msgcontains(msg, 'Creature illusion') then
		spellprice = 1000
		spellvoc = {1, 2, 5, 6}
		spellname = "creature illusion"
		spellmagiclevel = 10
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers and druids.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'firebomb') or msgcontains(msg, 'Firebomb') then
		spellprice = 1500
		spellvoc = {1, 2, 5, 6}
		spellname = "firebomb"
		spellmagiclevel = 9
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers and druids.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'great fireball') or msgcontains(msg, 'Great fireball') then
		spellprice = 1200
		spellvoc = {1, 2, 5, 6}
		spellname = "great fireball"
		spellmagiclevel = 9
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers and druids.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'ultimate healing') or msgcontains(msg, 'Ultimate healing') then
		spellprice = 1000
		spellvoc = {1, 2, 3, 5, 6, 7}
		spellname = "ultimate healing"
		spellmagiclevel = 8
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'destroy field') or msgcontains(msg, 'Destroy field') then
		spellprice = 350
		spellvoc = {1, 2, 3, 5, 6, 7}
		spellname = "destroy field"
		spellmagiclevel = 6
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'energy field') or msgcontains(msg, 'Energy field') then
		spellprice = 700
		spellvoc = {1, 2, 5, 6}
		spellname = "energy field"
		spellmagiclevel = 5
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers and druids.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'fireball') or msgcontains(msg, 'fireball') then
		spellprice = 800
		spellvoc = {1, 2, 3, 5, 6, 7}
		spellname = "fireball"
		spellmagiclevel = 5
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'antidote rune') or msgcontains(msg, 'Antidote rune') then
		spellprice = 600
		spellvoc = {2, 6}
		spellname = "antidote rune"
		spellmagiclevel = 5
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for druids.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'intense healing rune') or msgcontains(msg, 'intense healing rune') then
		spellprice = 600
		spellvoc = {2, 6}
		spellname = "intense healing rune"
		spellmagiclevel = 4
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for druids.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'magic shield') or msgcontains(msg, 'magic shield') then
		spellprice = 450
		spellvoc = {1, 2, 3, 5, 6, 7}
		spellname = "magic shield"
		spellmagiclevel = 4
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'heavy magic missile') or msgcontains(msg, 'Heavy magic missile') then
		spellprice = 600
		spellvoc = {1, 2, 3, 5, 6, 7}
		spellname = "heavy magic missile"
		spellmagiclevel = 3
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'fire field') or msgcontains(msg, 'Fire field') then
		spellprice = 500
		spellvoc = {1, 2, 5, 6}
		spellname = "fire field"
		spellmagiclevel = 3
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers and druids.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'great light') or msgcontains(msg, 'Great light') then
		spellprice = 500
		spellvoc = {1, 2, 3, 4, 5, 6, 7, 8}
		spellname = "great light"
		spellmagiclevel = 3
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for all vocations.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'poison field') or msgcontains(msg, 'Poison field') then
		spellprice = 300
		spellvoc = {1, 2, 5, 6}
		spellname = "poison field"
		spellmagiclevel = 2
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers and druids.", 1)
			talk_state = 0
		end			
			
	elseif msgcontains(msg, 'intense healing') or msgcontains(msg, 'Intense healing') then
		spellprice = 350
		spellvoc = {1, 2, 3, 5, 6, 7}
		spellname = "intense healing"
		spellmagiclevel = 2
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'antidote') or msgcontains(msg, 'Antidote') then
		spellprice = 150
		spellvoc = {1, 2, 3, 4, 5, 6, 7, 8}
		spellname = "antidote"
		spellmagiclevel = 2
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for all vocations.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'light magic missile') or msgcontains(msg, 'Light magic missile') then
		spellprice = 200
		spellvoc = {1, 2, 3, 5, 6, 7}
		spellname = "light magic missile"
		spellmagiclevel = 1
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for sorcerers, druids and paladins.", 1)
			talk_state = 0
		end		
			
	elseif msgcontains(msg, 'light healing') or msgcontains(msg, 'Light healing') then
		spellprice = 170
		spellvoc = {1, 2, 3, 4, 5, 6, 7, 8}
		spellname = "light healing"
		spellmagiclevel = 1
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for all vocations.", 1)
			talk_state = 0
		end			
			
	elseif msgcontains(msg, 'create food') or msgcontains(msg, 'Create food') then
		spellprice = 150
		spellvoc = {2, 3, 6, 7}
		spellname = "create food"
		spellmagiclevel = 0
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for druids and paladins.", 1)
			talk_state = 0
		end	
			
	elseif msgcontains(msg, 'light') or msgcontains(msg, 'Light') then
		spellprice = 100
		spellvoc = {1, 2, 3, 4, 5, 6, 7, 8}
		spellname = "light"
		spellmagiclevel = 0
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			NPCSay("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			NPCSay("I am sorry but this spell is only for all vocations.", 1)
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
					NPCSay("Here you are. Look in your spellbook for the pronounciation of this spell.", 1)
					talk_state = 0
					else
					NPCSay("Oh. You do not have enough money.", 1)
					talk_state = 0			
					end
				else
				NPCSay("You already know how to cast this spell.", 1)
				talk_state = 0	
				end
			else
			NPCSay("You must have magic level ".. spellmagiclevel .." or better to learn this spell!", 1)
			talk_state = 0
			end
		end
	elseif talk_state == 8754 and msgcontains(msg, '') then
		NPCSay("Maybe next time.", 1)
		talk_state = 0
	--End of the System that does the job after confirm spell--

	elseif msgcontains(msg, 'spell') then
		if getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 5 then
			NPCSay("for you, I sell 'Find Person', 'Light', 'Light Healing', 'Light Magic Missile', 'Antidote', 'Intense Healing', 'Poison Field', 'Great Light', 'Fire Field', 'Heavy Magic Missile', 'Magic Shield', 'Fireball', 'Energy Field', 'Destroy Field' and. ...", 1)
			NPCSay("'Fire Wave', 'Ultimate Healing', 'Great Fireball', 'Firebomb', 'Energy Beam', 'Creature Illusion', 'Poison Wall', 'Explosion', 'Fire Wall', 'Great Energy Beam', 'Invisible', 'Summon Creature', 'Energy Wall', 'Energy Wave' and 'Sudden Death'.", 5)
			talk_state = 0
		elseif getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 6 then
			NPCSay("for you, I sell 'Find Person', 'Light', 'Create Food', 'Light Healing', 'Light Magic Missile', 'Antidote', 'Intense Healing', 'Poison Field', 'Great Light', 'Fire Field' and. ...", 1)
			NPCSay("'Heavy Magic Missile', 'Magic Shield', 'Intense Healing Rune', 'Antidote Rune', 'Fireball', 'Energy Field', 'Destroy Field', 'Ultimate Healing', 'Great Fireball', 'Firebomb', 'Creature Illusion', 'Convince Creature', 'Ultimate Healing Rune' and. ...", 5)
			NPCSay("'Chameleon', 'Poison Wall', 'Explosion', 'Fire Wall', 'Invisible', 'Summon Creature' and 'Energy Wall'.", 9)
			talk_state = 0
		end
	end

    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())