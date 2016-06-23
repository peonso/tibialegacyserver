function onStepIn(cid, item, pos)

-- CERTOS
local A = {x=32827, y=32314, z=9}
local B = {x=32841, y=32323, z=9}
local F = {x=32855, y=32295, z=9}
local G = {x=32840, y=32317, z=9}
local I = {x=32854, y=32323, z=9}
local J = {x=32858, y=32296, z=9}
local K = {x=32856, y=32289, z=9}

-- ERRADOS
local C = {x=32861, y=32301, z=9}
local H = {x=32827, y=32308, z=9}	
local E = {x=32839, y=32321, z=9}
local X = {x=32854, y=32319, z=9}
local D = {x=32848, y=32287, z=9}

    if item.actionid == 28810 then
		doTeleportThing(cid,A)
        elseif item.actionid == 28811 then
		doTeleportThing(cid,B)
		elseif item.actionid == 28813 then
		doTeleportThing(cid,F)
		elseif item.actionid == 28814 then
		doTeleportThing(cid,G)
		elseif item.actionid == 28815 then
		doTeleportThing(cid,I)
		elseif item.actionid == 28816 then
		doTeleportThing(cid,J)
		elseif item.actionid == 28817 then
		doTeleportThing(cid,K)
		elseif item.actionid == 28819 then
		doTeleportThing(cid,C)
		elseif item.actionid == 28820 then
		doTeleportThing(cid,H)
		elseif item.actionid == 28821 then
		doTeleportThing(cid,E)
		elseif item.actionid == 28822 then
		doTeleportThing(cid,X)
		elseif item.actionid == 28823 then
		doTeleportThing(cid,D)		
	end
		
return TRUE
end		