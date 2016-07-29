function onUse(cid, item, fromPosition, itemEx, toPosition)

if item.actionid == 2551 and item.itemid == 1945 then
doSendMagicEffect({x=32217, y=31845, z=14}, 11)
doSendMagicEffect({x=32218, y=31845, z=14}, 11)
doSendMagicEffect({x=32219, y=31845, z=14}, 11)
doSendMagicEffect({x=32220, y=31845, z=14}, 11)
doSendMagicEffect({x=32217, y=31843, z=14}, 11)
doSendMagicEffect({x=32218, y=31842, z=14}, 11)
doSendMagicEffect({x=32219, y=31841, z=14}, 11)
doTransformItem(item.uid,item.itemid+1)
elseif item.actionid == 2551 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)

elseif item.actionid == 2552 and item.itemid == 1945 then
doSendMagicEffect({x=32217, y=31844, z=14}, 11)
doSendMagicEffect({x=32218, y=31844, z=14}, 11)
doSendMagicEffect({x=32219, y=31843, z=14}, 11)
doSendMagicEffect({x=32220, y=31845, z=14}, 11)
doSendMagicEffect({x=32219, y=31845, z=14}, 11)
doTransformItem(item.uid,item.itemid+1)
elseif item.actionid == 2552 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)

elseif item.actionid == 2553 and item.itemid == 1945 then
doSendMagicEffect({x=32217, y=31842, z=14}, 11)
doSendMagicEffect({x=32219, y=31843, z=14}, 11)
doSendMagicEffect({x=32219, y=31845, z=14}, 11)
doSendMagicEffect({x=32218, y=31844, z=14}, 11)
doSendMagicEffect({x=32217, y=31844, z=14}, 11)
doSendMagicEffect({x=32217, y=31845, z=14}, 11)
doTransformItem(item.uid,item.itemid+1)
elseif item.actionid == 2553 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)

elseif item.actionid == 2554 and item.itemid == 1945 then
doSendMagicEffect({x=32217, y=31845, z=14}, 11)
doSendMagicEffect({x=32218, y=31846, z=14}, 11)
doSendMagicEffect({x=32218, y=31844, z=14}, 11)
doSendMagicEffect({x=32219, y=31845, z=14}, 11)
doSendMagicEffect({x=32220, y=31846, z=14}, 11)
doTransformItem(item.uid,item.itemid+1)
elseif item.actionid == 2554 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)

elseif item.actionid == 2555 and item.itemid == 1945 then
doSendMagicEffect({x=32219, y=31841, z=14}, 11)
doSendMagicEffect({x=32219, y=31842, z=14}, 11)
doSendMagicEffect({x=32219, y=31846, z=14}, 11)
doSendMagicEffect({x=32217, y=31843, z=14}, 11)
doSendMagicEffect({x=32217, y=31844, z=14}, 11)
doSendMagicEffect({x=32217, y=31845, z=14}, 11)
doSendMagicEffect({x=32218, y=31843, z=14}, 11)
doSendMagicEffect({x=32218, y=31845, z=14}, 11)
doTransformItem(item.uid,item.itemid+1)
elseif item.actionid == 2555 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
end

return true
end