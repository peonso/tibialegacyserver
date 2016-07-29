-- by Nottinghster

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.actionid == 1621 then
		newpos = {x=32172, y=32439, z=8}
		doTeleportThing(cid,newpos)
		return true
	end
end