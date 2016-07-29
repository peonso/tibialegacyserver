function onUse(cid, item, fromPosition, itemEx, toPosition)
	doTransformItem(item.uid, item.itemid + 1)
	return true
end