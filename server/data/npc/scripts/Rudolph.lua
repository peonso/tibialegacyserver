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

shopModule:addBuyableItem({'jacket'}, 2650, 12)
shopModule:addBuyableItem({'tunic'}, 2652, 10)
shopModule:addBuyableItem({'cape'}, 2654, 9)
shopModule:addBuyableItem({'leather legs'}, 2649, 10)
shopModule:addBuyableItem({'scarf'}, 2661, 15)
shopModule:addBuyableItem({'sandals'}, 2642, 2)
shopModule:addBuyableItem({'leather boots'}, 2643, 2)

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm Rudolph, you know."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, I am a tailor, can't you see?"})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, the king. What a well dressed man he is."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, the king. What a well dressed man he is."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, such handsome guys and such ugly uniforms."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, dear."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, that thing must be dangerous. One could hurt himself quite badly with it I guess."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, what a lovely city it was once."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, there is not much sense for fashion in this world."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, these women ... oh, go away."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, what a lovely city it is."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, we tailors learn much, but don't talk about it. It's the tailors' code of honor, you know."})
keywordHandler:addKeyword({'rumo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, we tailors learn much, but don't talk about it. It's the tailors' code of honor, you know."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, I have wonderful clothes and shoes."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, I have wonderful clothes and shoes."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, I have wonderful clothes and shoes."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, I have wonderful clothes and shoes."})
keywordHandler:addKeyword({'clothes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, I have wonderful jackets, capes, tunics, leather legs, and scarfs."})
keywordHandler:addKeyword({'shoes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, I have wonderful leather boots and sandals."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, now it's |TIME|."})

npcHandler:addModule(FocusModule:new())