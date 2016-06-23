-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Movement Scripts)

function onStepIn(cid, item, position)

local newposition = {x = position.x, y = position.y+1, z = position.z}
local Player = Actor.create(cid)

if Player:GetLevel() < 2 then
  Player:Teleport(newposition)
  Player:MagicEffect(newposition, 12)
end

	return TRUE
end