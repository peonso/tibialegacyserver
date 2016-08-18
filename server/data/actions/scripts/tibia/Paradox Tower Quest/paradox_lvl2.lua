function onUse(cid, item, fromPosition, itemEx, toPosition)

	switch1pos = {x=32476, y=31900, z=6, stackpos=1}
	switch2pos = {x=32477, y=31900, z=6, stackpos=1}
	switch3pos = {x=32478, y=31900, z=6, stackpos=1}
	switch4pos = {x=32479, y=31900, z=6, stackpos=1}
	switch5pos = {x=32480, y=31900, z=6, stackpos=1}
	switch6pos = {x=32481, y=31900, z=6, stackpos=1}
	ladderpos = {x=32477, y=31905, z=6, stackpos=1}

	getswitch1 = getThingfromPos(switch1pos)
	getswitch2 = getThingfromPos(switch2pos)
	getswitch3 = getThingfromPos(switch3pos)
	getswitch4 = getThingfromPos(switch4pos)
	getswitch5 = getThingfromPos(switch5pos)
	getswitch6 = getThingfromPos(switch6pos)
	ladder = getThingfromPos(ladderpos)

	if item.actionid == 50002 and item.itemid == 1945 and
		getswitch1.itemid == 1946 and
		getswitch2.itemid == 1946 and
		getswitch3.itemid == 1945 and
		getswitch4.itemid == 1945 and
		getswitch5.itemid == 1946 and
		getswitch6.itemid == 1945 then
		doCreateItem(1386,1,ladderpos)
		doTransformItem(item.uid,item.itemid+1)
	elseif item.actionid == 50002 and item.itemid == 1946 then
		doRemoveItem(getThingfromPos({x=32477, y=31905, z=6, stackpos=1}).uid, 1386)
		doTransformItem(item.uid,item.itemid-1)
	else
		return false
	end

	return true
end
