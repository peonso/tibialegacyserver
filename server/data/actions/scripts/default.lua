function isBreakingTool(item)
	local t = getItemWeaponTypeByUID(item.uid)
	return (t == WEAPON_SWORD) or (t == WEAPON_CLUB) or (t == WEAPON_AXE)
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if BREAKABLE_BY_WEAPONS[itemEx.itemid] ~= nil and isBreakingTool(item) then
		local chance = BREAKABLE_BY_WEAPONS[itemEx.itemid].chance or 20
		if math.random(100) <= chance then
			doTransformItem(itemEx.uid, BREAKABLE_BY_WEAPONS[itemEx.itemid].remainings)
			doDecayItem(itemEx.uid)
			if itemEx.actionid ~= 0 then
				doSetItemActionId(itemEx.uid, itemEx.actionid)
			end
		end
		doSendMagicEffect(toPosition, CONST_ME_POFF)
		return true
	end

	return false
end
