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
 

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a ferryman now, in my youth I was a sailor though. If you want to travel to one of the ends of the town, just ask me for a passage."})
keywordHandler:addKeyword({'sailor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Aye, matey. I was a sailor and have seen much of this world."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Adall but everyone is calling me old Adall."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hehe, old men have no need for watches. Watches are mocking you, you know?"})
keywordHandler:addKeyword({'mocking'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Watches seem to tell you that not much time is left and how much time you have already lost. They only remind you of everything that is already gone and all the things you will never achieve."})
keywordHandler:addKeyword({'watch'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Watches seem to tell you that not much time is left and how much time you have already lost. They only remind you of everything that is already gone and all the things you will never achieve."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I saw the king and even his father. Thais used the be my home port in the old times."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those newcomers have quite an attitude and it is growing worse with the years. Ambition, ambition. It's all about ambition."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It used to be a lovely town but over the years it has become crowded and noisy."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hehe, it's not such a bad town for a visit, as long as you have your own alcohol on board and are not catched drunk in the city. I had to learn it the hard way and was arrested twice in my youth."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Edron is not the lovely little isle people tend to think it is. There are secrets and ancient evil beneath the ground. Things that had better been left burried, have been unearthed."})
keywordHandler:addKeyword({'jungle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The challenge the jungle is providing is something for the young and daring. I am not going to leave the security of the town, I'll just stay here and watch how things turn out."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The world offers much to discover. Whether you find your fortune or your doom, it is a private thing between you and fate though."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have never seen this inland town on my own."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some dwarves joined the colony. They are looking for treasures and minerals in the jungle."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some dwarves joined the colony. They are looking for treasures and minerals in the jungle."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A curious town of curious people but I have seen odder things during my travels."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves are somewhat strange but most get along well with humans."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves are somewhat strange but most get along well with humans."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One might think it's a strange place for an old man to settle down but I never had a child and I like to see this settlement grow and come of age in my last days."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The people of Darashia are friendly. Still there is nothing exciting that would justify a voyage there."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That city has given me the creeps for as long as I have known about it. Whenever we sailed there, I had a bad feeling of impending doom."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I wonder if he's the Thaian version of the boogey man."})
keywordHandler:addKeyword({'boogey'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The boogey man is only a myth to scare the children and keep them away from the jungle."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heard about that weapon in each and every harbour I have visited. Never heard more than rumours though."})
keywordHandler:addKeyword({'ape'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The apes are for Port Hope what the the orcs are for Thais."})
keywordHandler:addKeyword({'lizard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think they are suspicious and just because they are far away does not mean they are nice neighbours."})
keywordHandler:addKeyword({'dworc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are horrible little creatures. I have seen my share of various orc breeds during my travels and those dworcs are the worst of all."})
keywordHandler:addKeyword({'trip'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the east end of Port Hope or to the west end of the town, where would you like to go?"})
keywordHandler:addKeyword({'route'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the east end of Port Hope or to the west end of the town, where would you like to go?"})
keywordHandler:addKeyword({'passage'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the east end of Port Hope or to the west end of the town, where would you like to go?"})
keywordHandler:addKeyword({'destination'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the east end of Port Hope or to the west end of the town, where would you like to go?"})
keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the east end of Port Hope or to the west end of the town, where would you like to go?"})
keywordHandler:addKeyword({'go'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can bring you either to the east end of Port Hope or to the west end of the town, where would you like to go?"})


function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
pos = getPlayerPosition(cid)
--Travel in hurry--
if msgcontains(msg, "bring me to west") then
	bcprice = 7
	bcdestination = {x=32558, y=32780, z=7}
	bcname = ""
	if getPlayerSkullType(cid) <= 2 then
		if doPlayerRemoveMoney(cid, bcprice) == TRUE then
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
elseif msgcontains(msg, "bring me to east") then
	bcprice = 7
	bcdestination = {x=32679, y=32777, z=7}
	bcname = ""
	if getPlayerSkullType(cid) <= 2 then
		if doPlayerRemoveMoney(cid, bcprice) == TRUE then
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
	
elseif msgcontains(msg, "east") and npcHandler.focus == cid then
	bcprice = 7
	bcdestination = {x=32679, y=32777, z=7}
	bcname = ""
	npcHandler:say("Do you seek a passage to the centre of Port Hope for 7 gold?", 1)
	talk_state = 9166

--End of Give Destination--
	

	
	
--System that does the job after confirm destination--
elseif talk_state == 9166 and msgcontains(msg, 'yes') and npcHandler.focus == cid then
	if getPlayerSkullType(cid) <= 2 then
		if doPlayerRemoveMoney(cid, bcprice) == TRUE then
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
    return TRUE
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
