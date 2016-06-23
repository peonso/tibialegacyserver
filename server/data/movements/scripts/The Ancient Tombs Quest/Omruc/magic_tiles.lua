function onStepIn(cid, item, pos)

if isPlayer(cid) == TRUE and item.actionid == 6001 then
doTeleportThing(cid, {x=33205, y=32956, z=14})
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_RED)
end
return TRUE
end	