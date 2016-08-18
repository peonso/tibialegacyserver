function onUse(cid, item, fromPosition, itemEx, toPosition)

 local tabela = {
                    [1] = {A_item = 2451, pos_lever = {x=32309, y=31975, z=13, stackpos=1}}, 
					[2] = {A_item = 2452, pos_lever = {x=32309, y=31976, z=13, stackpos=1}}, 
					[3] = {A_item = 2453, pos_lever = {x=32311, y=31975, z=13, stackpos=1}}, 
					[4] = {A_item = 2454, pos_lever = {x=32311, y=31976, z=13, stackpos=1}}, 
					[5] = {A_item = 2455, pos_lever = {x=32313, y=31975, z=13, stackpos=1}}, 
					[6] = {A_item = 2456, pos_lever = {x=32313, y=31976, z=13, stackpos=1}}, 
					
				}

for i=1, #tabela do		
    if item.itemid == 1945 and item.actionid == tabela[i].A_item and getThingfromPos(tabela[i].pos_lever).itemid == 1423 then
		doRemoveItem(getThingfromPos(tabela[i].pos_lever).uid,1)
		doTransformItem(item.uid,item.itemid+1)
		doCreateItem(1421, 1, tabela[i].pos_lever)
	elseif item.itemid == 1946 and item.actionid == tabela[i].A_item and getThingfromPos(tabela[i].pos_lever).itemid == 1421 then
		doRemoveItem(getThingfromPos(tabela[i].pos_lever).uid,1)
		doTransformItem(item.uid,item.itemid-1)
		doCreateItem(1423, 1, tabela[i].pos_lever)
	end
end

	return true
end