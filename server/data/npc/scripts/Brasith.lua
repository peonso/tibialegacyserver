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

shopModule:addBuyableItem({'corncob'}, 					ID_corncob, 3)
shopModule:addBuyableItem({'cherry'}, 					ID_cherry, 1)
shopModule:addBuyableItem({'grape'}, 					ID_grape, 3)
shopModule:addBuyableItem({'melon'}, 					ID_melon, 8)
shopModule:addBuyableItem({'banana'}, 					ID_banana, 2)
shopModule:addBuyableItem({'strawberry'}, 					ID_strawberry, 1)
shopModule:addBuyableItem({'carrot'}, 					ID_carrot, 3)
shopModule:addBuyableItem({'pumpkin'}, 					ID_pumpkin, 10)
shopModule:addBuyableItem({'bugmilk', 'milk'}, 					ID_bottle, 15, 6, 'bottle of bugmilk')

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Brasith Seedsinger."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You may buy all the things we grow or gather at this place."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I can't help you."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The humans of Carlin at least try to live in harmony with nature."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heared only terrible storys about that city."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Their traders seem suspiciously freindly. I don't trust them."})
keywordHandler:addKeyword({'roderick'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "His house is an impurity in our city in unity with nature."})
keywordHandler:addKeyword({'olrik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This poor humans seems to think he might become one of us by spendig time with us."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our race lacks unity, which is a very sad thing. And the differences we have will grow and grow until eventually there is no race left."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our race lacks unity, which is a very sad thing. And the differences we have will grow and grow until eventually there is no race left."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They work the earth and claim knowledge about it, but they know only about minerals, not about the life it stands for."})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are so many, so planless, so divided. They have choosen a path I do not want for my own race"})
keywordHandler:addKeyword({'troll'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't claim to understand this creatures but sometimes they are more close to the roots than we are."})
keywordHandler:addKeyword({'cenath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Cenath forgot as many as they learned. I doubt they find the wisdom they are looking for without the things they neglected in their pursuit of knowledge."})
keywordHandler:addKeyword({'kuridai'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Kuridai left the true path and can't see their error. Their way of living may have been suitable in the past, but if they don't come back to us, their path will lead into darkness."})
keywordHandler:addKeyword({'deraisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We have still much to learn but we are on the correct path at least."})
keywordHandler:addKeyword({'abdaisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Abdaisim are true to the ways of our race, maybe even more close than we. But by abandoning the other elves they harm themselves more than they know."})
keywordHandler:addKeyword({'teshial'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are lost, and if they still exist they are alone in the cold and the darkness."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He thinks that he is incredibly powerful, but his is only the mindless power of destruction."})
keywordHandler:addKeyword({'crunor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We abandoned the gods a long time ago. A short time after they abandoned us."})
keywordHandler:addKeyword({'plant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Life takes many forms. Plants are a very basic form of life. Its simplicity makes them close to the core of nature."})
keywordHandler:addKeyword({'tree'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Life takes many forms. Plants are a very basic form of life. Its simplicity makes them close to the core of nature."})
keywordHandler:addKeyword({'forest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The beauty of a forest is something easy to be missed by the unobservant."})
keywordHandler:addKeyword({'field'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "With the growth of a community comes the need to 'use' nature rather then to 'flow' with nature. This is sad but necessary."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell corncobs, cherries, grapes, melons, pumpkins, bananas, strawberries, and carrots."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell corncobs, cherries, grapes, melons, pumpkins, bananas, strawberries, and carrots."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell corncobs, cherries, grapes, melons, pumpkins, bananas, strawberries, and carrots."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell corncobs, cherries, grapes, melons, pumpkins, bananas, strawberries, and carrots."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell corncobs, cherries, grapes, melons, pumpkins, bananas, strawberries, and carrots."})

npcHandler:addModule(FocusModule:new())