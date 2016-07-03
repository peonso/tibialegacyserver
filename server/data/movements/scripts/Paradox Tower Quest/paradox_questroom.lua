function onStepIn(cid, item, pos)

local phoenixegg = {x=32477, y=31900, z=1, stackpos=1}
local gold = {x=32478, y=31900, z=1, stackpos=1}
local talons = {x=32479, y=31900, z=1, stackpos=1}
local wand = {x=32480, y=31900, z=1, stackpos=1}
	
if item.actionid == 131 then --Phoenix Egg
setPlayerStorageValue(cid,10035,1)
doSendMagicEffect(phoenixegg,5)
elseif item.actionid == 132 then --10k
setPlayerStorageValue(cid,10036,1)
doSendMagicEffect(gold,5)
elseif item.actionid == 133 then --32 Talons
setPlayerStorageValue(cid,10037,1)
doSendMagicEffect(talons, 5)
elseif item.actionid == 134 then --Wand Of Cosmic
setPlayerStorageValue(cid,10038,1)
doSendMagicEffect(wand, 5)
end
return true
end
