local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                        npcHandler:onThink()                        end


function greetCallback(cid)
	if getPlayerStorageValue(cid,3058) == -1 then
		selfSay('Arrrrgh! A dirty paleskin! Kill them my guards!')
		pos = getCreaturePosition(getNpcCid())

		local northEast = {x=pos.x+1,y=pos.y-1,z=pos.z}
		local northWest = {x=pos.x-1,y=pos.y-1,z=pos.z}
		local southEast = {x=pos.x+1,y=pos.y+1,z=pos.z}
		local southWest = {x=pos.x-1,y=pos.y+1,z=pos.z}
		local East = {x=pos.x+1,y=pos.y,z=pos.z}
		local West = {x=pos.x-1,y=pos.y,z=pos.z}
		local South = {x=pos.x,y=pos.y+1,z=pos.z}
		local North = {x=pos.x,y=pos.y-1,z=pos.z}

		doSummonCreature('Orc Warlord', northWest)
		doSummonCreature('Orc Warlord', West)
		doSummonCreature('Orc Leader', southWest)
		doSummonCreature('Orc Leader', South)
		doSummonCreature('Orc Leader', southEast)
		doSummonCreature('Slime', East)
		doSummonCreature('Slime', northEast)
		doSummonCreature('Slime', North)
		setPlayerStorageValue(cid,3058,1)
	else
		return true
	end
end
 
-- Set the greeting callback function
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setMessage(MESSAGE_GREET, 'Arrrgh! Again?! What do you want?')
npcHandler:addModule(FocusModule:new())