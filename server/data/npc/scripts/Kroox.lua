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

shopModule:addSellableItem({'brass armor'}, 2465, 112)
shopModule:addSellableItem({'chain armor'}, 2464, 40)
shopModule:addSellableItem({'plate armor'}, 2463, 240)
shopModule:addSellableItem({'steel helmet'}, 2457, 293)
shopModule:addSellableItem({'chain helmet'}, 2458, 12)
shopModule:addSellableItem({'brass helmet'}, 2460, 30)
shopModule:addSellableItem({'viking helmet'}, 2473, 66)
shopModule:addSellableItem({'iron helmet'}, 2459, 145)
shopModule:addSellableItem({'devil helmet'}, 2462, 450)
shopModule:addSellableItem({'warrior helmet'}, 2475, 696)
shopModule:addSellableItem({'dwarven shield'}, 2525, 100)
shopModule:addSellableItem({'plate shield'}, 2510, 45)
shopModule:addSellableItem({'brass shield'}, 2511, 16)
shopModule:addSellableItem({'wooden shield'}, 2512, 3)
shopModule:addSellableItem({'battle shield'}, 2513, 60)
shopModule:addSellableItem({'brass legs'}, 2478, 49)
shopModule:addSellableItem({'chain legs'}, 2648, 20)
shopModule:addSellableItem({'plate legs'}, 2647, 115)
shopModule:addSellableItem({'knight legs'}, 2477, 375)

shopModule:addBuyableItem({'chain armor'}, 2464, 200)
shopModule:addBuyableItem({'brass armor'}, 2465, 450)
shopModule:addBuyableItem({'plate armor'}, 2463, 1200)
shopModule:addBuyableItem({'chain helmet'}, 2458, 52)
shopModule:addBuyableItem({'brass helmet'}, 2460, 120)
shopModule:addBuyableItem({'iron helmet'}, 2459, 390)
shopModule:addBuyableItem({'steel helmet'}, 2457, 580)
shopModule:addBuyableItem({'steel shield'}, 2509, 240)
shopModule:addBuyableItem({'brass shield'}, 2511, 65)
shopModule:addBuyableItem({'plate shield'}, 2510, 125)
shopModule:addBuyableItem({'dwarven shield'}, 2525, 500)
shopModule:addBuyableItem({'chain legs'}, 2648, 80)
shopModule:addBuyableItem({'brass legs'}, 2478, 195)

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
	
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())