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

shopModule:addBuyableItem({'bread'}, 2689, 4)
shopModule:addBuyableItem({'cheese'}, 2696, 6)
shopModule:addBuyableItem({'meat'}, 2666, 5)
shopModule:addBuyableItem({'ham'}, 2671, 8)
shopModule:addBuyableItem({'cookie'}, 2687, 5)
shopModule:addBuyableItem({'egg'}, 2695, 2)
shopModule:addBuyableItem({'tomato'}, 2685, 5)
shopModule:addBuyableItem({'lemonade'}, 2012, 2, 5, 'mug of lemonade')
shopModule:addBuyableItem({'beer'}, 2012, 2, 3, 'mug of beer')
shopModule:addBuyableItem({'wine'}, 2012, 3, 7, 'mug of wine')
shopModule:addBuyableItem({'water'}, 2012, 1, 1, 'mug of water')

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am running this upper part of the Hard Rock Tavern."})
keywordHandler:addKeyword({'tavern'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am running this upper part of the Hard Rock Tavern."})
keywordHandler:addKeyword({'strange fellow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't know him. He seems very nervous and hes always fumbling around with this suspicious hat."})
keywordHandler:addKeyword({'david'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am sorry but I don't know him personaly. I heared he entertained people here long before I moved to Venore."})
keywordHandler:addKeyword({'brassacres'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am sorry but I don't know him personaly. I heared he entertained people here long before I moved to Venore."})
keywordHandler:addKeyword({'upper part'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, that's here. Below is the Pit Tavern for those fighters that use the pits."})
keywordHandler:addKeyword({'pits'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, they do a lot of fighting down there."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Maria."})
keywordHandler:addKeyword({'maria'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, I am Maria, Maria Corona."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't be that hasty."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In Venore, everyone is a king ... until he runs out of luck or money."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In Venore, everyone is a king ... until he runs out of luck or money."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Good fighters need good entertainment. That's what they get here."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think he's more a Thaian problem."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'd rather have a stainless steel cooking pan than such a knife."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a shame that this lousy city is the heart of the kingdom."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In the long run it's money that rules everything in Tibia."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As far as the merchants say it's economically unimportant."})
keywordHandler:addKeyword({'amazon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can only hope those wild women don't scare away more customers than come here in order to fight against them."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah, only the usual swampelves stories."})
keywordHandler:addKeyword({'rumo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah, only the usual swampelves stories."})
keywordHandler:addKeyword({'swampelves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well there's a hidden city called Shadowthorn of those warlike elves in the swamps. They are not amused of civilisation at their doorsteps and have been plotting against Venore for years."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Food and drinks as much as you can pay for."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Food and drinks as much as you can pay for."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Food and drinks as much as you can pay for."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We offer cookies, bread, cheese, ham, and meat, as well as eggs and tomatoes."})
keywordHandler:addKeyword({'drink'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do you want beer, wine, lemonade, or water?"})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())