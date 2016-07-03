-- by Nottinghster

function copyItem(item)
    if (isContainer(item.uid) == TRUE) then
        uid = copyContainer(item.uid, item.itemid)
        if item.actionid > 0 then
            doSetItemActionId(uid, item.actionid)
        end
        return uid
    else
        return doCreateItemEx(item.itemid, item.type)
    end
end

function copyContainer(uid, itemid)
    local container = doCreateItemEx(itemid, 1)
    local iterator = getContainerSize(uid)
    while iterator > 0  do
        iterator = iterator - 1
        doAddContainerItemEx(container, copyItem(getContainerItem(uid, iterator)))
    end
    return container
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
    if item.uid < 65535 and item.uid ~= 0 then
        if getPlayerStorageValue(cid, item.uid) ~= 1 then
            local items = {}
            local item_in = {}
            local item_slot = 0
            local item_to_give = 0
            local item_desc = ''
            while(true) do
                item_in = getContainerItem(item.uid, item_slot)
                if item_in.itemid > 0 then
                    table.insert(items, item_in)
                else
                    break
                end
                item_slot = item_slot+1
            end
            if #items == 0 then
                item_to_give = doCreateItemEx(item.uid)
                item_desc = getItemNameById(item.uid)
            elseif #items == 1 then
                item_to_give = copyItem(items[1])
                item_desc = getItemNameById(items[1].itemid)
            else
                if #items <= 8 then
                    item_to_give = doCreateItemEx(1987, 1)
                else
                    item_to_give = doCreateItemEx(1988, 1)
                end
                local n = 0
                local uid = 0
                for i=1, #items do
                    n = #items - i + 1
                    uid = doAddContainerItemEx(item_to_give, copyItem(items[n]))
                    if items[n].actionid > 0 then
                        doSetItemActionId(uid, items[n].actionid)
                    end
                    item_desc = getItemNameById(items[n].itemid) .. item_desc
                    if i ~= #items then
                        item_desc = ", " .. item_desc
                    end
                end
            end
            if doPlayerAddItemEx(cid, item_to_give, 0) == RETURNVALUE_NOERROR then
                doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'You have found a ' .. item_desc .. '.')
                setPlayerStorageValue(cid, item.uid, 1)
                if item.uid < 2000 then
                    setPlayerStorageValue(cid, 1000, getPlayerStorageValue(cid,1000)+1)
                end
            else
                doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'The ' .. item_desc .. ' is too heavy or you have not enough space.')
            end
        else
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
        end
    end
    return true
end  