function target (stuff)  
local cid = stuff.cid      
local thing = getThingfromPos(stuff.toPosition)  
  
    if (stuff.counter == 2) then  
        if getTileHouseInfo(stuff.toPosition) == TRUE then  
                doPlayerSendCancel(cid,"You cannot teleport items from a house.")  
        elseif isCreature(thing.uid) == FALSE then  
                doTeleportThing(thing.uid, getCreaturePosition(stuff.cid))
        end  
        return true  
    end      
        doSendDistanceShoot(stuff.toPosition, getCreaturePosition(stuff.cid), CONST_ANI_ENERGY)  
        doAreaCombatHealth(0, CONST_ME_MAGIC_BLUE, stuff.toPosition, 0, -100, -200, CONST_ME_MAGIC_BLUE)  
        stuff.counter = stuff.counter + 1  
        addEvent(target, 200, stuff)  
end  
  
function onUse(cid, item, fromPosition, itemEx, toPosition)  
    if getTilePzInfo(getCreaturePosition(cid)) == TRUE or getTilePzInfo(toPosition) == TRUE then  
        doPlayerSendCancel(cid,"You cannot use this tool in a protection zone.")  
    else  
        doSendDistanceShoot(getCreaturePosition(cid), toPosition, CONST_ANI_ENERGY)  
        local stuff = {cid = cid, toPosition = toPosition, counter = 1}          
        addEvent(target, 300, stuff)  
    end  
    return true  
end