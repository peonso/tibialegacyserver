-- by Nottinghster

function onUse(cid, item, frompos, item2, topos)
	local nextTile = {x=frompos.x + 1, y=frompos.y, z=frompos.z} 
	doRelocate(frompos, nextTile)
	doTransformItem(item.uid, item.itemid - 1)

	return true
end