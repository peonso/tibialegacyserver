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

shopModule:addBuyableItem({'big table'}, 3909, 30)
shopModule:addBuyableItem({'round table'}, 3911, 25)
shopModule:addBuyableItem({'small table'}, 3908, 20)
shopModule:addBuyableItem({'square table'}, 3910, 20)

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Yulas. I will be your salesperson today."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are into home improvement."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, we are not allowed to chat."})
keywordHandler:addKeyword({'allen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "To think just because he is around here to watch what we do, he want to be considered one of us..."})
keywordHandler:addKeyword({'richardson'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "To think just because he is around here to watch what we do, he want to be considered one of us..."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We sell furniture and equipment. At this counter you can buy tables."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We sell furniture and equipment. At this counter you can buy tables."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We sell furniture and equipment. At this counter you can buy tables."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We sell furniture and equipment. At this counter you can buy tables."})
keywordHandler:addKeyword({'furniture'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We sell furniture and equipment. At this counter you can buy tables."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We sell furniture and equipment. At this counter you can buy tables."})
keywordHandler:addKeyword({'table'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell big tables, round tables, small tables and square tables, which would you like to buy?"})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if msgcontains(msg, 'time') then
		if getPlayerSex(cid) == 1 then
			npcHandler:say('It\'s '.. getTibiaTime() ..', sire.')
		else
			npcHandler:say('It\'s '.. getTibiaTime() ..', my lady.')
		end
	end		

return true
end	
		
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())