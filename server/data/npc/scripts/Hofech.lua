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

shopModule:addBuyableItem({'knight statue'}, 					3916, 50)
shopModule:addBuyableItem({'goblin statue'}, 					3930, 50)
shopModule:addBuyableItem({'minotaur statue'}, 					3925, 50)

keywordHandler:addKeyword({'statue'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell knight, goblin and minotaur statues."})

shopModule:addBuyableItem({'big table'}, 					ID_bigtable, 30)
shopModule:addBuyableItem({'square table'}, 					ID_squaretable, 25)
shopModule:addBuyableItem({'small table'}, 					ID_smalltable, 20)
shopModule:addBuyableItem({'small round table'}, 					ID_smallroundtable, 25)

keywordHandler:addKeyword({'table'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell big, small, small round and square tables."})

shopModule:addBuyableItem({'wooden chair'}, 					ID_woodenchair, 15)
shopModule:addBuyableItem({'sofa chair'}, 					ID_sofachair, 55)
shopModule:addBuyableItem({'red cushioned chair'}, 					ID_redcushionedchair, 40)
shopModule:addBuyableItem({'green cushioned chair'}, 					ID_greencushionedchair, 40)

keywordHandler:addKeyword({'chair'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell wooden, sofa, red cushioned and green cushioned chairs."})

shopModule:addBuyableItem({'flower bowl'}, 					ID_flowerbowl, 6)
shopModule:addBuyableItem({'honey flower'}, 					ID_honeyflower, 5)
shopModule:addBuyableItem({'potted flower'}, 					ID_pottedflower, 5)
shopModule:addBuyableItem({'indoor plant'}, 					ID_indoorplant, 8)

keywordHandler:addKeyword({'flower'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell flower bowls, honey flowers, potted flowers and indoor plants."})

shopModule:addBuyableItem({'small purple pillow'}, 					ID_purplepillow, 20)
shopModule:addBuyableItem({'small green pillow'}, 					ID_greenpillow, 20)
shopModule:addBuyableItem({'small red pillow'}, 					ID_redpillow, 20)
shopModule:addBuyableItem({'small blue pillow'}, 					ID_bluepillow, 20)
shopModule:addBuyableItem({'small orange pillow'}, 					ID_orangepillow, 20)
shopModule:addBuyableItem({'small turqoise pillow'}, 					ID_turqoisepillow, 20)
shopModule:addBuyableItem({'small white pillow'}, 					ID_whitepillow, 20)
shopModule:addBuyableItem({'heart pillow'}, 					ID_heartpillow, 30)
shopModule:addBuyableItem({'round blue pillow'}, 					ID_blueroundpillow, 25)
shopModule:addBuyableItem({'round red pillow'}, 					ID_redroundpillow, 25)
shopModule:addBuyableItem({'round purple pillow'}, 					ID_purpleroundpillow, 25)
shopModule:addBuyableItem({'round turqoise pillow'}, 					ID_turqoiseroundpillow, 25)
shopModule:addBuyableItem({'square blue pillow'}, 					ID_bluesquarepillow, 30)
shopModule:addBuyableItem({'square red pillow'}, 					ID_redsquarepillow, 30)
shopModule:addBuyableItem({'square green pillow'}, 					ID_greensquarepillow, 30)
shopModule:addBuyableItem({'square yellow pillow'}, 					ID_yellowsquarepillow, 30)

keywordHandler:addKeyword({'pillow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell small purple, green, red, blue, orange, turqoise and white pillows. and round blue, red, purple and turqoise pillows. and square blue, red, green and yellow pillows. and also heart pillows."})

shopModule:addBuyableItem({'vase'}, 					ID_vase, 3, 0)
shopModule:addBuyableItem({'coal basin'}, 					ID_coalbasin, 25)
shopModule:addBuyableItem({'large amphora'}, 					ID_largeamphora, 50)
shopModule:addBuyableItem({'amphora'}, 					ID_amphora, 4)

keywordHandler:addKeyword({'pottery'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell vase, coal basin, amphora and large amphora."})

shopModule:addBuyableItem({'harp'}, 					ID_harp, 50)
shopModule:addBuyableItem({'piano'}, 					ID_piano, 200)

keywordHandler:addKeyword({'instruments'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell harp and piano."})

shopModule:addBuyableItem({'water pipe'}, 					ID_waterpipe, 40)
shopModule:addBuyableItem({'coal basin'}, 					ID_coalbasin, 25)
shopModule:addBuyableItem({'birdcage'}, 					ID_birdcage, 50)
shopModule:addBuyableItem({'globe'}, 					ID_globe, 50)
shopModule:addBuyableItem({'pendulum clock'}, 					ID_pendulumclock, 75)
shopModule:addBuyableItem({'table lamp'}, 					ID_tablelamp, 35)
shopModule:addBuyableItem({'cuckoo clock'}, 					ID_cuckooclock, 40)
shopModule:addBuyableItem({'rocking horse'}, 					3922, 30)
shopModule:addBuyableItem({'globe'}, 					3927, 50)

keywordHandler:addKeyword({'decoration'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell coal basin, water pipe, birdcage, globe, pendulum clock, table lamp, rocking horse, globe and cuckoo clock."})

shopModule:addBuyableItem({'green tapestry'}, 					ID_greentapestry, 25)
shopModule:addBuyableItem({'yellow tapestry'}, 					ID_yellowtapestry, 25)
shopModule:addBuyableItem({'orange tapestry'}, 					ID_orangetapestry, 25)
shopModule:addBuyableItem({'red tapestry'}, 					ID_redtapestry, 25)
shopModule:addBuyableItem({'blue tapestry'}, 					ID_bluetapestry, 25)
shopModule:addBuyableItem({'white tapestry'}, 					ID_whitetapestry, 25)

keywordHandler:addKeyword({'tapestry'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell green, yellow, orange, red, blue and white tapestry."})
keywordHandler:addKeyword({'tapestries'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell green, yellow, orange, red, blue and white tapestry."})

shopModule:addBuyableItem({'wooden drawer'}, 					ID_woodendrawer, 20)
shopModule:addBuyableItem({'dresser'}, 					ID_dresser, 25)
shopModule:addBuyableItem({'locker'}, 					ID_locker, 30)
shopModule:addBuyableItem({'large trunk'}, 					ID_largetrunk, 10)
shopModule:addBuyableItem({'box'}, 					1738, 10)
shopModule:addBuyableItem({'chest'}, 					1740, 10)
shopModule:addBuyableItem({'crate'}, 					1739, 10)
shopModule:addBuyableItem({'trough'}, 					1775, 7)
shopModule:addBuyableItem({'barrel'}, 					ID_barrel, 12)

keywordHandler:addKeyword({'container'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I seel wooden drawer, dresser, locker, large trunk, box, chest, crate, barrel and trough."})

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Hofech Ibn Kalith."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling furniture and equipment to grace the homes."})
keywordHandler:addKeyword({'caliph'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The caliph has the finest home and interior decoration in Darashia."})
keywordHandler:addKeyword({'kazzan'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The caliph has the finest home and interior decoration in Darashia."})
keywordHandler:addKeyword({'daraman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The prophet is alive! Both in the heavens and in our our hearts."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't know about such a person, my friend."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think if that sword really existed, it would make a splendid decoration for any wall."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The wood we are using to make our exquisite furniture is partly supplied by Thais."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One day I will take my flying carpet to see the whole world."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I was not there yet. But I plan to travel there one day."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'furniture'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'special'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are extraordinarily cheap, given the fine quality of our stock. Just look at that table!"})
keywordHandler:addKeyword({'carpet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "No no, I don't sell any carpets."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's |TIME| my friend."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

--START of Complete System For Creature Item Mission&Buy--
if msgcontains(msg, "minotaur leather") then
	if(npcHandler.focus ~= cid) then
		return false
	end
config = {itemname = "minotaur leather", itemid = ID_minotaurleather, creature = "minotaur", monstertype = "minotaurs", queststarted = 27012, kills = 100, price = 90}
	if getPlayerStorageValue(cid, config.queststarted) < 0 then
	npcHandler:say("I'm looking for ".. config.itemname .." provider, would you like to become one for me?", 1)
	talk_state = 101

	elseif getPlayerStorageValue(cid, config.queststarted) < config.kills then
	npcHandler:say("You aren't done with your mission yet, you have to kill another ".. config.kills-getPlayerStorageValue(cid, config.queststarted) .." ".. config.monstertype .."!", 1)
	talk_state = 0
	
	elseif getPlayerStorageValue(cid, config.queststarted) >= config.kills then
	npcHandler:say("Aha, are you here to sell some?", 1)
	talk_state = 201	
	end
	
elseif talk_state == 101 and msgcontains(msg, 'yes') then
	setPlayerStorageValue(cid, config.queststarted, 0)
	npcHandler:say("Okey, before you can provide me with those, you have to prove you're a real ".. config.creature .." hunter! kill 100 wolves and come back when you're done!", 1)
	talk_state = 0	
elseif talk_state == 101 and msgcontains(msg, '') then
	npcHandler:say("Then not...", 1)
	talk_state = 0		

elseif talk_state == 201 and msgcontains(msg, 'yes') then
	npcHandler:say("Awesome! how many you got?", 1)
	talk_state = 202	
elseif talk_state == 201 and msgcontains(msg, '') then
	npcHandler:say("Then why are you here?!", 1)
	talk_state = 0
	
elseif talk_state == 202 then
		TEXTMSG = msg
		amount = getCount(msg)
		if amount >= 1 then
			npcHandler:say("Would you like to sell me ".. amount .." ".. config.itemname .." for ".. (amount*config.price) .." gold?", 1)
			talk_state = 203
		else
		npcHandler:say("I asked you HOW MANY, not what your life is...", 1)
		talk_state = 0
		end
elseif talk_state == 203 and msgcontains(msg, 'yes') then
	if doPlayerRemoveItem(cid, config.itemid, amount) == TRUE then
	doPlayerAddMoney(cid, amount*config.price)
	npcHandler:say("Thank you so much! here's your ".. (amount*config.price) .." gold!", 1)
	talk_state = 0	
	else
	npcHandler:say("Don't try to fool me kid! you don't have that many ".. config.itemname .."!", 1)
	talk_state = 0		
	end
	
end
--END of Complete System For Creature Item Mission&Buy--
    return TRUE
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
