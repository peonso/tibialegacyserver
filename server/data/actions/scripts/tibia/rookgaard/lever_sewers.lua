-- by Nottinghster

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local posTel = {x=32102, y=32205, z=8}
	local posBridge = {
		[1] = {x=32100, y=32205, z=8},
		[2] = {x=32101, y=32205, z=8}
		}
	local switches = {
		[1] = {x=32098, y=32204, z=8},
		[2] = {x=32104, y=32204, z=8}
		}
		
	if item.itemid == 1945 then
		doCreateItem(1284,posBridge[1])
		doCreateItem(1284,posBridge[2]) 
		for i=1,#switches do
			if switches[i].x == fromPosition.x then
				o = i
			end
		end
		if o == 1 then
			b = 2
		else
			b = 1
		end
		doTransformItem(item.uid,item.itemid+1)
		doTransformItem(getTileItemById(switches[b],1945).uid,1946)
	elseif item.itemid == 1946 then
		for p = 1,#posBridge do
			doRelocate(posBridge[p], posTel)
		end
		for z = 1,#posBridge do
			posBridge[z].stackpos = 1
			if getThingfromPos(posBridge[z]).itemid > 1000 then
				doRemoveItem(getThingfromPos(posBridge[z]).uid)
			end
		end	
		for i=1,#switches do
			if switches[i].x == toPosition.x then
				o = i
			end
		end
		if o == 1 then
			b = 2
		else
			b = 1
		end
		doCreateItem(493,posBridge[1])
		doCreateItem(493,posBridge[2])
		doCreateItem(4799,posBridge[1])
		doCreateItem(4797,posBridge[2])	
		doTransformItem(item.uid,item.itemid-1)
		doTransformItem(getTileItemById(switches[b],1946).uid,1945)
	end
	
	return true
end 