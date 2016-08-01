dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)


shopModule:addSellableItem({'meat'}, 2666, 2)
shopModule:addSellableItem({'ham'}, 2671, 4)
shopModule:addSellableItem({'rat'}, 2813, 2)


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am chief rotwormtamer of Kazordoon. I sell rotworms and buy meat and tasty, fresh rats for my worms."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Humgolf Molesight, Son of Earth, from the Molten Rock."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "More nice beneath this noisy green surface."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I like the mines best."})
keywordHandler:addKeyword({'big old'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The mountain seems tasty as far as my worms are concerned."})
keywordHandler:addKeyword({'worms'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are so cute and so intelligent."})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are not cute and not intelligent."})
keywordHandler:addKeyword({'orc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are even more stupid and ugly than minotaurs."})
keywordHandler:addKeyword({'minotaur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are stupid and ugly."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are not worth to be mentioned."})
keywordHandler:addKeyword({'geomancer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They have an understanding of worms."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The worm does not care about gods, why should I?"})
keywordHandler:addKeyword({'earth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Home of the worms, home of my people, too."})
keywordHandler:addKeyword({'fire'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where earth is giving, fire is taking. That's the way of the elements."})
keywordHandler:addKeyword({'drilling licence'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am not allowed to sell worms to people without a formular 007 licence to drill or a 0815 artist licence."})
keywordHandler:addKeyword({'007'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am not allowed to sell worms to people without a formular 007 licence to drill or a 0815 artist licence."})
keywordHandler:addKeyword({'0815'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a special licence for artists. It was only used once as I sold a white worm to Frietsiek and Yor."})
keywordHandler:addKeyword({'artist licence'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a special licence for artists. It was only used once as I sold a white worm to Frietsiek and Yor."})
keywordHandler:addKeyword({'life'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Can't say I like it much."})
keywordHandler:addKeyword({'plant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Only a rotting plant is a good plant."})
keywordHandler:addKeyword({'citizen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Many noisy pepole down here are scaring my worms."})
keywordHandler:addKeyword({'kroox'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Poor guy, has lost his drilling licence for drinking."})
keywordHandler:addKeyword({'jimbin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "His tavern is too crowded and too bright for a dwarf with taste like me."})
keywordHandler:addKeyword({'maryza'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't like the way she looks at my worms."})
keywordHandler:addKeyword({'bezil'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Always chatting. How can someone talk that much?"})
keywordHandler:addKeyword({'nezil'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Always chatting. How can someone talk that much?"})
keywordHandler:addKeyword({'uzgod'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are trading now and then. Fine dwarf he is."})
keywordHandler:addKeyword({'etzel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Does a worm need spells to work his kind of magic? I do neither."})
keywordHandler:addKeyword({'motos'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That guy is a monster! I despise rotwormkillers."})
keywordHandler:addKeyword({'general'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That guy is a monster! I despise rotwormkillers."})
keywordHandler:addKeyword({'durin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If he'd live today he'd be a rotwormtamer like me."})
keywordHandler:addKeyword({'duria'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thinks she's to good to talk to rotwormtamers."})
keywordHandler:addKeyword({'emperor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The emperor should spend more money on rotworm husbandry."})
keywordHandler:addKeyword({'kruzak'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The emperor should spend more money on rotworm husbandry."})
keywordHandler:addKeyword({'pyromancer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hotheads."})
keywordHandler:addKeyword({'technomancer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "GO AWAY! I heard they think of replacing worms with machines. That is an OUTRAGE!"})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They should remember old dwarfish rotworm tactics. Think like a worm and the battle is almost won."})
keywordHandler:addKeyword({'colossus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Never was up there to look at it."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A true enemy of the worms."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Silly fairy tale."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Who needs news if the old things are still good enough?"})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Unwormish creatures they are."})
keywordHandler:addKeyword({'stonegolem'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Too hard to be gnawed away by even the finest worm."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am here to help the worms, not the fools."})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What by the worm are you talking about?"})
keywordHandler:addKeyword({'task'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What by the worm are you talking about?"})
keywordHandler:addKeyword({'what'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What by the worm are you talking about?"})
keywordHandler:addKeyword({'gold'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "gold is one of the things my worms can unearth."})
keywordHandler:addKeyword({'money'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "gold is one of the things my worms can unearth."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you own a good worm you need nothing else"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time does not matter to a dwarf who understands the ways of the worm."})
keywordHandler:addKeyword({'fish'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Go away with that waterthing!"})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
if msgcontains(msg, 'buy') and msgcontains(msg, 'rotworm') then
	npcHandler:say("Do you want to buy a rotworm?", 1)
	talk_state = 1
elseif talk_state == 1 and msgcontains(msg, 'yes') then
	npcHandler:say("Hey, you don't own a drilling licence. No deal!", 1)
	talk_state = 0	
	
elseif talk_state == 1 and msgcontains(msg, '') then
	npcHandler:say("You will regret that.", 1)
	talk_state = 0	


end		
    return true
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())