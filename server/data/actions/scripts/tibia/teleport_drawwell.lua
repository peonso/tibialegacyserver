function onUse(cid, item, fromPosition, itemEx, toPosition)
	local config = {
		[1] = {wellPos={x=32353,y=32131,z=08}, tpPos={x=32354,y=32131,z=09}},
		[2] = {wellPos={x=32354,y=32131,z=08}, tpPos={x=32354,y=32131,z=09}},
		[3] = {wellPos={x=32171,y=32439,z=07}, tpPos={x=32172,y=32439,z=08}},
		[4] = {wellPos={x=32172,y=32439,z=07}, tpPos={x=32172,y=32439,z=08}},
		[5] = {wellPos={x=32507,y=32176,z=13}, tpPos={x=32508,y=32176,z=14}},
		[6] = {wellPos={x=32508,y=32176,z=13}, tpPos={x=32508,y=32176,z=14}}
	}

	for i=1,#config do
		local wellPos = config[i].wellPos
		if wellPos.x == toPosition.x and wellPos.y == toPosition.y and wellPos.z == toPosition.z then
			doTeleportThing(cid,config[i].tpPos)
		end
	end

	return true
end