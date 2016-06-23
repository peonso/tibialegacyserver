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

shopModule:addBuyableItem({'bucket'}, 					ID_bucket, 4, 0)
shopModule:addBuyableItem({'bottle'}, 					ID_bottle, 3, 0)
shopModule:addBuyableItem({'mug'}, 					ID_mug, 4, 0)
shopModule:addBuyableItem({'cup'}, 					ID_cup, 2, 0)
shopModule:addBuyableItem({'jug'}, 					ID_jug, 10, 0)
shopModule:addBuyableItem({'plate'}, 					ID_plate, 6)
shopModule:addBuyableItem({'baking tray'}, 					ID_bakingtray, 20)
shopModule:addBuyableItem({'pot'}, 					ID_pot, 30)
shopModule:addBuyableItem({'pan'}, 					ID_pan, 20)
shopModule:addBuyableItem({'fork'}, 					ID_fork, 10)
shopModule:addBuyableItem({'wooden spoon'}, 					ID_woodenspoon, 5)
shopModule:addBuyableItem({'spoon'}, 					ID_spoon, 10)
shopModule:addBuyableItem({'knife'}, 					ID_knife, 10)
shopModule:addBuyableItem({'cleaver'}, 					ID_cleaver, 15)
shopModule:addBuyableItem({'spatula'}, 					ID_spatula, 12)
shopModule:addBuyableItem({'rolling pin'}, 					ID_rollingpin, 12)

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Chephan, at your service."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell all the cooking gear you can dream of."})
keywordHandler:addKeyword({'warehouse'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Here you can by so many things you will need one day or another. Just have a look."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Watches are sold in the south east part of this warehouse."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Even a king needs a fork now and then. To scratch his back or to poke servants for example."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Even a king needs a fork now and then. To scratch his back or to poke servants for example."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They brought most of their cooking gear from thais."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "See this fork? Now imagine what a hero like you could do to an evil sorcerer with that fork! Care to buy one?"})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just an oversized kitchenknife. Better buy the real thing."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thaian cooking gear is of inferior quality. Make sure to upgrade yours here as soon as you can."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The world is flat as this plate. You should buy one as a symbol for Tibia."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "So many women and so little intrest in cooking, horrible."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My recipies are family secrets, sorry."})
keywordHandler:addKeyword({'tax'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those taxes are killing me. And they are getting worse each year!"})
keywordHandler:addKeyword({'privilege'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't feel that privileged. In fact our beloved city is bleeding for the profit of Thais."})
keywordHandler:addKeyword({'gambling'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thanks to that taxes I have not enough spare money to gamble much."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That would be: Buckets, bottles, mugs, cups, jugs, plates, baking trays, pots, pans, forks, spoons, knifes, wooden spoons, cleavers, spatulas, and rolling pins."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That would be: Buckets, bottles, mugs, cups, jugs, plates, baking trays, pots, pans, forks, spoons, knifes, wooden spoons, cleavers, spatulas, and rolling pins."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That would be: Buckets, bottles, mugs, cups, jugs, plates, baking trays, pots, pans, forks, spoons, knifes, wooden spoons, cleavers, spatulas, and rolling pins."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That would be: Buckets, bottles, mugs, cups, jugs, plates, baking trays, pots, pans, forks, spoons, knifes, wooden spoons, cleavers, spatulas, and rolling pins."})

npcHandler:addModule(FocusModule:new())