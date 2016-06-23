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

shopModule:addSellableItem({'brass armor'}, 					ID_brassarmor, 112)
shopModule:addSellableItem({'chain armor'}, 					ID_chainarmor, 40)
shopModule:addSellableItem({'plate armor'}, 					ID_platearmor, 240)
shopModule:addSellableItem({'steel helmet'}, 					ID_steelhelmet, 293)
shopModule:addSellableItem({'chain helmet'}, 					ID_chainhelmet, 12)
shopModule:addSellableItem({'brass helmet'}, 					ID_brasshelmet, 30)
shopModule:addSellableItem({'viking helmet'}, 					ID_vikinghelmet, 66)
shopModule:addSellableItem({'iron helmet'}, 					ID_ironhelmet, 145)
shopModule:addSellableItem({'devil helmet'}, 					ID_devilhelmet, 450)
shopModule:addSellableItem({'warrior helmet'}, 					ID_warriorhelmet, 696)
shopModule:addSellableItem({'dwarven shield'}, 					ID_dwarvenshield, 100)
shopModule:addSellableItem({'plate shield'}, 					ID_plateshield, 45)
shopModule:addSellableItem({'brass shield'}, 					ID_brassshield, 16)
shopModule:addSellableItem({'wooden shield'}, 					ID_woodenshield, 3)
shopModule:addSellableItem({'battle shield'}, 					ID_battleshield, 60)
shopModule:addSellableItem({'brass legs'}, 					ID_brasslegs, 49)
shopModule:addSellableItem({'chain legs'}, 					ID_chainlegs, 20)
shopModule:addSellableItem({'plate legs'}, 					ID_platelegs, 115)
shopModule:addSellableItem({'knight legs'}, 					ID_knightlegs, 375)

shopModule:addBuyableItem({'chain armor'}, 					ID_chainarmor, 200)
shopModule:addBuyableItem({'brass armor'}, 					ID_brassarmor, 450)
shopModule:addBuyableItem({'plate armor'}, 					ID_platearmor, 1200)
shopModule:addBuyableItem({'chain helmet'}, 					ID_chainhelmet, 52)
shopModule:addBuyableItem({'brass helmet'}, 					ID_brasshelmet, 120)
shopModule:addBuyableItem({'iron helmet'}, 					ID_ironhelmet, 390)
shopModule:addBuyableItem({'steel helmet'}, 					ID_steelhelmet, 580)
shopModule:addBuyableItem({'steel shield'}, 					ID_steelshield, 240)
shopModule:addBuyableItem({'brass shield'}, 					ID_brassshield, 65)
shopModule:addBuyableItem({'plate shield'}, 					ID_plateshield, 125)
shopModule:addBuyableItem({'dwarven shield'}, 					ID_dwarvenshield, 500)
shopModule:addBuyableItem({'chain legs'}, 					ID_chainlegs, 80)
shopModule:addBuyableItem({'brass legs'}, 					ID_brasslegs, 195)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell best armor in land. My armor save you life. Better buy much."})
keywordHandler:addKeyword({'shop'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell best armor in land. My armor save you life. Better buy much."})
keywordHandler:addKeyword({'shop'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Kroox Shieldbearer, son of Earth, from the Molten Rock."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell and buy all kinds of armor. Dwarfish are the best, jawoll!"})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are proud fellows."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You not be afraid, here you be save."})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Much fun you can have in dungeons. Much battle and much gold, jawoll!"})
keywordHandler:addKeyword({'mines'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Foreigners not welcome in mines. An evil basilisk rob our deeper mines."})
keywordHandler:addKeyword({'thank'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I you thank, too."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What you need? I sell armor, helmets, shields, and legs."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What you need? I sell armor, helmets, shields, and legs."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What you need? I sell armor, helmets, shields, and legs."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I offer armor, helmets, legs, and shields."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ask in the shop next tunnel about that."})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell chain helmets, brass helmets, iron helmets, and steel helmets. What you want?"})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell chain armor, brass armor, and plate armor. What you need?"})
keywordHandler:addKeyword({'shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell steel shields, dwarven shields, brass shields, and plate shields. What you want?"})
keywordHandler:addKeyword({'legs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs, and brass legs. What you need?"})
keywordHandler:addKeyword({'you buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You want sell any armor?"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's |TIME| now."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if msgcontains(msg, 'sam') or msgcontains(msg, 'sen') and getPlayerStorageValue(cid, 289) == 1 then
	npcHandler:say('Oh, so its you, he wrote me about? Sadly I have no dwarven armor in stock. But I give you the permission to retrive one from the mines.', 1)
	npcHandler:say('The problem is, some giant spiders made the tunnels where the storage is their new home. Good luck.', 5)
	setPlayerStorageValue(cid, 290, 1)
	
	-- The Postman Missions Quest
	elseif msgcontains(msg, 'measurements') and getPlayerStorageValue(cid,235) > 0 and getPlayerStorageValue(cid,237) < 1 then
	npcHandler:say('Hm, well I guess its ok to tell you ... <tells you about Lokurs measurements>')
	setPlayerStorageValue(cid,237,1)
	setPlayerStorageValue(cid,234,getPlayerStorageValue(cid,234)+1)
	topic = 0
	
	elseif msgcontains(msg, 'measurements') then
	npcHandler:say('UH? No clue what you are talking about, jawoll.')
	topic = 0
	end
	
	return TRUE
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())