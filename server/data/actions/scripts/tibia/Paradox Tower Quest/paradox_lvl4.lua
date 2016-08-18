function onUse(cid, item, fromPosition, itemEx, toPosition)

	local food1 = {x=32476, y=31900, z=4, stackpos=255}
	local food2 = {x=32477, y=31900, z=4, stackpos=255}
	local food3 = {x=32478, y=31900, z=4, stackpos=255}
	local food4 = {x=32479, y=31900, z=4, stackpos=255}
	local food5 = {x=32480, y=31900, z=4, stackpos=255}
	local food6 = {x=32481, y=31900, z=4, stackpos=255}

	local getfood1 = getThingfromPos(food1)
	local getfood2 = getThingfromPos(food2)
	local getfood3 = getThingfromPos(food3)
	local getfood4 = getThingfromPos(food4)
	local getfood5 = getThingfromPos(food5)
	local getfood6 = getThingfromPos(food6)
	
	local ladderpos = {x=32478, y=31904, z=4, stackpos=255}
	local getladder = getThingfromPos(ladderpos)

	if item.actionid == 50007 and item.itemid == 1945 and getfood1.itemid == 2682 and getfood2.itemid == 2676 and getfood3.itemid == 2679 and getfood4.itemid == 2674 and getfood5.itemid == 2681 and getfood6.itemid == 2678 then
		doCreateItem(1386,1,ladderpos)
		doRemoveItem(getfood1.uid,1)
		doRemoveItem(getfood2.uid,1)
		doRemoveItem(getfood3.uid,1)
		doRemoveItem(getfood4.uid,1)
		doRemoveItem(getfood5.uid,1)
		doRemoveItem(getfood6.uid,1)
		doSendMagicEffect(food1, 12)
		doSendMagicEffect(food2, 12)
		doSendMagicEffect(food3, 12)
		doSendMagicEffect(food4, 12)
		doSendMagicEffect(food5, 12)
		doSendMagicEffect(food6, 12)
		doTransformItem(item.uid,item.itemid+1)
	elseif item.actionid == 50007 and item.itemid == 1946 then
		doRemoveItem(getThingfromPos({x=32478, y=31904, z=4, stackpos=1}).uid, 1386)
		doTransformItem(item.uid,item.itemid-1)
	end
	
	return true
end