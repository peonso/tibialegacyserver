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


shopModule:addSellableItem({'crossbow'}, 2455, 160)
shopModule:addSellableItem({'bow'}, 2456, 130)
shopModule:addSellableItem({'viking helmet'}, 2473, 66)
shopModule:addSellableItem({'mace'}, 2398, 30)
shopModule:addSellableItem({'hatchet'}, 2388, 25)

shopModule:addBuyableItem({'torch'}, 2050, 2)
shopModule:addBuyableItem({'scroll'}, 1949, 10)
shopModule:addBuyableItem({'document'}, 1968, 12)
shopModule:addBuyableItem({'parchment'}, 1967, 8)
shopModule:addBuyableItem({'rope'}, 2120, 65)
shopModule:addBuyableItem({'rod'}, 2580, 170, 0, 'fishing rod')
shopModule:addBuyableItem({'arrow'}, 2544, 3)
shopModule:addBuyableItem({'bolt'}, 2543, 4)
shopModule:addBuyableItem({'viking helmet'}, 2473, 265)
shopModule:addBuyableItem({'worm'}, 3976, 1)


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