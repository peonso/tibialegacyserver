-- by Nottinghster

function onUse(cid, item, frompos, item2, topos)

aID = 777
ticks = 5 * 60000 -- 5 minutes
topos = {x=topos.x, y=topos.y, z=topos.z}
GRASS = {4526, 4527, 4528, 4529, 4530, 4531, 4532, 4533, 4534, 4535, 4536, 4537, 4538, 4529, 4540, 4541, 4567, 4568, 4569, 4756}
DIRT = {351, 352, 353, 354, 355}
SNOW = {671}
FRAGILE_ICE	= 7200
ICE_FISHHOLE =	7236

if item2.actionid == aID then
	if isInArray(GRASS, item2.itemid) == 1 then
		doTransformItem(item2.uid,470)
		doDecayItemTo(topos, item2.itemid, ticks)
		doSendMagicEffect(topos, CONST_ME_POFF)
	elseif isInArray(DIRT, item2.itemid) == 1 then
		doTransformItem(item2.uid,383)
		doDecayItemTo(topos, item2.itemid, ticks)
		doSendMagicEffect(topos, CONST_ME_POFF)
	elseif item2.itemid == 231 then
		doTransformItem(item2.uid,482)
		doDecayItemTo(topos, item2.itemid, ticks)
		doSendMagicEffect(topos, CONST_ME_POFF)
	elseif item2.itemid == 1304 then
		doRemoveItem(item2.uid,1)
		doSendMagicEffect(topos, CONST_ME_POFF)
	elseif isInArray(SNOW, item2.itemid) == 1 then
		doTransformItem(item2.uid,485)
		doDecayItemTo(topos, item2.itemid, ticks)
		doSendMagicEffect(topos, CONST_ME_POFF)
	elseif item2.itemid == FRAGILE_ICE then
		doTransformItem(item2.uid, ICE_FISHHOLE)
		doSendMagicEffect(toPosition, CONST_ME_BLOCKHIT)
	else
		doCreateItem(3324, 1, topos)
		doDecayItemTo(topos, 0, ticks) 
	end
elseif item2.itemid == 7200 then
	doTransformItem(item2.uid,7236)
end
return true
end