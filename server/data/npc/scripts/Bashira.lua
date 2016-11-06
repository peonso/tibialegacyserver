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

shopModule:addSellableItem({'rope'}, 2120, 8)
shopModule:addBuyableItem({'torch'}, 2050, 2)
shopModule:addBuyableItem({'candelab'}, 2041, 8)
shopModule:addBuyableItem({'bag'}, 1991, 4)
shopModule:addBuyableItem({'scroll'}, 1949, 5)
shopModule:addBuyableItem({'document'}, 1968, 12)
shopModule:addBuyableItem({'parchment'}, 1967, 8)
shopModule:addBuyableItem({'shovel'}, 2554, 50)
shopModule:addBuyableItem({'backpack'}, 1998, 20)
shopModule:addBuyableItem({'scythe'}, 2550, 50)
shopModule:addBuyableItem({'pick'}, 2553, 50)
shopModule:addBuyableItem({'watch'}, 2036, 20)
shopModule:addBuyableItem({'rope'}, 2120, 50)
shopModule:addBuyableItem({'rod'}, 2580, 150, 'fishing rod')
shopModule:addBuyableItem({'present'}, 1990, 10)
shopModule:addBuyableItem({'oil'}, 2006, 20, 11, 'vial of oil')
shopModule:addBuyableItem({'water'}, 2031, 10, 0, 'waterskin')
shopModule:addBuyableItem({'cup'}, 2013, 2, 0)
shopModule:addBuyableItem({'plate'}, 2035, 6)
shopModule:addBuyableItem({'bucket'}, 2005, 4, 0)
shopModule:addBuyableItem({'bottle'}, 					bottle, 3, 0)
shopModule:addBuyableItem({'worm'}, 3976, 1)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell various equipment and buy some stuff."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, bags, ropes, backpacks, plates, cups, scrolls, parchments, documents, watches, various sources of light, fishing rods and worms."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell shovels, picks, scythes, bags, ropes, backpacks, plates, cups, scrolls, parchments, documents, watches, various sources of light, fishing rods and worms."})
keywordHandler:addKeyword({'light'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell torches, candelabra, and oil."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Bashira Darkmark."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Carlin has some capable fighters, allthough they lack the grace of an elf."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The people of thais boast about their mighty kingdom, but eventually their short lives will doom everything they buld."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Their merchants have no patience and all to fast they loose their masks of friedlyness."})
keywordHandler:addKeyword({'roderick'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "His presence here is a waste of space and talking to or even about him a waste of time."})
keywordHandler:addKeyword({'olrik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is quite amusing for a human."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's our race."})
keywordHandler:addKeyword({'dwar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They have some talent in mining and smithing."})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They have nothing to give us."})
keywordHandler:addKeyword({'troll'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are lazy and clumsy. We should use dwarfs instead."})
keywordHandler:addKeyword({'cenath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Their magic is almost as impressive as their egos."})
keywordHandler:addKeyword({'kuridai'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Without us and our tools nothing would work in this town."})
keywordHandler:addKeyword({'deraisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Useless leafeaters."})
keywordHandler:addKeyword({'abdaisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They left; perhaps we should do that, too."})
keywordHandler:addKeyword({'teshial'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A stupid Cenath-myth."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He may scare the treedwellers or the big-mouthes above, but not the Kuridai."})
keywordHandler:addKeyword({'crunor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One god of many. They are all alike and of no use."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Buy a watch."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am not dealing with food."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have shovels, picks, scythes, bags, ropes, backpacks, plates, scrolls, watches, some lightsources, and other stuff."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have shovels, picks, scythes, bags, ropes, backpacks, plates, scrolls, watches, some lightsources, and other stuff."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have shovels, picks, scythes, bags, ropes, backpacks, plates, scrolls, watches, some lightsources, and other stuff."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have shovels, picks, scythes, bags, ropes, backpacks, plates, scrolls, watches, some lightsources, and other stuff."})
keywordHandler:addKeyword({'stuff'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Water hoses, pitchforks, presents, buckets, bottles, and the like."})

function creatureSayCallback(cid, type, msg)
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

	return true
end	
	
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())