function onUse(cid, item, fromPosition, itemEx, toPosition)
	
CratePos = {x=32479, y=31900, z=5, stackpos=1}

if item.actionid == 127 and item.itemid == 1945 then
	doCreateItem(1739,1,CratePos)
	doTransformItem(item.uid,item.itemid+1)	
else
	doPlayerSendCancel(cid,"The switch seems to be stuck.")
end

	return true
end