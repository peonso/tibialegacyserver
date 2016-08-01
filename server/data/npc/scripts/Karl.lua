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

shopModule:addBuyableItem({'beer'}, 2012, 20, 3, 'mug of beer')


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the responsible for our ... uhm ... resistance."})
keywordHandler:addKeyword({'saloon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the responsible for our ... uhm ... resistance."})
keywordHandler:addKeyword({'resistance'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We fight the opression of the males and male needs by the women. This is our secret headquarters."})
keywordHandler:addKeyword({'headquarters'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well its more a hidden tavern, so to say."})
keywordHandler:addKeyword({'tavern'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our offers are limited but here a man can buy what a man needs."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I won't tell you my name."})
keywordHandler:addKeyword({'karl'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Who told you that???"})
keywordHandler:addKeyword({'queen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, shes not that bad ... but some of her laws are."})
keywordHandler:addKeyword({'eloise'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, shes not that bad ... but some of her laws are."})
keywordHandler:addKeyword({'law'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those crazy women forbid us alcohol in the city! Imagine that!"})
keywordHandler:addKeyword({'need'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those crazy women forbid us alcohol in the city! Imagine that!"})
keywordHandler:addKeyword({'opression'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those crazy women forbid us alcohol in the city! Imagine that!"})
keywordHandler:addKeyword({'alcohol'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those crazy women forbid us alcohol in the city! Imagine that!"})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are the tools of opression. Hunting down every alcohol smuggler they can get."})
keywordHandler:addKeyword({'smuggler'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We collected money and hired one of the best smuggler in the whole land. His name is Todd."})
keywordHandler:addKeyword({'todd'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A true fighter for malehood. He will bring us all the hard stuff from Thais and even contact the king there to support us."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm sure if the king learns about our tragedy, he will support us with alcohol."})
keywordHandler:addKeyword({'stuff'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Todd took all the money we could gather to buy us the best stuff on the whole continent."})
keywordHandler:addKeyword({'hugo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think Todd mentioned a Hugo once."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some travelers from Edron told about a great treasure guarded by cruel demons in the dungeons there."})
keywordHandler:addKeyword({'rumo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some travelers from Edron told about a great treasure guarded by cruel demons in the dungeons there."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you beer. For wine and realy hard stuff we have to wait for Todd."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you beer. For wine and realy hard stuff we have to wait for Todd."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you beer. For wine and realy hard stuff we have to wait for Todd."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you beer. For wine and realy hard stuff we have to wait for Todd."})


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())