function onStepIn(cid, item, pos)

	local exit1 = {x=32566, y=31963, z=1, stackpos=255}

	if item.actionid == 50013 then
		doTeleportThing(cid,exit1)
	end

	return true
end