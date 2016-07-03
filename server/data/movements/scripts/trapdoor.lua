-- by Nottinghster

function onStepIn(cid, item, pos)
	if item.itemid == 461 then
		doTransformItem(item.uid, 462)
    end
    return true
end