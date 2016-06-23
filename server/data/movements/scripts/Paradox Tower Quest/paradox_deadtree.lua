-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Movement Scripts)

function onStepIn(cid, item, pos)

local trap = {x=32497, y=31888, z=7, stackpos=1}
		
if item.actionid == 128 then
doCreatureAddHealth(cid, -200)
doSendMagicEffect(trap,16)
doSendAnimatedText(getCreaturePosition(cid), '200', TEXTCOLOR_RED)
end
return TRUE
end