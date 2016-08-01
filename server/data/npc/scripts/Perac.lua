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

shopModule:addBuyableItem({'crossbow'}, 2455, 500)
shopModule:addBuyableItem({'bow'}, 2456, 400)
shopModule:addBuyableItem({'arrow'}, 2544, 2)
shopModule:addBuyableItem({'bolt'}, 2543, 3)


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the fletcher of Carlin. I am selling bows, crossbows, and ammunition. Do you need anything?"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Perac, fletcher and marksman extraordinaire."})
keywordHandler:addKeyword({'marksman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a paladin and the best marksman in the land."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't bother me. Go and buy a watch."})
keywordHandler:addKeyword({'ghostlands'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I was there ... once. I got out before the illusions drove me mad. Better stay out of that area!"})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling bows, crossbows, and ammunition. Do you need anything?"})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling bows, crossbows, and ammunition. Do you need anything?"})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling bows, crossbows, and ammunition. Do you need anything?"})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling bows, crossbows, and ammunition. Do you need anything?"})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling bows, crossbows, and ammunition. Do you need anything?"})
keywordHandler:addKeyword({'ammo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do you need arrows for a bow or bolts for a crossbow?"})
keywordHandler:addKeyword({'ammunition'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do you need arrows for a bow or bolts for a crossbow?"})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())