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

shopModule:addSellableItem({'white pearl'}, 2143, 160)
shopModule:addSellableItem({'black pearl'}, 2144, 280)
shopModule:addSellableItem({'small diamond'}, 2145, 300)
shopModule:addSellableItem({'small sapphire'}, 2146, 250)
shopModule:addSellableItem({'small ruby'}, 2147, 250)
shopModule:addSellableItem({'small emerald'}, 2149, 250)
shopModule:addSellableItem({'small amethyst'}, 2150, 200)
shopModule:addBuyableItem({'wedding ring'}, 2121, 990)
shopModule:addBuyableItem({'golden amulet'}, 2130, 6600)
shopModule:addBuyableItem({'ruby necklace'}, 2133, 3560)
shopModule:addBuyableItem({'white pearl'}, 2143, 320)
shopModule:addBuyableItem({'black pearl'}, 2144, 560)
shopModule:addBuyableItem({'small diamond'}, 2145, 600)
shopModule:addBuyableItem({'small sapphire'}, 2146, 500)
shopModule:addBuyableItem({'small ruby'}, 2147, 500)
shopModule:addBuyableItem({'small emerald'}, 2149, 500)
shopModule:addBuyableItem({'small amethyst'}, 2150, 400)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell and buy gems and jewelry."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the mourned Tesha."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time is yet another burden that lies heavy on our mortal bodies."})
keywordHandler:addKeyword({'temple'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The temple can offer us guidance and solace in our mortal existence."})
keywordHandler:addKeyword({'oldpharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This poor man could not comprehend his son's wisdom. Perhaps he has spelled his own eternal doom."})
keywordHandler:addKeyword({'pharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is the benevolent father of this nation. Blessed be our saviour."})
keywordHandler:addKeyword({'scarab'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The priests say they are sacred beings, although ... <whispers>I find them scary!"})
keywordHandler:addKeyword({'chosen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can only hope my humble work for our community and for the temple will make me worthy one day to be elevated to the rank of a chosen one. One to whom the path of ascension is opened up through undeath."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The world is so huge, and I have seen so little. Perhaps if I am chosen one day I will travel and see it all."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those citites are so far away. So far that the enlightened preachings of our divine pharaoh cannot reach those poor misguided souls."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those citites are so far away. So far that the enlightened preachings of our divine pharaoh cannot reach those poor misguided souls."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those citites are so far away. So far that the enlightened preachings of our divine pharaoh cannot reach those poor misguided souls."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those citites are so far away. So far that the enlightened preachings of our divine pharaoh cannot reach those poor misguided souls."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Dwarves have a strong Akh. This makes them arrogant and deaf to the true creed."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Dwarves have a strong Akh. This makes them arrogant and deaf to the true creed."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Dwarves have a strong Akh. This makes them arrogant and deaf to the true creed."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Most elves lack the sincerity to strive for ascension. At least that's what the priests are telling us."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Most elves lack the sincerity to strive for ascension. At least that's what the priests are telling us."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Most elves lack the sincerity to strive for ascension. At least that's what the priests are telling us."})
keywordHandler:addKeyword({'daraman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He was a great man. If he had left his mortal existence behind he might have become one of the greatest prophets of the true faith, second only to the pharaoh himself."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In the desert the lines of life and death are clearly drawn. Because of this it is easier for us, its children, to focus on them. In the jungle those lines are fuzzy and blurred, and people easily fall victim to temptation."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those poor souls there might still be saved if only they listened."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This city is both a refuge and centre of learning for the believers of the true faith taught by his divine majesty the pharaoh."})
keywordHandler:addKeyword({'mortality'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Mortality can be overcome. It is a sickness, but it can be cured through undeath."})
keywordHandler:addKeyword({'false'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These greedy beings are trying to devour us all. May the pharaoh thwart their evil plans and free us from their reign of terror!"})
keywordHandler:addKeyword({'ascension'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, I am not asking for much, you know. I mean, I really don't have to be a god or something. All I wish for is a bit of the wisdom that comes with ascension."})
keywordHandler:addKeyword({"Akh'rah Uthun"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't really understand this concept, but from what I know it is the three components that make up every being."})
keywordHandler:addKeyword({'Akh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our body. The only physical part of the Akh'rah Uthun."})
keywordHandler:addKeyword({'undea'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Undeath is the reward for a life of faith and service."})
keywordHandler:addKeyword({'Rah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Rah is our essence. The spiritual bond that keep the other parts of the Akh'rah Uthun together."})
keywordHandler:addKeyword({'uthun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Uthun is all we learned in life."})
keywordHandler:addKeyword({'mourn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dead mourn our tempted existence, and we mourn ourselves."})
keywordHandler:addKeyword({'arena'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Look for it in the eastern part of the city."})
keywordHandler:addKeyword({'palace'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Isn't the palace magnificent to behold? It is so impressive!"})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you various gems, pearls or some wonderful jewels. I also change and deposit money."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you various gems, pearls or some wonderful jewels. I also change and deposit money."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you various gems, pearls or some wonderful jewels. I also change and deposit money."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you various gems, pearls or some wonderful jewels. I also change and deposit money."})
keywordHandler:addKeyword({'gem'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can buy and sell small diamonds, small sapphires, small rubies, small emeralds, and small amethysts."})
keywordHandler:addKeyword({'pearl'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are white and black pearls you can buy or sell."})
keywordHandler:addKeyword({'jewel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Currently you can purchase wedding rings, golden amulets, and ruby necklaces."})
keywordHandler:addKeyword({'talon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't trade or work with these magic gems. It's better you ask a mage about this."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

----MESSAGES------------------------------------------------------------------------------
	if msgcontains(msg, 'change gold') then
		npcHandler:say('How many platinum coins do you want to get?')
		talkState = 8

	elseif msgcontains(msg, 'change platinum') then
		npcHandler:say('Do you want to change your platinum coins to gold or crystal?')
		talkState = 10

	elseif msgcontains(msg, 'change crystal') then
		npcHandler:say('How many crystal coins do you want to change to platinum?')
		talkState = 15

----CHANGE GOLD---------------------------------------------------------------------------------
	elseif talkState == 8 and (getMoneyCount(msg) <= 0 or getMoneyCount(msg) >= 999) then
    npcHandler:say('Well, can I help you with something else?')
    talkState = 0
	elseif talkState == 8 then
		n = getMoneyCount(msg)
		b = n * 100
		npcHandler:say('So I should change '..b..' of your gold coins to '..n..' platinum coins for you?')
		talkState = 9

	elseif talkState == 9 then
		if msgcontains(msg, 'yes') then
			if doPlayerRemoveItem(cid, 2148, b) == true then
				doPlayerAddItem(cid, 2152, n)
				npcHandler:say('Here you are.')
				talkState = 0
			else
				npcHandler:say('You don\'t have money.')
				talkState = 0
			end
		else
			npcHandler:say('Ok. We cancel.')
			talkState = 0
		end

----CHANGE PLATINUM-------------------------------------------------------------------------
	elseif talkState == 10 then
		if msgcontains(msg, 'gold') then
			npcHandler:say('How many platinum coins do you want to change to gold?')
			talkState = 11
		elseif msgcontains(msg, 'crystal') then
			npcHandler:say('How many crystal coins do you want to get?')
			talkState = 13
		end

	elseif talkState == 11 and (getMoneyCount(msg) <= 0 or getMoneyCount(msg) >= 999) then
		npcHandler:say('Well, can I help you with something else?')
    talkState = 0
	elseif talkState == 11 then
		n = getMoneyCount(msg)
		b = n * 100
		npcHandler:say('So I should change '..n..' of your platinum coins to '..b..' gold coins for you?')
		talkState = 12

	elseif talkState == 12 then
		if msgcontains(msg, 'yes') then
			if doPlayerRemoveItem(cid, 2152, n) == true then
				doPlayerAddItem(cid, 2148, b)
				npcHandler:say('Here you are.')
				talkState = 0
			else
				npcHandler:say('You don\'t have money.')
				talkState = 0
			end
		else
			npcHandler:say('Ok. We cancel.')
			talkState = 0
		end
	elseif talkState == 13 and (getMoneyCount(msg) <= 0 or getMoneyCount(msg) >= 999) then
    npcHandler:say('Well, can I help you with something else?')
    talkState = 0
	elseif talkState == 13 then
		n = getMoneyCount(msg)
		b = n * 100
		npcHandler:say('So I should change '..b..' of your platinum coins to '..n..' crystal coins for you?')
		talkState = 14

	elseif talkState == 14 then
		if msgcontains(msg, 'yes') then
			if doPlayerRemoveItem(cid, 2152, b) == true then
				doPlayerAddItem(cid, 2160, n)
				npcHandler:say('Here you are.')
				talkState = 0
			else
				npcHandler:say('You don\'t have money.')
				talkState = 0
			end
		else
			npcHandler:say('Ok. We cancel.')
			talkState = 0
		end

----CHANGE CRYSTAL-------------------------------------------------------------------------------
	elseif talkState == 15 and (getMoneyCount(msg) <= 0 or getMoneyCount(msg) >= 999) then
    npcHandler:say('Well, can I help you with something else?')
    talkState = 0
	elseif talkState == 15 then
		n = getMoneyCount(msg)
		b = n * 100
		npcHandler:say('So I should change '..n..' of your crystal coins to '..b..' platinum coins for you?')
		talkState = 16

	elseif talkState == 16 then
		if msgcontains(msg, 'yes') then
			if doPlayerRemoveItem(cid, 2160, n) == true then
				doPlayerAddItem(cid, 2152, b)
				npcHandler:say('Here you are.')
				talkState = 0
			else
				npcHandler:say('You don\'t have money.')
				talkState = 0
			end
		else
			npcHandler:say('Ok. We cancel.')
			talkState = 0
		end
	--[[ // disabling bank accounts
----BALANCE-------------------------------------------------------------------------
	elseif	msgcontains(msg, 'balance') then
		npcHandler:say("Your account balance is ".. getPlayerBalance(cid) .." gold.", 1)
		talk_state = 0

----DEPOSIT------------------------------------------------------------------------
	elseif	msgcontains(msg, 'deposit all') then
		if getPlayerMoney(cid) > 0 then
			npcHandler:say('Would you like to deposit '.. getPlayerMoney(cid) ..' gold?', 1)
			talk_state = 205
		else
			npcHandler:say('You don\'t have money.', 1)
			talk_state = 0
		end

	elseif	msgcontains(msg, 'deposit') then
		DEPOSITAMOUNT = getMoneyCount(msg)
		if DEPOSITAMOUNT >= 1 then
			if DEPOSITAMOUNT <= getPlayerMoney(cid) then
				npcHandler:say("Would you like to deposit ".. DEPOSITAMOUNT .." gold?", 1)
				talk_state = 203
			else
				npcHandler:say("You don't have that money amount!", 1)
				talk_state = 0
			end
		else
			npcHandler:say('How much would you like to deposit?', 1)
			talk_state = 201
		end

	elseif talk_state == 201 then
		DEPOSITAMOUNT = getMoneyCount(msg)
		if DEPOSITAMOUNT >= 1 then
			if DEPOSITAMOUNT <= getPlayerMoney(cid) then
				npcHandler:say("Would you like to deposit ".. DEPOSITAMOUNT .." gold?", 1)
				talk_state = 203
			else
				npcHandler:say("You don't have that money amount!", 1)
				talk_state = 0
			end
		else
			npcHandler:say("I'm sorry, but you must give me an valid amount of how much you would like to deposit.", 1)
		end

	elseif talk_state == 203 and msgcontains(msg,'no') then
		npcHandler:say('Ok then.')
		talk_state = 0

	elseif talk_state == 203 and msgcontains(msg, 'yes') then
		if doPlayerDepositMoney(cid, DEPOSITAMOUNT) == true then
			npcHandler:say("You have added ".. DEPOSITAMOUNT .." gold to your bank account.", 1)
			talk_state = 0
		else
			npcHandler:say("You don't have that money amount!", 1)
			talk_state = 0
		end

	elseif talk_state == 205 and msgcontains(msg, 'yes') then
		PLAYERCURRENTMONEY = getPlayerMoney(cid)
		if doPlayerDepositMoney(cid, PLAYERCURRENTMONEY) == true then
			npcHandler:say("You have added ".. PLAYERCURRENTMONEY .." gold to your bank account.", 1)
			talk_state = 0
		else
			npcHandler:say("Hey! where did you put the money?", 1)
			talk_state = 0
		end

----WITHDRAW-------------------------------------------------------------------------
	elseif	msgcontains(msg, 'withdraw all') then
		WITHDRAWMONEY = getPlayerBalance(cid)
		if WITHDRAWMONEY >= 1 then
			if getPlayerBalance(cid) >= WITHDRAWMONEY then
				npcHandler:say("Would you like to withdraw ".. WITHDRAWMONEY .." gold?", 1)
				talk_state = 303
			else
				npcHandler:say('There is not enough gold on your account.', 1)
				talk_state = 0
			end
		else
			npcHandler:say("You don't have money on your bank account!", 1)
			talk_state = 0
		end

	elseif msgcontains(msg, 'withdraw') then
		WITHDRAWMONEY = getMoneyCount(msg)
		if WITHDRAWMONEY >= 1 then
			if getPlayerBalance(cid) >= WITHDRAWMONEY then
				npcHandler:say("Would you like to withdraw ".. WITHDRAWMONEY .." gold?", 1)
				talk_state = 303
			else
				npcHandler:say('There is not enough gold on your account.', 1)
				talk_state = 0
			end
		else
			npcHandler:say('How much would you like to withdraw?', 1)
			talk_state = 301
		end

	elseif talk_state == 301 then
		WITHDRAWMONEY = getMoneyCount(msg)
		if WITHDRAWMONEY >= 1 then
			if getPlayerBalance(cid) >= WITHDRAWMONEY then
				npcHandler:say("Would you like to withdraw ".. WITHDRAWMONEY .." gold?", 1)
				talk_state = 303
			else
				npcHandler:say('There is not enough gold on your account.', 1)
				talk_state = 0
			end
		else
			npcHandler:say("I'm sorry, but you must give me a valid amount of how much you would like to withdraw.", 1)
			talk_state = 0
		end

	elseif talk_state == 303 and msgcontains(msg, 'yes') then
		if doPlayerWithdrawMoney(cid, WITHDRAWMONEY) == true then
			npcHandler:say("Here you are.", 1)
			talk_state = 0
		else
			npcHandler:say("You don't have that money amount on your bank account!", 1)
			talk_state = 0
		end

	elseif talk_state == 303 and msgcontains(msg, 'no') then
		npcHandler:say('Ok then.')
		talk_state = 0

----TRANSFER-------------------------------------------------------------------------
	elseif msgcontains(msg, 'transfer') then
		TRANSFERAMOUNT = getMoneyCount(msg)
		if TRANSFERAMOUNT >= 1 then
			if getPlayerBalance(cid) > TRANSFERAMOUNT then
				npcHandler:say('Who would you like transfer ' .. TRANSFERAMOUNT .. ' gold to?', 1)
				talk_state = 504
			else
				npcHandler:say('There is not enough gold on your account.', 1)
				talk_state = 0
			end
		else
			npcHandler:say('Please tell me the amount of gold you would like to transfer.', 1)
			talk_state = 501
		end

	elseif talk_state == 501 and getMoneyCount(msg) >= 1 then
		TRANSFERAMOUNT = getMoneyCount(msg)
		if getPlayerBalance(cid) > TRANSFERAMOUNT then
			npcHandler:say('Who would you like transfer ' .. TRANSFERAMOUNT .. ' gold to?', 1)
			talk_state = 504
		else
			npcHandler:say('There is not enough gold on your account.', 1)
			talk_state = 0
		end

	elseif talk_state == 504 then
		TRANSFERTO = msg
		if playerExists(TRANSFERTO) then
			newmsg = string.upper(string.sub(msg, 0, 1)) .. string.sub(msg, 2)
			UPPERCASETRANSFERTO = newmsg
			npcHandler:say("Would you like to transfer ".. TRANSFERAMOUNT .." gold to ".. UPPERCASETRANSFERTO .."?", 1)
			talk_state = 505
		else
			npcHandler:say("This player does not exist.", 1)
			talk_state = 0
		end

	elseif talk_state == 505 and msgcontains(msg, 'no') then
		npcHandler:say('Ok then.')
		talk_state = 0

	elseif talk_state == 505 and msgcontains(msg, 'yes') then
		receiver = getPlayerGUIDByName(UPPERCASETRANSFERTO)
		if (getVocationByPlayerGUID(getPlayerGUIDByName(UPPERCASETRANSFERTO)) <= 0) or (getVocationByPlayerGUID(getPlayerGUIDByName(UPPERCASETRANSFERTO)) >= 9) then
			npcHandler:say("You can not send money to Rookgaard!", 1)
			talk_state = 0
		elseif receiver == getPlayerGUIDByName(getPlayerName(cid)) then
			npcHandler:say("You can not send money to yourself.", 1)
			talk_state = 0
		else
			doPlayerTransferMoneyTo(cid, UPPERCASETRANSFERTO, TRANSFERAMOUNT)
			npcHandler:say('Very well. You have transferred ' .. TRANSFERAMOUNT .. ' gold to ' .. UPPERCASETRANSFERTO ..'.', 1)
			talk_state = 0
		end	]]-- //disabling bank accounts
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
