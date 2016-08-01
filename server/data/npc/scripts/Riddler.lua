dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end


keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am known as the riddler. That is all you need to know."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the guardian of the paradox tower."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is the age of the talon."})
keywordHandler:addKeyword({'tower'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This tower, of course, silly one. It holds my master's treasure."})
keywordHandler:addKeyword({'paradox'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This tower, of course, silly one. It holds my master's treasure."})
keywordHandler:addKeyword({'master'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "His name is none of your business."})
keywordHandler:addKeyword({'guard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am guarding the treasures of the tower. Only those who pass the test of the three sigils may pass."})
keywordHandler:addKeyword({'treasure'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am guarding the treasures of the tower. Only those who pass the test of the three sigils may pass."})
keywordHandler:addKeyword({'key'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The key of this tower! You will never find it! A malicious plant spirit is guarding it!"})
keywordHandler:addKeyword({'door'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The key of this tower! You will never find it! A malicious plant spirit is guarding it!"})

function creatureSayCallback(cid, type, msg)
    if(npcHandler.focus ~= cid) then
        return false
    end
    
    -- start config
	local queststate1 = getPlayerStorageValue(cid,6667)
	local queststate2 = getPlayerStorageValue(cid,6668)
    local response01 = "Death awaits those who fail the test of the three seals! Do you really want me to test you?"
    local response02 = "FOOL! Now you're doomed! But well ... So be it! Let's start out with the Seal of Knowledge and the first question: What name did the necromant king choose for himself?"
    local response03 = "HOHO! You have learned your lesson well. Question number two then: Who or what is the feared Hugo?"
    local response04 = "HOHO! Right again. All right. The final question of the first seal: Who was the first warrior to follow the path of the Mooh'Tah?"
    local response05 = "HOHO! Lucky you. You have passed the first seal! So ... would you like to continue with the Seal of the Mind?"
    local response06 = "As you wish, foolish one! Here is my first question: Its lighter then a feather but no living creature can hold it for ten minutes?"
    local response07 = "That was an easy one. Let's try the second: If you name it, you break it."
    local response08 = "Hm. I bet you think you're smart. All right. How about this: What does everybody want to become but nobody to be?"
    local response09 = "ARGH! You did it again! Well all right. Do you wish to break the Seal of Madness?"
    local response10 = "GOOD! So I will get you at last. Answer this: What is my favourite colour?"
    local response11 = "UHM UH OH ... How could you guess that? Are you mad??? All right. Question number two: What is the opposite?"
    local response12 = "NO! NO! NO! That can't be true. You're not only mad, you are a complete idiot! Ah well. Here is the last question: What is 1 plus 1?"
    local response13 = "WRONG!"
    local response14 = "RIGHT!"

    local wrong = "NO! HAHA! YOU FAILED!"
    local keywordAbadon = "no"
    local abadon = "Better for you..."

    -- all keywords MUST be lower-case
    local keyword01 = "test"
    local keyword02 = "yes"
    local keyword03 = "goshnar"
    local keyword04 = "demonbunny"
    local keyword05 = "tha'kull"
    local keyword06 = "yes"
    local keyword07 = "breath"
    local keyword08 = "silence"
    local keyword09 = "old"
    local keyword10 = "yes"
    local keyword11 = "green"
    local keyword12 = "none"
    local keyword13 = "1132asas"
    local keyword14 = "2"
    
    local posPass = {x=32478, y=31905, z=1, stackpos=0}
    local posFail = {x=32725, y=31589, z=12, stackpos=0}

    -- end config
    if msgcontains(msg, keyword01) and queststate2 == 1 then
        selfSay(response01)
        talkState = 13
    elseif msgcontains(msg, keyword02) and talkState == 13 then
        selfSay(response02)
        talkState = 14
    elseif msgcontains(msg, keywordAbadon) and talkState == 13 then
        selfSay(abadon)
        talkState = 0
    -- let's start the right answers
    elseif msgcontains(msg, keyword03) and talkState == 14 then
        selfSay(response03)
        talkState = 15
    elseif msgcontains(msg, keyword04) and talkState == 15 then
        selfSay(response04)
        talkState = 16
    elseif msgcontains(msg, keyword05) and talkState == 16 then
        selfSay(response05)
        talkState = 17
    elseif msgcontains(msg, keyword06) and talkState == 17 then
        selfSay(response06)
        talkState = 18
    elseif msgcontains(msg, keyword07) and talkState == 18 then
        selfSay(response07)
        talkState = 19
    elseif msgcontains(msg, keyword08) and talkState == 19 then
        selfSay(response08)
        talkState = 20
    elseif msgcontains(msg, keyword09) and talkState == 20 then
        selfSay(response09)
        talkState = 21
    elseif msgcontains(msg, keyword10) and talkState == 21 then
        selfSay(response10)
        talkState = 22
    elseif msgcontains(msg, keyword11) and talkState == 22 then
        selfSay(response11)
        talkState = 23
    elseif msgcontains(msg, keyword12) and talkState == 23 then
        selfSay(response12)
        talkState = 24
    elseif msgcontains(msg, keyword14) and talkState == 24 then
		doTeleportThing(cid,posPass)
        selfSay(response14)
    -- let's start the wrong answers and the "death" teleport :D
    elseif msgcontains(msg, keyword03) == nil and talkState == 13 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword04) == nil and talkState == 14 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword05) == nil and talkState == 15 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword06) == nil and talkState == 16 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword07) == nil and talkState == 17 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword08) == nil and talkState == 18 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword09) == nil and talkState == 19 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword10) == nil and talkState == 20 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword11) == nil and talkState == 21 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword12) == nil and talkState == 22 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword13) == nil and talkState == 23 then
        selfSay(wrong)
        talkState = 0
	--1st--
    elseif msgcontains(msg, keyword01) and queststate1 == 1 then
        selfSay(response01)
        talkState = 1
    elseif msgcontains(msg, keyword02) and talkState == 1 then
        selfSay(response02)
        talkState = 2
    elseif msgcontains(msg, keywordAbadon) and talkState == 1 then
        selfSay(abadon)
        talkState = 0
    -- let's start the right answers
    elseif msgcontains(msg, keyword03) and talkState == 2 then
        selfSay(response03)
        talkState = 3
    elseif msgcontains(msg, keyword04) and talkState == 3 then
        selfSay(response04)
        talkState = 4
    elseif msgcontains(msg, keyword05) and talkState == 4 then
        selfSay(response05)
        talkState = 5
    elseif msgcontains(msg, keyword06) and talkState == 5 then
        selfSay(response06)
        talkState = 6
    elseif msgcontains(msg, keyword07) and talkState == 6 then
        selfSay(response07)
        talkState = 7
    elseif msgcontains(msg, keyword08) and talkState == 7 then
        selfSay(response08)
        talkState = 8
    elseif msgcontains(msg, keyword09) and talkState == 8 then
        selfSay(response09)
        talkState = 9
    elseif msgcontains(msg, keyword10) and talkState == 9 then
        selfSay(response10)
        talkState = 10
    elseif msgcontains(msg, keyword11) and talkState == 10 then
        selfSay(response11)
        talkState = 11
    elseif msgcontains(msg, keyword12) and talkState == 11 then
        selfSay(response12)
        talkState = 12
    elseif getNumber(msg) >= 1 and talkState == 12 then
        selfSay(response13)
        doTeleportThing(cid,posFail)
    -- let's start the wrong answers and the "death" teleport :D
    elseif msgcontains(msg, keyword03) == nil and talkState == 2 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword04) == nil and talkState == 3 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword05) == nil and talkState == 4 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword06) == nil and talkState == 5 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword07) == nil and talkState == 6 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword08) == nil and talkState == 7 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword09) == nil and talkState == 8 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword10) == nil and talkState == 9 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword11) == nil and talkState == 10 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword12) == nil and talkState == 11 then
        selfSay(wrong)
        talkState = 0
        doTeleportThing(cid,posFail)
    elseif msgcontains(msg, keyword13) == nil and talkState == 12 then
        selfSay(wrong)
        talkState = 0
    end
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())