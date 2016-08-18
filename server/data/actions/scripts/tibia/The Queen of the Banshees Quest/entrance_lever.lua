-- by Nottinghster
function onUse(cid, item, fromPosition, itemEx, toPosition)

	local magicwallpos = {x=32266, y=31860, z=11, stackpos=1}
	local stairpos = {x=32266, y=31860, z=11, stackpos=1}
	local tilepos = {x=32266, y=31860, z=11, stackpos=1}
	local getmw = getThingfromPos(magicwallpos)
	local getstair = getThingfromPos(stairpos)
	local gettile = getThingfromPos(tilepos)

    if item.uid == 50019 and item.itemid == 1945 and getmw.itemid == 1498 and gettile.itemid == 407 then
        doRemoveItem(getmw.uid,1)
        doTransformItem(item.uid,item.itemid+1)
        doCreateItem(410, stairpos)
    elseif item.uid == 50019 and item.itemid == 1946 and getmw.itemid == 0 and gettile.itemid == 410  then
		doRemoveItem(gettile.uid,1)
	    doCreateItem(407,tilepos)
        doCreateItem(1498,magicwallpos)
        doTransformItem(item.uid,item.itemid-1)
    else
        doPlayerSendCancel(cid,"Sorry, not possible.")
    end
    
	return true
end

