ction onUse(cid, item, frompos, item2, topos)

item.uid == 22222 and item.itemid == 1210 and pos == {x=304, y=480, z=11} then
        if getPlayerStorageValue(cid,1234561) == -1 or getPlayerStorageValue(cid,1234562) == -1 or getPlayerStorageValue(cid,1234563) == -1 or getPlayerStorageValue(cid,1234564) == -1 or getPlayerStorageValue(cid,1234565) == -1 then
            doTransformItem(item.uid,item.itemid+1)
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'Sorry, but you did not absorb enough energy!')
        else
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You absorbed enough energy! You may pass.')
        end
    end