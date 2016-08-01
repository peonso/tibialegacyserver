dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end


keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Slim, Leeland Slim."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the owner of the Useful Things Warehouse."})
keywordHandler:addKeyword({'warehouse'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I offer many things. Actually I am sure you will find something you have desired for a long time."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "So it is a watch you need? Make sure to buy one downstairs."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do I hear envy in your voice? Is it that you realy want? To be ... king? Well, one never knows ... perhaps you find something royal in my warehouse."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do I hear envy in your voice? Is it that you realy want? To be ... king? Well, one never knows ... perhaps you find something royal in my warehouse."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Your question suggests you are interested in military? I am sure you will find something interesting in my warehouse."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, Ferumbras. I remember selling him torches for his first adventures as if it was yesterday."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's one of the few things even I can't aquire for you."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Perhaps one day I will settle in thais again. I love the city's potential."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have seen most of it. And I like it. <chuckles>"})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I was there some time ago. I exchanged ideas with some important people there and even could sell them something that furthered their cause."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would love to have the time to chat and exchange gossip, but sadly business always comes first, you know?"})
keywordHandler:addKeyword({'tax'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Taxes are a necessary evil, people say. I like that."})
keywordHandler:addKeyword({'privilege'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Privileges have to be paid for. The one way ... or the other."})
keywordHandler:addKeyword({'gambling'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I just love bets and gambling. It inspires people doing such interesting things."})


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())