dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the master of the hall of the ancients."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Isimov Dustbearer, Son of Fire and Earth, from the Molten Rock."})
keywordHandler:addKeyword({'ancients'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The burial chamber of our ancestors. All of the firstborn of our race are there .. all but Durin."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A world of dangers, a world of wonders."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The last haven for dwarfenkind. Our last hope for our survival."})
keywordHandler:addKeyword({'old'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This mountain is as old as the world. The first dwarfs were born here."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah, squirrels, hedgehogs, rabbits, elves ... who cares."})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A young and greedy race, though more noble. They remind me of orcs sometimes."})
keywordHandler:addKeyword({'orc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The greenskins are after all of us. Beware! Beware!"})
keywordHandler:addKeyword({'minotaur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They leave us alone, we leave them alone, that's the way of our people."})
keywordHandler:addKeyword({'pyromancer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They whorship the elemental forces of fire."})
keywordHandler:addKeyword({'geomancer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They whorship the elemental forces of earth."})
keywordHandler:addKeyword({'technomancer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Strange, are they still around? Well, give them one or two hundred years and they are gone again, jawoll."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The gods abandoned us, we abandoned the gods. That's it, no big deal I tell ya, jawoll."})
keywordHandler:addKeyword({'keeper'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The gods abandoned us, we abandoned the gods. That's it, no big deal I tell ya, jawoll."})
keywordHandler:addKeyword({'shepherd'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The gods abandoned us, we abandoned the gods. That's it, no big deal I tell ya, jawoll."})
keywordHandler:addKeyword({'fire'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's warm, it's useful, we use it. We decide when or how, jawoll."})
keywordHandler:addKeyword({'earth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Gives us food and shelter, quite useful isn't it?"})
keywordHandler:addKeyword({'durin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah yes, the first born. He became a higher entity to protect us. His mortal remains were buried at a remote spot where only pilgrims disturb their peace now and then."})
keywordHandler:addKeyword({'life'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Life is easy to understand, you have birth, you have death. Simple stuff, even elves could grasp the concept."})
keywordHandler:addKeyword({'plant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't know much about this stuff. Find them in a soup sometimes."})
keywordHandler:addKeyword({'citizen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can become citizen of Kazordoon by the power of our ancestors."})
keywordHandler:addKeyword({'kroox'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What a hasty fellow. Can't be healthy to live in such a hurry, jawoll."})
keywordHandler:addKeyword({'jimbin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Isn't that the kid that took over the Jolly Axeman tavern? Far too young for such a job, but did anyone ask me? No!"})
keywordHandler:addKeyword({'maryza'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "How could she marry this Jimbin? I mean, they are kids! Know nothing about life and stuff. Couldn't they wait at least hundred years or so?"})
keywordHandler:addKeyword({'bezil'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bezil and Nezil are typical profiteers. Fine new breed of dwarfs we raised, pah."})
keywordHandler:addKeyword({'nezil'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bezil and Nezil are typical profiteers. Fine new breed of dwarfs we raised, pah."})
keywordHandler:addKeyword({'uzgod'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Has hardly a beard and already forgotten the traditions of his ancestors. Modern techniques ... almost like one of these technomancers."})
keywordHandler:addKeyword({'etzel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Etzel, good old Etzel. I was his tutor long ago. Now he's running a guild ... they grow so fast ... so fast, jawoll."})
keywordHandler:addKeyword({'gregor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Never heared that word. What's a gregor?"})
keywordHandler:addKeyword({'duria'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Could become a great warrior one day. Still needs to learn so much."})
keywordHandler:addKeyword({'emperor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The emperor resides far above us in the upper caves. Sometimes I wonder if it's good that the emperor is that much away from the temples."})
keywordHandler:addKeyword({'kruzak'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The emperor resides far above us in the upper caves. Sometimes I wonder if it's good that the emperor is that much away from the temples."})
keywordHandler:addKeyword({'motos'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Must admit there were worse generals in the years before, jawoll."})
keywordHandler:addKeyword({'general'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Must admit there were worse generals in the years before, jawoll."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "<sigh> A bunch of kids playing war. May the elements help us."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have seen many of his type coming and going. He will fall and anotherone will take his place."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ahhh! Whan I was a little dwarf I was on a quest to find it. I was almost literally digging up the ghostlands for it and now only one thing is sure: It must be elsewere, jawoll."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "News? I heard there's a new human settlement in the south, called Thai...something."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Only another nuisance."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Can't you kids do anything on your own?"})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You are too young for quests, jawoll."})
keywordHandler:addKeyword({'task'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You are too young for quests, jawoll."})
keywordHandler:addKeyword({'what'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You are too young for quests, jawoll."})
keywordHandler:addKeyword({'gold'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Greed for gold could blind your sight for the important."})
keywordHandler:addKeyword({'money'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Greed for gold could blind your sight for the important."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Go and buy some."})
keywordHandler:addKeyword({'fight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The life ot a dwarf is an eternal struggle. It hardens us and makes us the fine race we are, jawoll."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think it's the fourth age of the yellow flame, isn't it?"})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
if msgcontains(msg, 'heal') then
	if getCreatureHealth(cid) <= 39 then
	npcHandler:say("You are looking really bad. Let me heal your wounds.", 1)
	doCreatureAddHealth(cid, -getCreatureHealth(cid)+40)
	doSendMagicEffect(getPlayerPosition(cid), 12)
	talk_state = 0
	return true
	else
	npcHandler:say("You aren't looking really bad. Sorry, I can't help you.", 1)
	return true
	end
	talk_state = 0	
    return true
end

if(npcHandler.focus ~= cid) then
	return false
end		
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())