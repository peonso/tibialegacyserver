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

shopModule:addBuyableItem({'torch'}, 2050, 3)
shopModule:addBuyableItem({'rope'}, 2120, 60)
shopModule:addBuyableItem({'water hose'}, 2006, 10)
shopModule:addBuyableItem({'backpack'}, 1988, 25)
shopModule:addBuyableItem({'fishing rod'}, 2580, 175)
shopModule:addBuyableItem({'crowbar'}, 2416, 260)
shopModule:addBuyableItem({'apple'}, 2674, 3)
shopModule:addBuyableItem({'worm', 'worms'}, 3976, 1)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling equipment for adventurers. Do you need anything?"})
keywordHandler:addKeyword({'lubo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Lubo, the owner of this shop."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "No idea."})
keywordHandler:addKeyword({'mountain'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is said that once there lived a great magician on the top of this mountain."})
keywordHandler:addKeyword({'magician'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't remember his name, but it's said that his banner was the black eye."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell the best apples in Tibia."})
keywordHandler:addKeyword({'map'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh! I'm sorry, I sold the last one just five minutes ago."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There's a lot of magic flowing in the mountain to the north."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you want to buy weapons, you'll have to go to a town or city."})
keywordHandler:addKeyword({'dog'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is Ruffy my dog, please don't do him any harm."})
keywordHandler:addKeyword({'pet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are some strange stories about a magicians pet names. Ask Hoggle about it."})
keywordHandler:addKeyword({'finger'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, you sure mean this old story about the mage Dago, who lost two fingers when he conjured a dragon."})
keywordHandler:addKeyword({'inn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Frodo runs a nice inn in the near town Thais."})
keywordHandler:addKeyword({'flower'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, I mean druids of course. They sold the cottage to my family after some of them died in an accident or something like that."})
keywordHandler:addKeyword({'accident'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As far as I can remember the story, a pet escaped its stable behind the inn. It got somehow involved with powerfull magic at a ritual and was transformed in some way."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell torches, fishing rods, sixpacks of worms, ropes, water hoses, backpacks, apples, and maps."})
keywordHandler:addKeyword({'goods'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell torches, fishing rods, sixpacks of worms, ropes, water hoses, backpacks, apples, and maps."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell torches, fishing rods, sixpacks of worms, ropes, water hoses, backpacks, apples, and maps."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell torches, fishing rods, sixpacks of worms, ropes, water hoses, backpacks, apples, and maps."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell torches, fishing rods, sixpacks of worms, ropes, water hoses, backpacks, apples, and maps."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is exactly |TIME|."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

	local queststate = getPlayerStorageValue(cid,6666)
	
	if msgcontains(msg, 'crunor\'s cottage') and queststate == 1 then
		npcHandler:say('Ah yes, I remember my grandfather talking about that name. This house used to be an inn a long time ago. My family bought it from some of these flower')
		talk_state = 1
	elseif msgcontains(msg, 'flower guys') and talk_state == 1 then
        npcHandler:say('Oh, I mean druids of course. They sold the cottage to my family after some of them died in an accident or something like that.')
        talk_state = 2
	elseif msgcontains(msg, 'accident') and talk_state == 2 then
        npcHandler:say('As far as I can remember the story, a pet escaped its stable behind the inn. It got somehow involved with powerfull magic at a ritual and was transformed in some way.')
        talk_state = 3
	elseif msgcontains(msg, 'stable') and talk_state == 3 then
        npcHandler:say('My grandpa told me, in the old days there were some behind this cottage. Nothing big though, just small ones, for chicken or rabbits.')
        setPlayerStorageValue(cid,6667,1)
		talk_state = 0
	end
	
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())