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

shopModule:addBuyableItem({'fish'}, 2667, 5)
shopModule:addBuyableItem({'meat'}, 2666, 6)
shopModule:addBuyableItem({'bread'}, 2689, 4)
shopModule:addBuyableItem({'beer'}, 2012, 5, 3)
shopModule:addBuyableItem({'wine'}, 2012, 6, 7)
shopModule:addBuyableItem({'water'}, 2012, 0, 1)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I'm the boss of this tavern."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm Snake Eye."})
keywordHandler:addKeyword({'eye'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I had a dispute with a snake once. And the snake won. Bit my left eye out. Therefore, Snake Eye."})
keywordHandler:addKeyword({'snake'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I had a dispute with a snake once. And the snake won. Bit my left eye out. Therefore, Snake Eye."})
keywordHandler:addKeyword({'boss'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yeah. I'm the boss. So don't bother me."})
keywordHandler:addKeyword({'tavern'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a great tavern. No closing time. No problems with kings or other rulers. Best place in Tibia."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We don't need one."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There's already too much order in Tibia. We don't need kings or whatever."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We don't need one."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Go and get a watch."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Gods of Tibia! What a crap! It's all superstition!"})
keywordHandler:addKeyword({'crap'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Crap. Crap! CRAP! It's all CRAP!"})
keywordHandler:addKeyword({'superstition'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Believe me! There are no gods."})
keywordHandler:addKeyword({'durin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He's the worst. The so called god of the dwarfs. I don't believe it. It's all crap."})
keywordHandler:addKeyword({'steve'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Never heard of him."})
keywordHandler:addKeyword({'guido'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Never heard of him."})
keywordHandler:addKeyword({'stephan'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Never heard of him."})
keywordHandler:addKeyword({'cip'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Cip sux!"})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In the beginning, it was a nice encampment. Now it's an overcrowded, polluted city. I hate it!"})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I've never been there. Don't know anything about it."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Kazordoon is alright. Except the dwarfs. I don't like them. But the mountains are a good place. Been there once."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I've never been there. I don't like the elves anyway."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's a place for wealthy toffs!"})
keywordHandler:addKeyword({'wild warrior'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are a lot of wild warriors around. They built this camp."})
keywordHandler:addKeyword({'camp'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, the real wild warriors don't live here. They hide in the woods."})
keywordHandler:addKeyword({'hide'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well. I know of a small camp to the south."})
keywordHandler:addKeyword({'south'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's abandoned. But I bet that something is hidden there!"})
keywordHandler:addKeyword({'hidden'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Go and find out yourself. You can tell me if you find something."})
keywordHandler:addKeyword({'h.l'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is a wild warrior. Nobody knows his real name. We just call im H.L. You can find him in the small armory shop."})
keywordHandler:addKeyword({'wood'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's the best place to live. By the way, there's an old wild warrior building to the southwest. It might be interesting for you."})
keywordHandler:addKeyword({'building'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Go and ask H.L. about it."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do you want to eat or drink?"})
keywordHandler:addKeyword({'eat'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ok, I have fish, meat, and bread. What do you want?"})
keywordHandler:addKeyword({'drink'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you beer, wine, and water. Water is for free."})
keywordHandler:addKeyword({'key'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hmmm. A key. You should ask H.L. about it."})


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())