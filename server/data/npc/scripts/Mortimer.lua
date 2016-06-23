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

keywordHandler:addKeyword({'mission QuestValue(300)=12 QuestWith the objects you\'ve provided our researchers will make steady progress. Still we are missing some test results from fellow explorers ...'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'With the objects you\'ve provided our researchers will make steady progress. Still we are missing some test results from fellow explorers ...'})
keywordHandler:addKeyword({'research reports QuestValue(320)Oh, yes! Tell our fellow explorer that the papers are in the mail already.'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Oh, yes! Tell our fellow explorer that the papers are in the mail already.'})
keywordHandler:addKeyword({'mission QuestValue(320)=4'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The reports from Port Hope have already arrived here and our progress is astonishing. We think it is possible to create an astral bridge between our bases. Are you interested to assist us with this?'})
keywordHandler:addKeyword({'no topic=33'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Perhaps you are interested some other time.'})
keywordHandler:addKeyword({'yes topic=33'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Good, just take this spectral essence and use it on the strange carving in this building as well as on the corresponding tile in our base at Port Hope ...'})

npcHandler:addModule(FocusModule:new())