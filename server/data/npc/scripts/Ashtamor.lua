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

shopModule:addBuyableItem({'vase'}, 2008, 3, 0)
shopModule:addBuyableItem({'amphora'}, 2023, 4, 0)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I consider myself as a guide, a guardian over the souls who transcend the border to another world."})
keywordHandler:addKeyword({'crematory'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Such an ugly word for this wonderful place. It is a door, a portal to a better world than this one is."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What is a name worth in your eyes? And more important: Does the choice of your name decide your further fate? Perhaps we will never know."})
keywordHandler:addKeyword({'fire'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The purging force of the fire ... after having been purified, the freed souls will depart with the smoke."})
keywordHandler:addKeyword({'soul'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The essence of life. Source of your very self. While the body is in space and time, the soul exists in time only."})
keywordHandler:addKeyword({'body'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Is the mind an emination of body, or the body an invention by the mind?"})
keywordHandler:addKeyword({'dea'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What else does it mean than the loss of your weak physical shell? And isn't the true power in the universe rather mental than physical?"})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You come to this world naked, and leave it this way, so there's no need to hold back your money, especially not in a place like Venore."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Kings, queens ... I've seen them come and go. Everything fades, even the glory and wealth of the richest."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh yes, monsters can grant you a passage to the afterlife also, but it's not a comfortable trip. <chuckles>"})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am offering vases and amphoras, the perfect vessel for dusty remains of whatever sort."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am offering vases and amphoras, the perfect vessel for dusty remains of whatever sort."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am offering vases and amphoras, the perfect vessel for dusty remains of whatever sort."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am offering vases and amphoras, the perfect vessel for dusty remains of whatever sort."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's |TIME| now, but the true question is: How much time is left?"})

npcHandler:addModule(FocusModule:new())