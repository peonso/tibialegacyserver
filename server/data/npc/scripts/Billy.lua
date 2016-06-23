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

shopModule:addSellableItem({'bread'}, 					ID_bread, 1)
shopModule:addSellableItem({'cheese'}, 					ID_cheese, 2)
shopModule:addSellableItem({'meat'}, 					ID_meat, 2)
shopModule:addSellableItem({'ham'}, 					ID_ham, 4)
shopModule:addSellableItem({'salmon'}, 					ID_salmon, 2)
shopModule:addSellableItem({'rat', 'dead rat'}, 					2813, 2)
shopModule:addBuyableItem({'bread'}, 					ID_bread, 3)
shopModule:addBuyableItem({'cheese'}, 					ID_cheese, 5)
shopModule:addBuyableItem({'meat'}, 					ID_meat, 5)
shopModule:addBuyableItem({'ham'}, 					ID_ham, 8)
 
keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think, I'm fine."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a farmer and a cook."})
keywordHandler:addKeyword({'cook'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the best cook around. You can sell me most types of food."})
keywordHandler:addKeyword({'willie'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't listen to that old wannabe, I'm the best cook around."})
keywordHandler:addKeyword({'recipe'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would love to try a pancake. But I lack a decent pan. If you get me one, I will reward you."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Billy."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Can't help you, sorry. I'm a cook, not a priest."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't be afraid, in the town you should be save."})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You'll find a lot of dungeons if you look around."})
keywordHandler:addKeyword({'sewer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The local sewers are invested by rats, fresh rats give a good stew, you can sell them to me."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the god of cooking, indeed!"})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king and his tax collectors are far away. You'll meet them soon enough."})
keywordHandler:addKeyword({'obi'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I like him, we usualy have a drink or two once a week and share storys about Willie."})
keywordHandler:addKeyword({'seymour'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't like his headmaster behaviour. Then again, he IS a headmaster after all."})
keywordHandler:addKeyword({'dallheim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One of the kings best men, here to protect us."})
keywordHandler:addKeyword({'cipfried'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He never leaves this temple and only has time to care about those new arivals."})
keywordHandler:addKeyword({'amber'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Shes pretty indeed! I wonder if she likes bearded men."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ask one of the shopkeepers. They make a fortune here with all those wannabe heroes."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can spell but know no spell."})
keywordHandler:addKeyword({'spell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can spell but know no spell."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There is so much to be explored! Better hurry to get to the continent!"})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you bread, cheese, ham, or meat."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Are you looking for food? I have bread, cheese, ham, and meat."})
keywordHandler:addKeyword({'fish'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Go away with this stinking &*#@@!"})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell various kinds of food."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I buy food of most kind. Since I am a great cook I need much of it."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if msgcontains(msg, 'pan') then
	npcHandler:say('Have you found a pan for me?')
	talk_state = 1
	
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerItemCount(cid, 2563) >= 1 then
	npcHandler:say('A pan! At last! Take this in case you eat something my cousin has cooked.')
	doPlayerRemoveItem(cid, 2563, 1)
	doPlayerAddItem(cid, 2266, 1)
	talk_state = 0
	
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerItemCount(cid, 2563) == 0 then
	npcHandler:say('Hey! You don\'t have it!')
	talk_state = 0
	
	elseif msgcontains(msg, 'no') and talk_state == 1 then
	npcHandler:say('$&*@!')
	talk_state = 0
	
end
return TRUE
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())