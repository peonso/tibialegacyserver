--Script by Rodrigo (Nottinghster)
function onStepIn(cid, item, pos)
 
local config = {
	MonsterName1 = "Warlock", 
	Monster1CreatePos = {x=32215, y=31841, z=15},
 
	MonsterName2 = "Warlock", 
	Monster2CreatePos = {x=32215, y=31833, z=15}
}
	if isPlayer(cid) then
		if getPlayerStorageValue(cid,63636) == false then
			doSummonCreature(config.MonsterName2, config.Monster2CreatePos)
			doSummonCreature(config.MonsterName1, config.Monster1CreatePos)
   			setPlayerStorageValue(cid,63636,1)
		else
			doSendMagicEffect(getCreaturePosition(cid), 14)
		end
	end
end