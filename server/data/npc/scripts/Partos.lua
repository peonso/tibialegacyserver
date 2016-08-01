dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'news'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hardly hear any news down here."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Partos, but you can call me Party."})
keywordHandler:addKeyword({'party'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yeah! Come in and let's have a party."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I love the city. I just wish I could see some other part of it now and then."})
keywordHandler:addKeyword({'city'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I love the city. I just wish I could see some other part of it now and then."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I love this world. I just wish I could see some other part of it now and then."})
keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am great! Free food, free room, and now and then someone coming down here to ask me silly questions. Wouldn't you love that, too?"})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would like to sell you a secret, but I'm out of business for too long."})
keywordHandler:addKeyword({'jail'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You mean that's a JAIL? They told me it's the finest hotel in town! THAT explains the lousy roomservice!"})
keywordHandler:addKeyword({'prison'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You mean that's a JAIL? They told me it's the finest hotel in town! THAT explains the lousy roomservice!"})
keywordHandler:addKeyword({'crim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah, I did nothing serious. I just had a little fun. In Ankrahmun nobody would have cared about these kind of things..."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The gods seldom show up down here, so don't ask me."})
keywordHandler:addKeyword({'citizen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Rich enough to spare a little, don't you agree? Well, they didn't agree."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yeah, a king is a man that can rob people by law, and not by night like me."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "At least I am safe from them down here."})
keywordHandler:addKeyword({'gold'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "gold got me in here."})
keywordHandler:addKeyword({'money'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "gold got me in here."})
keywordHandler:addKeyword({'fight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hey, most people I killed were even worse than me."})
keywordHandler:addKeyword({'slay'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hey, most people I killed were even worse than me."})
keywordHandler:addKeyword({'noodles'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I bet one could get some fine ransom, if he dognappes this furball."})
keywordHandler:addKeyword({'quentin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "By the gods, he visits us 'criminals' now and then to 'save' us. Who is going to save me from this boredom on two legs?"})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah, the king's pawns. I spit on them."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Geee, someone stole my watch. Bad company down here."})
keywordHandler:addKeyword({'waterpipe'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My waterpipe? I lost it. But it doesn't matter. I quit smoking anyway."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Excalibug? No way that I tell you something about it!"})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
if msgcontains(msg, 'job') or msgcontains(msg, 'Job') then
	npcHandler:say("Guess it! I give you a hint: I am not in this cell to clean it up! ...", 1)
	npcHandler:say("I wished, I would have never left Ankrahmun.", 1)
	talk_state = 0
	
elseif msgcontains(msg, 'ankrahmun') or msgcontains(msg, 'Ankrahmun') then
	npcHandler:say("Yes, I've lived in Ankrahmun for quite some time. Ahh, good old times! ...", 1)
	npcHandler:say("Unfortunately I had to relocate. <sigh> ...", 5)
	npcHandler:say("Business reasons - you know.", 9)
	talk_state = 0

elseif msgcontains(msg, 'djinn') and getPlayerStorageValue(cid,8130) == 1 or msgcontains(msg, "baa'leal") and getPlayerStorageValue(cid,8130) == 1 or msgcontains(msg, 'supplies') and getPlayerStorageValue(cid,8130) == 1 or msgcontains(msg, "mal'ouquah") and getPlayerStorageValue(cid,8130) == 1 then
	npcHandler:say("What!? I bet, Baa'leal sent you! ...", 1)
	npcHandler:say("I won't tell you anything! Shove off!", 5)
	talk_state = 0
	setPlayerStorageValue(cid,8130,2)
	addEvent(message31, 5000, pos)	

elseif msgcontains(msg, 'djinn') or msgcontains(msg, "baa'leal") or msgcontains(msg, 'supplies') or msgcontains(msg, "mal'ouquah") then
	npcHandler:say("I won't talk about that.", 1)
	talk_state = 0

elseif msgcontains(msg, 'grape') then
	npcHandler:say("Do you have any grapes with you?", 1)
	talk_state = 1	
elseif talk_state == 1 and msgcontains(msg, 'yes') then
	if doPlayerRemoveItem(cid, 2681, 1) == true then
	npcHandler:say("What do you want for that ...ohhh... tasty ...uhm... sweet ...drool... delicous ...hmm... grapes?", 1)
	talk_state = 2
	else
	npcHandler:say("Go away, if you don't have any grapes.", 1)
	talk_state = 0
	end
	
elseif talk_state == 2 and msgcontains(msg, 'excalibug') then
	npcHandler:say("My late mentor once told me he found a wallcarving about this sword in a cave beneath the castle.", 1)
	talk_state = 2	
elseif talk_state == 2 and msgcontains(msg, 'wallcarving') then
	npcHandler:say("That part of the dungeon was recently blocked by a cave-in. It was unsecure before, and only a fool would have entered there. I stayed out and alive.", 1)
	talk_state = 0	
	
end		
    return true
end

function message31(cid, type, msg)
npcHandler:releaseFocus()
npcHandler:resetNpc()
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())