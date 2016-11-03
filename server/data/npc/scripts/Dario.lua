dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the master archer of the arena. I train distance fighters and sell them equipment."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Dario of Ab'Dendriel."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time is unimportant to me."})
keywordHandler:addKeyword({'temple'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The temple is somewhere south at the coast."})
keywordHandler:addKeyword({'arkhothep'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The pharaoh seems to be mighty beyond imagination."})
keywordHandler:addKeyword({'ashmunrah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There was some fighting long ago. The old pharaoh lost his power to his son Arkhothep."})
keywordHandler:addKeyword({'scarab'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Scarabs are dangerous. They are quick, resistant to poison and theis shells are hard as steel."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I travel a lot to see everything. For now I settle here for some time."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I was there some time ago. It was lovely and reminded me of my home Ab'Dendriel."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais is too crowded for my taste."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think Edron is quite typical for a human settlement."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I did not like the greedy attitude of the people there."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The small people are too hectic and greedy. They don't understand the harmony of nature."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The small people are too hectic and greedy. They don't understand the harmony of nature."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The small people are too hectic and greedy. They don't understand the harmony of nature."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sometimes I miss my brethren and sisters. But for now I want to see the world and travel around."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sometimes I miss my brethren and sisters. But for now I want to see the world and travel around."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sometimes I miss my brethren and sisters. But for now I want to see the world and travel around."})
keywordHandler:addKeyword({'daraman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You should ask about him in Darashia. People there talked a lot about him."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This continent is hard and challenging. I like challenges."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The city seemed a bit dull and peacefull to me, so I left for Ankrahmun."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ankrahmun is unlike any other city I've seen. Sometimes it gives me shivers ... on the other hand it makes me stay on guard and feel alive, despite the undeath cult."})
keywordHandler:addKeyword({'ascension'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care for this human concepts."})
keywordHandler:addKeyword({"Akh'rah Uthun"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care for this human concepts."})
keywordHandler:addKeyword({'Akh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care for this human concepts."})
keywordHandler:addKeyword({'Rah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care for this human concepts."})
keywordHandler:addKeyword({'uthun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care for this human concepts."})
keywordHandler:addKeyword({'undea'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't understand this cult yet. Just ask around and people will tell you."})
keywordHandler:addKeyword({'arena'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "People who fight here do it on their own choice. So I don't care."})
keywordHandler:addKeyword({'palace'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Under the palace are crypts, full of minor undead and creatures that have failed the pharaoh. He allows everyone to slay them as they see it fit."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling bows, crossbows, and ammunition. Do you need anything?"})
keywordHandler:addKeyword({'sell crossbow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't buy used crossbows."})
keywordHandler:addKeyword({'sell bow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't buy used bows."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling bows, crossbows, and ammunition. Do you need anything?"})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling bows, crossbows, and ammunition. Do you need anything?"})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling bows, crossbows, and ammunition. Do you need anything?"})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling bows, crossbows, and ammunition. Do you need anything?"})
keywordHandler:addKeyword({'ammo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do you need arrows for a bow, or bolts for a crossbow?"})
keywordHandler:addKeyword({'ammunition'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do you need arrows for a bow, or bolts for a crossbow?"})


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
npcHandler:say("I sell 'find person, ', 'light', 'create food', 'light healing', 'light magic missile', 'antidote', 'intense healing', 'conjure arrow', 'great light', 'heavy magic missile', 'magic shiel', 'fireball' and. ...", 1)
npcHandler:say("'poison arrow', 'destroy field', 'ultimate healing', 'explosive arrow' and 'invisible'.", 5)
talk_state = 0

elseif msgcontains(msg, 'arrow') or msgcontains(msg, 'Arrow') then
local amount = getCount(msg)
	if amount >= 1 and amount <= 99 then
	COUNTARROW = amount
	npcHandler:say("would you like to buy ".. COUNTARROW .." arrows for ".. COUNTARROW*2 .." gold?", 1)
	elseif amount < 1 then
	COUNTARROW = 1
	npcHandler:say("would you like to buy ".. COUNTARROW .." arrow for ".. COUNTARROW*2 .." gold?", 1)
	elseif amount >= 100 then
	COUNTARROW = 100
	npcHandler:say("would you like to buy ".. COUNTARROW .." arrows for ".. COUNTARROW*2 .." gold?", 1)
	end
talk_state = 859

elseif talk_state == 859 and msgcontains(msg, 'yes') or talk_state == 859 and msgcontains(msg, 'Yes') then
	if doPlayerRemoveMoney(cid, COUNTARROW*2) == true then
	doPlayerAddItem(cid, 2544, COUNTARROW)
	npcHandler:say("Here you are.", 1)
	else
	npcHandler:say("Sorry, you don't have enough money.", 1)
	end
talk_state = 0

elseif talk_state == 859 and msgcontains(msg, '') then
npcHandler:say("Then not.", 1)
talk_state = 0
end

    return true
end

function paladinspell11(cid, type, msg)
npcHandler:say("'poison arrow', 'destroy field', 'ultimate healing', 'explosive arrow' and 'invisible'.")
end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'crossbow'}, 2455, 500)
shopModule:addBuyableItem({'bow'}, 2456, 400)
shopModule:addBuyableItem({'bolt'}, 2543, 3)

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())