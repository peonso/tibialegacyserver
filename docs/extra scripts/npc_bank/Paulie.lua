local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)						  npcHandler:onCreatureAppear(cid)						end
function onCreatureDisappear(cid)					   npcHandler:onCreatureDisappear(cid)					 end
function onCreatureSay(cid, type, msg)				  npcHandler:onCreatureSay(cid, type, msg)				end
function onThink()									  npcHandler:onThink()									end

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

----BALANCE-------------------------------------------------------------------------
	elseif	msgcontains(msg, 'balance') then
		npcHandler:say("Your account balance is ".. getPlayerBalance(cid) .." gold.", 1)
		talk_state = 0

----DEPOSIT------------------------------------------------------------------------
	elseif	msgcontains(msg, 'deposit all') then
		if getPlayerMoney(cid) > 0 then
			if getPlayerBalance(cid)+getPlayerMoney(cid) > 1000 then
				npcHandler:say('Sorry, the maximum amount of gold we can store is 1000.', 1)
				talk_state = 0
			else
				npcHandler:say('Would you like to deposit '.. getPlayerMoney(cid) ..' gold?', 1)
				talk_state = 205
			end
		else
			npcHandler:say('You don\'t have money.', 1)
			talk_state = 0
		end

	elseif	msgcontains(msg, 'deposit') then
		DEPOSITAMOUNT = getMoneyCount(msg)
		if DEPOSITAMOUNT >= 1 then
			if DEPOSITAMOUNT <= getPlayerMoney(cid) then
				if DEPOSITAMOUNT+getPlayerBalance(cid) > 1000 then
					npcHandler:say('Sorry, the maximum amount of gold we can store is 1000.', 1)
					talk_state = 0
				else
					npcHandler:say("Would you like to deposit ".. DEPOSITAMOUNT .." gold?", 1)
					talk_state = 203
				end
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
		npcHandler:say(' I\'m afraid this service is not available to you until you reach mainland.', 1)
		talk_state = 0
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
