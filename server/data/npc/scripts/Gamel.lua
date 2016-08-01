dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local poison = createConditionObject(CONDITION_POISON)
setConditionParam(poison, CONDITION_PARAM_DELAYED, 10)
addDamageCondition(poison, 2, 3000, -10)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end


local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)


shopModule:addBuyableItem({'staff'}, 2401, 40)
shopModule:addBuyableItem({'dagger'}, 2379, 5)
shopModule:addBuyableItem({'mace'}, 2398, 90)
shopModule:addBuyableItem({'brass helmet'}, 2460, 120)
shopModule:addBuyableItem({'throwing knife'}, 2410, 25)


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling some... things."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Names don't matter."})
keywordHandler:addKeyword({'gamel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, you know my name. Please don't tell it to the others."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell maces, staffs, daggers and brass helmets."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell maces, staffs, daggers and brass helmets."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell maces, staffs, daggers and brass helmets."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell maces, staffs, daggers and brass helmets."})
keywordHandler:addKeyword({'thing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell maces, staffs, daggers and brass helmets."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell maces, staffs, daggers and brass helmets."})


function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
if msgcontains(msg, 'rebellion') or msgcontains(msg, 'Rebellion') then
	npcHandler:say("Uhm... who sent you?", 1)
	talk_state = 3

elseif talk_state == 3 and msgcontains(msg, 'berfasmur') or talk_state == 3 and msgcontains(msg, 'Berfasmur') then
	npcHandler:say("So, you are a new recruit in the ranks of the rebellion! To proof your worthyness, go and get us a magic crystal.", 1)
	talk_state = 0	

elseif msgcontains(msg, 'magic') and msgcontains(msg, 'crystal') or msgcontains(msg, 'Magic') and msgcontains(msg, 'crystal') then
	npcHandler:say("Did you bring me a magic crystal?", 1)
	talk_state = 4

elseif talk_state == 4 and msgcontains(msg, 'yes') then
	if getPlayerItemCount(cid, 2177) >= 1 then
	npcHandler:say("Brilliant! Bring it to the priest Lugri so that he can cast a deathcurse on the king. The password is 'death to noodles'.", 1)
	else
	npcHandler:say("Idiot! You don't have the crystal!", 1)
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 8)
	doAddCondition(cid, poison)
	end
	

elseif msgcontains(msg, 'berfasmur') or msgcontains(msg, 'Berfasmur') then
	npcHandler:say("Never heard that name!", 1)
	talk_state = 0	
end		
    return true
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())