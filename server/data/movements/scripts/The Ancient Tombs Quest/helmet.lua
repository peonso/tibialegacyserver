-- The Ancients Tomb Quest (Helmet) by Nottinghster
function onStepIn(cid, item, position)
	if isPlayer(cid) == true then 
		local it = {} 
		for i = 2335, 2341 do 
			local _i = getTileItemById({x=33198, y=32876, z=11}, i).uid 
			if _i > 0 then table.insert(it, _i) else return end 
		end 
		for _, v in ipairs(it) do		
			doRemoveItem(v) 
		end 
		doCreateItem(2342, 1, {x=33198, y=32876, z=11}) 
		doSendMagicEffect({x=33198, y=32876, z=11}, CONST_ME_FIREAREA) 
	end 
end