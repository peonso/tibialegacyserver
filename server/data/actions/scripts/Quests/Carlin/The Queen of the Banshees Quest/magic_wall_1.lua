-- Script by Nottinghster
local function createWall(p)

doCreateItem(1498,1,{x=32259, y=31890, z=10})
doCreateItem(1498,1,{x=32259, y=31891, z=10})

end

function onUse(cid, item, frompos, item2, topos)
	wall1 = {x=32259, y=31890, z=10, stackpos=1}
	wall2 = {x=32259, y=31891, z=10, stackpos=1}
	lever = {x=32212, y=31888, z=12, stackpos=1}
	getlever = getThingfromPos(lever)
	getwall1 = getThingfromPos(wall1)
	getwall2 = getThingfromPos(wall2)

	if item.uid == 10001 and item.itemid == 1945 and getwall1.itemid == 1498 and getwall2.itemid == 1498 and getlever.itemid == 1946 then
		doRemoveItem(getwall1.uid,1)
		doRemoveItem(getwall2.uid,1)
		doTransformItem(item.uid,item.itemid+1)
		p = {wallid1 = getwall1.itemid}
		q = {wallid2 = getwall2.itemid}
		addEvent(createWall, 1800*1000, p)
		addEvent(createWall, 1800*1000, q)
	elseif item.uid == 10001 and item.itemid == 1946 and getwall1.itemid == 0 and getwall2.itemid == 0 then
		doCreateItem(1498,1,{x=32259, y=31890, z=10})
		doCreateItem(1498,1,{x=32259, y=31891, z=10})	
		doTransformItem(item.uid,item.itemid-1)	
	else
		doPlayerSendCancel(cid,"Sorry, not possible.")
	end

	return 1
end