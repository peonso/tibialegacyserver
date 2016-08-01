dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end
-- OTServ event handling functions end

function greetCallback(cid)
	if getPlayerStorageValue(cid,10051) == -1 then
		npcHandler:say('Begone! Hissssss! You bear not the mark of the cobra!')
		return false
	else
		doTeleportThing(cid, {x=33397,y=32836,z=14})
		selfSay('Venture the path of decay!')
		return true
	end
end

-- Set the greeting callback function
npcHandler:setCallback(CALLBACK_GREET, greetCallback)

-- Make it react to hi/bye etc.
npcHandler:addModule(FocusModule:new())