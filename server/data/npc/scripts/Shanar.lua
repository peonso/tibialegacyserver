dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)


shopModule:addSellableItem({'coat'}, 					ID_coat, 1)
shopModule:addSellableItem({'jacket'}, 					ID_jacket, 1)
shopModule:addSellableItem({'knight armor'}, 					ID_knightarmor, 875)
shopModule:addSellableItem({'golden armor'}, 					ID_goldenarmor, 1500)
shopModule:addSellableItem({'leather armor'}, 					ID_leatherarmor, 12)
shopModule:addSellableItem({'chain armor'}, 					ID_chainarmor, 70)
shopModule:addSellableItem({'brass armor'}, 					ID_brassarmor, 150)
shopModule:addSellableItem({'plate armor'}, 					ID_platearmor, 400)
shopModule:addSellableItem({'leather helmet'}, 					ID_leatherhelmet, 4)
shopModule:addSellableItem({'chain helmet'}, 					ID_chainhelmet, 17)
shopModule:addSellableItem({'steel helmet'}, 					ID_steelhelmet, 190)
shopModule:addSellableItem({'brass helmet'}, 					ID_brasshelmet, 30)
shopModule:addSellableItem({'viking helmet'}, 					ID_vikinghelmet, 66)
shopModule:addSellableItem({'iron helmet'}, 					ID_ironhelmet, 145)
shopModule:addSellableItem({'devil helmet'}, 					ID_devilhelmet, 450)
shopModule:addSellableItem({'warrior helmet'}, 					ID_warriorhelmet, 696)
shopModule:addSellableItem({'leather legs'}, 					ID_leatherlegs, 1)
shopModule:addSellableItem({'chain legs'}, 					ID_chainlegs, 20)
shopModule:addSellableItem({'brass legs'}, 					ID_brasslegs, 49)
shopModule:addSellableItem({'plate legs'}, 					ID_platelegs, 115)
shopModule:addSellableItem({'knight legs'}, 					ID_knightlegs, 375)
shopModule:addSellableItem({'wooden shield'}, 					ID_woodenshield, 5)
shopModule:addSellableItem({'battleshield'}, 					ID_battleshield, 95)
shopModule:addSellableItem({'steel shield'}, 					ID_steelshield, 80)
shopModule:addSellableItem({'brass shield'}, 					ID_brassshield, 16)
shopModule:addSellableItem({'plate shield'}, 					ID_plateshield, 31)
shopModule:addSellableItem({'guardian shield'}, 					ID_guardianshield, 180)
shopModule:addSellableItem({'dragon shield'}, 					ID_dragonshield, 360)
shopModule:addSellableItem({'two handed sword'}, 					ID_twohandedsword, 450)
shopModule:addSellableItem({'longsword'}, 					ID_longsword, 51)
shopModule:addSellableItem({'dagger'}, 					ID_dagger, 2)
shopModule:addSellableItem({'club'}, 					ID_club, 1)
shopModule:addSellableItem({'rapier'}, 					ID_rapier, 5)
shopModule:addSellableItem({'sabre'}, 					ID_sabre, 12)
shopModule:addSellableItem({'spear'}, 					ID_spear, 3)
shopModule:addSellableItem({'sjort sword'}, 					ID_shortsword, 10)
shopModule:addSellableItem({'spike sword'}, 					ID_spikesword, 225)
shopModule:addSellableItem({'fire sword'}, 					ID_firesword, 1000)
shopModule:addSellableItem({'sword'}, 					ID_sword, 25)
shopModule:addSellableItem({'mace'}, 					ID_mace, 23)


