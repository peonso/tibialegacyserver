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


shopModule:addSellableItem({'tusk'}, 3956, 100)

shopModule:addBuyableItem({'ivory chair'}, 3906, 25)
shopModule:addBuyableItem({'tusk chair'}, 3905, 25)
shopModule:addBuyableItem({'bamboo drawer'}, 3936, 25)
shopModule:addBuyableItem({'bamboo table'}, 3919, 25)
shopModule:addBuyableItem({'stone table'}, 3913, 30)
shopModule:addBuyableItem({'tusk table'}, 3914, 25)
shopModule:addBuyableItem({'christmas tree'}, 3933, 50)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling furniture, especially bamboo made furniture. I also buy elephant tusks to create my famous tusk tables and ivory chairs."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am known as Zaidal."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I have no idea."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Perhaps one day even the king will use our furniture."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, Venore is the centre of commerce."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One day I might visit Thais."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Carlin is very far to the north. I have never been there."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "An isle with interesting forests. With the right organisation the furniture and shipbuilding business could prosper enormously."})
keywordHandler:addKeyword({'jungle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You call it a jungle, I call it furniture in the making."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell tables, chairs and drawers, all handmade with the material that the jungle has to offer."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell tables, chairs and drawers, all handmade with the material that the jungle has to offer."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell tables, chairs and drawers, all handmade with the material that the jungle has to offer."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell tables, chairs and drawers, all handmade with the material that the jungle has to offer."})
keywordHandler:addKeyword({'furniture'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell tables, chairs and drawers, all handmade with the material that the jungle has to offer."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell tables, chairs and drawers, all handmade with the material that the jungle has to offer."})
keywordHandler:addKeyword({'special'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are permanently extraordinarily cheap."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The world is a big treasure chest for those who know to turn resources into profit."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves of Kazordoon are experts in mining resources like gems and ore."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves of Kazordoon are experts in mining resources like gems and ore."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves of Kazordoon are experts in mining resources like gems and ore."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those elves are a bit complicated when it comes to trees and environmental matters. They must learn that you have to crush an egg to bake a cake."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The jungle is rich in resources and who knows what profit lies hidden in the desert? Of course not for a carpenter, but there are other resources."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "People there seem to know little about the world of economy. Perhaps someone might teach them a lesson one day."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I was there only once, but I left it with the certainty that I never want to return there ever again."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If we could guide his attention in useful directions, he wouldn't be the problem he poses nowadays."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Even if it would exist, which I doubt, it would be only an extremely expensive weapon and nothing more."})
keywordHandler:addKeyword({'ape'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They live in the depth of the jungle, and their only visits here are annoying raids to steal and plunder."})
keywordHandler:addKeyword({'lizard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I did not see much of the lizzards yet."})
keywordHandler:addKeyword({'dworc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If we could get rid of them, a whole new area which is rich in bamboo would be ours."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())