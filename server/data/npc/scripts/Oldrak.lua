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

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I guard this humble temple as a monument for the order of the nightmare knights."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Oldrak."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These plains are not safe for ordinary travellers. It will take heroes to survive here."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can't help you, sorry!"})
keywordHandler:addKeyword({'goshnar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The greatest necromant who ever cursed our land with the steps of his feet. He was defeated by the nightmare knights."})
keywordHandler:addKeyword({'nightmare'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This ancient order was created by a circle of wise humans who were called 'the dreamers'. The order became extinct a long time ago."})
keywordHandler:addKeyword({'extinct'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Many perished in their battles against evil, some went mad, not able to stand their nightmares any longer. Others were seduced by the darkness."})
keywordHandler:addKeyword({'dreamers'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They learned the ancient art of dreamwalking from some elves they befriended."})
keywordHandler:addKeyword({'dreamwalking'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "While the dreamwalkers of the elves experienenced the brightest dreams of pleasure, the humans strangely had dreams of dark omen."})
keywordHandler:addKeyword({'omen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They dreamed of doom, destruction, talked to dead, tormented souls, and gained unwanted insight into the schemes of darkness."})
keywordHandler:addKeyword({'schemes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They figured out how to interpret their dark dreams and so could foresee the plans of the dark gods and their minions."})
keywordHandler:addKeyword({'plan'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Using this knowledge they formed an order to thwart these plans, and because they battled their nightmares as brave as knights, they named their order accordingly."})
keywordHandler:addKeyword({'necromant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is rumoured to open the entrance to the pits of inferno, also called the nightmare pits. Even if I knew about this secret I wouldn't tell you."})
keywordHandler:addKeyword({'havok'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Before the battles raged across them, they were called the fair plains."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's where we are. The world of Tibia."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They created Tibia and all life on it ... and unlife, too."})
keywordHandler:addKeyword({'unlife'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Beware the foul undead!"})
keywordHandler:addKeyword({'undead'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Beware the foul undead!"})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A weapon of myth and legend. It was lost in ancient times ... perhaps lost forever."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you the holy tible for a small fee."})
keywordHandler:addKeyword({'trade'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you the holy tible for a small fee."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you the holy tible for a small fee."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you the holy tible for a small fee."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you the holy tible for a small fee."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you the holy tible for a small fee."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Now, it is |TIME|."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if msgcontains(msg, 'hugo') then
    npcHandler:say('Ah, the bane of the Plains of Havoc, the hidden beast, the unbeatable foe. I live here for years and I am sure it\'s only a myth.')
    talk_state = 1
	elseif msgcontains(msg, 'myth') and talk_state == 1 then
    npcHandler:say('There are many tales about the fearsome Hugo. It\'s said it is an abomination, accidentally created by Yenny the Gentle. It\'s halve demon, halve something else and people say it\'s still alive after dozens of years.')
    talk_state = 2
	elseif msgcontains(msg, 'yenny the gentle') and talk_state == 2 then
    npcHandler:say('Yenny, known as the Gentle, was one of most powerfull magicwielders in ancient times and known throughout the world for her mercy and kindness.')
	setPlayerStorageValue(cid,6664,1)
	talk_state = 3
	end

if msgcontains(msg, 'the holy') or msgcontains(msg, 'tible') then
	itemname = "the holy tible"
	itemprice = 1000
	npcHandler:say("Would you like to the holy tible for 1000 gold?", 1)
	talk_state = 8596
	
elseif talk_state == 8596 and msgcontains(msg, 'yes') then
	if doPlayerRemoveMoney(cid, itemprice) == true then
		npcHandler:say("Here you are, take good care of it!", 1)
		THEHOLYTIBLE = doPlayerAddItem(cid, 1970)
		THEHOLYTIBLE = doPlayerAddItem(cid, 1970, 1)
		doSetItemText(THEHOLYTIBLE, "Banor I praise your name.\nBe with me in the battle.\nBe my shield, let me be your sword.\nI will honour the godly spark in my soul.\nMay it flourish and grow.")
	else
	npcHandler:say("Oh, you do not have enough gold to buy ".. itemname ..".", 1)
	talk_state = 0
	end
	
end		
    return true
end	

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())