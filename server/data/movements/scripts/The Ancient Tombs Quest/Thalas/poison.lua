function onStepIn(cid, item, pos)
		
if item.actionid == 6015 then
doAddCondition(cid, CONDITION_POISON)
doSendMagicEffect(getCreaturePosition(cid),8)
setPlayerStorageValue(cid, 10051, 1)
end
return true
end