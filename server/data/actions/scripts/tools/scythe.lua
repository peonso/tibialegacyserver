function onUse(cid, item, fromPosition, itemEx, toPosition)
	local ITEM_PRE_WHEAT = 2739
	local ITEM_WHEAT = 2737
	local ITEM_BUNCH_WHEAT = 2694

	if (itemEx.itemid == ITEM_PRE_WHEAT) then
		doTransformItem(itemEx.uid, ITEM_WHEAT)
		doCreateItem(ITEM_BUNCH_WHEAT, 1, toPosition)
	else 
		return false
	end
	doDecayItem(itemEx.uid)
	return true
end