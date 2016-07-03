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

shopModule:addSellableItem({'dagger'}, 					ID_dagger, 2)
shopModule:addSellableItem({'spear'}, 					ID_spear, 3)
shopModule:addSellableItem({'hand axe'}, 					ID_handaxe, 4)
shopModule:addSellableItem({'rapier'}, 					ID_rapier, 5)
shopModule:addSellableItem({'axe'}, 					ID_axe, 7)
shopModule:addSellableItem({'hatchet'}, 					ID_hatchet, 25)
shopModule:addSellableItem({'sabre'}, 					ID_sabre, 12)
shopModule:addSellableItem({'short sword'}, 					ID_shortsword, 10)
shopModule:addSellableItem({'sword'}, 					ID_sword, 25)
shopModule:addSellableItem({'mace'}, 					ID_mace, 30)
shopModule:addSellableItem({'doublet'}, 					ID_doublet, 3)
shopModule:addSellableItem({'leather armor'}, 					ID_leatherarmor, 5)
shopModule:addSellableItem({'chain armor'}, 					ID_chainarmor, 40)
shopModule:addSellableItem({'brass armor'}, 					ID_brassarmor, 150)
shopModule:addSellableItem({'leather helmet'}, 					ID_leatherhelmet, 3)
shopModule:addSellableItem({'chain helmet'}, 					ID_chainhelmet, 12)
shopModule:addSellableItem({'studded helmet'}, 					ID_studdedhelmet, 20)
shopModule:addSellableItem({'wooden shield'}, 					ID_woodenshield, 3)
shopModule:addSellableItem({'studded shield'}, 					ID_studdedshield, 16)
shopModule:addSellableItem({'brass shield'}, 					ID_brassshield, 25)
shopModule:addSellableItem({'plate shield'}, 					ID_plateshield, 40)
shopModule:addSellableItem({'copper shield'}, 					ID_coppershield, 50)
shopModule:addSellableItem({'leather boots'}, 					ID_leatherboots, 2)
shopModule:addSellableItem({'rope'}, 					ID_rope, 8)

shopModule:addBuyableItem({'spear'}, 					ID_spear, 10)
shopModule:addBuyableItem({'rapier'}, 					ID_rapier, 15)
shopModule:addBuyableItem({'sabre'}, 					ID_sabre, 25)
shopModule:addBuyableItem({'dagger'}, 					ID_dagger, 5)
shopModule:addBuyableItem({'sickle'}, 					ID_sickle, 8)
shopModule:addBuyableItem({'hand axe'}, 					ID_handaxe, 8)
shopModule:addBuyableItem({'axe'}, 					ID_axe, 20)
shopModule:addBuyableItem({'short sword'}, 					ID_shortsword, 30)
shopModule:addBuyableItem({'jacket'}, 					ID_jacket, 10)
shopModule:addBuyableItem({'coat'}, 					ID_coat, 8)
shopModule:addBuyableItem({'doublet'}, 					ID_doublet, 16)
shopModule:addBuyableItem({'leather armor'}, 					ID_leatherarmor, 25)
shopModule:addBuyableItem({'leather legs'}, 					ID_leatherlegs, 10)
shopModule:addBuyableItem({'leather helmet'}, 					ID_leatherhelmet, 12)
shopModule:addBuyableItem({'studded helmet'}, 					ID_studdedhelmet, 63)
shopModule:addBuyableItem({'chain helmet'}, 					ID_chainhelmet, 52)
shopModule:addBuyableItem({'wooden shield'}, 					ID_woodenshield, 15)
shopModule:addBuyableItem({'studded shield'}, 					ID_studdedshield, 50)
shopModule:addBuyableItem({'torch'}, 					ID_torch, 2)
shopModule:addBuyableItem({'worm', 'worms'}, 					ID_worm, 1)
shopModule:addBuyableItem({'bag'}, 					ID_bag, 4)
shopModule:addBuyableItem({'scroll'}, 					1949, 5)
shopModule:addBuyableItem({'shovel'}, 					ID_shovel, 10)
shopModule:addBuyableItem({'backpack'}, 					ID_backpack, 10)
shopModule:addBuyableItem({'scythe'}, 					ID_scythe, 12)
shopModule:addBuyableItem({'rope'}, 					ID_rope, 50)
shopModule:addBuyableItem({'fishing rod'}, 					ID_fishingrod, 150)

keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am fine. I'm so glad to have you here as my customer."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell much. Just read the blackboards for my awesome wares or just ask me."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a merchant. What can I do for you?"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Al Dee, but you can call me Al. Do you want to buy something?"})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell stuff to prices that low, that all other merchants would mock at my stupidity."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you want to challenge the monsters, you need some weapons and armor I sell. You need them definitely!"})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you want to explore the dungeons, you have to equip yourself with the vital stuff I am selling. It's vital in the deepest sense of the word."})
keywordHandler:addKeyword({'sewer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, our sewer system is very primitive; so primitive it's overrun by rats. But the stuff I sell is save from them. Do you want to buy some of it?"})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king encouraged salesmen to travel here, but only I dared to take the risk, and a risk it was!"})
keywordHandler:addKeyword({'dallheim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some call him a hero."})
keywordHandler:addKeyword({'bug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bugs plague this isle, but my wares are bugfree, totally bugfree."})
keywordHandler:addKeyword({'stuff'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell equipment of all kinds, all kind available on this isle. Just ask me about my wares if you are interested."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One day I will return to the continent as a rich, a very rich man!"})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais is a crowded town."})
keywordHandler:addKeyword({'wares'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell weapons, shields, armor, helmets, and equipment. For what do you want to ask?"})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell weapons, shields, armor, helmets, and equipment. For what do you want to ask?"})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell spears, rapiers, sabres, daggers, hand axes, axes, and short swords. Just tell me what you want to buy."})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell jackets, coats, doublets, leather armor, and leather legs. Just tell me what you want to buy."})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell leather helmets, studded helmets, and chain helmets. Just tell me what you want to buy."})
keywordHandler:addKeyword({'shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell wooden shields and studded shields. Just tell me what you want to buy."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell torches, bags, scrolls, shovels, picks, backpacks, sickles, scythes, ropes, fishing rods and sixpacks of worms. Just tell me what you want to buy."})
keywordHandler:addKeyword({'do you sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do you need? I sell weapons, armor, helmets, shields, and equipment."})
keywordHandler:addKeyword({'do you have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do you need? I sell weapons, armor, helmets, shields, and equipment."})
keywordHandler:addKeyword({'club'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't buy this garbage!"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is about |TIME|. I am so sorry, I have no watches to sell. Do you want to buy something else?"})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if msgcontains(msg, 'pick') then
	npcHandler:say('Picks are hard to come by. I trade them only for high quality small axes. Do you want to trade?')
	talk_state = 1
	
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerItemCount(cid,2559) >= 1 then
	npcHandler:say('Splendid! Here take your pickaxe.')
	doPlayerRemoveItem(cid,2559,1)
	doPlayerAddItem(cid,2553,1)
	talk_state = 0
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerItemCount(cid,2559) == 0 then
	npcHandler:say('Sorry, I am looking for a SMALL axe.')
	talk_state = 0
	elseif msgcontains(msg, 'no') and talk_state == 1 then
	npcHandler:say('Well, then not.')
	talk_state = 0
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())