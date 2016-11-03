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
	if getPlayerVocation(cid) >= 5 and getPlayerVocation(cid) <= 8 then
	npcHandler:setMessage(MESSAGE_GREET, "Welcome to my little garden, humble ".. getPlayerName(cid) .."!")
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Welcome to my little garden, adventurer ".. getPlayerName(cid) .."!")
	return true
	end	
end	

npcHandler:setCallback(CALLBACK_GREET, greetCallback)

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'amulet of loss'}, 2173, 50000)
shopModule:addBuyableItem({'protection amulet'}, 2200, 700, 250)
shopModule:addBuyableItem({'broken amulet', 'amulet of life'}, 2196, 25000)

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Eremo, an old man who has seen many things."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I teach some spells, provide one of the five blessings, and sell some amulets."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I teach some spells, provide one of the five blessings, and sell some amulets."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I teach some spells, provide one of the five blessings, and sell some amulets."})
keywordHandler:addKeyword({'island'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have retired from my adventures to this place"})
keywordHandler:addKeyword({'isle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have retired from my adventures to this place"})
keywordHandler:addKeyword({'garden'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have retired from my adventures to this place"})
keywordHandler:addKeyword({'adventure'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I explored dungeons, I walked through deserts, I sailed on the seas and climbed up on many a mountain."})
keywordHandler:addKeyword({'thing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I explored dungeons, I walked through deserts, I sailed on the seas and climbed up on many a mountain."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A great world full of magic and wonder."})
keywordHandler:addKeyword({'amulet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I've collected quite a few protection amulets, and some amulets of loss as well. Also, I'm interested in buying broken amulets."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if msgcontains(msg, 'spell') then
		if getPlayerVocation(cid) >= 5 and getPlayerVocation(cid) <= 8 then
			npcHandler:say("I can teach 'Enchant Staff' to sorcerers, 'Challenge' to knights, 'Wild Growth' to druids, and 'Power Bolt' to paladins.", 1)
		else
			npcHandler:say("I am sorry, but you are not promoted yet.", 1)
		end
			talk_state = 0
	
	elseif msgcontains(msg, 'enchant staff') or msgcontains(msg, 'Enchant Staff') then
		spellprice = 2000
		spellvoc = {5}
		spellname = "Enchant Staff"
		spellmagiclevel = 22
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			npcHandler:say("I am sorry but this spell is only for master sorcerers", 1)
			talk_state = 0
		end
		
	elseif msgcontains(msg, 'challenge') or msgcontains(msg, 'Challenge') then
		spellprice = 2000
		spellvoc = {8}
		spellname = "challenge"
		spellmagiclevel = 4
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			npcHandler:say("I am sorry but this spell is only for elite knights", 1)
			talk_state = 0
		end
		
	elseif msgcontains(msg, 'wild growth') or msgcontains(msg, 'Wild growth') then
		spellprice = 2000
		spellvoc = {6}
		spellname = "wild growth"
		spellmagiclevel = 13
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			npcHandler:say("I am sorry but this spell is only for elder druids", 1)
			talk_state = 0
		end
		
	elseif msgcontains(msg, 'power bolt') or msgcontains(msg, 'Power bolt') then
		spellprice = 2000
		spellvoc = {7}
		spellname = "conjure power bolt"
		spellmagiclevel = 14
		if isInArray(spellvoc, getPlayerVocation(cid)) then
			npcHandler:say("Do you want to learn the spell '".. spellname .."' for ".. spellprice .." gold?", 1)
			talk_state = 8754
		else
			npcHandler:say("I am sorry but this spell is only for royal paladins", 1)
			talk_state = 0
		end
-- end of spells

-- confirm spells
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
-- end of confirm spells

-- teleport
	elseif msgcontains(msg, 'teleport') or msgcontains(msg, 'pemaret') or msgcontains(msg, 'back') or msgcontains(msg, 'cormaya') or msgcontains(msg, 'edron') then
		npcHandler:say('Should I teleport you back to Pemaret?')
		talk_state = 2
	elseif msgcontains(msg, 'yes') and talk_state == 2 then
		selfSay('Here you go!')
		doTeleportThing(cid, BOATPOS_CORMAYA)
		doSendMagicEffect(getCreaturePosition(cid), 10)
	elseif msgcontains(msg, 'no') and talk_state == 2 then
		npcHandler:say('Maybe later.')
		talk_state = 0
	end
	
	if msgcontains(msg, 'bless') then
		npcHandler:say("There are five different blessings available in five sacred places. These blessings are: the spiritual shielding, the spark of the phoenix, the embrace of tibia, the fire of the suns and the wisdom of solitude.", 1)
		talk_state = 0

	elseif msgcontains(msg, 'wisdom') or msgcontains(msg, 'solitude') then
		npcHandler:say("I can provide you with the wisdom of solitude. But you will have to sacrifice 10.000 gold to receive it. Are you still interested?", 1)
		talk_state = 1394


	elseif talk_state == 1394 and msgcontains(msg, 'yes') then
		if doPlayerRemoveMoney(cid, 10000) == true then
			if doPlayerAddBless(cid, 4) == true then
				npcHandler:say("So receive the wisdom of solitude, pilgrim", 1)
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
	
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())