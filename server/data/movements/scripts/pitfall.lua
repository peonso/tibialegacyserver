-- by Nottinghster

function onStepIn(cid, item, pos)
	if item.itemid == 293 then
		doTransformItem(item.uid, 294)
    end
	
    return true
end