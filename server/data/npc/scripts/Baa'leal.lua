dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

	function FocusModule:init(handler)
	FOCUS_GREETSWORDS = {'hi', 'hello', "DJANNI'HAH"}
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

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm general Baa'leal. What do you want in Mal'ouquah?"})
keywordHandler:addKeyword({'general'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm general Baa'leal. What do you want in Mal'ouquah?"})
keywordHandler:addKeyword({"baa'leal" }, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That is GENERAL Baa'leal for you, human."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

if msgcontains(msg, 'job') or msgcontains(msg, 'Job') then
	selfSay("I am commander-in-chief of the armed forces of the UDLA, all branches of service. ...")
	talk_state = 0
	addEvent(message11, 5000, pos)
	
elseif msgcontains(msg, 'udla') or msgcontains(msg, 'Udla') then
	selfSay("Yes. The United Djinn Liberation Army. ...")
	talk_state = 0
	addEvent(message21, 5000, pos)

elseif msgcontains(msg, 'ubaid') and getPlayerStorageValue(cid,8130) <= 0 or msgcontains(msg, 'work') and getPlayerStorageValue(cid,8130) <= 0 then
	selfSay("Ubaid told you to speak with me? Hmmm... maybe there is something you could help us with. Are you interested, human?")
	talk_state = 1

elseif msgcontains(msg, 'operation') and getPlayerStorageValue(cid,8130) <= 0 then
	selfSay("Each mission and operation is a crucial step towards our victory! ...")
	talk_state = 1
	addEvent(message31, 5000, pos)	
	
elseif talk_state == 1 and msgcontains(msg, 'yes') then
	selfSay("Well ... All right. You may only be a human, but you do seem to have the right spirit. ...")
	talk_state = 0
	addEvent(message41, 5000, pos)
	setPlayerStorageValue(cid,8130,1)
	
elseif msgcontains(msg, 'operation') or msgcontains(msg, 'mission') or msgcontains(msg, 'work') or msgcontains(msg, 'thief') then
	if getPlayerStorageValue(cid,8130) >= 1 and getPlayerStorageValue(cid,8130) <= 2 then
	selfSay("Did you find the thief of our supplies?")
	talk_state = 2
	end

elseif talk_state == 2 and msgcontains(msg, 'yes') then
	selfSay("Finally! What is his name then?")
	talk_state = 3
elseif talk_state == 3 and msgcontains(msg, 'partos') and getPlayerStorageValue(cid,8130) == 2 then
	selfSay("You found the thief! Excellent work, soldier! You are doing well - for a human, that is. Here - take this as a reward. ...")
	setPlayerStorageValue(cid,8130,3)
	doPlayerAddMoney(cid, 600)
	talk_state = 0
	addEvent(message51, 5000, pos)

end		
    return true
end

function message11(cid, type, msg)
npcHandler:say("Hence I'm responsible for all operations in the enemy's territory.")
end
function message21(cid, type, msg)
npcHandler:say("The title has been given to our valiant armed forces in order to stress both the revolutionary focus of our agenda and the universalist nature of our political approach. ...")
addEvent(message22, 5000, pos)
end
function message22(cid, type, msg)
npcHandler:say("Don't ask me what that means. Wasn't my idea.")
end
function message31(cid, type, msg)
npcHandler:say("Now that we speak of it ...")
addEvent(message32, 5000, pos)
end
function message32(cid, type, msg)
npcHandler:say("Since you are no djinn, there is something you could help us with. Are you interested, human?")
end

function message41(cid, type, msg)
npcHandler:say("Listen! Since our base of operations is set in this isolated spot we depend on supplies from outside. These supplies are crucial for us to win the war. ...")
addEvent(message42, 5000, pos)
end
function message42(cid, type, msg)
npcHandler:say("Unfortunately, it has happened that some of our supplies have disappeared on their way to this fortress. At first we thought it was the Marid, but intelligence reports suggest a different explanation. ...")
addEvent(message43, 5000, pos)
end
function message43(cid, type, msg)
npcHandler:say("We now believe that a human was behind the theft! ...")
addEvent(message44, 5000, pos)
end
function message44(cid, type, msg)
npcHandler:say("His identity is still unknown but we have been told that the thief fled to the human settlement called Carlin. I want you to find him and report back to me. Nobody messes with the Efreet and lives to tell the tale! ...")
addEvent(message45, 5000, pos)
end
function message45(cid, type, msg)
npcHandler:say("Now go! Travel to the northern city Carlin! Keep your eyes open and look around for something that might give you a clue!")
end
function message51(cid, type, msg)
npcHandler:say("Since you have proven to be a capable soldier, we have another mission for you. ...")
addEvent(message52, 5000, pos)
end
function message52(cid, type, msg)
npcHandler:say("If you are interested go to Alesar and ask him about it.")
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())