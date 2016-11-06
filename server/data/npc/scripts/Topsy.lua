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

shopModule:addBuyableItem({'life'}, 2006, 60, 10, 'life fluid')
shopModule:addBuyableItem({'mana'}, 2006, 55, 7, 'mana fluid')
shopModule:addBuyableItem({'spellbook'}, 2175, 150)

shopModule:addBuyableItem({'antidote rune'}, 2266, 65, 1, 'antidote rune')
shopModule:addBuyableItem({'blank rune'}, 2260, 10, 'blank rune')
shopModule:addBuyableItem({'convince creature rune'}, 2290, 80, 1, 'convince creature rune')
shopModule:addBuyableItem({'destroy field rune'}, 2261, 45, 3, 'destroy field rune')
shopModule:addBuyableItem({'energy field rune'}, 2277, 115, 3, 'energy field rune')
shopModule:addBuyableItem({'energy wall rune'}, 2279, 340, 4, 'energy wall rune')
shopModule:addBuyableItem({'explosion rune','explosion'}, 2313, 190, 3, 'explosion rune')
shopModule:addBuyableItem({'fire bomb rune'}, 2305, 235, 2, 'fire bomb rune')
shopModule:addBuyableItem({'fire field rune'}, 2301, 85, 3, 'fire field rune')
shopModule:addBuyableItem({'fire wall rune'}, 2303, 245, 4, 'fire wall rune')
shopModule:addBuyableItem({'great fireball rune','gfb'}, 2304, 180, 4, 'great fireball rune')
shopModule:addBuyableItem({'heavy magic missile rune','hmm'}, 2311, 120, 5, 'heavy magic missile rune')
shopModule:addBuyableItem({'intense healing rune','ih'}, 2265, 95, 1, 'intense healing rune')
shopModule:addBuyableItem({'light magic missile rune','lmm'}, 2287, 40, 10, 'light magic missile rune')
shopModule:addBuyableItem({'poison field rune'}, 2285, 65, 3, 'poison field rune')
shopModule:addBuyableItem({'poison wall rune'}, 2289, 210, 4, 'poison wall rune')
shopModule:addBuyableItem({'sudden death rune','sd'}, 2268, 325, 1, 'sudden death rune')
shopModule:addBuyableItem({'ultimate healing rune', 'uh'}, 2273, 175, 1, 'ultimate healing rune')

