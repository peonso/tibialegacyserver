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

shopModule:addSellableItem({'mace'}, 2398, 23)
shopModule:addSellableItem({'dagger'}, 2379, 1)
shopModule:addSellableItem({'carlin sword'}, 2395, 118)
shopModule:addSellableItem({'club'}, 2382, 1)
shopModule:addSellableItem({'spear'}, 2389, 1)
shopModule:addSellableItem({'rapier'}, 2384, 3)
shopModule:addSellableItem({'sabre'}, 2385, 5)
shopModule:addSellableItem({'two handed sword'}, 2377, 190)
shopModule:addSellableItem({'sword'}, 2376, 15)
shopModule:addSellableItem({'battle axe'}, 2378, 75)
shopModule:addSellableItem({'battle hammer'}, 2417, 70)
shopModule:addSellableItem({'morning star'}, 2394, 100)
shopModule:addSellableItem({'halberd'}, 2381, 310)
shopModule:addSellableItem({'double axe'}, 2387, 260)
shopModule:addSellableItem({'war hammer'}, 2391, 470)
shopModule:addBuyableItem({'spear'}, 2389, 10)
shopModule:addBuyableItem({'rapier'}, 2384, 15)
shopModule:addBuyableItem({'sabre'}, 2385, 25)
shopModule:addBuyableItem({'two handed sword'}, 2377, 950)
shopModule:addBuyableItem({'sword'}, 2376, 85)
shopModule:addBuyableItem({'battle axe'}, 2378, 235)
shopModule:addBuyableItem({'battle hammer'}, 2417, 350)
shopModule:addBuyableItem({'morning star'}, 2394, 430)
shopModule:addBuyableItem({'club'}, 2382, 5)
shopModule:addBuyableItem({'dagger'}, 2379, 5)
shopModule:addBuyableItem({'mace'}, 2398, 90)
shopModule:addBuyableItem({'throwing star'}, 2399, 50)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell weapons that are as lethal as the bite of the desertlion and as quick as the sandwasp."})
keywordHandler:addKeyword({'shop'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell weapons that are as lethal as the bite of the desertlion and as quick as the sandwasp."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Habdel Ibn Haqui."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't worry, there is enough time left to finish our deal."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell and buy weapons. Just ask what you need or tell me what you offer."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "With my weapons you have to fear the monsters no longer and you will brave any danger or dungeon!"})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "With my weapons you have to fear the monsters no longer and you will brave any danger or dungeon!"})
keywordHandler:addKeyword({'drefia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Even the undead will fall a second time for the weapons you buy from me."})
keywordHandler:addKeyword({'thank'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You are welcome."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Which of my powerful weapons do you need?"})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Which of my powerful weapons do you need?"})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are light and heavy weapons."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are light and heavy weapons."})
keywordHandler:addKeyword({'light'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have clubs, daggers, spears, swords, maces, rapiers, morning stars, and sabres. What's your choice?"})
keywordHandler:addKeyword({'heavy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have the best two handed swords in Tibia. I also sell battle hammers and battle axes. What's your choice?"})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell only weapons. For armor, ask Azil in the other shop."})
keywordHandler:addKeyword({'shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell only weapons. For armor, ask Azil in the other shop."})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell only weapons. For armor, ask Azil in the other shop."})
keywordHandler:addKeyword({'trouser'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell only weapons. For armor, ask Azil in the other shop."})
keywordHandler:addKeyword({'legs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell only weapons. For armor, ask Azil in the other shop."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())