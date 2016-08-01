dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

function greetCallback(cid)
	if getPlayerLevel(cid) >= 40 then
	npcHandler:setMessage(MESSAGE_GREET, "Wow! The great ".. getPlayerName(cid) .." visiting our shop! LOOK PEOPLE, LOOK HERE!.")
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Welcome, ".. getPlayerName(cid) ..".")
	return true
	end	
end

npcHandler:setCallback(CALLBACK_GREET, greetCallback)

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'coat'}, 2651, 8)
shopModule:addBuyableItem({'jacket'}, 2650, 12)
shopModule:addBuyableItem({'doublet'}, 2485, 16)
shopModule:addBuyableItem({'leather armor'}, 2467, 25)
shopModule:addBuyableItem({'studded armor'}, 2484, 90)

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Norbert."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a salesperson here, but one day I might become a tailor, or a supermodel perhaps!"})
keywordHandler:addKeyword({'xelor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Xelor, the dwarf of the chromancers guild, makes the most stylish watches in all the land."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Even the king of Thais, blessed be his name, can't buy a better wardrobe then ours."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Even the king of Thais, blessed be his name, can't buy a better wardrobe then ours."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't think they dress that well."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those evil mages dress so ugly."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I fear such a weapon will ruin a silk shirt with one blow."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thaian wear is not that stylish anymore."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our tailors are influenced by styles of the whole known world."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Women could do better then to wear armor. Women in leather scare my in particular."})
keywordHandler:addKeyword({'hugo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He's our boss, a great tailor and designer."})
keywordHandler:addKeyword({'chief'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He's our boss, a great tailor and designer."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heared the colour of the next season will be orange."})
keywordHandler:addKeyword({'rumo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heared the colour of the next season will be orange."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell very stylish clothes indeed."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell very stylish clothes indeed."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell very stylish clothes indeed."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell very stylish clothes indeed."})
keywordHandler:addKeyword({'clothes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have wonderful jackets, coats, lovely doublets, even warlike leather armor, and impressive studded armor."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Now it's |TIME|. Did you notice this is a xelor watch I am wearing?"})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())