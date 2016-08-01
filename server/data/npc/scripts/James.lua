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


shopModule:addBuyableItem({'bread'}, 2689, 3)
shopModule:addBuyableItem({'cheese'}, 2696, 5)
shopModule:addBuyableItem({'meat'}, 2666, 5)
shopModule:addBuyableItem({'ham'}, 2671, 8)
shopModule:addBuyableItem({'apple'}, 2674, 3)
 


keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Fine, thanks."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell some food."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a humble farmer."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "James."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am too poor to afford a watch."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, can't offer you any help."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are dangerous monsters and renegade knights in the northwest behind the river and the mountain."})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I stay away from dungeons as far as I can."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "May Crunor bless our harvests."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I never saw him in person."})
keywordHandler:addKeyword({'daniel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A brave warrior as far as a farmer like me can tell."})
keywordHandler:addKeyword({'avar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He scares me a little."})
keywordHandler:addKeyword({'academy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The mages and druids have quite an appetite. They buy much from me and summon even more food."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am nothing but a humble farmer and know nothing about that."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am nothing but a humble farmer and know nothing about that."})
keywordHandler:addKeyword({'spell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am nothing but a humble farmer and know nothing about that."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If I were you, I would stay here."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I was born in Thais, but my family moved to Edron among the first settlers."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I was born in Thais, but my family moved to Edron among the first settlers."})


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())