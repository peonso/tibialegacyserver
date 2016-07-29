function onUse(cid, item, fromPosition, itemEx, toPosition)
	if (itemEx.actionid == 0 or isInArray(LOCKED_DOORS, itemEx.itemid) == false and isInArray(LOCKED_DOORS, itemEx.itemid-1) == false and isInArray(LOCKED_DOORS, itemEx.itemid-2) == false) then
		return false
	end

	local canOpen = (item.actionid == 10000 or item.actionid == itemEx.actionid)
	if not(canOpen) then
		doPlayerSendCancel(cid, "The key does not match.")
		return true
	end

	-- Verify if you are opening or closing the door
	if isInArray(LOCKED_DOORS, itemEx.itemid) == true then -- Opening
		doTransformItem(itemEx.uid, itemEx.itemid+2)
	elseif isInArray(LOCKED_DOORS, itemEx.itemid-2) == true then -- Closing and Locking
		doTransformItem(itemEx.uid, itemEx.itemid-2)
	else                                                   -- Locking an already closed door
		doTransformItem(itemEx.uid, itemEx.itemid-1)
	end
	doSetItemActionId(itemEx.uid, itemEx.actionid)

	return true
end
