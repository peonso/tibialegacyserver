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
shopModule:addBuyableItem({'chameleon rune'}, 2291, 210, 1, 'chameleon rune')
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
        end
    return true
end

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm Xodet, the owner of this shop."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm sorcerer and trade with all kinds of magic items."})
keywordHandler:addKeyword({'sorcerer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There is a sorcerer guild in Thais. Just go in the east of the town, it is easly to find."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling life and mana fluids, runes, wands, rods and spellbooks."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling life and mana fluids, runes, wands, rods and spellbooks."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling life and mana fluids, runes, wands, rods and spellbooks."})


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
