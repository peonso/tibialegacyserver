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
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Imbul."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I don't own a watch."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It must be fun to be a king."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Here are many people from Venore. I used to live there but I lost my job and took the chance to come here."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's where the king lives. The roads there must be made of gold or marble at least."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a city, I know that."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Edron is some isle where the richest knights and sorcerers live. There they are not annoyed of the constant begging of poor people."})
keywordHandler:addKeyword({'jungle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We already lost many settlers to the jungle. No one knows who is next."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That is our world, yes."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think those dwarves came from Kazordoon."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves that live here are searching for gold."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves that live here are searching for gold."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What is that?"})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The elven queen is the most beautiful woman in Tibia."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The elven queen is the most beautiful woman in Tibia."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Many came here to make their fortune. But it might take a while to become rich."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's somewhere behind that mountain."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heard it's a ghost town or something like that."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Why have some magicians to become evil?"})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I never heard about that."})
keywordHandler:addKeyword({'apes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They stole my paddle once."})
keywordHandler:addKeyword({'lizard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you follow the river far enough upcountry, you might see a lizardman. But be careful, they'll attack you as soon as they catch sight of you."})
keywordHandler:addKeyword({'dworc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are all murderers and cannibals."})
keywordHandler:addKeyword({'trip'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the east end of Port Hope or to the centre of the town, where would you like to go?"})
keywordHandler:addKeyword({'route'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the east end of Port Hope or to the centre of the town, where would you like to go?"})
keywordHandler:addKeyword({'passage'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the east end of Port Hope or to the centre of the town, where would you like to go?"})
keywordHandler:addKeyword({'destination'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the east end of Port Hope or to the centre of the town, where would you like to go?"})
keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the east end of Port Hope or to the centre of the town, where would you like to go?"})
keywordHandler:addKeyword({'go'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the east end of Port Hope or to the centre of the town, where would you like to go?"})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
pos = getPlayerPosition(cid)
--Travel in hurry--
if msgcontains(msg, "bring me to east") then
	bcprice = 7
	bcdestination = {x=32679, y=32777, z=7}
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
elseif msgcontains(msg, 'east') and npcHandler.focus == cid then
	bcprice = 7
	bcdestination = {x=32679, y=32777, z=7}
	bcname = ""
	npcHandler:say("Do you seek a passage to the east end of Port Hope for 7 gold?", 1)
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
