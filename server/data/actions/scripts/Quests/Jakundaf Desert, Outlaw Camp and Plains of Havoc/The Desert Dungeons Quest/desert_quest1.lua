function onUse(cid, item, frompos, item2, topos)
--by Rodrigo--

druid_endpos = {x=32672, y=32069, z=8, stackpos=255} --onde o player1 sera teleportado quando a alavanca for puxada
paladin_endpos = {x=32671, y=32070, z=8, stackpos=255} --onde o player2 sera teleportado quando a alavanca for puxada
sorcerer_endpos = {x=32671, y=32069, z=8, stackpos=255} --onde o player3 sera teleportado quando a alavanca for puxada
knight_endpos = {x=32672, y=32070, z=8, stackpos=255} --onde o player4 sera teleportado quando a alavanca for puxada

druidpos = {x=32669, y=32089, z=8, stackpos=253} --posicao do player1
paladinpos = {x=32673, y=32085, z=8, stackpos=253} --posicao do player2
sorcererpos = {x=32677, y=32089, z=8, stackpos=253} --posicao do player3
knightpos = {x=32673, y=32093, z=8, stackpos=253} --posicao do player4

druid = getThingfromPos(druidpos)
paladin = getThingfromPos(paladinpos)
sorcerer = getThingfromPos(sorcererpos)
knight = getThingfromPos(knightpos)

applepos = {x=32667, y=32089, z=8, stackpos=2} --applepos
crossbowpos = {x=32673, y=32083, z=8, stackpos=2} --crossbowpos
spellbookpos = {x=32679, y=32089, z=8, stackpos=2} --spellbookpos
swordpos = {x=32673, y=32094, z=8, stackpos=2} --swordpos

apple = getThingfromPos(applepos)
crossbow = getThingfromPos(crossbowpos)
spellbook = getThingfromPos(spellbookpos)
sword = getThingfromPos(swordpos)

if item.uid == 8890 and item.itemid == 1945 and apple.itemid == 2674 and crossbow.itemid == 2455 and spellbook.itemid == 2175 and sword.itemid == 2376 and druid.itemid > 0 and paladin.itemid > 0 and sorcerer.itemid > 0 and knight.itemid > 0 and getPlayerVocation(druid.uid) == 2 or getPlayerVocation(druid.uid) == 6 and getPlayerVocation(paladin.uid) == 3 or getPlayerVocation(paladin.uid) == 7 and getPlayerVocation(sorcerer.uid) == 1 or getPlayerVocation(sorcerer.uid) == 5 and getPlayerVocation(knight.uid) == 4 or getPlayerVocation(knight.uid) == 8 then

doRemoveItem(apple.uid,1)
doSendMagicEffect(applepos,13)
doRemoveItem(crossbow.uid,1)
doSendMagicEffect(crossbowpos,13)
doRemoveItem(spellbook.uid,1)
doSendMagicEffect(spellbookpos,13)
doRemoveItem(sword.uid,1)
doSendMagicEffect(swordpos,13)

doTeleportThing(druid.uid,druid_endpos)
doSendMagicEffect(druidpos,10)
doSendMagicEffect(druid_endpos,10)

doTeleportThing(paladin.uid,paladin_endpos)
doSendMagicEffect(paladinpos,10)
doSendMagicEffect(paladin_endpos,10)

doTeleportThing(sorcerer.uid,sorcerer_endpos)
doSendMagicEffect(sorcererpos,10)
doSendMagicEffect(sorcerer_endpos,10)

doTeleportThing(knight.uid,knight_endpos)
doSendMagicEffect(knightpos,10)
doSendMagicEffect(knight_endpos,10)

doTransformItem(item.uid,item.itemid+1)
else
doPlayerSendCancel(cid, 'Sorry not possible.')

if item.uid == 8890 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
end
return TRUE
end
end