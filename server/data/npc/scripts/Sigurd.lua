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

shopModule:addBuyableItem({'life'}, 					2006, 60, 10, 'life fluid')
shopModule:addBuyableItem({'mana'}, 					2006, 55, 7, 'mana fluid')
shopModule:addBuyableItem({'spellbook'}, 					ID_spellbook, 150)
shopModule:addBuyableItem({'blankrune'}, 					ID_crystalcoin, 10)

shopModule:addBuyableItem({'antidote rune'}, 					ID_antidoterune, 65, 1, 'antidote rune')
shopModule:addBuyableItem({'blank rune'}, 					ID_blankrune, 10, 'blank rune')
shopModule:addBuyableItem({'convince creature rune'}, 					ID_convincecreaturerune, 80, 1, 'convince creature rune')
shopModule:addBuyableItem({'destroy field rune'}, 					ID_destroyfieldrune, 45, 3, 'destroy field rune')
shopModule:addBuyableItem({'energy field rune'}, 					ID_energyfieldrune, 115, 3, 'energy field rune')
shopModule:addBuyableItem({'energy wall rune'}, 					ID_energywallrune, 340, 4, 'energy wall rune')
shopModule:addBuyableItem({'explosion rune','explosion'}, 					ID_explosionrune, 190, 3, 'explosion rune')
shopModule:addBuyableItem({'fire bomb rune'}, 					ID_firebombrune, 235, 2, 'fire bomb rune')
shopModule:addBuyableItem({'fire field rune'}, 					ID_firefieldrune, 85, 3, 'fire field rune')
shopModule:addBuyableItem({'fire wall rune'}, 					ID_firewallrune, 245, 4, 'fire wall rune')
shopModule:addBuyableItem({'great fireball rune','gfb'}, 					ID_greatfireballrune, 180, 4, 'great fireball rune')
shopModule:addBuyableItem({'heavy magic missile rune','hmm'}, 					ID_heavymagicmissilerune, 120, 5, 'heavy magic missile rune')
shopModule:addBuyableItem({'intense healing rune','ih'}, 					ID_intensehealingrune, 95, 1, 'intense healing rune')
shopModule:addBuyableItem({'light magic missile rune','lmm'}, 					ID_lightmagicmissilerune, 40, 10, 'light magic missile rune')
shopModule:addBuyableItem({'poison field rune'}, 					ID_poisonfieldrune, 65, 3, 'poison field rune')
shopModule:addBuyableItem({'poison wall rune'}, 					ID_poisonwallrune, 210, 4, 'poison wall rune')
shopModule:addBuyableItem({'sudden death rune','sd'}, 					ID_suddendeathrune, 325, 1, 'sudden death rune')
shopModule:addBuyableItem({'ultimate healing rune', 'uh'}, 					ID_ultimatehealingrune, 175, 1, 'ultimate healing rune')

keywordHandler:addKeyword({'spell rune'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell missile runes, explosive runes, field runes, wall runes, bomb runes, healing runes, convince creature runes and chameleon runes."})
keywordHandler:addKeyword({'missile rune'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you light magic missile runes, heavy magic missile runes and sudden death runes."})
keywordHandler:addKeyword({'explosive runes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you fireball runes, great fireball runes and explosion runes."})
keywordHandler:addKeyword({'field runes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you fire field runes, energy field runes, poison field runes and destroy field runes."})
keywordHandler:addKeyword({'wall rune'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you fire wall runes, energy wall runes and poison wall runes."})
keywordHandler:addKeyword({'bomb runes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you firebomb runes."})
keywordHandler:addKeyword({'healing runes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you antidote runes, intense healing runes and ultimate healing runes."})
keywordHandler:addKeyword({'rune'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell blank runes and spell runes."})

shopModule:addBuyableItem({'wand of cosmic energy'}, 					ID_wandofcosmicenergy, 10000)
shopModule:addBuyableItem({'wand of plague'}, 					ID_wanfofplague, 5000)
shopModule:addBuyableItem({'wand of dragonbreath'}, 					ID_wandofdragonbreath, 1000)
shopModule:addBuyableItem({'wand of vortex'}, 					ID_wandofvortex, 500)
shopModule:addBuyableItem({'moonlight rod'}, 					ID_moonlightrod, 1000)
shopModule:addBuyableItem({'volcanic rod'}, 					ID_volcanicrod, 5000)
shopModule:addBuyableItem({'snakebite rod'}, 					ID_snakebiterod, 500)
shopModule:addBuyableItem({'quagmire rod'}, 					ID_quagmirerod, 10000)

keywordHandler:addKeyword({'wand of inferno'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, this wand contains magic far too powerful and we are afraid to store it here. I heard they have a few of these at the Edron academy though"})
keywordHandler:addKeyword({'tempest rod'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, this rod contains magic far too powerful and we are afraid to store it here. I heard they have a few of these at the Edron academy though."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

if msgcontains(msg, 'vial') then
npcHandler:say("I will give you 5 gold for every empty vial of yours, accept?", 1)
talk_state = 857
elseif talk_state == 857 and msgcontains(msg, 'yes') then
	if SellPlayerEmptyVials(cid) == true then
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
    return TRUE
end

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Sigurd Fireworker, brother to Etzel Fireworker, son of fire, of the Molten Rocks."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I help my brother handling his little magic store so he can focus on studying spells."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling life and mana fluids, runes, wands, rods and spellbooks."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling life and mana fluids, runes, wands, rods and spellbooks."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling life and mana fluids, runes, wands, rods and spellbooks."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling life and mana fluids, runes, wands, rods and spellbooks."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's |TIME| right now."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())