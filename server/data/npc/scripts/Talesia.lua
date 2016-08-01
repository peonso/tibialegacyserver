dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Talesia De'Mir, owner of Crunor's Finest Warehouse."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a the owner of Crunor's Finest Warehouse of course."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We pay this man enough to live here undisturbed of major interventions."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We pay this man enough to live here undisturbed of major interventions."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "At least they are useful, but we pay enough taxes to supply the entire Thaian army."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hope he is aware that his enemies live elsewhere."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am contend with my familysword meloncutter."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hope they live well from our taxes..."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The world is a treasure chest for those of knowledge and skill."})
keywordHandler:addKeyword({'warehouse'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My warehouse is only one of many. We merchants hold this city together and lead it to prosperity."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are a bit problematic as business partners, but their independence from Thais is... interesting."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Even bad news can be good news, if you play your cards well."})
keywordHandler:addKeyword({'tax'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Venore is the major tax payer in the whole realm. So we more than deserve the privileges the king granted us."})
keywordHandler:addKeyword({'crunor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A god worth to worship. At least he gives something useful back to the faithful."})
keywordHandler:addKeyword({'privilege'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are alowed to trade with anyone, Thaian subject or not, have no Thaian noble as governor, and own the exclusive gambling license."})
keywordHandler:addKeyword({'gambling'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care much about it, though others profit greatly."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's |TIME| right now."})

npcHandler:addModule(FocusModule:new())