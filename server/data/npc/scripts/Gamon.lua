dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

function greetCallback(cid)
	if getPlayerSex(cid) == 1 then
	npcHandler:setMessage(MESSAGE_GREET, "Nice to meet you, Mister ".. getPlayerName(cid) .."! Looking for furniture? You've come to the right place!")
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Well, hello there, Lady, ".. getPlayerName(cid) .." welcome to Gamon's humble furniture shop!")
	return true
	end	
end	
npcHandler:setCallback(CALLBACK_GREET, greetCallback)

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

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Thais's foremost furniture salesman."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "News? Of course there's news! There's a new furniture man in town, and he's here to stay!"})
keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Excellent! Never felt better in my life!"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My friends call me Gamon. My fans call me the incredible Gammy!"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Any time's a good time to buy some furniture."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais is obsessed with its past. Everybody here is so proud of their history. Bah! Thais might have a long history, but it has no idea when it comes to interior decoration."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The place where it all happens. That town really rocks! Thais could learn a lot about interior decoration from Venore!"})
keywordHandler:addKeyword({'power'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are a few rumours about a rebellion, but that is all they are."})
keywordHandler:addKeyword({'rebellion'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well - a few paranoid souls think that Venore wants to gain independence from Thais. Nothing more than rumours."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You mean my specials, don't you?"})
keywordHandler:addKeyword({'quality'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our furniture is produced by the finest carpenters on the continent using the rare wood of the Venorean marsh willow!"})
keywordHandler:addKeyword({'marsh willow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can't get any better wood in this world. And it has got a nice smell to it, too. There is nothing nicer than a marsh willow campfire."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "His Royal Highness will start to appreciate the superior quality of our stock soon enough!"})
keywordHandler:addKeyword({'sam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heard rumours he has some special offers for customers who know to ask for the correct things."})
keywordHandler:addKeyword({'benjamin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He's incredibly slow. Just your average postman, I guess."})
keywordHandler:addKeyword({'gorn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He sells stuff of inferior quality. Nothing compared to venores high quality goods."})
keywordHandler:addKeyword({'quentin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That old monk has probably never left that overcrowded town here."})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A quest?! Who needs quests when there is interior decorating!"})
keywordHandler:addKeyword({'bozo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bozo! Damn that clown! He keeps making fake orders. It isn't funny to deliver a wardrobe to an address that doesn't even exist, you know!"})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Tibia is a wonderful place full of business opportunities."})
keywordHandler:addKeyword({'castle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I've said it a thousand times! That place needs a complete refurbishing!"})
keywordHandler:addKeyword({'muriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The sorcerers guild could realy need someone with taste to redecorate it."})
keywordHandler:addKeyword({'elane'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She's pretty, but I am the kind of man who enjoys a long and healthy life."})
keywordHandler:addKeyword({'marvik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Druids are obsessed with trees and the bane of any carpenter."})
keywordHandler:addKeyword({'gregor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those knights know how to party. And after such partys theres allways need for new furniture."})
keywordHandler:addKeyword({'guild'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Now those people really talk business. There is a new era dawning."})
keywordHandler:addKeyword({'merchants'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Now those people really talk business. There is a new era dawning."})
keywordHandler:addKeyword({'topsy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, those twins. Strange people they are (*sigh*). Oh, they are great to work with, of course. Excellent quality, competetive prices! But well... (whispers) they give me the creeps!"})
keywordHandler:addKeyword({'turvy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, those twins. Strange people they are (*sigh*). Oh, they are great to work with, of course. Excellent quality, competetive prices! But well... (whispers) they give me the creeps!"})
keywordHandler:addKeyword({'twin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, those twins. Strange people they are (*sigh*). Oh, they are great to work with, of course. Excellent quality, competetive prices! But well... (whispers) they give me the creeps!"})
keywordHandler:addKeyword({'creep'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes! I can never figure out which is which. And they are always watching me!"})
keywordHandler:addKeyword({'watching'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Look! They are doing it again! And they are always smiling!"})
keywordHandler:addKeyword({'smiling'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes! Smiling! How a professional sales artist such as myself is supposed to work in such an atmosphere is beyond me!"})
keywordHandler:addKeyword({'artist'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes! Selling is a form of art! The elaborate combination of rhetoric and acting which serves to create a sublime longing for the infinite, embodied by second class furniture."})
keywordHandler:addKeyword({'rug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, silly me! Rugs are out of stock at the moment! But we expect a new shipment anytime. Just watch out for the next update!... Of our inventory I mean."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'furniture'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell statues, tables, chairs, flowers, pillows, pottery, instruments, decoration, tapestries and containers."})
keywordHandler:addKeyword({'special'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are permanently extraordinarily cheap."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())