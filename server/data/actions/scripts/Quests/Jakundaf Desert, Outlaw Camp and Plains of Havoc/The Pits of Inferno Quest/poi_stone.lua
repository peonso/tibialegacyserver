function onUse(cid, item, fromPosition, itemEx, toPosition)
    removals = {
        { item = 1304, pos = { x = 32852 , y = 32319 , z = 9 } },   
    }
    local pos = { x = 32852 , y = 32319 , z = 9 }
	local newpos = { x = 32854 , y = 32319 , z = 9 }
    if item.itemid == 1945 then
        for i = 1, #removals do
            removals[i].pos.stackpos = 1
            doRemoveItem(getThingfromPos(removals[i].pos).uid, 1)
			doSendMagicEffect(pos,2)
        end
        doTransformItem(item.uid, item.itemid + 1)
    elseif item.itemid == 1946 then
        for i = 1, #removals do
            doCreateItem(removals[i].item, 1, removals[i].pos)
			doSendMagicEffect(pos,2)
        end
		pos.stackpos = 253
        doTransformItem(item.uid, item.itemid - 1)
    end
    return TRUE
end