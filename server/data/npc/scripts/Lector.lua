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

shopModule:addBuyableItem({'meat'}, 2666, 3)
shopModule:addBuyableItem({'ham'}, 2671, 6)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the butcher. I am selling delicious meat."})
keywordHandler:addKeyword({'butcher'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the butcher. I am selling delicious meat."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My father named me Lector."})
keywordHandler:addKeyword({'father'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My father, Hannibal, was the royal cook. He died some years ago in an attack of the evil Ferumbras."})
keywordHandler:addKeyword({'graveyard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heared, the mausoleum is haunted!"})
keywordHandler:addKeyword({'mausoleum'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heared, the mausoleum is haunted!"})
keywordHandler:addKeyword({'dragon steak'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Dragon steak was the favourite meal of Tark Trueblade."})
keywordHandler:addKeyword({'tark trueblade'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Tark Trueblade was the greatest dragonslayer of all. I heared, he died in a battle with an ancient dragon lord."})
keywordHandler:addKeyword({'ghostlands'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A bloody place with a bloody history. I wonder if it realy drove people mad or if it just attracted those already disbalanced in their minds."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you ham or meat. Dragon steaks are out. <giggle>"})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you ham or meat. Dragon steaks are out. <giggle>"})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you ham or meat. Dragon steaks are out. <giggle>"})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Are you looking for food? I can offer you ham or meat."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is exactly |TIME|."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())