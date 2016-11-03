dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'crossbow'}, 2455, 450)
shopModule:addBuyableItem({'bow'}, 2456, 350)
shopModule:addBuyableItem({'bolt'}, 2543, 3)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell bows, arrows, crossbows and bolts. I also teach some spells."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am known as Irea."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's unimportant."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The druids of Carlin seek our guidance now and then."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't understand what interest this humans form a far away land have in our town."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Their traders are verry intrusive."})
keywordHandler:addKeyword({'roderick'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What is this humans use at all? I don't understabd it."})
keywordHandler:addKeyword({'olrik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "His trade seems to be the delivery of messages and items."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Humans or dwarfs will never understand us."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bearded, heavy, and small."})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Humans have so little time to learn."})
keywordHandler:addKeyword({'troll'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I despise them."})
keywordHandler:addKeyword({'cenath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I often listen to their tales."})
keywordHandler:addKeyword({'kuridai'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They provide us with tools and metal."})
keywordHandler:addKeyword({'deraisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My people love the woods."})
keywordHandler:addKeyword({'abdaisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One day we will be reunited."})
keywordHandler:addKeyword({'teshial'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They have left so long ago."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Who is that?"})
keywordHandler:addKeyword({'crunor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The master of nature. He nurtures us and is our benevolent protector."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our people have a bugfarm in the southeast of Ab'Dendriel."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My news are not for your ears."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I teach spells to create enchanted arrows."})
keywordHandler:addKeyword({'spell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I teach 'Conjure Arrow', 'Poison Arrow', and 'Explosive Arrow'."})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
--name the spell--
if msgcontains(msg, 'conjure arrow') or msgcontains(msg, 'Conjure arrow') then
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

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())