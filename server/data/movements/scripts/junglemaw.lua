-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Movement Scripts)

function onStepIn(cid, item, pos)
	doTargetCombatHealth(0, cid, COMBAT_POISONDAMAGE, -30, -30, CONST_ME_POFF)
	doTransformItem(item.uid, item.itemid + 1)
	return TRUE
end

function onAddItem(moveitem, tileitem, position)
	doTransformItem(tileitem.uid, tileitem.itemid + 1)
	doSendMagicEffect(position, CONST_ME_POFF)
	return TRUE
end