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
	if getPlayerStorageValue(cid, 8168) <= 0 then
	npcHandler:say("Shove off, little one! Humans are not welcome here, ".. getPlayerName(cid) .."!", 1)
	return false
	elseif getPlayerStorageValue(cid, 8170) <= 0 then
	return true
	else
	npcHandler:say("Shove off, little one! You are not welcome here, ".. getPlayerName(cid) .."!", 1)
	return false
	end	
end	
npcHandler:setCallback(CALLBACK_GREET, greetCallback)


keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Ubaid. Why do you want to know that, human? Hmm... suspicious."})
keywordHandler:addKeyword({'ubaid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That is my name. I don't like it when a human pronounces it."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, what do you think? I keep watch around here to make sure people like you don't enter."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, Malor is not officially king of all djinn yet, but now our beloved leader is back that is a mere formality."})
keywordHandler:addKeyword({'malor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, Malor is not officially king of all djinn yet, but now our beloved leader is back that is a mere formality."})
keywordHandler:addKeyword({'djinn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are a race of rulers and dominators! Or at least we, the Efreet, are!"})
keywordHandler:addKeyword({'efreet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Efreet are the true djinn! Those namby-pamby milksops who call themselves the Marid and still follow Gabel, no longer deserve the honour to call themselves djinn."})
keywordHandler:addKeyword({'gabel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I used to serve under Gabel, but he is no longer my king. If that wacky wimp should ever come here to Mal'ouquah I will personally... you know... turn him away. Yes!"})
keywordHandler:addKeyword({"mal'ouquah"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This place is our home, and as long as I'm here no meddler will trespass!"})
keywordHandler:addKeyword({"ashta'daramai"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Marids' hideout, isn't it? I have never been there, but I am sure one day I will. That will be the day Ashta'daramai falls into our hands!"})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You are an inferior race of feeble, scheming jerks. No offence."})
keywordHandler:addKeyword({'zathroth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Zathroth is our father! Of course, the son always has a right to hate his father, right?"})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This world is ours by right, and we will take it!"})
keywordHandler:addKeyword({'daraman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "How dare you utter that name in my presence, human. Don't strain my patience, worm! You may know the secret word, but... who knows... it is always possible that your head is torn off in some terrible accident."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A human settlement to the west? I have not been there yet, but when I do I'm sure I will be remembered."})
keywordHandler:addKeyword({'scarab'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They make good pets if you know how to keep them. Did you know they just adore human flesh?"})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Isn't that the name of some petty human settlement?"})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Isn't that the name of some petty human settlement?"})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Isn't that the name of some petty human settlement?"})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Isn't that the name of some petty human settlement?"})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Isn't that the name of some petty human settlement?"})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Isn't that the name of some petty human settlement?"})
keywordHandler:addKeyword({'pharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They say Ankrahmun is now ruled by a crazy pharaoh who wants to tell his whole people into drooling undead. That's humans. Sickos and weirdos the lot of them."})
keywordHandler:addKeyword({'palace'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One day we will sack that place and burn it to the ground."})
keywordHandler:addKeyword({'temple'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One day we will sack that place and burn it to the ground."})
keywordHandler:addKeyword({'ascension'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think I've heard that term before. Has to do with that weirdo pharaoh, right?"})
keywordHandler:addKeyword({'rah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Are you drunk?"})
keywordHandler:addKeyword({'uthun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Are you drunk?"})
keywordHandler:addKeyword({'akh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Are you drunk?"})
keywordHandler:addKeyword({"kha'zeel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This mountain range is our home. Too bad we have to share it with the Marid. That will change, though. And pretty soon, believe me."})
keywordHandler:addKeyword({"kha'labal"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I like the desert. Just ruins and sand. And no human scum to be seen. The Kha'labal is a foretaste of what the djinn will do to the whole of Tibia!"})
keywordHandler:addKeyword({'war'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't know why I am stuck here! I should be at the front, killing Marid and humans. Well, perhaps I will kill you..."})
keywordHandler:addKeyword({"baa'leal"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "General Baa'leal is our commander-in-chief of all his minions. He is as tough as an ancient scarab's buttocks and as sly a sand weasel."})
keywordHandler:addKeyword({'alesar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am not used to the sight of blueskins here in Mal'ouquah, and it does not make me too happy to see one. I am keeping an eye on this guy, and if I should ever find that he is playing games with us I will personally break his neck!"})
keywordHandler:addKeyword({"fa'hradin"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The old wizard is dangerous, but he will get what he deserves sooner or later."})
keywordHandler:addKeyword({'lamp'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am not taking a nap! I am on duty!"})


function creatureSayCallback(cid, type, msg) msg = string.lower(msg)

if msgcontains(msg, "mission") or msgcontains(msg, "pass") or msgcontains(msg, "quest") then
	if getPlayerStorageValue(cid,8171) <= 0 then
	npcHandler:say("You are not worthy to pass these doors, but I could give you some tests to see if you can become worthy, accept?", 1)
	talk_state = 801
	elseif getPlayerStorageValue(cid,8172) <= 99 then
	npcHandler:say("You're supposed to kill blue djinns, and still here you are..", 1)
	talk_state = 0
	elseif getPlayerStorageValue(cid,8172) >= 100 and  getPlayerStorageValue(cid,8173) <= 0 then
	npcHandler:story("You did kill those djinns.. AND survived.. wow. ...", 1)
	npcHandler:story("You seems to be worthy, but we still need to test you some more. ...", 5)
	npcHandler:say("You want another test?", 9)
	setPlayerStorageValue(cid,8173,1)
	talk_state = 701
	elseif getPlayerStorageValue(cid,8173) == 1 then
	npcHandler:say("You want another test?", 1)
	talk_state = 701
	elseif getPlayerStorageValue(cid,8174) == 1 and getPlayerStorageValue(cid,8175) <= 0 then
	npcHandler:say("oh, did you loot the chest?", 1)
	talk_state = 601
	else
	npcHandler:say("Sorry, no missions to you lil'one!", 1)
	talk_state = 0
	end
	
elseif talk_state == 801 and msgcontains(msg, "yes") then
	npcHandler:story("Okey, here's what you should do. ...", 1)
	npcHandler:story("Go in through the backdoor of the blue djinn fortress, and assassinate 100 djinns. ...", 5)
	npcHandler:story("If you come back here alive again, we'll talk about if you're worthy.. now go, be strong!", 9)
	setPlayerStorageValue(cid,8169,1)
	setPlayerStorageValue(cid,8171,1)
	setPlayerStorageValue(cid,8172,0)
	npcHandler:releaseFocus()
	npcHandler:resetNpc()
	talk_state = 0
elseif talk_state == 801 and msgcontains(msg, "") then
	npcHandler:say("Then not.. scared kitty..", 1)
	talk_state = 0
elseif talk_state == 701 and msgcontains(msg, "yes") then
	if getPlayerStorageValue(cid,8094) >= 1 and getPlayerStorageValue(cid,8173) == 1 then
		if getPlayerStorageValue(cid,8165) >= 1 then
			if getPlayerStorageValue(cid,8147) >= 1 then
			npcHandler:say("On the top floor of the blue djinn fortress is a chest or a box, steal what's inside it and bring it to me! see you in a bit!", 1)
			setPlayerStorageValue(cid,8173,2)
			npcHandler:releaseFocus()
			npcHandler:resetNpc()	
			else
			npcHandler:say("You haven't completed the Triangle tower quest yet, there's your next task! complete it! Byebye.", 1)
			npcHandler:releaseFocus()
			npcHandler:resetNpc()		
			end			
		else
		npcHandler:say("You haven't completed the arena, the Scrapper yet, there's your next task! complete it! Byebye.", 1)
		npcHandler:releaseFocus()
		npcHandler:resetNpc()		
		end
	else
	npcHandler:say("You haven't completed the orc fortress quest yet, there's your next task! complete it! Byebye.", 1)
	npcHandler:releaseFocus()
	npcHandler:resetNpc()
	end
elseif talk_state == 701 and msgcontains(msg, "") then
	npcHandler:say("Then not.. scared kitty..", 1)
	talk_state = 0

elseif talk_state == 601 and msgcontains(msg, "yes") then
	npcHandler:say("Oh it were empty, damn they knew abou.. herm.. well you are obviously worthy. ..", 1)
	npcHandler:say("You're welcome as a guest in our fortess, go and kill some blue djinns when ever you want!", 5)
	setPlayerStorageValue(cid,8175,1)
	doAddQuestPoint(cid)
	talk_state = 0
	
elseif talk_state == 601 and msgcontains(msg, "") then
	npcHandler:say("okey, then what are you doing here?", 1)
	talk_state = 0	
end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())