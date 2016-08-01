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

keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is rumoured that Ferumbras is planning a new attack on town."})
keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am healthy and vigilant."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Visit Tibia's shopkeepers to buy their fine wares."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "King Tibianus III is our wise and just leader!"})
keywordHandler:addKeyword({'leader'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "King Tibianus III is our wise and just leader!"})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a proud member of the king's army. It is my duty to guard the castle."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our brave army, which protects our city, consists of three battlegroups."})
keywordHandler:addKeyword({'guard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our brave army, which protects our city, consists of three battlegroups."})
keywordHandler:addKeyword({'battlegroup'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are the dogs of war, the red guards, and the silver guards."})
keywordHandler:addKeyword({'castle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "His Royal Highness ordered the castle to be open for all his subjects"})
keywordHandler:addKeyword({'subject'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We all live under the benevolent guidance of our king."})
keywordHandler:addKeyword({'dogs of war'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are our main army."})
keywordHandler:addKeyword({'red guard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are our special forces. Some serve as cityguards, others as secret police."})
keywordHandler:addKeyword({'secret police'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ask a higher offical about that."})
keywordHandler:addKeyword({'silver guard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The best sorcerers, paladins, knights, or druids of our forces are choosen to serve as silver guards. They are the bodyguards of the king."})
keywordHandler:addKeyword({'city'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Now that the king returned, we will clean the city from all scum."})
keywordHandler:addKeyword({'scum'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "To much scum roams our streets in our days, the red guards will take care of them."})
keywordHandler:addKeyword({'stutch'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is soldier in the silver guard."})
keywordHandler:addKeyword({'harsky'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is soldier in the silver guard."})
keywordHandler:addKeyword({'bozo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The royal jester. I dont think he is funny."})
keywordHandler:addKeyword({'sam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is a fine blacksmith. Almost all our weapons are made by him."})
keywordHandler:addKeyword({'gorn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "An old friend of mine. He was once a great warrior and adventurer, now he is running a shop."})
keywordHandler:addKeyword({'benjamin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He was one of the king's best generals, now he is a bit ...uhm... forgetful."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Gorn and I searched for this weapon in the darkest corners of each dungeon, but found nothing."})
keywordHandler:addKeyword({'chester'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This man is paranoid, but I guess that is useful in his job."})
keywordHandler:addKeyword({'tbi'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There is almost nothing known about that organization."})
keywordHandler:addKeyword({'work'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We have a rat problem in the sewers. In the name of our glorious king I am paying 1 blinking piece of gold for every freshly killed rat you bring to me."})
keywordHandler:addKeyword({'mission'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We have a rat problem in the sewers. In the name of our glorious king I am paying 1 blinking piece of gold for every freshly killed rat you bring to me."})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We have a rat problem in the sewers. In the name of our glorious king I am paying 1 blinking piece of gold for every freshly killed rat you bring to me."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
if msgcontains(msg, "partos") then
npcHandler:say("He was wanted for a long time and got caught stealing some time ago.", 1)
talk_state = 1
elseif talk_state == 1 and msgcontains(msg, "fruit") then
npcHandler:say("I understand he was stealing some fruit, he is obsessed with, and got incautious.", 1)
talk_state = 0
elseif talk_state == 1 and msgcontains(msg, "") then
npcHandler:say("What has this to do with this Partos guy?", 1)
talk_state = 0

elseif msgcontains(msg, 'rat') then
	npcHandler:say("Do you bring a freshly killed rats for a bounty of 1 gold each?", 1)
	talk_state = 2
	
elseif talk_state == 2 and msgcontains(msg, 'yes') then
AMOUNTRAT = getPlayerItemCount(cid,2813)
if AMOUNTRAT >= 1 then
	if doPlayerRemoveItem(cid, 2813, AMOUNTRAT) == true then
	doPlayerAddMoney(cid, AMOUNTRAT*1)
	npcHandler:say("Here is your reward. You will become a great warrior some day.", 1)
	end
else
npcHandler:say("Look like it wasn't as dead as you thought ... it's gone.", 1)
end
talk_state = 0
	
elseif talk_state == 2 and msgcontains(msg, '') then
npcHandler:say("Come on. Don't waste my time with your jests..", 1)
talk_state = 0

	elseif msgcontains(msg, "idiot") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "asshole") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "retard") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "sucker") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "fag") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)	
	elseif msgcontains(msg, "fuck") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "shut up") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)	
	elseif msgcontains(msg, "shit") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)		
	elseif msgcontains(msg, "ugly") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "smell") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "blow") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "cock") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "dick") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "pussy") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)	
	elseif msgcontains(msg, "vagina") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "bitch") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
			elseif msgcontains(msg, "nigger") then
	npcHandler:say("Take this!", 0.5)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())