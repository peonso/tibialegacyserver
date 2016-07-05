-- by Nottinghster

local ITEM_PRE_WHEAT = 2739
local ITEM_WHEAT = 2737
local ITEM_BUNCH_WHEAT = 2694

function onUse(cid, item, frompos, item2, topos)
	if (item2.itemid == ITEM_PRE_WHEAT) then
		doTransformItem(item2.uid, ITEM_WHEAT)
		doCreateItem(ITEM_BUNCH_WHEAT, 1, topos)
	else
		return false
	end
	
	doDecayItem(item2.uid)
	return true
end 