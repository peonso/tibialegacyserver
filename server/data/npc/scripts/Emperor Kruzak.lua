local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

	function FocusModule:init(handler)
	FOCUS_GREETSWORDS = {'hi emperor', 'hello emperor', 'hail emperor', 'salutations emperor'}
	FOCUS_FAREWELLSWORDS = {'bye', 'farewell'}
		self.npcHandler = handler
		for i, word in pairs(FOCUS_GREETSWORDS) do
			local obj = {}
			table.insert(obj, word)
			obj.callback = FOCUS_GREETSWORDS.callback or FocusModule.messageMatcher
			handler.keywordHandler:addKeyword(obj, FocusModule.onGreet, {module = self})
		end
		
		for i, word in pairs(FOCUS_FAREWELLSWORDS) do
			local obj = {}
			table.insert(obj, word)
			obj.callback = FOCUS_FAREWELLSWORDS.callback or FocusModule.messageMatcher
			handler.keywordHandler:addKeyword(obj, FocusModule.onFarewell, {module = self})
		end
		
		return true
	end

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I am the emperor of the dwarfs. It's my duty to protect my folk and give them justice."})
keywordHandler:addKeyword({'justice'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, justice is a difficult thing. Can one be just to all at once, and if not, to whom should he be just?"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I am Emperor Kruzak Dustbeard, son of Fire and Earth, second only to the gods, jawoll."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I am too old to care about gossip anymore."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, the gods handed the lands over to the younger races, but my people will leave this word in dignity."})
keywordHandler:addKeyword({'land'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, the gods handed the lands over to the younger races, but my people will leave this word in dignity."})
keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I'm fine, the last centuries have been good to me, jawoll."})
keywordHandler:addKeyword({'castle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, our people need no castle, our home IS a fortress."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, what do you expect kings to sell?"})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, we honor Father Earth and Mother Fire. Some of us even follow the teachings of additional gods."})
keywordHandler:addKeyword({'citizen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, all dwarfs could be considered citizens. We are brothers and sisters in Fire and Earth."})
keywordHandler:addKeyword({'noodles'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "WAAAH! Don't mention that beast! It was after the bones of our ancestors, last time King Tibianus visted us!"})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, we are prepared even for him."})
keywordHandler:addKeyword({'treasure'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, we are not poor people, but we have ways to defend our wealth."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, it's up to the younger ones to slay the beasts that roam the lands and the tunnels."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I am too busy to help you, but feel free to ask around."})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, if you wander the world with open eyes, you will see the quests without asking."})
keywordHandler:addKeyword({'mission'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, if you wander the world with open eyes, you will see the quests without asking."})
keywordHandler:addKeyword({'gold'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, our people love gold; that's common knowledge."})
keywordHandler:addKeyword({'money'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, our people love gold; that's common knowledge."})
keywordHandler:addKeyword({'tax'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, our people love gold; that's common knowledge."})
keywordHandler:addKeyword({'mines'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, our mines have been invaded by a basilisk. We trapped him with a cave in. The hero that could bring me the body of the beast will get a great reward."})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, there are a lot of dungeons in the lands, waiting to be explored by the daring ones."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, go and buy it in the city."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, go and buy it in the city."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, after some centuries I stopped to worry about time anymore."})
keywordHandler:addKeyword({'hero'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, we dwarfs produced some of the greatest heroes of all times."})
keywordHandler:addKeyword({'adventurer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, we dwarfs produced some of the greatest heroes of all times."})
keywordHandler:addKeyword({'emperor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I am the emperor of the dwarfs and the oldest living dwarf, jawoll!"})
keywordHandler:addKeyword({'age'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I don't want to talk about my age."})
keywordHandler:addKeyword({'old'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I don't want to talk about my age."})
keywordHandler:addKeyword({'youth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I don't want to talk about my age."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, you better ask the general."})
keywordHandler:addKeyword({'enem'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, only a dead enemy is a good enemy."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well we are at peace with Carlin and Thais."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well we are at peace with Carlin and Thais."})
keywordHandler:addKeyword({'city'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, go and see the wonders of our cities yourself."})
keywordHandler:addKeyword({'shop'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, my subjects maintain many fine shops. Go and have a look at their wares."})
keywordHandler:addKeyword({'merchant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, there are some in our city. Go and visit them."})
keywordHandler:addKeyword({'craftsmen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, there are some in our city. Go and visit them."})
keywordHandler:addKeyword({'guild'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, we have two guilds in our town, the Knights and the Sorcerers."})
keywordHandler:addKeyword({'minotaur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, we don't fear them. They seem more occupied with the humans anyway."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, they are not as bad as one might think."})
keywordHandler:addKeyword({'paladin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, we have some crossbowmen in our army but rely more on our knights."})
keywordHandler:addKeyword({'legola'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, isn't that the leader of the Carlin Paladins?"})
keywordHandler:addKeyword({'elane'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, the High Paladin is a woman that deserves respect. I admired most Elanes I met in my life."})
keywordHandler:addKeyword({'knight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, dwarfish knights are feared by our enemies in the whole world."})
keywordHandler:addKeyword({'trisha'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, that's the Carlin High Knight, isn't she? Not to bad as fighter for a big one."})
keywordHandler:addKeyword({'sorceror'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, the sorcerers are followers of the elemental powers."})
keywordHandler:addKeyword({'durin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, Durin is one of the celestial paladins, messenger of the gods. He is the protector of the dwarfish race."})
keywordHandler:addKeyword({'druid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, we have almost no druids in our town. If need arises we can call for them from Carlin."})
keywordHandler:addKeyword({'padreia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, thats an trustworthy ally of dwarfs."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, good and evil will fight each other for all eternity."})
keywordHandler:addKeyword({'evil'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, good and evil will fight each other for all eternity."})
keywordHandler:addKeyword({'order'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, order is of great importance. Life has to follow rules, so do we."})
keywordHandler:addKeyword({'chaos'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, chaos is the ancient enemy. Dwarfs bring order to the world and give things shape. We are enemies of chaos."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, well, well, the godblade. A myth? Perhaps. Even in my youth, it was only a legend."})
keywordHandler:addKeyword({'reward'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, isn't it reward enough to talk to the emperor of all dwarfs?"})
keywordHandler:addKeyword({'tbi'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I don't think our southern allies have agents in our town."})
keywordHandler:addKeyword({'t.b.i'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I don't think our southern allies have agents in our town."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

if msgcontains(msg, 'promotion') or msgcontains(msg, 'promote') then
	npcHandler:say("Do you want to be promoted in your vocation for 20000 gold?", 1)
	talk_state = 2578	

elseif talk_state == 2578 and msgcontains(msg, 'yes') then
	if getPlayerVocation(cid) >= 1 and getPlayerVocation(cid) <= 4 then
		if getPlayerLevel(cid) >= 20 then
			if isPremium(cid) == true then
				if doPlayerRemoveMoney(cid, 20000) == true then
				doPlayerSetVocation(cid, getPlayerVocation(cid)+4)
				--CheckPlayerBlessings(cid)
				npcHandler:say("Congratulations! You are now promoted. Visit the sage Eremo for new spells.", 1)
				talk_state = 0		
				else
				npcHandler:say("You do not have enough money.", 1)
				talk_state = 0			
				end
			else
			npcHandler:say("You need a premium account in order to promote.", 1)
			talk_state = 0				
			end
		else
		npcHandler:say("You need to be at least level 20 in order to be promoted.", 1)
		talk_state = 0			
		end
	else
	npcHandler:say("You are already promoted.", 1)
	talk_state = 0	
	end

elseif msgcontains(msg, '') then
	npcHandler:say("I don't understand? are you trying to say \"promote\" or something?", 1)
	talk_state = 0	
end	
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())