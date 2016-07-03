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

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I am known as Hugo Chief.'})
keywordHandler:addKeyword({'hugo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Well it\'s not my real name. I took it because people think it\'s scaring and manly. I hate people doubting my manhood for being a tailor, you know.'})
keywordHandler:addKeyword({'real name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Uhm, well it\'s Oscar Savage, but who can become famous, especially as an artist, with a name like that I ask you?'})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I am tailor and designer extraordinaire.'})
keywordHandler:addKeyword({'warehouse'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I would call it a \'wearhouse\'.'})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Sorry, a watch would ruin my stylish outfit.'})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'He does not care much about us, we don\'t care much about him. I consider that a fair deal.'})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I think they should not wear that ugly armor in town. I will see to assure that will be changed soon.'})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The ferumbras-bad-ass-fashion is incredibly outdated since years.'})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I don\'t care for such fairytales.'})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Thais is kind of a fashion hell. If there was an award for the most ugly citizens, it would go to Thais.'})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'A world filled with ugly dressed people needs the skills of a fashion-hero.'})
keywordHandler:addKeyword({'fashion hero'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'One day Captain Catwalk will punish all crimes to fashion and bring all ugly people to justice.'})
keywordHandler:addKeyword({'captain catwalk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'He\'s a supermodel! No one knows his secret identity!'})
keywordHandler:addKeyword({'supermodel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'A model with incredible superpowers. Do you think they call them supermodels for nothing?'})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Women should know better than to hide in ugly armor. Like all followers of ugliness they will be punished one day.'})
keywordHandler:addKeyword({'news'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'My newest models are top secret, sorry.'})
keywordHandler:addKeyword({'tax'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I don\'t care about such mundane things like \'taxes\'.'})
keywordHandler:addKeyword({'privilege'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The city was granted a few privileges by the king. I can\'t even tell which. They don\'t affect me that much.'})
keywordHandler:addKeyword({'gambling'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I too love to gamble now and then in the Hard Rock tavern.'})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	-- The Postman Missions Quest
	if msgcontains(msg, 'uniform') and getPlayerStorageValue(cid, 233) == 0 then
	npcHandler:say('I don\'t get it, what uniforms you are talking about.')
	topic = 0	
	
	elseif msgcontains(msg, 'uniform') and getPlayerStorageValue(cid, 233) == 1 then
	npcHandler:say('A new uniform for the post officers? I am sorry but my dog ate the last dress pattern we used. You need to supply us with a new dress pattern.')
	topic = 0
	
	elseif msgcontains(msg, 'dress pattern') and getPlayerStorageValue(cid, 233) == 1 then
	npcHandler:say('It was ... wonderous beyond wildest imaginations! I have no clue where Kevin Postner got it from. Better ask him.')
	setPlayerStorageValue(cid, 233, 2)
	topic = 0
	
	elseif msgcontains(msg, 'dress pattern') and getPlayerStorageValue(cid, 233) > 1 and getPlayerStorageValue(cid, 233) < 9 then
	npcHandler:say('I already told you to ask your boss about that issue.')
	topic = 0
	
	elseif msgcontains(msg, 'dress pattern') and getPlayerStorageValue(cid, 233) == 9 then
	npcHandler:say('By the gods of fashion! Didn\'t it do that I fed the last dress pattern to my poor dog? Will this mocking of all which is taste and fashion never stop?? Ok, ok, you will get those ugly, stinking uniforms and now get lost, fashion terrorist.')
	setPlayerStorageValue(cid, 233, 10)
	end
	
return true
end	
	
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())