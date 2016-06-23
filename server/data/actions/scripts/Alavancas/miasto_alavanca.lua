-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

function onUse(cid, item, frompos, item2, topos)

local telepos = {x=32816, y=32312, z=7, stackpos=1}
local gopos = {x=496, y=492, z=8, stackpos=1}

local gettele = getThingfromPos(telepos)

    if item.uid == 8551 and item.itemid == 1945 then
        doTransformItem(item.uid,item.itemid+1)
        doCreateTeleport(1387, gopos, telepos)
    elseif item.uid == 8551 and item.itemid == 1946 then
        doTransformItem(item.uid,item.itemid-1)
        doRemoveItem(gettele.uid,1)
    else
        doPlayerSendCancel(cid,"Sorry, not possible.")
    end
    
return TRUE
end
