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
	if getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 6 then
		if getPlayerItemCount(cid, 2182) or getPlayerItemCount(cid, 2186) or getPlayerItemCount(cid, 2185) or getPlayerItemCount(cid, 2181) or getPlayerItemCount(cid, 2183) then 
		npcHandler:setMessage(MESSAGE_GREET, "Welcome back, ".. getPlayerName(cid) ..". Hey, nice wand you have there!")
		else
		npcHandler:setMessage(MESSAGE_GREET, "Welcome to my hut, ".. getPlayerName(cid) .."! It's always nice to see a druid here.")
		end
		return true
		
	elseif getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 5 then
	npcHandler:setMessage(MESSAGE_GREET, "What do you want, ".. getPlayerName(cid) .."?")
	return true
	
	else
	npcHandler:setMessage(MESSAGE_GREET, "Good day, ".. getPlayerName(cid) ..".")
	return true
	end	
end	
npcHandler:setCallback(CALLBACK_GREET, greetCallback)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a witch. Didn't you notice?"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Wyda, and what's yours?"})
keywordHandler:addKeyword({'my name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Nice to meet you."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think it is the fourth year after Queen Eloise's crowning, but I cannot tell you date or time."})
keywordHandler:addKeyword({'sorcerer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorcerers have forgotten about the root of all beings: nature."})
keywordHandler:addKeyword({'druid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Druids are mostly fine people. I'm always happy when I meet one."})
keywordHandler:addKeyword({'knight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Knights succumb to the blindness of rage and the desire for violence and blood."})
keywordHandler:addKeyword({'paladin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Paladins can use bows, but not brains."})
keywordHandler:addKeyword({'queen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Eloise is Queen of Carlin. I don't care about royals much, as long as they don't try to tax me."})
keywordHandler:addKeyword({'live'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's nice."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Carlin is a beautiful town, but far from here. Do you live there?"})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I've heard stories about that city. It's nowhere near here, that's all I can tell you about it."})
keywordHandler:addKeyword({'stories'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais is an overcrowded place inhabited by brutal murderers. At least that's what I've been told."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Haha, that's a stupid name. Who's that?"})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Tibia is the name of our continent."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Haha, that's a stupid name. Who's that?"})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are too many royals on this continent if you ask me..."})
keywordHandler:addKeyword({'evil'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Evilness doesn't scare me."})
keywordHandler:addKeyword({'aureus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Aureus is a good friend who spends much time in this area!"})
keywordHandler:addKeyword({'bridge'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There's a bridge to the west, but it's guarded by dwarfs."})
keywordHandler:addKeyword({'plains'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Many tales exist about some so-called Plains of Havoc. It seems to be a dangerous place."})
keywordHandler:addKeyword({'havoc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Many tales exist about some so-called Plains of Havoc. It seems to be a dangerous place."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can only help with knowledge. What do you want me to tell you about?"})
keywordHandler:addKeyword({'hunter'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "To the east, there is a little settlement of hunters. They are cruel humans who attack everything they see."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm currently not selling anything."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm currently not selling anything."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There's nothing I need right now, thanks."})
keywordHandler:addKeyword({'key'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I keep my keys where they belong - in my pocket."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Many creatures live in, around, and beneath the swamp. Be careful!"})
keywordHandler:addKeyword({'creature'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Many creatures live in, around, and beneath the swamp. Be careful!"})
keywordHandler:addKeyword({'swamp'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Be careful of the swamp water, it's poisonous!"})
keywordHandler:addKeyword({'nature'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are many swamp plants, mushrooms, and herbs around here."})
keywordHandler:addKeyword({'plant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are many kinds of swamp plants, some can be used for potions, some not."})
keywordHandler:addKeyword({'potion'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The recipe of the potions is one of the witches' secrets!"})
keywordHandler:addKeyword({'secret'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The recipe of the potions is one of the witches' secrets!"})
keywordHandler:addKeyword({'recipe'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The recipe of the potions is one of the witches' secrets!"})
keywordHandler:addKeyword({'sister'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some sisters of mine are having a meeting nearby. Don't disturb them, or they will get angry and attack you."})
keywordHandler:addKeyword({'witches'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some sisters of mine are having a meeting nearby. Don't disturb them, or they will get angry and attack you."})
keywordHandler:addKeyword({'mushroom'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Mushrooms taste good and are useful for potions."})
keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I do not have any potions for healing available right now."})
keywordHandler:addKeyword({'giant spider'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, there is such a thing in the east, on a small island. It's very powerful."})
keywordHandler:addKeyword({'beholder'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Beholders? Strange creatures that have mysterious magical abilities."})
keywordHandler:addKeyword({'slime'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There's lots of slime around. It is said that they live from the swamp water."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I believe that nature itself is God."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The magic of the witches is one of our secrets!"})
keywordHandler:addKeyword({'spell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The magic of the witches is one of our secrets!"})
keywordHandler:addKeyword({'weatherwax'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think I've heard that name before..."})
keywordHandler:addKeyword({'ogg'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think I've heard that name before..."})
keywordHandler:addKeyword({'voodoo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't practice such nonsense, that's just a rumour."})
keywordHandler:addKeyword({'coffin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's none of your business."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The little bearded fellows have a town somewhere in the northwest."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The little bearded fellows have a town somewhere in the northwest."})
keywordHandler:addKeyword({'little'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The little bearded fellows have a town somewhere in the northwest."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Isn't that the name of the little bearded fellows' town?"})
keywordHandler:addKeyword({'gold'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Money means nothing to me."})
keywordHandler:addKeyword({'platin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Money means nothing to me."})
keywordHandler:addKeyword({'cookie'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I bake cookies now and then in my spare time."})
keywordHandler:addKeyword({'orange'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I love exotic fruits. I have oranges imported from the south sometimes, but that's very expensive."})
keywordHandler:addKeyword({'fly'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Haha, no... where did you get that idea? I use it to sweep my platform."})
keywordHandler:addKeyword({'ride'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Haha, no... where did you get that idea? I use it to sweep my platform."})
keywordHandler:addKeyword({'platform'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This platform and house were built by my mother, long ago."})
keywordHandler:addKeyword({'mother'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Of course my mother was also a witch!"})
keywordHandler:addKeyword({'crystal ball'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a magical item that only witches can use."})
keywordHandler:addKeyword({'black knight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A black knight? Black is the color of witches, why whould any knight carry black?"})
keywordHandler:addKeyword({'earthquake'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The earth in this region shakes now and then. Foolish people think that this is because the Gods are angry."})
keywordHandler:addKeyword({'what'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The power of the wand can only be used by witches."})
keywordHandler:addKeyword({'power'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The power of the wand can only be used by witches."})
keywordHandler:addKeyword({'wand'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I use a wooden spellwand. Why are you asking?"})
keywordHandler:addKeyword({'men'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are only female witches."})
keywordHandler:addKeyword({'man'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are only female witches."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

if msgcontains(msg, 'become') and msgcontains(msg, 'witch') or msgcontains(msg, 'Become') and msgcontains(msg, 'witch') then
	if getPlayerSex(cid) == 1 then
	npcHandler:say("You're a MAN!", 1)
	else
	npcHandler:say("You can't just become a witch. Either you are or you aren't - and YOU obviously aren't!", 1)
	end
	talk_state = 0

elseif msgcontains(msg, 'quest') or msgcontains(msg, 'Quest') then	
	npcHandler:say("A quest? Well, if you're so keen on doing me a favour... Why don't you try to find a blood herb?", 1)
	talk_state = 0

elseif msgcontains(msg, 'blood herb') or msgcontains(msg, 'Blood herb') then
	if getPlayerItemCount(cid, 2798) >= 1 then
	npcHandler:say("Do you have a blood herb for me?", 1)
	talk_state = 1	
	else
	npcHandler:say("The blood herb is very rare. This plant would be very useful for me, but I don't know any accessible places to find it.", 1)
	talk_state = 0		
	end
	
elseif talk_state == 1 and msgcontains(msg, 'yes') or talk_state == 1 and msgcontains(msg, 'yes') then
	if doPlayerRemoveItem(cid, 2798, 1) == true then
		if getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 5 then
		doPlayerAddMoney(cid, 400)
		npcHandler:say("Hmm, thanks. Take this.", 1)
		elseif getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 6 then
		doPlayerAddItem(cid, 2324, 1)
		npcHandler:say("Thank you so much! Here, let me give you a reward...", 1)
		else
		doPlayerAddMoney(cid, 300)
		npcHandler:say("Thank you! Here are some coins for your help.", 1)
		end
		talk_state = 0	
	else
	npcHandler:say("Well, do you own one or not?", 1)
	talk_state = 0		
	end
	
elseif msgcontains(msg, 'herbs') or msgcontains(msg, 'Herbs') then	
	npcHandler:say("The swamp is home to a wide variety of herbs, but the most famous is the blood herb.", 1)
	talk_state = 0

elseif msgcontains(msg, 'witch') or msgcontains(msg, 'witch') then	
	npcHandler:say("Aye, I am a witch.", 1)
	talk_state = 0	
end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())