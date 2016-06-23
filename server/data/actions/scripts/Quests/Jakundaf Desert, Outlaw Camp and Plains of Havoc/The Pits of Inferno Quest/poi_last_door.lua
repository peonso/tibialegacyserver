function onUse(cid, item, fromPosition, itemEx, toPosition)
local charpos = getPlayerPosition(cid)
    if item.uid == 10281 and charpos.x == 32828 and (charpos.y == 32246 or charpos.y == 32245	) and charpos.z == 10 then
        if getPlayerStorageValue(cid,10274) == -1 or getPlayerStorageValue(cid,10275) == -1 or getPlayerStorageValue(cid,10276) == -1 or getPlayerStorageValue(cid,10277) == -1 or getPlayerStorageValue(cid,10278) == -1 or getPlayerStorageValue(cid,10279) == -1 or getPlayerStorageValue(cid,10280) == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You did not absorb enough energy!')
        else
          local newPos = {x=32826, y=32246, z=10}
        doTeleportThing(cid, newPos)
        doSendMagicEffect(newPos, 10)
        end
		
	    elseif item.uid == 10281 and charpos.x == 32828 and (charpos.y == 32246 or charpos.y == 32245) and charpos.z == 10 then
          local newPos = {x=32828, y=32246, z=10}
		 doSendMagicEffect(getPlayerPosition(cid), 2)
        doTeleportThing(cid, newPos)

        doSendMagicEffect({x=32828, y=32246, z=10}, 10)
        end
    return 1
end