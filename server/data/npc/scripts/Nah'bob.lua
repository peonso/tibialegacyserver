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

shopModule:addSellableItem({'spike sword'}, 					ID_spikesword, 1000)
shopModule:addSellableItem({'fire sword'}, 					ID_firesword, 4000)
shopModule:addSellableItem({'war hammer'}, 					ID_warhammer, 1200)
shopModule:addSellableItem({'ice rapier'}, 					ID_icerapier, 1000)
shopModule:addSellableItem({'broad sword'}, 					ID_broadsword, 500)
shopModule:addSellableItem({'dragon lance'}, 					ID_dragonlance, 9000)
shopModule:addSellableItem({'obsidian lance'}, 					ID_obsidianlance, 500)
shopModule:addSellableItem({'fire axe'}, 					ID_fireaxe, 8000)
shopModule:addSellableItem({'guardian shield'}, 					ID_guardianshield, 2000)
shopModule:addSellableItem({'dragon shield'}, 					ID_dragonshield, 4000)
shopModule:addSellableItem({'beholder shield'}, 					ID_beholdershield, 1200)
shopModule:addSellableItem({'crown shield'}, 					ID_crownshield, 8000)
shopModule:addSellableItem({'phoenix shield'}, 					ID_phoenixshield, 16000)
shopModule:addSellableItem({'noble armor'}, 					ID_noblearmor, 900)
shopModule:addSellableItem({'crown armor'}, 					ID_crownarmor, 12000)
shopModule:addSellableItem({'crown legs'}, 					ID_crownlegs, 12000)
shopModule:addSellableItem({'crown helmet'}, 					ID_crownhelmet, 2500)
shopModule:addSellableItem({'crusader helmet'}, 					ID_crusaderhelmet, 6000)
shopModule:addSellableItem({'royal helmet'}, 					ID_royalhelmet, 30000)
shopModule:addSellableItem({'blue robe'}, 					ID_bluerobe, 10000)
shopModule:addSellableItem({'boots of haste'}, 					ID_bootsofhaste, 30000)
shopModule:addSellableItem({'dragon scale mail'}, 					ID_dragonscalemail, 40000)

shopModule:addBuyableItem({'spike sword'}, 					ID_spikesword, 8000)
shopModule:addBuyableItem({'war hammer'}, 					ID_warhammer, 10000)
shopModule:addBuyableItem({'obsidian lance'}, 					ID_obsidianlance, 3000)
shopModule:addBuyableItem({'beholder shield'}, 					ID_beholdershield, 7000)
shopModule:addBuyableItem({'noble armor'}, 					ID_noblearmor, 8000)


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
