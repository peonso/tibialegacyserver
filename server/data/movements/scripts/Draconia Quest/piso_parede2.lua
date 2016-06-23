-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Movement Scripts)

function onStepIn(cid, item, frompos, item2, topos) 
	wall1 = {x=32795, y=31578, z=5, stackpos=1}
	getwall1 = getThingfromPos(wall1)

	if item.uid == 5679 and item.itemid == 426 then
		doRemoveItem(getwall1.uid,1)
		doTransformItem(item.uid,item.itemid-1)
end
end

function onStepOut(cid, item, frompos, item2, topos)
	wall1 = {x=32795, y=31578, z=5, stackpos=1}
	getwall1 = getThingfromPos(wall1)

	if item.uid == 5679 and item.itemid == 425 then
		doCreateItem(1026,1,wall1)
		doTransformItem(item.uid,item.itemid+1)
	end

	return 1
end