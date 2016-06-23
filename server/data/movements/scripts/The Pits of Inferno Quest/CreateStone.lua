function onStepIn(cid, item, frompos, item2, topos) 
	wall1 = {x=32827, y=32273, z=11, stackpos=1}
	getwall1 = getThingfromPos(wall1)

	if item.uid == 10257 then
		doCreateItem(1304,1,wall1)
end
end