keywordHandler:addKeyword({'spell rune'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell missile runes, explosive runes, field runes, wall runes, bomb runes, healing runes, convince creature runes and chameleon runes."})
keywordHandler:addKeyword({'missile rune'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you light magic missile runes, heavy magic missile runes and sudden death runes."})
keywordHandler:addKeyword({'explosive runes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you fireball runes, great fireball runes and explosion runes."})
keywordHandler:addKeyword({'field runes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you fire field runes, energy field runes, poison field runes and destroy field runes."})
keywordHandler:addKeyword({'wall rune'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you fire wall runes, energy wall runes and poison wall runes."})
keywordHandler:addKeyword({'bomb runes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you firebomb runes."})
keywordHandler:addKeyword({'healing runes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you antidote runes, intense healing runes and ultimate healing runes."})
keywordHandler:addKeyword({'rune'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell blank runes and spell runes."})

shopModule:addBuyableItem({'wand of cosmic energy'}, 2189, 10000)
shopModule:addBuyableItem({'wand of plague'}, 2188, 5000)
shopModule:addBuyableItem({'wand of dragonbreath'}, 2191, 1000)
shopModule:addBuyableItem({'wand of vortex'}, 2190, 500)
shopModule:addBuyableItem({'moonlight rod'}, 2186, 1000)
shopModule:addBuyableItem({'volcanic rod'}, 2185, 5000)
shopModule:addBuyableItem({'snakebite rod'}, 2182, 500)
shopModule:addBuyableItem({'quagmire rod'}, 2181, 10000)

keywordHandler:addKeyword({'wand of inferno'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, this wand contains magic far too powerful and we are afraid to store it here. I heard they have a few of these at the Edron academy though"})
keywordHandler:addKeyword({'tempest rod'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, this rod contains magic far too powerful and we are afraid to store it here. I heard they have a few of these at the Edron academy though."})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

	if msgcontains(msg, 'vial') or msgcontains(msg, 'deposit') or msgcontains(msg, 'flask') then
		npcHandler:say("I will pay you 5 gold for every empty vial. Ok?", 1)
		talk_state = 857
	elseif talk_state == 857 and msgcontains(msg, 'yes') then
		if sellPlayerEmptyVials(cid) == true then
			npcHandler:say("Here's your money!", 1)
			talk_state = 0
		else
			npcHandler:say("You don't have any empty vials!", 1)
			talk_state = 0
		end
	end

if getPlayerStorageValue(cid, 999) == -1 and msgcontains(msg, 'rod') or getPlayerStorageValue(cid, 999) == -1 and msgcontains(msg, 'Rod') or getPlayerStorageValue(cid, 999) == -1 and msgcontains(msg, 'wand') or getPlayerStorageValue(cid, 999) == -1 and msgcontains(msg, 'Wand') then	
	if getPlayerStorageValue(cid, 999) == -1 then
	if getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 5 then
    doPlayerAddItem(cid,2190,1)
	npcHandler:say('Here\'s your wand!', 1)
	setPlayerStorageValue(cid, 999, 1)
	elseif getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 6 then
    doPlayerAddItem(cid,2182,1)
	npcHandler:say('Here\'s your rod!', 1)
	setPlayerStorageValue(cid, 999, 1)
	elseif getPlayerVocation(cid) < 1 or getPlayerVocation(cid) > 6 then
	npcHandler:say('I\'m sorry, but you\'re neither sorcerer nor druid!', 1)
	setPlayerStorageValue(cid, 999, 1)
	elseif getPlayerVocation(cid) == 3 or getPlayerVocation(cid) == 4 then
	npcHandler:say('I\'m sorry, but you\'re neither sorcerer nor druid!', 1)
	setPlayerStorageValue(cid, 999, 1)	
	end	
	talk_state = 0
end

elseif msgcontains(msg, 'rod') or msgcontains(msg, 'Rod') then
	npcHandler:say("Rods can be wielded by druids only and have a certain level requirement. There are five different rods, would you like to hear about them?", 1)
	talk_state = 7613
			
elseif talk_state == 7613 and msgcontains(msg, 'yes') or talk_state == 7613 and msgcontains(msg, 'Yes') then
	npcHandler:say("The names of the rods are 'Snakebite Rod', 'Moonlight Rod', 'Volcanic Rod', 'Quagmire Rod', and 'Tempest Rod'. Which one would you like to buy?", 1)
	talk_state = 7613

elseif msgcontains(msg, 'wand') or msgcontains(msg, 'Wand') then
	npcHandler:say("Wands can be wielded by sorcerers only and have a certain level requirement. There are five different wands, would you like to hear about them?", 1)
	talk_state = 7624
			
elseif talk_state == 7624 and msgcontains(msg, 'yes') or talk_state == 7624 and msgcontains(msg, 'Yes') then
	npcHandler:say("The names of the wands are 'Wand of Vortex', 'Wand of Dragonbreath', 'Wand of Plague', 'Wand of Cosmic Energy' and 'Wand of Inferno'. Which one would you like to buy?", 1)
	talk_state = 7624

elseif  msgcontains(msg, 'rumo') or msgcontains(msg, 'Rumo') or msgcontains(msg, 'gossip') or msgcontains(msg, 'Gossip') or msgcontains(msg, 'new') or msgcontains(msg, 'New') then
	npcHandler:say("I'm all ears", 1)
	talk_state = 21

elseif  talk_state == 21 and msgcontains(msg, '') then
    npcHandler:say('Really? Tststs.', 1)
    talk_state = 0
        end
    return true
end

keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm just wonderful - thank you for asking."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Topsy."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time waits for no one! Not even you, sweetheart, so please do hurry up."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Better buy and charge a lot of runes before facing any monster."})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Dungeons - dark cold places if you ask me. They lead to rusty armour, severe colds and death ... on the other hand you use a lot of runes there ... so just think about the treasures you'll surely find there."})
keywordHandler:addKeyword({'sewer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Thais sewerage system is a model of modern rat breeding and for some reason is very popular with young adventurers such as yourself."})
keywordHandler:addKeyword({'boss'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I had one once. He should have bought better armour.. Actually, he's upstairs."})
keywordHandler:addKeyword({'thank'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, such a sweetie ... and so polite. I thought politeness was out of fashion, these days."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Gods, if we didn't have them, we would have invented them."})
keywordHandler:addKeyword({'sam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, such a sweetie.  A simple man, with simple tastes and a simple mind."})
keywordHandler:addKeyword({'benjamin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bless him, he stood, he fought, and then left his sanity on the battlefield."})
keywordHandler:addKeyword({'quentin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can't tell much about that old monk."})
keywordHandler:addKeyword({'bozo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He wanted to be the court jester but got upset when people laughed at him"})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I went there on holiday once. Just goes to show that women are much better at running a place than men. King Tibianus could learn a thing or two from Queen Eloise."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Wrong shop, go to my sister, silly!"})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Magic will only protect you, a rune and some magic fluids."})
keywordHandler:addKeyword({'power'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There is a power struggle between Venore and Thais."})
keywordHandler:addKeyword({'rebellion'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There is talk of a rebellion in Venore to gain independence from the Oppressor - I mean - King of Thais - it can only help business."})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell magic stuff, my dear. If you want a quest, you've come to the wrong shop."})
keywordHandler:addKeyword({'spells'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You never know when you run out of mana. All the more reason to buy some good runes or fluids."})
keywordHandler:addKeyword({'muriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You should ask this guy Oswald about him ... or other pointless rumors."})
keywordHandler:addKeyword({'elane'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some call her the preying mantis, apparently she has killed over a dozen husbands already."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A marvellous city! Modern! Prosperous! Thais could learn a thing or two from Venore"})
keywordHandler:addKeyword({'marvik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Who knows what the old man is up to in his hideout when no one is watching?"})
keywordHandler:addKeyword({'gregor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah Knight ... can't expect much from those guys."})
keywordHandler:addKeyword({'lugri'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I only heared rumours about him, isn't he a hermit somewhere in the north?"})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you want to find out about excalibug you should ask the more sinister characters in Thais not a respectable woman like myself!"})
keywordHandler:addKeyword({'chester'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have never seen him at all. I only heared hes kind of the townsguards chief or such."})
keywordHandler:addKeyword({'ardua'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What a strange woman. She lingers in our shop now and then ... I wonder what shes up to."})
keywordHandler:addKeyword({'partos'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heared he was a thief. Good thing he was caught."})
keywordHandler:addKeyword({'gamel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He hung around with that partos a lot. I wouldn't be suprised if he's a thief too. He is not allowed to enter our markethall."})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sure. Just ask my sister Turvy."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling life and mana fluids, runes, wands, rods and spellbooks."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling life and mana fluids, runes, wands, rods and spellbooks."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling life and mana fluids, runes, wands, rods and spellbooks."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling life and mana fluids, runes, wands, rods and spellbooks."})
keywordHandler:addKeyword({'gamon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think he is a spy ... so I smile at him the whole day. He won't get anything out of me!"})
keywordHandler:addKeyword({'gorn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah yes ... Gorn ... the used-cart salesman of scrolls."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "<mutters> Here we go again  ... Hail to King Tibianus! ... Don't make me do that again!"})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'd love to help, but I have a business to run"})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell runes, life and mana fluids - your best friends in any dungeon!"})


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())