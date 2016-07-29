-- by Nottinghster

local PUMPKIN = 2683
local PUMPKINHEAD_LIGHT_OFF = 2096
local PUMPKINHEAD_LIGHT_ON = 2097
local CANDLE = 2048
local KNIFE = 2566

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if (item.itemid == PUMPKINHEAD_LIGHT_OFF and itemEx.itemid == CANDLE) then
		doTransformItem(item.uid, PUMPKINHEAD_LIGHT_ON)
		doRemoveItem(itemEx.uid)
	elseif (item.itemid == KNIFE and itemEx.itemid == PUMPKIN) then
		doTransformItem(itemEx.uid, PUMPKINHEAD_LIGHT_OFF)
	else
		return false
	end
	
	return true
end 