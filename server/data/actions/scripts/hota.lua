-- by Nottinghster

function onUse(cid, item, frompos, item2, topos)
	if item2.itemid == 0 then
		return false
	end 

	if item2.itemid == 2147 then
		doTransformItem(item2.uid,2343)
		doRemoveItem(item.uid,2342)
	else
		return false
	end
	
	return true
end