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

shopModule:addBuyableItem({'harp'}, 					ID_harp, 50)
shopModule:addBuyableItem({'piano'}, 					ID_piano, 200)
shopModule:addBuyableItem({'lyre'}, 					ID_lyre, 120)
shopModule:addBuyableItem({'lute'}, 					ID_lute, 195)
shopModule:addBuyableItem({'drum'}, 					ID_drum, 140)
shopModule:addBuyableItem({'simple fanfare'}, 					ID_simplefanfare, 150)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I make instruments and sometimes I'm wandering through the lands of Tibia as a bard."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Julian."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I don't know what time it is."})
keywordHandler:addKeyword({'music'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Music is the food of love."})
keywordHandler:addKeyword({'bard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bards from all over the world come here to buy their instruments."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Here you can buy lyres, lutes, drums, and simple fanfares. I also have a piano and a harp."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Here you can buy lyres, lutes, drums, and simple fanfares. I also have a piano and a harp."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Here you can buy lyres, lutes, drums, and simple fanfares. I also have a piano and a harp."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Here you can buy lyres, lutes, drums, and simple fanfares. I also have a piano and a harp."})
keywordHandler:addKeyword({'instrument'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Here you can buy lyres, lutes, drums, and simple fanfares. I also have a piano and a harp."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
