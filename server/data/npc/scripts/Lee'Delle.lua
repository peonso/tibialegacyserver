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

shopModule:addSellableItem({'dagger'}, 2379, 2)
shopModule:addSellableItem({'spear'}, 2389, 3)
shopModule:addSellableItem({'hand axe'}, 2380, 4)
shopModule:addSellableItem({'rapier'}, 2384, 5)
shopModule:addSellableItem({'axe'}, 2386, 7)
shopModule:addSellableItem({'hatchet'}, 2388, 25)
shopModule:addSellableItem({'sabre'}, 2385, 12)
shopModule:addSellableItem({'short sword'}, 2406, 10)
shopModule:addSellableItem({'sword'}, 2376, 25)
shopModule:addSellableItem({'mace'}, 2398, 30)
shopModule:addSellableItem({'doublet'}, 2485, 3)
shopModule:addSellableItem({'leather armor'}, 2467, 5)
shopModule:addSellableItem({'chain armor'}, 2464, 40)
shopModule:addSellableItem({'studded armor'}, 2484, 25)
shopModule:addSellableItem({'leather helmet'}, 2461, 3)
shopModule:addSellableItem({'chain helmet'}, 2458, 12)
shopModule:addSellableItem({'studded helmet'}, 2482, 20)
shopModule:addSellableItem({'wooden shield'}, 2512, 3)
shopModule:addSellableItem({'studded shield'}, 2526, 16)
shopModule:addSellableItem({'brass shield'}, 2511, 25)
shopModule:addSellableItem({'plate shield'}, 2510, 40)
shopModule:addSellableItem({'copper shield'}, 2530, 50)
shopModule:addSellableItem({'leather boots'}, 2643, 2)
shopModule:addSellableItem({'rope'}, 2120, 8)

shopModule:addBuyableItem({'spear'}, 2389, 10)
shopModule:addBuyableItem({'rapier'}, 2384, 15)
shopModule:addBuyableItem({'sabre'}, 2385, 25)
shopModule:addBuyableItem({'dagger'}, 2379, 5)
shopModule:addBuyableItem({'sickle'}, 2405, 8)
shopModule:addBuyableItem({'hand axe'}, 2380, 8)
shopModule:addBuyableItem({'axe'}, 2386, 20)
shopModule:addBuyableItem({'short sword'}, 2406, 30)
shopModule:addBuyableItem({'jacket'}, 2650, 10)
shopModule:addBuyableItem({'coat'}, 2651, 8)
shopModule:addBuyableItem({'doublet'}, 2485, 16)
shopModule:addBuyableItem({'leather armor'}, 2467, 25)
shopModule:addBuyableItem({'leather legs'}, 2649, 10)
shopModule:addBuyableItem({'leather helmet'}, 2461, 12)
shopModule:addBuyableItem({'studded helmet'}, 2482, 63)
shopModule:addBuyableItem({'chain helmet'}, 2458, 52)
shopModule:addBuyableItem({'wooden shield'}, 2512, 15)
shopModule:addBuyableItem({'studded shield'}, 2526, 50)
shopModule:addBuyableItem({'torch'}, 2050, 2)
shopModule:addBuyableItem({'bag'}, 1987, 4)
shopModule:addBuyableItem({'scroll'}, 1949, 5)
shopModule:addBuyableItem({'shovel'}, 2554, 10)
shopModule:addBuyableItem({'backpack'}, 1988, 10)
shopModule:addBuyableItem({'scythe'}, 2550, 50)
shopModule:addBuyableItem({'rope'}, 2120, 50)
shopModule:addBuyableItem({'fishing rod'}, 2580, 150)
shopModule:addBuyableItem({'worm'}, 3976, 1)
 
keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am fine. I'm delighted to welcome you as customer."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell much. Have a look at the blackboards for my wares or just ask."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a merchant, so what can I do for you?"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Lee'Delle. Do you want to buy something?"})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am already helping you by selling stuff."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are plenty of them. Buy here the equipment to kill them and sell their loot afterwards!"})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "be carefull down there. Make sure you bought enough torches and a rope or you might get lost."})
keywordHandler:addKeyword({'sewer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The sewers are full of rats. They are quite a challenge for inexperienced adventurers."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king supports our little village very much!"})
keywordHandler:addKeyword({'dallheim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is a great warrior and our protector."})
keywordHandler:addKeyword({'bug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are several bugs in the wildernes."})
keywordHandler:addKeyword({'stuff'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell equipment of all kinds. Just ask me about the type of wares you are interested in."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The continent is even more exciting than this isle!"})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais is the capital of the thaian empire."})
keywordHandler:addKeyword({'mission'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I really love flowers. Sadly my favourites, honey flowers are very rare on this isle. If you can find me one, I'll give you a little reward."})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I really love flowers. Sadly my favourites, honey flowers are very rare on this isle. If you can find me one, I'll give you a little reward."})
keywordHandler:addKeyword({'reward'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I really love flowers. Sadly my favourites, honey flowers are very rare on this isle. If you can find me one, I'll give you a little reward."})
keywordHandler:addKeyword({'wares'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell weapons, shields, armor, helmets, and equipment. For what do you want to ask?"})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell weapons, shields, armor, helmets, and equipment. For what do you want to ask?"})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell spears, rapiers, sabres, daggers, hand axes, axes, and short swords. Just tell me what you want to buy."})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell jackets, coats, doublets, leather armor, and leather legs. Just tell me what you want to buy."})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell leather helmets, studded helmets, and chain helmets. Just tell me what you want to buy."})
keywordHandler:addKeyword({'shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell wooden shields and studded shields. Just tell me what you want to buy."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell torches, bags, scrolls, shovels, picks, backpacks, sickles, scythes, ropes, fishing rods and worms. Just tell me what you want to buy."})
keywordHandler:addKeyword({'do you sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do you need? I sell weapons, armor, helmets, shields, and equipment."})
keywordHandler:addKeyword({'do you have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do you need? I sell weapons, armor, helmets, shields, and equipment."})
keywordHandler:addKeyword({'pick'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry I fear the only picks left on this isle are in the posession of Al Dee."})
keywordHandler:addKeyword({'sell club'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't buy this garbage!"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is about |TIME|. I am so sorry, I have no watches to sell. Do you want to buy something else?"})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if msgcontains(msg, 'mission') or msgcontains(msg, 'quest') or msgcontains(msg, 'reward') then
	npcHandler:say('I really love flowers. Sadly my favourites, honey flowers are very rare on this isle. If you can find me one, I\'ll give you a little reward.')
	
	elseif msgcontains (msg, 'honey flower') and getPlayerItemCount(cid,2103) >= 1 then
	npcHandler:say('Oh, thank you so much! Please take this piece of armor as reward.')
	doPlayerAddItem(cid, 2468, 1)
	doPlayerRemoveItem(cid, 2103, 1)
	talk_state = 0
	
	elseif msgcontains (msg, 'honey flower') and getPlayerItemCount(cid,2103) == 0 then
	npcHandler:say('Honey flowers are my favourites <sigh>.')
	talk_state = 0
	
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())