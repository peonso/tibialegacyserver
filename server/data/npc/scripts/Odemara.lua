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

shopModule:addSellableItem({'white pearl'}, 2143, 160)
shopModule:addSellableItem({'black pearl'}, 2144, 280)
shopModule:addSellableItem({'small diamond'}, 2145, 300)
shopModule:addSellableItem({'small sapphire'}, 2146, 250)
shopModule:addSellableItem({'small ruby'}, 2147, 250)
shopModule:addSellableItem({'small emerald'}, 2149, 250)
shopModule:addSellableItem({'small amethyst'}, 2150, 200)

shopModule:addBuyableItem({'white pearl'}, 2143, 320)
shopModule:addBuyableItem({'black pearl'}, 2144, 560)
shopModule:addBuyableItem({'small diamond'}, 2145, 600)
shopModule:addBuyableItem({'small sapphire'}, 2146, 500)
shopModule:addBuyableItem({'small ruby'}, 2147, 500)
shopModule:addBuyableItem({'small emerald'}, 2149, 500)
shopModule:addBuyableItem({'small amethyst'}, 2150, 400)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am responsible for buying and selling gems, pearls, and the like."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Odemara Taleris, it's a pleasure to meet you."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We offer a great assortment of gems and pearls."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We offer a great assortment of gems and pearls."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We offer a great assortment of gems and pearls."})
keywordHandler:addKeyword({'gem'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We trade small diamonds, sapphires, rubies, emeralds, and amethysts."})
keywordHandler:addKeyword({'pearls'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We trade white and black pearls."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's |TIME|."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())