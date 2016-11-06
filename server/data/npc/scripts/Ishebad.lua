dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end


keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Ishebad the chosen."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time does not matter to the undead."})
keywordHandler:addKeyword({'temple'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The temple will take care of your spiritual matters."})
keywordHandler:addKeyword({'pharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our immortal ruler, may he be blessed, is the keeper of our enlightenment and our saviour."})
keywordHandler:addKeyword({'ashmunrah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The fallen pharaoh did not see it was time to step back and let his son rule. So he met the fate that he deserved."})
keywordHandler:addKeyword({'scarab'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The scarabs are keepers of secrets. Some secrets are not ment for your mortals. Ever keep that in mind."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This world just awaits the wisdom of our pharaoh. It needs that wisdom and will soon learn to appreciate it."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Other cities are of no importance. Ankrahmun will become the center of the known world anyways."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Other cities are of no importance. Ankrahmun will become the center of the known world anyways."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Other cities are of no importance. Ankrahmun will become the center of the known world anyways."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Other cities are of no importance. Ankrahmun will become the center of the known world anyways."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Other cities are of no importance. Ankrahmun will become the center of the known world anyways."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Other cities are of no importance. Ankrahmun will become the center of the known world anyways."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The rule of our beloved pharaoh will soon spread this continent and one day the whole known world."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This village is so insignificant that our wise pharaoh has choosen to ignore it."})
keywordHandler:addKeyword({'Ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our city will become the capital of a worldwide empire."})
keywordHandler:addKeyword({'Arkhothep'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The pharaoh wants not to be disturbed. I am his grand vizier and responsible for the daily affairs of the city and promotions of heroes."})
keywordHandler:addKeyword({'pharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The pharaoh wants not to be disturbed. I am his grand vizier and responsible for the daily affairs of the city and promotions of heroes."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The pharaoh wants not to be disturbed. I am his grand vizier and responsible for the daily affairs of the city and promotions of heroes."})
keywordHandler:addKeyword({'mortality'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you please our pharaoh, he will reward you and free you from your mortality."})
keywordHandler:addKeyword({'ascension'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Consult a priest to learn how you could achieve ascension."})
keywordHandler:addKeyword({"Akh'rah Uthun"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Consult a priest to learn how you could achieve ascension."})
keywordHandler:addKeyword({'Akh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Consult a priest to learn how you could achieve ascension."})
keywordHandler:addKeyword({'Rah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Consult a priest to learn how you could achieve ascension."})
keywordHandler:addKeyword({'uthun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Consult a priest to learn how you could achieve ascension."})
keywordHandler:addKeyword({'undea'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Undeath is only for the choosen."})
keywordHandler:addKeyword({'mourn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You mortals are all to be mourned for your miserable existance."})
keywordHandler:addKeyword({'eremo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is said that he lives on a small island near Edron. Maybe the people there know more about him."})

local node1 = keywordHandler:addKeyword({'promot'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to be promoted in your vocation for 20000 gold?'})
	node1:addChildKeyword({'yes'}, StdModule.promotePlayer, {npcHandler = npcHandler, promotions = {[1] = 5, [2] = 6, [3] = 7, [4] = 8}, cost = 20000, level = 20, text = 'Congratulations! You are now promoted.'})
	node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Ok, then not.', reset = true})

npcHandler:addModule(FocusModule:new())