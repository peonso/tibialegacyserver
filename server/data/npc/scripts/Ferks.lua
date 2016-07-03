dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a banker, my job is to exchange coins."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Ferks <bows slightly>."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "His royal highness might visit this little but promising community one day if we develop well."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our city and society could be a role model for all Tibians."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais is still a power that must be taken into account. Power is not everything of course."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Carlin is nothing but a nuisance."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Edron has little to offer. It's overestimated. Let those silly knights have it. In the end it will be us who clean up the mess and bring order into the chaos that will be left when they finally leave."})
keywordHandler:addKeyword({'jungle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This jungle is dangerous. The more area we can finally cultivate, the better. Only if we chop and burn enough of it down and create new farmland, we can build a new centre of commerce."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sometimes I wonder why the gods don't put more effort into bringing us order but I am a banker, not a priest."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Dwarves are disciplined people, which I appreciate."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Dwarves are disciplined people, which I appreciate."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Dwarves are disciplined people, which I appreciate."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This wilderness and the dry desert need to be colonised by civilised people like us. We bring the light of order and prosperity to this continent."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This town has little that we are interested in."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have to admit that I somehow admire the strong guidance of this pharao. Most fail to acknowledge that his subjects are in need of such a strict leadership."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A servant of chaos. I wonder why all the Thaian military power can't stop him for good."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A fictitious weapon is of no use at all."})
keywordHandler:addKeyword({'ape'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They mindlessly attack our settlement to steal tools and everything else they get into their hairy hands."})
keywordHandler:addKeyword({'lizard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They live so far away in the jungle that we know only little of them. Perhaps this primitive race can be used in some way."})
keywordHandler:addKeyword({'dworc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Evil little bastards they are."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is exactly |TIME| right now."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

--------------------MESSAGES------------------------------------------------------------------------------            
        if msgcontains(msg, 'change gold') then
                npcHandler:say('How many platinum coins do you want to get?')
                talkState = 8
                
        elseif msgcontains(msg, 'change platinum') then
                npcHandler:say('Do you want to change your platinum coins to gold or crystal?')
                talkState = 10
                
        elseif msgcontains(msg, 'change crystal') then
                npcHandler:say('How many crystal coins do you want to change to platinum?')
                talkState = 15

----------------------CHANGE GOLD---------------------------------------------------------------------------------
        elseif talkState == 8 and getNumber(msg) == 0 or getNumber(msg) >= 999 then
		npcHandler:say('How many platinum coins do you want to get?')
		elseif talkState == 8 then
                n = getNumber(msg)
                b = n * 100
                npcHandler:say('So I should change '..b..' of your gold coins to '..n..' platinum coins for you?')
                talkState = 9
                
        elseif talkState == 9 then
                if msgcontains(msg, 'yes') then
                        if doPlayerRemoveItem(cid, 2148, b) == TRUE then
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

---------------------CHANGE PLATINUM-------------------------------------------------------------------------
				elseif talkState == 10 then
                        if msgcontains(msg, 'gold') then
                                npcHandler:say('How many platinum coins do you want to change to gold?')
                                talkState = 11
                        elseif msgcontains(msg, 'crystal') then
                                npcHandler:say('How many crystal coins do you want to get?')
                                talkState = 13                                
                        end
                
		elseif talkState == 11 and getNumber(msg) == 0 or getNumber(msg) >= 999 then
		npcHandler:say('How many platinum coins do you want to change to gold?')	
                elseif talkState == 11 then
                        n = getNumber(msg)
                        b = n * 100
                        npcHandler:say('So I should change '..n..' of your platinum coins to '..b..' gold coins for you?')
                        talkState = 12
              
        elseif talkState == 12 then
                if msgcontains(msg, 'yes') then
                        if doPlayerRemoveItem(cid, 2152, n) == TRUE then
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
	elseif talkState == 13 and getNumber(msg) == 0 or getNumber(msg) >= 999 then
		npcHandler:say('How many crystal coins do you want to get?')	
        elseif talkState == 13 then
                n = getNumber(msg)
                b = n * 100
                npcHandler:say('So I should change '..b..' of your platinum coins to '..n..' crystal coins for you?')
                talkState = 14
                
        elseif talkState == 14 then
                if msgcontains(msg, 'yes') then
                        if doPlayerRemoveItem(cid, 2152, b) == TRUE then
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
                
---------------------CHANGE CRYSTAL-------------------------------------------------------------------------------              
               elseif talkState == 15 and getNumber(msg) == 0 or getNumber(msg) >= 999 then
				npcHandler:say('How many crystal coins do you want to change to platinum?')  
				elseif talkState == 15 then
                n = getNumber(msg)
                b = n * 100
                npcHandler:say('So I should change '..n..' of your crystal coins to '..b..' platinum coins for you?')
                talkState = 16
                
        elseif talkState == 16 then
                if msgcontains(msg, 'yes') then
                        if doPlayerRemoveItem(cid, 2160, n) == TRUE then
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
        end
		
---------------------BALANCE-------------------------------------------------------------------------
if  msgcontains(msg, 'balance') then
	npcHandler:say("Your account balance is ".. getPlayerBalance(cid) .." gold.", 1)
	talk_state = 0 
end

---------------------DEPOSIT------------------------------------------------------------------------
if  msgcontains(msg, 'deposit all') then
	PLAYERCURRENTMONEY = ((getPlayerItemCount(cid, ITEM_CRYSTAL_COIN) * 10000) + (getPlayerItemCount(cid, ITEM_PLATINUM_COIN) * 100) + getPlayerItemCount(cid, ITEM_GOLD_COIN))
    npcHandler:say('Would you like to deposit '.. PLAYERCURRENTMONEY ..' gold?', 1)
    talk_state = 205
	
elseif  msgcontains(msg, 'deposit') then
    npcHandler:say('How much would you like to deposit?', 1)
    talk_state = 201 
		
elseif talk_state == 201 then
	DEPOSITAMOUNT = getCount(msg)
if DEPOSITAMOUNT >= 1 then
	npcHandler:say("Would you like to deposit ".. DEPOSITAMOUNT .." gold?", 1)
	talk_state = 203
else
	npcHandler:say("I'm sorry, but you must give me an valid amount of how much you would like to deposit.", 1)
end

elseif talk_state == 203 and msgcontains(msg,'no') then
	npcHandler:say('Ok then.')
	talk_state = 0

elseif talk_state == 203 and msgcontains(msg, 'yes') then
if DepositMoney(cid, DEPOSITAMOUNT) == TRUE then
	npcHandler:say("You have added ".. DEPOSITAMOUNT .." gold to your bank account.", 1)
	talk_state = 0
else
	npcHandler:say("You don't have that money amount!", 1)
	talk_state = 0
end

elseif talk_state == 205 and msgcontains(msg, 'yes') then
if DepositMoney(cid, PLAYERCURRENTMONEY) == TRUE then
	npcHandler:say("You have added ".. PLAYERCURRENTMONEY .." gold to your bank account.", 1)
	talk_state = 0
else
	npcHandler:say("Hey! where did you put the money?", 1)
	talk_state = 0
end
end

---------------------WITHDRAW-------------------------------------------------------------------------
if msgcontains(msg, 'withdraw') then
    npcHandler:say('How much would you like to withdraw?', 1)
    talk_state = 301
	
elseif talk_state == 301 then
	WITHDRAWMONEY = getCount(msg)
if WITHDRAWMONEY >= 1 then
	npcHandler:say("Would you like to withdraw ".. WITHDRAWMONEY .." gold?", 1)
	talk_state = 303
else
	npcHandler:say("I'm sorry, but you must give me a valid amount of how much you would like to withdraw.", 1)
	talk_state = 0
end
		
elseif talk_state == 303 and msgcontains(msg, 'yes') then
if WithdrawMoney(cid, WITHDRAWMONEY) == TRUE then
	npcHandler:say("Here you are.", 1)
	talk_state = 0
else
	npcHandler:say("You don't have that money amount on your bank account!", 1)
	talk_state = 0
end

elseif talk_state == 303 and msgcontains(msg, 'no') then
	npcHandler:say('Ok then.')
	talk_state = 0
end

---------------------TRANSFER-------------------------------------------------------------------------		
if msgcontains(msg, 'transfer') then
    npcHandler:say('How much would you like to transfer?', 1)
    talk_state = 501

elseif talk_state == 501 and getCount(msg) >= 1 then
	TRANSFERAMOUNT = getCount(msg)
    npcHandler:say('Who would you like to transfer the money to?', 1)
    talk_state = 504 

elseif talk_state == 504 then
	TRANSFERTO = msg
	newmsg = string.upper(string.sub(msg, 0, 1)) .. string.sub(msg, 2)
	UPPERCASETRANSFERTO = newmsg
	npcHandler:say("Would you like to transfer ".. TRANSFERAMOUNT .." gold to ".. UPPERCASETRANSFERTO .."?", 1)
	talk_state = 505
	
elseif talk_state == 505 and msgcontains(msg, 'no') then
	npcHandler:say('Ok then.')
	talk_state = 0	

elseif talk_state == 505 and msgcontains(msg, 'yes') then
if getPlayerGUIDByName(TRANSFERTO) > 0 then
	checkcharexist = mysqlQuery("SELECT `id`, `bank_balance`, `vocation` FROM `players` WHERE `players`.`name` = '" .. TRANSFERTO .. "'", "id, bank_balance, vocation")
	GETVALIDCHAR = getCount(checkcharexist.id)
if GETVALIDCHAR >= 1 then
	if GETVALIDCHAR == getPlayerGUIDByName(getPlayerName(cid)) then
		npcHandler:say("You can not send money to yourself.", 1)
		talk_state = 0
	else
		notinrook = getCount(checkcharexist.vocation)
		if notinrook == 0 or notinrook == 9 then
			npcHandler:say("You can not send money to Rookgaard!", 1)
			talk_state = 0
		else
			if isPlayerFromRook(cid) == TRUE then
				npcHandler:say("I'm sorry, but you're not allowed to transfer money yet.", 1)
				talk_state = 0
			else
				BALANCEOFTRANSFERTO = getCount(checkcharexist.bank_balance)
				resultdb = mysqlQuery("SELECT `bank_balance` FROM `players` WHERE `players`.`name` = '" .. getPlayerName(cid) .. "'", "bank_balance")
				getbalance = getCount(resultdb.bank_balance)
				if getbalance >= TRANSFERAMOUNT then
					mysqlQuery('UPDATE `players` SET `players`.`bank_balance`="'.. BALANCEOFTRANSFERTO+TRANSFERAMOUNT ..'" WHERE `players`.`name` = "' .. TRANSFERTO .. '"', 'UPDATE')
					mysqlQuery('UPDATE `players` SET `players`.`bank_balance`="'.. getbalance-TRANSFERAMOUNT ..'" WHERE `players`.`name` = "' .. getPlayerName(cid) .. '"', 'UPDATE')
					npcHandler:say("You have transfered ".. TRANSFERAMOUNT .." gold to ".. UPPERCASETRANSFERTO ..".", 1)
					talk_state = 0
				else
					npcHandler:say("You don't have that much money!", 1)
					talk_state = 0
				end	
			end
		end
	end
else
	npcHandler:say("This player does not exist.", 1)
	talk_state = 0
end
else
	npcHandler:say("This player does not exist.", 1)
	talk_state = 0
end
end			

return true        
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())