-- by Nottinghster

local BIRD_CAGE = 2095
local CORNUCOPIA = 2369

function onUse(cid, item, frompos, item2, topos)
	local random = math.random(1, 5)

	if (isInArray(MUSICAL_INSTRUMENTS, item2.itemid) == TRUE) then
		doSendMagicEffect(frompos, CONST_ME_SOUND_BLUE)
	elseif (item.itemid == BIRD_CAGE) then
		doSendMagicEffect(frompos, CONST_ME_SOUND_YELLOW)
	elseif (item.itemid == CORNUCOPIA) then
		for i = 1, 11 do
			doPlayerAddItem(cid, 2681)
		end
		
		doRemoveItem(item.uid, 1)
		doSendMagicEffect(frompos, CONST_ME_SOUND_YELLOW)
	end
	
	return true
end 