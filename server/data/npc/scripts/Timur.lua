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


shopModule:addSellableItem({'crossbow'}, 					ID_crossbow, 160)
shopModule:addSellableItem({'bow'}, 					ID_bow, 130)
shopModule:addSellableItem({'viking helmet'}, 					ID_vikinghelmet, 66)
shopModule:addSellableItem({'mace'}, 					ID_mace, 30)
shopModule:addSellableItem({'hatchet'}, 					ID_hatchet, 25)

shopModule:addBuyableItem({'torch'}, 					ID_torch, 2)
shopModule:addBuyableItem({'scroll'}, 					ID_scroll, 10)
shopModule:addBuyableItem({'document'}, 					ID_document, 12)
shopModule:addBuyableItem({'parchment'}, 					ID_parchment, 8)
shopModule:addBuyableItem({'rope'}, 					ID_rope, 65)
shopModule:addBuyableItem({'rod'}, 					ID_fishingrod, 170, 0, 'fishing rod')
shopModule:addBuyableItem({'arrow'}, 					ID_arrow, 3)
shopModule:addBuyableItem({'bolt'}, 					ID_bolt, 4)
shopModule:addBuyableItem({'viking helmet'}, 					ID_vikinghelmet, 265)
shopModule:addBuyableItem({'worm'}, 					ID_worm, 1)


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling equipment. Do you want something?"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Timur. Sorry, I have not much equipment for sale. The business is running low."})
keywordHandler:addKeyword({'timur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Timur. Sorry, I have not much equipment for sale. The business is running low."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am sorry, I have no watch."})
keywordHandler:addKeyword({'fibula'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a very nice isle. But we don't have enough weapons to defeat the many wolves."})
keywordHandler:addKeyword({'wolves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are everywhere around the village."})
keywordHandler:addKeyword({'wolf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are everywhere around the village."})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can sell you a viking helmet in a very good quality."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you are looking for food, buy a rod and go fishing."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "At the moment I have no weapons to offer. Weapons are very rare on this isle, so I have to buy a few."})
keywordHandler:addKeyword({'crossbow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We have too few crossbows on this isle for our hunters."})
keywordHandler:addKeyword({'bow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We have too few bows on this isle for our hunters."})
keywordHandler:addKeyword({'fluid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The magic shops have a monopole on fluids now... argl!"})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The magic shops have a monopole on fluids now... argl!"})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell torches, scrolls, documents, parchments, ropes, fishing rods, worms, arrows, bolts, and a nice helmet."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell torches, scrolls, documents, parchments, ropes, fishing rods, worms, arrows, bolts, and a nice helmet."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell torches, scrolls, documents, parchments, ropes, fishing rods, worms, arrows, bolts, and a nice helmet."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell torches, scrolls, documents, parchments, ropes, fishing rods, worms, arrows, bolts, and a nice helmet."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell torches, scrolls, documents, parchments, ropes, fishing rods, worms, arrows, bolts, and a nice helmet."})
keywordHandler:addKeyword({'ammo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have arrows and bolts in this shop."})
keywordHandler:addKeyword({'ammunition'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have arrows and bolts in this shop."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
