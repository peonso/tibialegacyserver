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
	if getPlayerStorageValue(cid,8128) >= 3 then
	npcHandler:setMessage(MESSAGE_GREET, "Greetings, human ".. getPlayerName(cid) ..". My patience with your kind is limited, so speak quickly and choose your words well.")
	return true
	elseif getPlayerStorageValue(cid,8128) <= 2 then
	npcHandler:setMessage(MESSAGE_GREET, "...")
	end	
end	
npcHandler:setCallback(CALLBACK_GREET, greetCallback)

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)


shopModule:addSellableItem({''}, 					0, 2)
shopModule:addSellableItem({''}, 					0, 2)
shopModule:addSellableItem({''}, 					0, 2)
shopModule:addSellableItem({''}, 					0, 2)
shopModule:addSellableItem({''}, 					0, 2)
shopModule:addSellableItem({''}, 					0, 2)
shopModule:addSellableItem({''}, 					0, 2)
shopModule:addSellableItem({''}, 					0, 2)
shopModule:addSellableItem({''}, 					0, 2)
shopModule:addSellableItem({''}, 					0, 2)

shopModule:addBuyableItem({''}, 					0, 2)
shopModule:addBuyableItem({''}, 					0, 2)
shopModule:addBuyableItem({''}, 					0, 2)
shopModule:addBuyableItem({''}, 					0, 2)
shopModule:addBuyableItem({''}, 					0, 2)
shopModule:addBuyableItem({''}, 					0, 2)
shopModule:addBuyableItem({''}, 					0, 2)
shopModule:addBuyableItem({''}, 					0, 2)
shopModule:addBuyableItem({''}, 					0, 2)
shopModule:addBuyableItem({''}, 					0, 2)
 


keywordHandler:addKeyword({''}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})
keywordHandler:addKeyword({''}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})
keywordHandler:addKeyword({''}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})
keywordHandler:addKeyword({''}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})
keywordHandler:addKeyword({''}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})
keywordHandler:addKeyword({''}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})
keywordHandler:addKeyword({''}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})
keywordHandler:addKeyword({''}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})
keywordHandler:addKeyword({''}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})
keywordHandler:addKeyword({''}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})
keywordHandler:addKeyword({''}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})
keywordHandler:addKeyword({''}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})
keywordHandler:addKeyword({''}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})


function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
if msgcontains(msg, '') or msgcontains(msg, '') then
	selfSay("")
	talk_state = 0
			
elseif msgcontains(msg, 'fuck') then


end		
    return true
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())