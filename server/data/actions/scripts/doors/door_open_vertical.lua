-- by Nottinghster

function onUse(cid, item, frompos, item2, topos)
	local nextTile = {x = frompos.x, y = frompos.y + 1, z = frompos.z} 
	doRelocate(frompos, nextTile)
	doTransformItem(item.uid, item.itemid - 1)

	return true
end