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

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Look at my blackened beard? I'm the steamship captain!"})
keywordHandler:addKeyword({'work'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Look at my blackened beard? I'm the steamship captain!"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Brodrosch Steamtrousers, son of the machine, of the Molten Rock."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Tibia? Just don't ask."})
keywordHandler:addKeyword({'ship'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is a great ship. Ha! It works without wind but with fire, and it travels not on the ocean but beneath the earth!"})
keywordHandler:addKeyword({'steamship'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is a great ship. Ha! It works without wind but with fire, and it travels not on the ocean but beneath the earth!"})
keywordHandler:addKeyword({'captain'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Of course, I am the captain. But I am also a technomancer."})
keywordHandler:addKeyword({'technomancer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Being a technomancer is a privilege few dwarfs have. We form earth and fire through powerful technology into tools. Also, we are great inventors."})
keywordHandler:addKeyword({'inventors'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes. There could have been thousands of our inventions, if they wouldn't explode all the time..."})
keywordHandler:addKeyword({'inventions'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes. There could have been thousands of our inventions, if they wouldn't explode all the time..."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is not a shop, damn it!"})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is not a shop, damn it!"})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is a steamship that travels only subterreneanly. No way to get on that risky ocean. Kazordoon - Cormaya only."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is a steamship that travels only subterreneanly. No way to get on that risky ocean. Kazordoon - Cormaya only."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is a steamship that travels only subterreneanly. No way to get on that risky ocean. Kazordoon - Cormaya only."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is a steamship that travels only subterreneanly. No way to get on that risky ocean. Kazordoon - Cormaya only."})
keywordHandler:addKeyword({'senja'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is a steamship that travels only subterreneanly. No way to get on that risky ocean. Kazordoon - Cormaya only."})
keywordHandler:addKeyword({'vega'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is a steamship that travels only subterreneanly. No way to get on that risky ocean. Kazordoon - Cormaya only."})
keywordHandler:addKeyword({'ice'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is a steamship that travels only subterreneanly. No way to get on that risky ocean. Kazordoon - Cormaya only."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is a steamship that travels only subterreneanly. No way to get on that risky ocean. Kazordoon - Cormaya only."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is a steamship that travels only subterreneanly. No way to get on that risky ocean. Kazordoon - Cormaya only."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hey, we ARE at Kazordoon! Must be the cavemadness..."})
keywordHandler:addKeyword({'beer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sometimes being drunk means seeing two rivers. I survive by steering right between them."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Deep inside, we're all dwarfs."})
keywordHandler:addKeyword({'gurbasch'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, my brother in Cormaya. He can take you back."})

local function addTravelKeyword(keyword, cost, destination, action)
	local travelKeyword = keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = 'So you want to go to Cormaya? |TRAVELCOST|?', cost = cost, discount = 'postman'})
		travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = cost, discount = 'postman', destination = destination })
		travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, text = 'We would like to serve you some time.', reset = true})
end

addTravelKeyword('cormaya', 160, STEAMPOS_CORMAYA)
addTravelKeyword('passage', 160, STEAMPOS_CORMAYA)


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())