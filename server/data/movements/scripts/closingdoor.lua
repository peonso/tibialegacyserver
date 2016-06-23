-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Movement Scripts)

function onStepOut(cid, item, pos)
	if(item.actionid == 0) then
		return TRUE
	end

	local topos = getPlayerPosition(cid)
	doRelocate(pos, topos)

	local tmpPos = {x=pos.x, y=pos.y, z=pos.z, stackpos=-1}
	local tileCount = getTileThingByPos(tmpPos)
	local i = 1
	local tmpItem = {uid = 1}

	while(tmpItem.uid ~= 0 and i < tileCount) do
		tmpPos.stackpos = i
		tmpItem = getTileThingByPos(tmpPos)
		if(tmpItem.uid ~= item.uid and tmpItem.uid ~= 0) then
			doRemoveItem(tmpItem.uid)
		else
			i = i + 1
		end
	end

	doTransformItem(item.uid, item.itemid-1)
	return TRUE
end