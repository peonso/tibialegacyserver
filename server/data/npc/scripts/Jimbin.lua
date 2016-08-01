

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

	function FocusModule:init(handler)
	FOCUS_GREETSWORDS = {'hi jimbin', 'hello jimbin'}
	FOCUS_FAREWELLSWORDS = {'bye', 'farewell'}
		self.npcHandler = handler
		for i, word in pairs(FOCUS_GREETSWORDS) do
			local obj = {}
			table.insert(obj, word)
			obj.callback = FOCUS_GREETSWORDS.callback or FocusModule.messageMatcher
			handler.keywordHandler:addKeyword(obj, FocusModule.onGreet, {module = self})
		end
		
		for i, word in pairs(FOCUS_FAREWELLSWORDS) do
			local obj = {}
			table.insert(obj, word)
			obj.callback = FOCUS_FAREWELLSWORDS.callback or FocusModule.messageMatcher
			handler.keywordHandler:addKeyword(obj, FocusModule.onFarewell, {module = self})
		end
		
		return true
	end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'beer'}, 2012, 2, 3, 'mug of beer')
shopModule:addBuyableItem({'water'}, 2012, 1, 1, 'mug of water')

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm runing the Jolly Axeman together with my wife Maryza."})
keywordHandler:addKeyword({'tavern'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm runing the Jolly Axeman together with my wife Maryza."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Jimbin Luckythroat, son of Earth, from the Molten Rock."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king orders huge amounts of mushroombeer for festivities."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I supply the army with dwarfish beer to keep morals high."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hah! He never dares to trespass our realm."})
keywordHandler:addKeyword({'general'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The general is a fine man. Can drink as much as he wants and still is sober."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Actually I belive it's more than a taverntale."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah! Humans, can't stand a drink, jawoll."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Tibia our race was born into was even more fierce than the world you young ones know."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Silly town. Alcohol is forbidden there and elves visit this town quite often, what certainly suggests nothing good about a town, jawoll."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh well, many hidden places of ancient times appear seemingly out of nowhere in these times."})
keywordHandler:addKeyword({'rumo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh well, many hidden places of ancient times appear seemingly out of nowhere in these times."})
keywordHandler:addKeyword({'book'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The cookbook? It belongs to maryza. I think she has a few copies for sale."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you beer ... or water if you are sick."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you beer ... or water if you are sick."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you beer ... or water if you are sick."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ask my wife Maryza for food."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is about |TIME|."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

if msgcontains(msg, 'hi maryza') and npcHandler.focus == cid or msgcontains(msg, 'hello maryza') and npcHandler.focus == cid then
npcHandler:say("Come back if you enjoyed my tavern, if not ... well, get eaten by a dragon, jawoll.", 1)
npcHandler:releaseFocus()
npcHandler:resetNpc()

elseif msgcontains(msg, 'maryza') and npcHandler.focus == cid then
npcHandler:say("She's a fine cook; likes it bloddy, though. Humans call her Bloody Mary, but don't mention that to her if you're smart.", 1)

elseif msgcontains(msg, 'hi') or msgcontains(msg, 'Hi') or msgcontains(msg, 'hello') or msgcontains(msg, 'Hello') then
	npcHandler:say("Talking to me, ".. getPlayerName(cid) .."?", 1)
end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())