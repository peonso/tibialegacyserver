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

shopModule:addSellableItem({'rat', 'dead rat'}, 2813, 2)
shopModule:addSellableItem({'rabbit', 'dead rabbit'}, 2992, 2)
shopModule:addSellableItem({'wolf', 'dead wolf'}, 2826, 5)
 
keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Much to do, these days."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm the local tanner. I buy fresh animal corpses, tan them, and convert them into fine leather clothes ...","I'm only selling to major customers. But I'm buying fresh corpses of rats, rabbits and wolves from you."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Tom the tanner."})
keywordHandler:addKeyword({'tanner'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's my job. I buy fresh animal corpses, tan them, and convert them into fine leather clothes."})
keywordHandler:addKeyword({'corpse'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm buying fresh corpses of rats, rabbits and wolves. What do you want to sell?"})
keywordHandler:addKeyword({'animal'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm buying fresh corpses of rats, rabbits and wolves. What do you want to sell?"})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm buying fresh corpses of rats, rabbits and wolves. What do you want to sell?"})
keywordHandler:addKeyword({'wares'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm buying fresh corpses of rats, rabbits and wolves. What do you want to sell?"})
keywordHandler:addKeyword({'major'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes. Obi, Norma and good old Al. Go ask them for leather clothes."})
keywordHandler:addKeyword({'customer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes. Obi, Norma and good old Al. Go ask them for leather clothes."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I haven't been outside for a while, so I don't know."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Help? I will give you a few gold coins if you have some dead animals for me."})
keywordHandler:addKeyword({'troll'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Troll leather stinks. Can't use it."})
keywordHandler:addKeyword({'orc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't buy Orcs. Their skin is too scratchy."})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Are you crazy?!"})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry. I'm only selling to major customers. But I'm buying fresh corpses of rats, rabbits and wolves from you."})


function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
if msgcontains(msg, 'rat') then
	npcHandler:say("I'll give you 2 gold for per dead rat. Do you accept?", 1)
	talk_state = 2
	
elseif talk_state == 2 and msgcontains(msg, 'yes') then
AMOUNTRAT = getPlayerItemCount(cid,2813)
if AMOUNTRAT >= 1 then
	if doPlayerRemoveItem(cid, 2813, AMOUNTRAT) == true then
	doPlayerAddMoney(cid, AMOUNTRAT*2)
	npcHandler:say("Deal. By the way: If you'd like to hunt something bigger, check the cellar of the stables to the north. Some adventurer used to store his loot under a loose board beneath a barrel. He might have forgotten something when he left the isle.", 1)
	end
else
npcHandler:say("Sorry, you do not have any fresh one.", 1)
end
talk_state = 0

elseif talk_state == 2 and msgcontains(msg, '') then
npcHandler:say("Maybe another time.", 1)
talk_state = 0


elseif msgcontains(msg, 'rabbit') then
	npcHandler:say("I'll give you 2 gold for per dead rabbit. Do you accept?", 1)
	talk_state = 3
	
elseif talk_state == 3 and msgcontains(msg, 'yes') then
AMOUNTRABBIT = getPlayerItemCount(cid,2992)
if AMOUNTRABBIT >= 1 then
	if doPlayerRemoveItem(cid, 2992, AMOUNTRABBIT) == true then
	doPlayerAddMoney(cid, AMOUNTRABBIT*2)
	npcHandler:say("Deal. By the way: If you'd like to hunt something bigger, check the cellar of the stables to the north. Some adventurer used to store his loot under a loose board beneath a barrel. He might have forgotten something when he left the isle.", 1)
	end
else
npcHandler:say("Sorry, you do not have any fresh one.", 1)
end
talk_state = 0

elseif talk_state == 3 and msgcontains(msg, '') then
npcHandler:say("Maybe another time.", 1)
talk_state = 0


elseif msgcontains(msg, 'wolf') or msgcontains(msg, 'wolves') then
	npcHandler:say("I'll give you 5 gold for per dead worlf. Do you accept?", 1)
	talk_state = 4
	
elseif talk_state == 4 and msgcontains(msg, 'yes') then
AMOUNTWOLF = getPlayerItemCount(cid,2826)
if AMOUNTWOLF >= 1 then
	if doPlayerRemoveItem(cid, 2826, AMOUNTWOLF) == true then
	doPlayerAddMoney(cid, AMOUNTWOLF*5)
	npcHandler:say("Deal. By the way: If you'd like to hunt something bigger, check the cellar of the stables to the north. Some adventurer used to store his loot under a loose board beneath a barrel. He might have forgotten something when he left the isle.", 1)
	end
else
npcHandler:say("Sorry, you do not have any fresh one.", 1)
end
talk_state = 0

elseif talk_state == 4 and msgcontains(msg, '') then
npcHandler:say("Maybe another time.", 1)
talk_state = 0

end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())