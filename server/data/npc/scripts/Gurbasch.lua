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
 
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As should be quite obvious, I am operating a steamship."})
keywordHandler:addKeyword({'work'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As should be quite obvious, I am operating a steamship."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Gurbasch Firejuggler, son of the machine, of the Molten Rock."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Tibia? Just don't ask."})
keywordHandler:addKeyword({'steamship'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is indeed something we dwarfs may be proud of: a ship operating by steam power."})
keywordHandler:addKeyword({'ship'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is indeed something we dwarfs may be proud of: a ship operating by steam power."})
keywordHandler:addKeyword({'captain'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Captain"})
keywordHandler:addKeyword({'technomancer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A technomancer wields power over incredible machines, as his knowledge is his magic."})
keywordHandler:addKeyword({'inventors'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You know, elves may be intelligent, but they are too lazy to invent. Really."})
keywordHandler:addKeyword({'inventions'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You know, elves may be intelligent, but they are too lazy to invent. Really."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am not a vendor."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am not a vendor."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "How do you expect me to go there? Fly? Hm, wait... no, sorry."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "How do you expect me to go there? Fly? Hm, wait... no, sorry."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "How do you expect me to go there? Fly? Hm, wait... no, sorry."})
keywordHandler:addKeyword({'senja'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "How do you expect me to go there? Fly? Hm, wait... no, sorry."})
keywordHandler:addKeyword({'folda'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "How do you expect me to go there? Fly? Hm, wait... no, sorry."})
keywordHandler:addKeyword({'vega'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "How do you expect me to go there? Fly? Hm, wait... no, sorry."})
keywordHandler:addKeyword({'ice'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "How do you expect me to go there? Fly? Hm, wait... no, sorry."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "How do you expect me to go there? Fly? Hm, wait... no, sorry."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "How do you expect me to go there? Fly? Hm, wait... no, sorry."})
keywordHandler:addKeyword({'cormaya'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hey, we ARE at Cormaya! Must be the cavemadness..."})
keywordHandler:addKeyword({'beer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, you got some? Nah, beer only tastes fine in Kazordoon. If you have brought it from there, it tastes foul now, I guess."})
keywordHandler:addKeyword({'beer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are an old and proud race, although we posess the best inventions."})
keywordHandler:addKeyword({'brodrosch'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is my brother working the Kazordoon steamship."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Have one elf onboard a ship, and you are doomed."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Have one elf onboard a ship, and you are doomed."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if msgcontains(msg, 'kazordoon') or msgcontains(msg, 'passage') or msgcontains(msg, 'Passage') or msgcontains(msg, 'Kazordoon') then
	npcHandler:say('Do you want to go to Kazordoon? And try the beer there? 160 gold?')
	talk_state = 1

	elseif msgcontains(msg,'yes') and talk_state == 1 then
		if getTilePzInfo(getPlayerPosition(cid)) == false then
			if getPlayerMoney(cid) >= 160 then
				selfSay('Full steam ahead!')
				doPlayerRemoveMoney(cid, 160)
				doTeleportThing(cid, {x=32658,y=31957,z=15})
				doSendMagicEffect(getCreaturePosition(cid), 10)
				talk_state = 0
			else
				npcHandler:say('You don\'t have enough money.')
				talk_state = 0
			end
		else
			npcHandler:say('First get rid of those blood stains! You are not going to ruin my vehicle!')
			talk_state = 0
		end
end
	
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())