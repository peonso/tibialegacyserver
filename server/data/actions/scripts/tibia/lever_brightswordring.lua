function onUse(cid, item, fromPosition, itemEx, toPosition)

	local ringPos = {x=32594, y=32214, z=9, stackpos=1}
	local ringItem = getTileItemById(ringPos, 2166)
	local wallPos0 = {x=32593, y=32216, z=9, stackpos=1}
	local nextTile0 = {x=wallPos0.x, y=wallPos0.y+1, z=wallPos0.z, stackpos=1}
	local wallPos1 = {x=wallPos0.x+1, y=wallPos0.y, z=wallPos0.z, stackpos=1}
	local nextTile1 = {x=wallPos0.x+1, y=wallPos0.y+1, z=wallPos0.z, stackpos=1}
	local wallPos8 = {x=wallPos0.x+8, y=wallPos0.y, z=wallPos0.z, stackpos=1}
	local wallPos9 = {x=wallPos0.x+9, y=wallPos0.y, z=wallPos0.z, stackpos=1}
	local wallPos10 = {x=wallPos0.x+10, y=wallPos0.y, z=wallPos0.z, stackpos=1}
	local nextTile10 = {x=wallPos0.x+10, y=wallPos0.y+1, z=wallPos0.z, stackpos=1}
	local wallPos11 = {x=wallPos0.x+11, y=wallPos0.y, z=wallPos0.z, stackpos=1}
	local nextTile11 = {x=wallPos0.x+11, y=wallPos0.y+1, z=wallPos0.z, stackpos=1}
	local wallPos13 = {x=wallPos0.x+13, y=wallPos0.y, z=wallPos0.z, stackpos=1}
	local wallPos14 = {x=wallPos0.x+14, y=wallPos0.y, z=wallPos0.z, stackpos=1}
	
	if item.itemid == 1945 and ringItem.itemid == 2166 then
		doSendMagicEffect(ringPos, CONST_ME_GREEN_RINGS)
		doRemoveItem(ringItem.uid,1)
		doRelocate(wallPos0, nextTile0)
		doCreateItem(1026,1,wallPos0)
		doRelocate(wallPos1, nextTile1)
		doCreateItem(1026,1,wallPos1)
		local wallItem8 = getThingfromPos(wallPos8)
		doTransformItem(wallItem8.uid,1207)
		local wallItem9 = getThingfromPos(wallPos9)
		doTransformItem(wallItem9.uid,1208)
		doRelocate(wallPos10, nextTile10)
		local wallItem10 = getThingfromPos(wallPos10)
		doTransformItem(wallItem10.uid,1026)
		doRelocate(wallPos11, nextTile11)
		local wallItem11 = getThingfromPos(wallPos11)
		doTransformItem(wallItem11.uid,1026)
		local wallItem13 = getTileItemById(wallPos13, 1026)
		doRemoveItem(wallItem13.uid,1)
		local wallItem14 = getTileItemById(wallPos14, 1026)
		doRemoveItem(wallItem14.uid,1)
		doTransformItem(item.uid,item.itemid+1)
	elseif item.itemid == 1946 and ringItem.itemid == 2166 then
		doSendMagicEffect(ringPos, CONST_ME_GREEN_RINGS)
		doRemoveItem(ringItem.uid,1)
		local wallItem0 = getThingfromPos(wallPos0)
		doRemoveItem(wallItem0.uid,1)
		local wallItem1 = getThingfromPos(wallPos1)
		doRemoveItem(wallItem1.uid,1)
		local wallItem8 = getThingfromPos(wallPos8)
		doTransformItem(wallItem8.uid,1026)
		local wallItem9 = getThingfromPos(wallPos9)
		doTransformItem(wallItem9.uid,1026)
		local wallItem10 = getThingfromPos(wallPos10)
		doTransformItem(wallItem10.uid,1207)
		local wallItem11 = getThingfromPos(wallPos11)
		doTransformItem(wallItem11.uid,1208)
		doCreateItem(1026,1,wallPos13)
		doCreateItem(1026,1,wallPos14)
		doTransformItem(item.uid,item.itemid-1)
	else
		doSendMagicEffect(ringPos, CONST_ME_POFF)
	end
	
	return true
end