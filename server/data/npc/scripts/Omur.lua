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

shopModule:addBuyableItem({'orange'}, 2675, 7)
shopModule:addBuyableItem({'banana'}, 2676, 3)
shopModule:addBuyableItem({'grape'}, 2681, 5)
shopModule:addBuyableItem({'melon'}, 2682, 10)
shopModule:addBuyableItem({'carrot'}, 2684, 4)
shopModule:addBuyableItem({'tomato'}, 2685, 5)
shopModule:addBuyableItem({'pumpkin'}, 2683, 10)

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am called Omur."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell rare fruits and vegatables from our lands and distant places."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't become a slave of a watch."})
keywordHandler:addKeyword({'caliph'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, Caliph Kazzan; thrice praised be his name. May his life be as long as the beard of the king of all djinns."})
keywordHandler:addKeyword({'kazzan'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, Caliph Kazzan; thrice praised be his name. May his life be as long as the beard of the king of all djinns."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think I have heard a traveller from the west mention that name."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Is that the name of a djinn?"})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We import some goods from there in exchange for ours."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The world is nothing but a vain seduction."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I know almost nothing about that town. It must be exotic and entertaining. A place of distractions from the true path."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sometimes the desertwind carries the crys and mourning of the tortured souls from Drefia far into the desert."})
keywordHandler:addKeyword({'rumo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sometimes the desertwind carries the crys and mourning of the tortured souls from Drefia far into the desert."})
keywordHandler:addKeyword({'desert'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's not called the Devourer for nothing."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you fruits and vegetables."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you fruits and vegetables."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you fruits and vegetables."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you fruits and vegetables."})
keywordHandler:addKeyword({'fruit'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have oranges, bananas, grapes, and melons. What do you want?"})
keywordHandler:addKeyword({'vegetable'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have carrots, pumpkins and tomatoes. What do you want?"})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())