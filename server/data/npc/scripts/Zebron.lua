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
	npcHandler:setMessage(MESSAGE_GREET, "Greetings, high roller. So you care for a game, ".. getPlayerName(cid) .."?")
	talk_state = 1
	return true
end	

npcHandler:setCallback(CALLBACK_GREET, greetCallback)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, I am just sitting around here and gamble now and then."})
keywordHandler:addKeyword({'tavern'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a fine place to be around, isn't it?"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am known as Zebron."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, our beloved king! Bless him for the gambling licence of Venore."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, our beloved king! Bless him for the gambling licence of Venore."})
keywordHandler:addKeyword({'licence'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care much for that law stuff, but as far as I know those Venore merchants got a royal gambling licence for the city."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Aaaah, Venore, Venore, what a wonderful town. Especially for someone with love for gambling like me."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hehe, they spent a good part of their salary here in the tavern."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would not bet that anyone will ever find it."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais is a bit too conservative for me."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What would I need more than that what I can get right here?"})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Carlin, the beerless ... what a shame."})
keywordHandler:addKeyword({'hugo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I had a cousin named hugo, why do you ask?"})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah, always the same chitchat. Swampelves this and amazons that ... blah blah."})
keywordHandler:addKeyword({'rumo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah, always the same chitchat. Swampelves this and amazons that ... blah blah."})
keywordHandler:addKeyword({'swamp'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah, always the same chitchat. Swampelves this and amazons that ... blah blah."})
keywordHandler:addKeyword({'amazon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah, always the same chitchat. Swampelves this and amazons that ... blah blah."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is exactly |TIME|."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

local CHANCE = math.random(1,6)
if msgcontains(msg, 'gambl') or msgcontains(msg, 'Gambl') or msgcontains(msg, 'game') or msgcontains(msg, 'Game') or msgcontains(msg, 'dice') or msgcontains(msg, 'Dice') then
	npcHandler:say("So you care for a civilized game of dice?", 1)
	talk_state = 1
			
elseif talk_state == 1 and msgcontains(msg, 'yes') or talk_state == 1 and msgcontains(msg, 'Yes') then
	npcHandler:say("I will roll a dice. If it shows 6, you will get five times your bet. How much do you want to bet?", 1)
	talk_state = 2
	
elseif talk_state == 2 then
TEXTMSG = msg
local amount = getCount(msg)
if amount >= 1 and amount <= 99 then
	if doPlayerRemoveMoney(cid, amount) == true then
		if CHANCE == 6 then
		doPlayerAddMoney(cid, amount*5)
		npcHandler:say("Ok, here we go ... 6! You have won ".. amount*5 ..", congratulations. One more game?", 1)
		talk_state = 1
		else
		npcHandler:say("Ok, here we go ... ".. CHANCE .."! You have lost. Bad luck. One more game?", 1)
		talk_state = 1		
		end
	else
	npcHandler:say("I am sorry, but you don't have so much money. How much do you want to bet?", 1)
	talk_state = 2
	end	
else	
npcHandler:say("I am sorry, but I accept only bets between 1 and 99 gold. I don't want to ruin you after all. How much do you want to bet?", 1)	
talk_state = 2
end

end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())