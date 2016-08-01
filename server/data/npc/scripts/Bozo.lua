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
	if getPlayerSex(cid) == 1 then
	npcHandler:setMessage(MESSAGE_GREET, "Hi there, how's it hanging, ".. getPlayerName(cid) .."!")
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Hello, hello, hello, little lady ".. getPlayerName(cid) .."!")
	return true
	end	
end	

npcHandler:setCallback(CALLBACK_GREET, greetCallback)

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I know the newest jokes in tibia."})
keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thank you, I'm fine, the gods are with me."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sell? Hmm, I know a little about magic and by chance I can sell you a truly unusual weapon."})
keywordHandler:addKeyword({'durin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Isn't he the author of the book 'fun with demons'?"})
keywordHandler:addKeyword({'stephan'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is kind of a father figure to me. Of course he denies all kinship to me."})
keywordHandler:addKeyword({'steve'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He's a smart one. I heared he hid in a foreign country as the first bugs showed up."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Bozo. But it's more than a name, it's a lifestyle to me!"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Since you met me it is happy hour for you."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a jester, not a doctor!"})
keywordHandler:addKeyword({'joke'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I know some 'monstrous' jokes!"})
keywordHandler:addKeyword({'idiot'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "To me it's just a profession, but for you it's a state of mind!"})
keywordHandler:addKeyword({'wish'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you have a wish to RealSoft just write a letter and place it in a dustbin of your choice."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am not foolish enough to believe in the existence of this weapon."})
keywordHandler:addKeyword({'wallcarving'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, I saw some demoncarvings in the dungeons as I hid there after a little joke on old Stutch."})
keywordHandler:addKeyword({'demoncarving'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, they showed demons, seven actually, dancing around a sword! In a flaming pit of some kind."})
keywordHandler:addKeyword({'flaming pit'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, don't ask me! Usually mages and mystics know more about such stuff."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I know a lot of monster jokes. Just tell me a monster's name, come on."})
keywordHandler:addKeyword({'demon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Why are the experienced heroes quicker than others? ... The demons love fast food!"})
keywordHandler:addKeyword({'ghoul'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where do the ghouls buy their robes? ... In a Boooohtique!"})
keywordHandler:addKeyword({'dragon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Why do dragons breathe fire? ... They ate too many sorcerers in chili sauce!"})
keywordHandler:addKeyword({'skeleton'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Why do skeletons flee if wounded? ... They are so spineless!"})
keywordHandler:addKeyword({'orc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Why do orcs have green skin? ... They ate at Frodo's!"})
keywordHandler:addKeyword({'cyclops'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "How many eyes does a cyclops have? ... One for each IQ point of their opponents!"})
keywordHandler:addKeyword({'beholder'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Why are beholders so ugly? ... Because their mom and dad were beholders, too!"})
keywordHandler:addKeyword({'rat'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Why does the rat have a wooden leg? ... Because it is a former pirate!"})
keywordHandler:addKeyword({'spider'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Why did the spider cross the road? ... Because it ... oh you already know this one!?"})
keywordHandler:addKeyword({'troll'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Why do trolls live underground? ... Because on the ground there are so many PKs!"})
keywordHandler:addKeyword({'wolf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Why do the wolves howl? ... Hey, if you're online that long you can't help but behave that way!"})
keywordHandler:addKeyword({'minotaur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do all little minotaurs want to become when they are grown-ups? ... Cowboys, of course!"})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you are a bad jester you get a chance to visit them now and then."})
keywordHandler:addKeyword({'sewer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Good place for picking up apples and women."})
keywordHandler:addKeyword({'oswald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you believe half the rumours he's spreading, you are going to get in a lot of trouble."})
keywordHandler:addKeyword({'update'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hey! I am supposed to make the jokes here!"})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I better make no jokes about THIS matter."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Nah, no jests about His Royal Highness."})
keywordHandler:addKeyword({'sam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Did you know that he now sells a 'power axe of doom'? Run and buy it, he has only three in store."})
keywordHandler:addKeyword({'benjamin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He would make a fine jester, too."})
keywordHandler:addKeyword({'gorn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He sells spell scrolls each day at midnight, but you have to address him that very second."})
keywordHandler:addKeyword({'quentin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He's my baby brother. If you tell him I sent you, he will grant you an extra spell or two."})
keywordHandler:addKeyword({'bozo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thats me: Bozo, the jester!"})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I rarely leave the castle. It's a real stress to be popular like me."})
keywordHandler:addKeyword({'castle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The castle is my home. A place fit for a jester and all other fools. Feel welcome."})
keywordHandler:addKeyword({'muriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Better don't mess with sorcerers!"})
keywordHandler:addKeyword({'elane'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She's pretty but has a kind of too burning affection for my taste."})
keywordHandler:addKeyword({'marvik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Humourless old guy! Once turned me into a frog for painting his distasteful cave in pink."})
keywordHandler:addKeyword({'gregor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A man of steel, with a stomach of wax. Never offer him a beer!"})
keywordHandler:addKeyword({'noodles'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hey, the little one is almost as funny as me!"})
keywordHandler:addKeyword({'dog'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Are we talking about Noodles?"})
keywordHandler:addKeyword({'poodle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Are we talking about Noodles?"})
keywordHandler:addKeyword({'guild'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Since the first guild showed up there's a great demand for jesters and fools to join them."})
keywordHandler:addKeyword({'necromant nectar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Peeew! That sounds disgusting! Are you a cook at Frodo's?"})
keywordHandler:addKeyword({'necromant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't feed the necromants."})
keywordHandler:addKeyword({'hugo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I had a cousin named like that."})
keywordHandler:addKeyword({'cousin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He died some years ago."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
if msgcontains(msg, 'job') then
	npcHandler:say("I am the royal jes ... uhm ... the royal tax-collector! Do you want to pay your taxes?", 1)
	talk_state = 1
			
elseif talk_state == 1 and msgcontains(msg, 'yes') then
	if doPlayerRemoveMoney(cid, 50) == true then
	npcHandler:say("Thank you very much. I will have a drink or two on your health!", 1)
	else
	npcHandler:say("Come back, when you have enough money.", 1)
	end
elseif talk_state == 1 and msgcontains(msg, '') then
npcHandler:say("Well, perhaps later.", 1)

elseif msgcontains(msg, 'jester') or msgcontains(msg, 'fool') then
	npcHandler:say("Do you wish to join the fools' guild?", 1)
	talk_state = 6
elseif talk_state == 6 and msgcontains(msg, 'yes') then	
	npcHandler:say("Sorry, you already are a member.", 1)
	talk_state = 0
elseif talk_state == 6 and msgcontains(msg, '') then	
	npcHandler:say("Well, you are already a member anyway.", 1)
	talk_state = 0
elseif msgcontains(msg, 'weapon') then	
	npcHandler:say("Do you want to buy a 'mace of the fury' for 250 gold?", 1)
	talk_state = 3
elseif talk_state == 3 and msgcontains(msg, 'yes') then	
	if doPlayerRemoveMoney(cid, 250) == true then
	doPlayerAddItem(cid, 2570)
	npcHandler:say("And here it is, it suits you well!", 1)
	else
	npcHandler:say("Come back, when you have enough money.", 1)
	end
	talk_state = 0
elseif talk_state == 3 and msgcontains(msg, '') then	
	npcHandler:say("You dont know what offer you have passed!", 1)
	talk_state = 0	
	
elseif msgcontains(msg, 'magic') or msgcontains(msg, 'spell') then	
	npcHandler:say("I actually know some spells! Do you want to learn how to 'lessen your load' for 200 gold?", 1)
	talk_state = 2	
	
elseif talk_state == 2 and msgcontains(msg, 'yes') then	
	if doPlayerRemoveMoney(cid, 200) == true then
	npcHandler:say("Here you are, I already lessened your load.", 1)
	else
	npcHandler:say("Come back, when you have enough money.", 1)
	end
	talk_state = 0	
elseif talk_state == 2 and msgcontains(msg, '') then	
	npcHandler:say("You don't know what offer you have passed!", 1)
	talk_state = 0

elseif msgcontains(msg, 'paladin') then	
	if getPlayerVocation(cid) == 3 or getPlayerVocation(cid) == 7 then
	npcHandler:say("I wanted to become a paladin, too, but I was overqualified!", 1)
	else
	npcHandler:say("They are the king's favourites, because they know how to 'bow'.", 1)
	end
	talk_state = 0	
elseif msgcontains(msg, 'sorcerer') then	
	if getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 5 then
	npcHandler:say("I wanted to become a sorcerer, too, but I was overqualified!", 1)
	else
	npcHandler:say("The good thing about them is that they can't be at two places at the same time.", 1)
	end
	talk_state = 0	
elseif msgcontains(msg, 'druid') then	
	if getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 6 then
	npcHandler:say("I wanted to become a Druid, too, but I was overqualified!", 1)
	else
	npcHandler:say("If you are in Druidville, do as the rabbits do.", 1)
	end
	talk_state = 0	
elseif msgcontains(msg, 'knight') then	
	if getPlayerVocation(cid) == 4 or getPlayerVocation(cid) == 8 then
	npcHandler:say("I wanted to become a knight, too, but I was overqualified!", 1)
	else
	npcHandler:say("Did you notice that old knights have their scars just on their backs?", 1)
	end
	talk_state = 0
elseif msgcontains(msg, 'lady') then	
	if getPlayerSex(cid) == 1 then
	npcHandler:say("Well, you don't behave ladylike just because you dress like one!", 1)
	talk_state = 0
	else
	npcHandler:say("Has any man said to you that you're not only beautiful but also intelligent?", 1)
	talk_state = 5
	end	
elseif talk_state == 5 and msgcontains(msg, 'yes') then
	npcHandler:say("This is a world of fantasy and full of surprises!", 1)
	talk_state = 0
elseif talk_state == 5 and msgcontains(msg, '') then
	npcHandler:say("Well, think about it!", 1)
	talk_state = 0
elseif msgcontains(msg, 'kiss') then	
	if getPlayerSex(cid) == 1 then
	npcHandler:say("Uh, go away!", 1)
	talk_state = 0
	npcHandler:releaseFocus()
	npcHandler:resetNpc()
	else
	npcHandler:say("Do you want to kiss me?", 1)
	talk_state = 4
	end	
elseif talk_state == 4 and msgcontains(msg, 'yes') then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 14)
	npcHandler:say("Uh, oh! ... I am seeing stars!", 1)
	talk_state = 0
elseif talk_state == 4 and msgcontains(msg, '') then
	npcHandler:say("Pah, I didn't want to kiss you anyway!", 1)
	talk_state = 0
	
end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())