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
	if getPlayerSex(cid) == 1 then
	npcHandler:setMessage(MESSAGE_GREET, "Ah, 'ello, ".. getPlayerName(cid) .."! I can see you're longing for my delicious fruits, chéri.")
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Bienvenue, ".. getPlayerName(cid) .."! My fruits will complete the icing on your cake.")
	return true
	end	
end

npcHandler:setCallback(CALLBACK_GREET, greetCallback)

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'banana'}, 2676, 5)
shopModule:addBuyableItem({'white mushroom'}, 2787, 10)
shopModule:addBuyableItem({'orange'}, 2675, 10)
shopModule:addBuyableItem({'strawberry'}, 2680, 2)
shopModule:addBuyableItem({'melon'}, 2682, 10)
shopModule:addBuyableItem({'pumpkin'}, 2683, 10)
shopModule:addBuyableItem({'blueberry'}, 2677, 1)


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Alors, guess what my job might be, standing 'ere in the middle of all these juicy exotic fruits?"})
keywordHandler:addKeyword({'shop'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Alors, guess what my job might be, standing 'ere in the middle of all these juicy exotic fruits?"})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, for sure will my fruits 'elp you driving off all these nasty diseases and strengthen your immune system!"})
keywordHandler:addKeyword({'thank'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You're welcome, enjoy."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What's your favorite flavour today? I offer all sorts of exotic fruits."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What's your favorite flavour today? I offer all sorts of exotic fruits."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What's your favorite flavour today? I offer all sorts of exotic fruits."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What's your favorite flavour today? I offer all sorts of exotic fruits."})
keywordHandler:addKeyword({'fruits'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I offer you bananas, melons, pumpkins, white mushrooms, oranges, strawberries, and blueberries."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time is |TIME| now."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

if msgcontains(msg, 'name') or msgcontains(msg, 'Name') then
	if getPlayerSex(cid) == 1 then
	npcHandler:say("Moi? Livielle for you, chéri.", 1)
	else
	npcHandler:say("I'm Livielle Delacroix, madame.", 1)
	end
	talk_state = 0

end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())