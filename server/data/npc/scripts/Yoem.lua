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

shopModule:addBuyableItem({'knight statue'}, 					3916, 50)
shopModule:addBuyableItem({'goblin statue'}, 					3930, 50)
shopModule:addBuyableItem({'minotaur statue'}, 					3925, 50)

keywordHandler:addKeyword({'statue'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell knight, goblin and minotaur statues."})

shopModule:addBuyableItem({'big table'}, 					ID_bigtable, 30)
shopModule:addBuyableItem({'square table'}, 					ID_squaretable, 25)
shopModule:addBuyableItem({'small table'}, 					ID_smalltable, 20)
shopModule:addBuyableItem({'small round table'}, 					ID_smallroundtable, 25)

keywordHandler:addKeyword({'table'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell big, small, small round and square tables."})

shopModule:addBuyableItem({'wooden chair'}, 					ID_woodenchair, 15)
shopModule:addBuyableItem({'sofa chair'}, 					ID_sofachair, 55)
shopModule:addBuyableItem({'red cushioned chair'}, 					ID_redcushionedchair, 40)
shopModule:addBuyableItem({'green cushioned chair'}, 					ID_greencushionedchair, 40)

keywordHandler:addKeyword({'chair'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell wooden, sofa, red cushioned and green cushioned chairs."})

shopModule:addBuyableItem({'flower bowl'}, 					ID_flowerbowl, 6)
shopModule:addBuyableItem({'honey flower'}, 					ID_honeyflower, 5)
shopModule:addBuyableItem({'potted flower'}, 					ID_pottedflower, 5)
shopModule:addBuyableItem({'indoor plant'}, 					ID_indoorplant, 8)

keywordHandler:addKeyword({'flower'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell flower bowls, honey flowers, potted flowers and indoor plants."})

shopModule:addBuyableItem({'small purple pillow'}, 					ID_purplepillow, 20)
shopModule:addBuyableItem({'small green pillow'}, 					ID_greenpillow, 20)
shopModule:addBuyableItem({'small red pillow'}, 					ID_redpillow, 20)
shopModule:addBuyableItem({'small blue pillow'}, 					ID_bluepillow, 20)
shopModule:addBuyableItem({'small orange pillow'}, 					ID_orangepillow, 20)
shopModule:addBuyableItem({'small turqoise pillow'}, 					ID_turqoisepillow, 20)
shopModule:addBuyableItem({'small white pillow'}, 					ID_whitepillow, 20)
shopModule:addBuyableItem({'heart pillow'}, 					ID_heartpillow, 30)
shopModule:addBuyableItem({'round blue pillow'}, 					ID_blueroundpillow, 25)
shopModule:addBuyableItem({'round red pillow'}, 					ID_redroundpillow, 25)
shopModule:addBuyableItem({'round purple pillow'}, 					ID_purpleroundpillow, 25)
shopModule:addBuyableItem({'round turqoise pillow'}, 					ID_turqoiseroundpillow, 25)
shopModule:addBuyableItem({'square blue pillow'}, 					ID_bluesquarepillow, 30)
shopModule:addBuyableItem({'square red pillow'}, 					ID_redsquarepillow, 30)
shopModule:addBuyableItem({'square green pillow'}, 					ID_greensquarepillow, 30)
shopModule:addBuyableItem({'square yellow pillow'}, 					ID_yellowsquarepillow, 30)

keywordHandler:addKeyword({'pillow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell small purple, green, red, blue, orange, turqoise and white pillows. and round blue, red, purple and turqoise pillows. and square blue, red, green and yellow pillows. and also heart pillows."})

shopModule:addBuyableItem({'vase'}, 					ID_vase, 3, 0)
shopModule:addBuyableItem({'coal basin'}, 					ID_coalbasin, 25)
shopModule:addBuyableItem({'large amphora'}, 					ID_largeamphora, 50)
shopModule:addBuyableItem({'amphora'}, 					ID_amphora, 4)

keywordHandler:addKeyword({'pottery'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell vase, coal basin, amphora and large amphora."})

shopModule:addBuyableItem({'harp'}, 					ID_harp, 50)
shopModule:addBuyableItem({'piano'}, 					ID_piano, 200)

keywordHandler:addKeyword({'instruments'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell harp and piano."})

shopModule:addBuyableItem({'water pipe'}, 					ID_waterpipe, 40)
shopModule:addBuyableItem({'coal basin'}, 					ID_coalbasin, 25)
shopModule:addBuyableItem({'birdcage'}, 					ID_birdcage, 50)
shopModule:addBuyableItem({'globe'}, 					ID_globe, 50)
shopModule:addBuyableItem({'pendulum clock'}, 					ID_pendulumclock, 75)
shopModule:addBuyableItem({'table lamp'}, 					ID_tablelamp, 35)
shopModule:addBuyableItem({'cuckoo clock'}, 					ID_cuckooclock, 40)
shopModule:addBuyableItem({'rocking horse'}, 					3922, 30)
shopModule:addBuyableItem({'globe'}, 					3927, 50)

keywordHandler:addKeyword({'decoration'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell coal basin, water pipe, birdcage, globe, pendulum clock, table lamp, rocking horse, globe and cuckoo clock."})

shopModule:addBuyableItem({'green tapestry'}, 					ID_greentapestry, 25)
shopModule:addBuyableItem({'yellow tapestry'}, 					ID_yellowtapestry, 25)
shopModule:addBuyableItem({'orange tapestry'}, 					ID_orangetapestry, 25)
shopModule:addBuyableItem({'red tapestry'}, 					ID_redtapestry, 25)
shopModule:addBuyableItem({'blue tapestry'}, 					ID_bluetapestry, 25)
shopModule:addBuyableItem({'white tapestry'}, 					ID_whitetapestry, 25)

keywordHandler:addKeyword({'tapestry'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell green, yellow, orange, red, blue and white tapestry."})
keywordHandler:addKeyword({'tapestries'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell green, yellow, orange, red, blue and white tapestry."})

shopModule:addBuyableItem({'wooden drawer'}, 					ID_woodendrawer, 20)
shopModule:addBuyableItem({'dresser'}, 					ID_dresser, 25)
shopModule:addBuyableItem({'locker'}, 					ID_locker, 30)
shopModule:addBuyableItem({'large trunk'}, 					ID_largetrunk, 10)
shopModule:addBuyableItem({'box'}, 					1738, 10)
shopModule:addBuyableItem({'chest'}, 					1740, 10)
shopModule:addBuyableItem({'crate'}, 					1739, 10)
shopModule:addBuyableItem({'trough'}, 					1775, 7)
shopModule:addBuyableItem({'barrel'}, 					ID_barrel, 12)

keywordHandler:addKeyword({'container'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I seel wooden drawer, dresser, locker, large trunk, box, chest, crate, barrel and trough."})

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Yoem. I sell furniture and equipment."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Have you moved to a new home? I'm the specialist for equipping it."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do you need a clock for your house?"})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You mean my specials, don't you?"})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'furniture'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'special'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are permanently extraordinarily cheap."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is |TIME|. Do you need a clock for your house?"})

npcHandler:addModule(FocusModule:new())