shopModule:addBuyableItem({'dagger'}, 					ID_dagger, 5)
shopModule:addBuyableItem({'spear'}, 					ID_spear, 10)
shopModule:addBuyableItem({'rapier'}, 					ID_rapier, 15)
shopModule:addBuyableItem({'sabre'}, 					ID_sabre, 35)
shopModule:addBuyableItem({'staff'}, 					ID_staff, 40)
shopModule:addBuyableItem({'longsword'}, 					ID_longsword, 160)
shopModule:addBuyableItem({'sword'}, 					ID_sword, 85)
shopModule:addBuyableItem({'machete'}, 					ID_machete, 35)
shopModule:addBuyableItem({'throwing knife'}, 					ID_throwingknife, 25)
shopModule:addBuyableItem({'chain armor'}, 					ID_chainarmor, 200)
shopModule:addBuyableItem({'brass armor'}, 					ID_brassarmor, 450)
shopModule:addBuyableItem({'leather armor'}, 					ID_leatherarmor, 35)
shopModule:addBuyableItem({'chain helmet'}, 					ID_chainhelmet, 52)
shopModule:addBuyableItem({'leather helmet'}, 					ID_leatherhelmet, 12)
shopModule:addBuyableItem({'steel shield'}, 					ID_steelshield, 240)
shopModule:addBuyableItem({'wooden shield'}, 					ID_woodenshield, 15)
shopModule:addBuyableItem({'chain legs'}, 					ID_chainlegs, 80)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell weapons, shields, and armor, and teach protective spells."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Shanar Ethkal."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Carlin is quite close and we have some trade now and then."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais is a town of humans far away."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those human merchants try to sell their low quality weapons and armor here to ruin my trade."})
keywordHandler:addKeyword({'roderick'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is some human who lives in a stone house in the south of the town."})
keywordHandler:addKeyword({'olrik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This human is sneaking around in the tow far too often."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's our race, so what?"})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ugly and dirty."})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Loud and noisy."})
keywordHandler:addKeyword({'troll'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I own only a few."})
keywordHandler:addKeyword({'cenath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Idiots."})
keywordHandler:addKeyword({'kuridai'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's my caste."})
keywordHandler:addKeyword({'deraisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Squirrels"})
keywordHandler:addKeyword({'abdaisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They don't live here."})
keywordHandler:addKeyword({'teshial'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't know much about them"})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A danger to all."})
keywordHandler:addKeyword({'crunor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care about gods."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Perhaps more than a myth."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Nothing I want to talk about."})
keywordHandler:addKeyword({'druid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Druids are great healers."})
keywordHandler:addKeyword({'sorcerer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They understand so few..."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I teach some spells of protection."})
keywordHandler:addKeyword({'spell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I teach 'Poison Field', 'Fire Field', 'Energy Field', 'Poison Wall', 'Fire wall', and 'Energy Wall'."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have spears, swords, rapiers, daggers, longswords, machetes, staffs, and sabres. Interested?"})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling leather helmets and chain helmets. Anything you'd like to buy?"})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling leather, chain, and brass armor. What do you need?"})
keywordHandler:addKeyword({'shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling wooden shields and steel shields. What do you want?"})
keywordHandler:addKeyword({'trousers'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs. Do you want to buy any?"})
keywordHandler:addKeyword({'legs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs. Do you want to buy any?"})
keywordHandler:addKeyword({'spellbook'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have none here."})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

--name the spell--
if msgcontains(msg, 'poison field') or msgcontains(msg, 'Poison field') then
	spellprice = 300
	spellvoc = {1, 2, 5, 6}
	spellname = "poison field"
	spellmagiclevel = 2
		if isInArray(spellvoc, getPlayerVocation(cid)) == 1 then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
		talk_state = 0
		end

elseif msgcontains(msg, 'energy wall') or msgcontains(msg, 'Energy wall') then
	spellprice = 2500
	spellvoc = {1, 2, 5, 6}
	spellname = "energy wall"
	spellmagiclevel = 18
		if isInArray(spellvoc, getPlayerVocation(cid)) == 1 then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'fire wall') or msgcontains(msg, 'fire wall') then
	spellprice = 2000
	spellvoc = {1, 2, 5, 6}
	spellname = "fire wall"
	spellmagiclevel = 13
		if isInArray(spellvoc, getPlayerVocation(cid)) == 1 then
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
		if isInArray(spellvoc, getPlayerVocation(cid)) == 1 then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
		talk_state = 0
		end		
		
elseif msgcontains(msg, 'energy field') or msgcontains(msg, 'Energy field') then
	spellprice = 700
	spellvoc = {1, 2, 5, 6}
	spellname = "energy field"
	spellmagiclevel = 5
		if isInArray(spellvoc, getPlayerVocation(cid)) == 1 then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
		talk_state = 0
		end
		
elseif msgcontains(msg, 'fire field') or msgcontains(msg, 'Fire field') then
	spellprice = 500
	spellvoc = {1, 2, 5, 6}
	spellname = "fire field"
	spellmagiclevel = 3
		if isInArray(spellvoc, getPlayerVocation(cid)) == 1 then
		npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
		talk_state = 8754
		else
		npcHandler:say("I am sorry but this spell is only for sorcerers and druids.", 1)
		talk_state = 0
		end		
--End of Give spell--
	

	
	
--System that does the job after confirm spell--
elseif talk_state == 8754 and msgcontains(msg, 'yes') then
if getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 6 then
	if isInArray(spellvoc, getPlayerVocation(cid)) == 1 then
		if getPlayerMagLevel(cid) >= spellmagiclevel then
			if getPlayerLearnedInstantSpell(cid, spellname) < 1 then
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
npcHandler:say("I'm sorry, but I only sell spells for druids.", 1)
talk_state = 0
end
elseif talk_state == 8754 and msgcontains(msg, '') then
npcHandler:say("Maybe next time.", 1)
talk_state = 0
--End of the System that does the job after confirm spell--
	
elseif msgcontains(msg, 'heal') then
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
    return true
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
