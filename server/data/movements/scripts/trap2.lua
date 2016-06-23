-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Movement Scripts)

function onStepIn(cid, item, pos)

hp = math.random(25, 100)
chance = math.random(1, 3)

if isPlayer(cid) == 1 then
if chance == 1 or chance == 2 then

doPlayerAddHealth(cid,-hp)
doSendMagicEffect(pos, 2)
doSendAnimatedText(getCreaturePosition(cid), hp, TEXTCOLOR_RED)
doTransformItem(item.uid,1513)
end
end
return TRUE
end


function onStepOut(cid, item, pos)

doTransformItem(item.uid,1512)
return TRUE
end