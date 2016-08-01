dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm an amazon guard. It's my job to keep my eyes open and to keep enemies from passing by. My job here truely is one of the toughest. All because of these nerve-racking beasts."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Thanita. Nice to meet you."})
keywordHandler:addKeyword({'fight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "To get rid of them, you need to be quite good in different martial arts."})
keywordHandler:addKeyword({'defeat'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "To get rid of them, you need to be quite good in different martial arts."})
keywordHandler:addKeyword({'tower'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is a watchtower of the city of carlin. From here I can see pretty much all of the surrounding lands. Hardly anybody can startle me up here. I see all enemies long before they can see me."})
keywordHandler:addKeyword({'enem'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The enemies I fear most here are these nasty orcs."})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
if msgcontains(msg, 'beasts') or msgcontains(msg, 'Beasts') or msgcontains(msg, 'orc') or msgcontains(msg, 'them') or msgcontains(msg, 'raid') or msgcontains(msg, 'Orc') then
	npcHandler:say("These green, orcish raiders come in masses. Hundreds of them. They are worse than those goblins I have to deal with from time to time. ...", 1)
	npcHandler:say("Some of them come on beastly warwolves, others shoot fireballs at you and some are just plain ugly. ...", 5)
	npcHandler:say("They have never succeeded though in capturing this tower. So far I have always been able to put them to flight.", 9)
	talk_state = 0
			
elseif msgcontains(msg, 'mission') or msgcontains(msg, 'Mission') or msgcontains(msg, 'quest') or msgcontains(msg, 'Quest') then
	npcHandler:say("Well, I cannot provide you with a mission, I have a mission to fulfill myself. ...", 1)
	npcHandler:say("However, when the orcs attack, you are more than welcome to help me to defeat them. ...", 5)
	npcHandler:say("I'll even let you have all the stuff they carry with them. Even if they looted it from the tower here.", 9)
	talk_state = 0

elseif msgcontains(msg, 'amazon') or msgcontains(msg, 'Amazon') then
	npcHandler:say("I see you have heard of amazons before. Well let me tell you, probably everything you heard is true. We are much stronger and tougher than people think. Also, we know how to fight and could teach many men how to handle a weapon. ...", 1)
	npcHandler:say("Not that we would do such a foolish thing.", 5)
	talk_state = 0

end		
    return true
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())