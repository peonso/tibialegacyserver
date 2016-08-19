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

shopModule:addBuyableItem({'knight statue'}, 3916, 50)
shopModule:addBuyableItem({'goblin statue'}, 3930, 50)
shopModule:addBuyableItem({'minotaur statue'}, 3925, 50)

keywordHandler:addKeyword({'statue'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell knight, goblin and minotaur statues."})

shopModule:addBuyableItem({'big table'}, 3909, 30)
shopModule:addBuyableItem({'square table'}, 3910, 25)
shopModule:addBuyableItem({'small table'}, 3908, 20)
shopModule:addBuyableItem({'small round table'}, 3911, 25)

keywordHandler:addKeyword({'table'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell big, small, small round and square tables."})

shopModule:addBuyableItem({'wooden chair'}, 3901, 15)
shopModule:addBuyableItem({'sofa chair'}, 3902, 55)
shopModule:addBuyableItem({'red cushioned chair'}, 3903, 40)
shopModule:addBuyableItem({'green cushioned chair'}, 3904, 40)

keywordHandler:addKeyword({'chair'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell wooden, sofa, red cushioned and green cushioned chairs."})

shopModule:addBuyableItem({'flower bowl'}, 2102, 6)
shopModule:addBuyableItem({'honey flower'}, 2103, 5)
shopModule:addBuyableItem({'potted flower'}, 2104, 5)
shopModule:addBuyableItem({'indoor plant'}, 2101, 8)

keywordHandler:addKeyword({'flower'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell flower bowls, honey flowers, potted flowers and indoor plants."})

shopModule:addBuyableItem({'small purple pillow'}, 1678, 20)
shopModule:addBuyableItem({'small green pillow'}, 1679, 20)
shopModule:addBuyableItem({'small red pillow'}, 1680, 20)
shopModule:addBuyableItem({'small blue pillow'}, 1681, 20)
shopModule:addBuyableItem({'small orange pillow'}, 1682, 20)
shopModule:addBuyableItem({'small turqoise pillow'}, 1683, 20)
shopModule:addBuyableItem({'small white pillow'}, 1684, 20)
shopModule:addBuyableItem({'heart pillow'}, 1685, 30)
shopModule:addBuyableItem({'round blue pillow'}, 1690, 25)
shopModule:addBuyableItem({'round red pillow'}, 1691, 25)
shopModule:addBuyableItem({'round purple pillow'}, 1692, 25)
shopModule:addBuyableItem({'round turqoise pillow'}, 1693, 25)
shopModule:addBuyableItem({'square blue pillow'}, 1686, 30)
shopModule:addBuyableItem({'square red pillow'}, 1687, 30)
shopModule:addBuyableItem({'square green pillow'}, 1688, 30)
shopModule:addBuyableItem({'square yellow pillow'}, 1689, 30)

keywordHandler:addKeyword({'pillow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell small purple, green, red, blue, orange, turqoise and white pillows. and round blue, red, purple and turqoise pillows. and square blue, red, green and yellow pillows. and also heart pillows."})

shopModule:addBuyableItem({'vase'}, 2008, 3, 0)
shopModule:addBuyableItem({'coal basin'}, 3912, 25)
shopModule:addBuyableItem({'large amphora'}, 3929, 50)
shopModule:addBuyableItem({'amphora'}, 2023, 4)

keywordHandler:addKeyword({'pottery'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell vase, coal basin, amphora and large amphora."})

shopModule:addBuyableItem({'harp'}, 3921, 50)
shopModule:addBuyableItem({'piano'}, 3926, 200)

keywordHandler:addKeyword({'instruments'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell harp and piano."})

shopModule:addBuyableItem({'water pipe'}, 2099, 40)
shopModule:addBuyableItem({'coal basin'}, 3912, 25)
shopModule:addBuyableItem({'birdcage'}, 3922, 50)
shopModule:addBuyableItem({'globe'}, 3923, 50)
shopModule:addBuyableItem({'pendulum clock'}, 3917, 75)
shopModule:addBuyableItem({'table lamp'}, 3924, 35)
shopModule:addBuyableItem({'cuckoo clock'}, 1877, 40)
shopModule:addBuyableItem({'rocking horse'}, 3922, 30)
shopModule:addBuyableItem({'globe'}, 3927, 50)

keywordHandler:addKeyword({'decoration'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell coal basin, water pipe, birdcage, globe, pendulum clock, table lamp, rocking horse, globe and cuckoo clock."})

shopModule:addBuyableItem({'green tapestry'}, 1860, 25)
shopModule:addBuyableItem({'yellow tapestry'}, 1863, 25)
shopModule:addBuyableItem({'orange tapestry'}, 1866, 25)
shopModule:addBuyableItem({'red tapestry'}, 1869, 25)
shopModule:addBuyableItem({'blue tapestry'}, 1872, 25)
shopModule:addBuyableItem({'white tapestry'}, 1880, 25)

keywordHandler:addKeyword({'tapestry'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell green, yellow, orange, red, blue and white tapestry."})
keywordHandler:addKeyword({'tapestries'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell green, yellow, orange, red, blue and white tapestry."})

shopModule:addBuyableItem({'wooden drawer'}, 3915, 20)
shopModule:addBuyableItem({'dresser'}, 3916, 25)
shopModule:addBuyableItem({'locker'}, 3918, 30)
shopModule:addBuyableItem({'large trunk'}, 3938, 10)
shopModule:addBuyableItem({'box'}, 1738, 10)
shopModule:addBuyableItem({'chest'}, 1740, 10)
shopModule:addBuyableItem({'crate'}, 1739, 10)
shopModule:addBuyableItem({'trough'}, 1775, 7)
shopModule:addBuyableItem({'barrel'}, 3932, 12)

keywordHandler:addKeyword({'container'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I seel wooden drawer, dresser, locker, large trunk, box, chest, crate, barrel and trough."})

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Hofech Ibn Kalith."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling furniture and equipment to grace the homes."})
keywordHandler:addKeyword({'caliph'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The caliph has the finest home and interior decoration in Darashia."})
keywordHandler:addKeyword({'kazzan'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The caliph has the finest home and interior decoration in Darashia."})
keywordHandler:addKeyword({'daraman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The prophet is alive! Both in the heavens and in our our hearts."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't know about such a person, my friend."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think if that sword really existed, it would make a splendid decoration for any wall."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The wood we are using to make our exquisite furniture is partly supplied by Thais."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One day I will take my flying carpet to see the whole world."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I was not there yet. But I plan to travel there one day."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'furniture'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'special'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are extraordinarily cheap, given the fine quality of our stock. Just look at that table!"})
keywordHandler:addKeyword({'carpet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "No no, I don't sell any carpets."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's |TIME| my friend."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())