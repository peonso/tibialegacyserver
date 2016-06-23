-- NPC Converter System - developed by Utroz <utroz@oakcoders.com>
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)	npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)	npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg) end
function onThink()	npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I am responsible for the Hard Rock Pits Tavern.'})
keywordHandler:addKeyword({'upper part'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'If you can\'t stand some blood and battlecrys, just go upstairs.'})
keywordHandler:addKeyword({'pits'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Choose your enemies with care.'})
keywordHandler:addKeyword({'asrak'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'He\'s the best. To be the man, you\'ll have to beat the minotaur, so to say. Not that you could provoke him to a fight at all.'})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I am Urkalio.'})
keywordHandler:addKeyword({'maria'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'She\'s kind of my boss.'})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'No clue, it\'s equally dark down here at any time.'})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Down here everyone is king as far as where his weapons reach.'})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'A shame they don\'t visit our pits for some training.'})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'THAT would be some attraction down here.'})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I would love to see that weapon in a fight.'})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Such a boring city. I wonder why anyone would live there.'})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Sooner or later everyone comes here, so why bother to travel.'})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I don\'t care about their \'independence war\'.'})
keywordHandler:addKeyword({'amazon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Some came here to challenge the local champions. I can\'t say I was impressed by their skills. However, they took a few heads as trophies.'})
keywordHandler:addKeyword({'news'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I bet you want to hear about those swampelves from Shadowthorn.'})
keywordHandler:addKeyword({'swampelves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'If they want a fight that bad, why don\'t they just come here and fight in the pits?'})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I sell food and drinks for the hungry and thirsty.'})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I have cookies, bread, cheese, ham, and meat.'})
keywordHandler:addKeyword({'drink'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'So do you want beer, wine, lemonade, or ... uhm ... water?'})

shopModule:addBuyableItem({'bread'}, 2689, 4, 1, 'bread')
shopModule:addBuyableItem({'cheese'}, 2696, 6, 1, 'cheese')
shopModule:addBuyableItem({'meat'}, 2666, 5, 1, 'meat')
shopModule:addBuyableItem({'ham'}, 2671, 8, 1, 'ham')
shopModule:addBuyableItem({'cookie'}, 2687, 5, 1, 'cookie')

npcHandler:addModule(FocusModule:new())