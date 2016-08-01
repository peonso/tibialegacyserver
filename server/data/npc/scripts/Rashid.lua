local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
-- OTServ event handling functions end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addSellableItem({'dragon scale mail'}, 2492, 40000, 'dragon scale mail')
shopModule:addSellableItem({'dwarven armor'}, 2503, 30000, 'dwarven armor')
shopModule:addSellableItem({'golden armor'}, 2466, 20000, 'golden armor')
shopModule:addSellableItem({'leopard armor'}, 3968, 1000, 'leopard armor')
shopModule:addSellableItem({'magic plate armor'}, 2472, 90000, 'magic plate armor')

shopModule:addSellableItem({'golden legs'}, 2470, 70000, 'golden legs')

shopModule:addSellableItem({'bone shield'}, 25480, 'bone shield')
shopModule:addSellableItem({'dark shield'}, 252400, 'dark shield')
shopModule:addSellableItem({'demon shield'}, 2520, 30000, 'demon shield')
shopModule:addSellableItem({'medusa shield'}, 2536, 9000, 'medusa shield')
shopModule:addSellableItem({'scarab shield'}, 2540, 2000, 'scarab shield')
shopModule:addSellableItem({'mastermind shield'}, 2514,50000, 'mastermind shield')

shopModule:addSellableItem({'beholder helmet'}, 3972, 7500, 'beholder helmet')
shopModule:addSellableItem({'devil helmet'}, 2462, 1000, 'devil helmet')

shopModule:addSellableItem({'crocodile boots'}, 3892, 1000, 'crocodile boots')
shopModule:addSellableItem({'traper boots'}, 2642000, 'traper boots')
shopModule:addSellableItem({'steel boots'}, 2645, 30000, 'steel boots')

shopModule:addSellableItem({'daramanian mace'}, 2439, 110, 'daramanian mace')
shopModule:addSellableItem({'daramanian waraxe'}, 2440, 1000, 'daramanian waraxe')
shopModule:addSellableItem({'guardian halberd'}, 2427, 11000, 'guardian halberd')
shopModule:addSellableItem({'heavy machete'}, 2442, 90, 'heavy machete')
shopModule:addSellableItem({'silver dagger'}, 2402, 500, 'silver dagger')
shopModule:addSellableItem({'war axe'}, 2454, 9000, 'war axe')

shopModule:addSellableItem({'ancient amulet'}, 2142, 200, 'ancient amulet')
shopModule:addSellableItem({'crystal necklace'}, 2125, 400, 'crystal necklace')
shopModule:addSellableItem({'crystal ring'}, 2124, 250, 'crystal ring')
shopModule:addSellableItem({'demonbone amulet'}, 2136, 32000, 'demonbone amulet')
shopModule:addSellableItem({'emerald bangle'}, 2127, 800, 'emerald bangle')
shopModule:addSellableItem({'golden ring'}, 2179, 8000, 'golden ring')
shopModule:addSellableItem({'platinum amulet'}, 2172500, 'platinum amulet')
shopModule:addSellableItem({'ring of the sky'}, 2123, 30000, 'ring of the sky')
shopModule:addSellableItem({'ruby necklace'}, 2133, 2000, 'ruby necklace')
shopModule:addSellableItem({'scarab amulet'}, 2135, 200, 'scarab amulet')
shopModule:addSellableItem({'silver brooch'}, 2134, 150,'silver brooch')

shopModule:addSellableItem({'doll'},2100 , 200, 'doll')
shopModule:addSellableItem({'voodoo doll'}, 3955, 400, 'voodoo doll')

npcHandler:addModule(FocusModule:new())