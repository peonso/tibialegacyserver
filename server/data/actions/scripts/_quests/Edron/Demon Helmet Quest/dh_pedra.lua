-- by Nottinghster
function onUse(cid, item, fromPosition, itemEx, toPosition)

local gatepos = {x=33314, y=31592, z=15, stackpos=1}
local telepos = {x=33316, y=31591, z=15, stackpos=1}
local gopos = {x=33321, y=31591, z=14, stackpos=1}

local getgate = getThingfromPos(gatepos)
local gettele = getThingfromPos(telepos)

    if item.uid == 8550 and item.itemid == 1945 and getgate.itemid == 1355 then
        doRemoveItem(getgate.uid,1)
        doTransformItem(item.uid,item.itemid+1)
        doCreateTeleport(1387, gopos, telepos)
    elseif item.uid == 8550 and item.itemid == 1946 and getgate.itemid == 0 then
        doCreateItem(1355,1,gatepos)
        doTransformItem(item.uid,item.itemid-1)
        doRemoveItem(gettele.uid,1)
    else
        doPlayerSendCancel(cid,"Sorry, not possible.")
    end
    
return true
end
