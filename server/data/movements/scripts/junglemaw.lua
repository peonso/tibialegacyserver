-- by Nottinghster

function onStepIn(cid, item, pos)
	doTargetCombatHealth(0, cid, COMBAT_POISONDAMAGE, -30, -30, CONST_ME_POFF)
	doTransformItem(item.uid, item.itemid + 1)
	return true
end

function onAddItem(moveitem, tileitem, position)
	doTransformItem(tileitem.uid, tileitem.itemid + 1)
	doSendMagicEffect(position, CONST_ME_POFF)
	return true
end