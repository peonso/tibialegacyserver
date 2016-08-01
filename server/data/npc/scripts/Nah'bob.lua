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

shopModule:addSellableItem({'spike sword'}, 2383, 1000)
shopModule:addSellableItem({'fire sword'}, 2392, 4000)
shopModule:addSellableItem({'war hammer'}, 2391, 1200)
shopModule:addSellableItem({'ice rapier'}, 2396, 1000)
shopModule:addSellableItem({'broad sword'}, 2413, 500)
shopModule:addSellableItem({'dragon lance'}, 2414, 9000)
shopModule:addSellableItem({'obsidian lance'}, 2425, 500)
shopModule:addSellableItem({'fire axe'}, 2432, 8000)
shopModule:addSellableItem({'guardian shield'}, 2515, 2000)
shopModule:addSellableItem({'dragon shield'}, 2516, 4000)
shopModule:addSellableItem({'beholder shield'}, 2518, 1200)
shopModule:addSellableItem({'crown shield'}, 2519, 8000)
shopModule:addSellableItem({'phoenix shield'}, 2539, 16000)
shopModule:addSellableItem({'noble armor'}, 2486, 900)
shopModule:addSellableItem({'crown armor'}, 2487, 12000)
shopModule:addSellableItem({'crown legs'}, 2488, 12000)
shopModule:addSellableItem({'crown helmet'}, 2491, 2500)
shopModule:addSellableItem({'crusader helmet'}, 2497, 6000)
shopModule:addSellableItem({'royal helmet'}, 2498, 30000)
shopModule:addSellableItem({'blue robe'}, 2656, 10000)
shopModule:addSellableItem({'boots of haste'}, 2195, 30000)
shopModule:addSellableItem({'dragon scale mail'}, 2492, 40000)

shopModule:addBuyableItem({'spike sword'}, 2383, 8000)
shopModule:addBuyableItem({'war hammer'}, 2391, 10000)
shopModule:addBuyableItem({'obsidian lance'}, 2425, 3000)
shopModule:addBuyableItem({'beholder shield'}, 2518, 7000)
shopModule:addBuyableItem({'noble armor'}, 2486, 8000)


keywordHandler:addKeyword({'wares'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My job around here is to buy and sell weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My job around here is to buy and sell weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My job around here is to buy and sell weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My job around here is to buy and sell weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My job around here is to buy and sell weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My job around here is to buy and sell weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling and buying spike swords, war hammers and obsidian lances. Furthermore I would buy fire swords, ice rapiers, dragon lances, fire axes and broadswords from you, if you have any."})
keywordHandler:addKeyword({'shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm just selling beholder shields. But I'm buying guardian shields, dragon shields, beholder shields, crown shields and phoenix shields."})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling and buying noble armors. Furthermore I'm buying dragon scale mails, crown armors and blue robes."})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "At this time I'm not selling any helmets. I'm only buying crown helmets, crusader helmets and royal helmets."})
keywordHandler:addKeyword({'legs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "At this time I'm only buying crown legs. Oh, and I'm also looking for boots of haste!"})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())