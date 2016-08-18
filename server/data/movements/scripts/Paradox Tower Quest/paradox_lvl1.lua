function ChangeBack(cid)
	doTransformItem(getThingfromPos({x=32478, y=31902, z=7, stackpos=1}).uid, 1304)
end

function onStepIn(cid, item, pos)
	if item.actionid == 50003 and 
		getThingfromPos({x=32478, y=31906, z=7, stackpos=1}).itemid == 2782 and 
		getThingfromPos({x=32478, y=31902, z=7, stackpos=1}).itemid == 1304 then
		addEvent(ChangeBack, 45000, cid)
		doTransformItem(getThingfromPos({x=32478, y=31902, z=7, stackpos=1}).uid, 1385)
	else
		doPlayerSendCancel(cid," ")
	end
	return true
end