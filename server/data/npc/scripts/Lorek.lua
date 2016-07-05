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
 

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm a ferryman. If you want me to transport you to the other end of the city, feel free to ask me for a passage."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Lorek."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have no idea."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "II wonder if he will inspect our colony some day."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It seems the traders are incredibly rich."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I left Thais for the opportunities that might be found here."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am not sure if we are at war with them. I think they defy the rule of our king."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Edron has to be very pretty and all people there are rich and such."})
keywordHandler:addKeyword({'jungle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can only hope that the guards protect us all from those dangerous beasts out there."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The world is so big that it often scares me."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I overheard the dwarves talking about it. I have no idea what it is though."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are some dwarves living here."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are some dwarves living here."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What?"})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I only heard of them, but I never saw one. It's said that they have funny ears."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I only heard of them, but I never saw one. It's said that they have funny ears."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If more people move to Darama, I might get a better job and earn a fortune."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Another human settlement on this continent. It's somewhere in the desert though."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They say it's a city full of undead and half-dead people. What a horrible thought!"})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heard he is some scary magician or so."})
keywordHandler:addKeyword({'trip'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the centre of Port Hope or to the west end of the town, where would you like to go?"})
keywordHandler:addKeyword({'route'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the centre of Port Hope or to the west end of the town, where would you like to go?"})
keywordHandler:addKeyword({'passage'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the centre of Port Hope or to the west end of the town, where would you like to go?"})
keywordHandler:addKeyword({'destination'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the centre of Port Hope or to the west end of the town, where would you like to go?"})
keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the centre of Port Hope or to the west end of the town, where would you like to go?"})
keywordHandler:addKeyword({'go'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the centre of Port Hope or to the west end of the town, where would you like to go?"})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
pos = getPlayerPosition(cid)
--Travel in hurry--
if msgcontains(msg, "bring me to west") then
	bcprice = 7
	bcdestination = {x=32558, y=32780, z=7}
	bcname = ""
	if getPlayerSkullType(cid) <= 2 then
		if doPlayerRemoveMoney(cid, bcprice) == true then
		doTeleportThing(cid, bcdestination)
		doSendMagicEffect(bcdestination, 10)
		npcHandler:say("Here we go!", 1)
		talk_state = 0
		else
		npcHandler:say("You don't have enough money.", 1)
		talk_state = 0
		end
	else
	npcHandler:say("Get rid of that skull first!", 1)
	talk_state = 0	
	end
elseif msgcontains(msg, "bring me to cent") then
	bcprice = 7
	bcdestination = {x=32628, y=32771, z=7}
	bcname = ""
	if getPlayerSkullType(cid) <= 2 then
		if doPlayerRemoveMoney(cid, bcprice) == true then
		doTeleportThing(cid, bcdestination)
		doSendMagicEffect(bcdestination, 10)
		npcHandler:say("Here we go!", 1)
		talk_state = 0
		else
		npcHandler:say("You don't have enough money.", 1)
		talk_state = 0
		end
	else
	npcHandler:say("Get rid of that skull first!", 1)
	talk_state = 0	
	end
--End of Travel in hurry--
	
--Give Destination--
elseif msgcontains(msg, 'west') and npcHandler.focus == cid then
	bcprice = 7
	bcdestination = {x=32558, y=32780, z=7}
	bcname = ""
	npcHandler:say("Do you seek a passage to the west end of Port Hope for 7 gold?", 1)
	talk_state = 9166
	
elseif msgcontains(msg, "cent") and npcHandler.focus == cid then
	bcprice = 7
	bcdestination = {x=32628, y=32771, z=7}
	bcname = ""
	npcHandler:say("Do you seek a passage to the centre of Port Hope for 7 gold?", 1)
	talk_state = 9166

--End of Give Destination--
	

	
	
--System that does the job after confirm destination--
elseif talk_state == 9166 and msgcontains(msg, 'yes') and npcHandler.focus == cid then
	if getPlayerSkullType(cid) <= 2 then
		if doPlayerRemoveMoney(cid, bcprice) == true then
		doTeleportThing(cid, bcdestination)
		doSendMagicEffect(bcdestination, 10)
		npcHandler:say("Here we go!", 1)
		talk_state = 0
		else
		npcHandler:say("You don't have enough money.", 1)
		talk_state = 0
		end
	else
	npcHandler:say("Get rid of that skull first!", 1)
	talk_state = 0	
	end
--End of the System that does the job after confirm destination--
	
	
end		
    return true
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
