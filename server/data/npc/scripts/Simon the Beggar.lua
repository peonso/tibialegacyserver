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

shopModule:addBuyableItem({'shovel'}, 2554, 50)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have no job. I am a beggar."})
keywordHandler:addKeyword({'beggar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have no gold and no job, so I am a beggar."})
keywordHandler:addKeyword({'gold'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I need gold. I love gold. I need help."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Simon. I am a very poor man."})
keywordHandler:addKeyword({'simon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Simon. The poorest human all over the continent."})
keywordHandler:addKeyword({'dermot'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The magistrate of the village. I heard he is selling something for the Fibula Dungeon."})
keywordHandler:addKeyword({'village'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "To the north is the village Fibula. A very small village."})
keywordHandler:addKeyword({'key'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Key? There are a lot of keys. Please change the topic."})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heard a lot about the Fibula Dungeon. But I never was there."})
keywordHandler:addKeyword({'fibula'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hate Fibula. Too many wolves are here."})
keywordHandler:addKeyword({'timur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hate Timur. He is too expensive. But sometimes I find maces and hatchets. Timur is buying these items."})
keywordHandler:addKeyword({'wolf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Please kill them ... ALL."})
keywordHandler:addKeyword({'flute'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Har, har. The stupid Dermot lost his flute. I know that some minotaurs have it in their treasure room."})
keywordHandler:addKeyword({'mino'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Very rich monsters. But they are too strong for me. However, there are even stronger monsters."})
keywordHandler:addKeyword({'treasure'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I know there are two rooms. And I know you can pass only the first door. The second door can't be opened."})
keywordHandler:addKeyword({'giant spider'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I know that terrible monster. It killed the fishers on the isle to the north"})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The strongest monster I know is the giant spider."})
keywordHandler:addKeyword({'jetty'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hate this jetty. I have never seen a ship here."})
keywordHandler:addKeyword({'ship'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There is a large sea-monster outside. I think there is no gritty captain to sail in this quarter."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hehe, do you have a shovel? I can sell you a shovel if you want to return to Tibia."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if msgcontains(msg, 'help') then
	npcHandler:say('I need gold. Can you spend me 100 gold pieces?')
	talk_state = 1
	
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerMoney(cid) >= 100 then
	npcHandler:say('Thank you very much. Can you spend me 500 more gold pieces? I will give you a nice hint.')
	doPlayerRemoveMoney(cid, 100)
	talk_state = 2
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerMoney(cid) < 100 then
	npcHandler:say('You\'ve not enough money for me.')
	talk_state = 0
	elseif msgcontains(msg, 'no') and talk_state == 1 then
	npcHandler:say('Hmm, maybe next time.')
	talk_state = 0
	
	elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerMoney(cid) >= 500 then
	doPlayerRemoveMoney(cid, 500)
	npcHandler:say('That\'s great! I have stolen something from Dermot. You can buy it for 200 gold. Do you want to buy it?')
	talk_state = 3
	elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerMoney(cid) < 500 then
	npcHandler:say('Sorry, that\'s not enough.')
	talk_state = 0
	elseif msgcontains(msg, 'no') and talk_state == 2 then
	npcHandler:say('It was your decision.')
	talk_state = 0
	
	elseif msgcontains(msg, 'yes') and talk_state == 3 and getPlayerMoney(cid) >= 200 then
	npcHandler:say('Now you own the hot key.')
	doPlayerRemoveMoney(cid, 200)
	key = doPlayerAddItem(cid, 2087,1)
	doSetItemActionId(key,3940)
	doSetItemSpecialDescription(key, "(Key: 3940)")
	talk_state = 0
	elseif msgcontains(msg, 'yes') and talk_state == 3 and getPlayerMoney(cid) < 200 then
	npcHandler:say('Pah! I said 200 gold. You don\'t have so much.')
	talk_state = 0
	elseif msgcontains(msg, 'no') and talk_state == 3 then
	npcHandler:say('Ok. No problem. I\'ll find another buyer.')
	talk_state = 0
	
	elseif msgcontains(msg, 'bye') and (talk_state >= 1 and talk_state <= 3) then
	npcHandler:say('Have a nice day.')
	talk_state = 0
	
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())