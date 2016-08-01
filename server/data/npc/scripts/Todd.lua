dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end


keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, this headache, one of the beers frodo served me must have been foul."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am... a traveller."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My Name? I am To... ahm... hum... My name is Hugo."})
keywordHandler:addKeyword({'hugo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, thats my name of course."})
keywordHandler:addKeyword({'resistance'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Resistance is futile... uhm... I wonder where I picked that saying up. Oh my head..."})
keywordHandler:addKeyword({'head'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Uhhh Ohhhh one of the beers yesterday must have been bad."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I love that city."})
keywordHandler:addKeyword({'william'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thats a common name, perhaps I met a William, not sure about that."})
keywordHandler:addKeyword({'money'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't know anything about money, missing or not."})
keywordHandler:addKeyword({'todd'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Uh .. I... I met a Todd on the road. He told me he was traveling to Venore, look there for your Todd."})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
if msgcontains(msg, 'karl') or msgcontains(msg, 'Karl') then
	npcHandler:say("Uhm, never heared about him... and you can't proof otherwise.", 1)
	talk_state = 0
	npcHandler:releaseFocus()
	npcHandler:resetNpc()

elseif msgcontains(msg, 'smuggler') or msgcontains(msg, 'Smuggler') then
	npcHandler:say("I am a honest person and don't like to be insulted!", 1)
	talk_state = 0
	npcHandler:releaseFocus()
	npcHandler:resetNpc()

elseif msgcontains(msg, 'carlin') or msgcontains(msg, 'Carlin') then
	npcHandler:say("I never was there. Now leave me alone.", 1)
	talk_state = 0
	npcHandler:releaseFocus()
	npcHandler:resetNpc()	
	
end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())