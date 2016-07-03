-- by Nottinghster

function onAddItem(item, tile, pos)
	if(item.actionid == 0) then
		doTransformItem(item.uid, item.itemid+1)
	end
	return TRUE
end