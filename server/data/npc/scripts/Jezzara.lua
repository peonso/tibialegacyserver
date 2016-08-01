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

shopModule:addBuyableItem({'dragon ham'}, 2672, 25)
shopModule:addBuyableItem({'meat'}, 2666, 10)
shopModule:addBuyableItem({'ham'}, 2671, 15)
shopModule:addBuyableItem({'salmon'}, 2668, 7)
shopModule:addBuyableItem({'fish'}, 2667, 6)
shopModule:addBuyableItem({'orange'}, 2675, 9)
shopModule:addBuyableItem({'banana'}, 2676, 5)
shopModule:addBuyableItem({'grape'}, 2681, 8)
shopModule:addBuyableItem({'melon'}, 2682, 13)
shopModule:addBuyableItem({'carrot'}, 2684, 8)
shopModule:addBuyableItem({'tomato'}, 2685, 10)
shopModule:addBuyableItem({'pumpkin'}, 2683, 10)


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell food of various kinds."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the mourned Jezzara."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can buy watches here in the markethall."})
keywordHandler:addKeyword({'temple'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The temple can be found in the northeast of the city."})
keywordHandler:addKeyword({'oldpharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He was entombed in undead state. It is said that this will finally teach him to to strive for ascension."})
keywordHandler:addKeyword({'pharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The pharaoh is our godking and the founder of our religion."})
keywordHandler:addKeyword({'scarab'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am not afraid of something that attacks only my physical form. But they stay away from the city anyway."})
keywordHandler:addKeyword({'chosen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The chosen are those who are granted undeath after a life of service to the pharaoh."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The world can be a dangerous place for the whole of the Akh'rah Uthun."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The cities of the Tibian continent have little contact with us."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The cities of the Tibian continent have little contact with us."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The cities of the Tibian continent have little contact with us."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The cities of the Tibian continent have little contact with us."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Dwarves are not really fond of the endless sands of the desert. I must say I can't blame them for it."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Dwarves are not really fond of the endless sands of the desert. I must say I can't blame them for it."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Dwarves are not really fond of the endless sands of the desert. I must say I can't blame them for it."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves don't like this land too much so we have little contact with them."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves don't like this land too much so we have little contact with them."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves don't like this land too much so we have little contact with them."})
keywordHandler:addKeyword({'daraman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I know little of his teachings. The priests say his conclusions were inconsequent."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This continent is very diverse. There are deserts and mountains as well as a large jungle region."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are usually not allowed to travel that far without explicit permission, so we know this city mostly from the tales of travellers."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This city is a safe haven that gives shelter from the dangers of the desert."})
keywordHandler:addKeyword({'mortality'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The priests teach that mortality is a curse. I find it hard to understand but the priests will know best."})
keywordHandler:addKeyword({'false'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As far as I understand the gods worshipped by other nations are nothing but imposters."})
keywordHandler:addKeyword({'ascension'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ascension is difficult to achive. Too difficult to achieve as long as you are still alive."})
keywordHandler:addKeyword({"Akh'rah Uthun"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well its just the Akh, the Rah and the Unthun."})
keywordHandler:addKeyword({'Akh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That is the body."})
keywordHandler:addKeyword({'undea'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those who follow the pharaoh might become undead one day."})
keywordHandler:addKeyword({'Rah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Rah is the spiritual part of a being."})
keywordHandler:addKeyword({'uthun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Uthun is the sentient part of all living things."})
keywordHandler:addKeyword({'mourn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The priests say we are to be mourned while we are still alive."})
keywordHandler:addKeyword({'arena'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sometimes spectacular battles are fought in the local arena."})
keywordHandler:addKeyword({'palace'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The palace is where the mighty pharaoh resides."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you meat, ham, salmon, fish, fruits and vegetables."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you meat, ham, salmon, fish, fruits and vegetables."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you meat, ham, salmon, fish, fruits and vegetables."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you meat, ham, salmon, fish, fruits and vegetables."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you meat, ham, salmon, fish, fruits and vegetables."})
keywordHandler:addKeyword({'fruid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have oranges, bananas, grapes, pumpkins and melons. What do you want?"})
keywordHandler:addKeyword({'vegetable'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have carrots and tomatoes. What do you want?"})


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())