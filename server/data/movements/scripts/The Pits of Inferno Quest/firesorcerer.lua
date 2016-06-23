local zabierz = 300
local kolor = TEXTCOLOR_RED

function onStepIn(cid, item, frompos, item2, topos) 

local zycie = getCreatureHealth(cid)
local topos = getPlayerPosition(cid)

if item.actionid == 9880 and isSorcerer(cid) == FALSE then
doCreatureAddHealth(cid, -zabierz)
doSendAnimatedText(topos, zabierz, kolor)
doPlayerSay(cid, "You have choosen the wrong path! Don't move on!", 16)
doSendMagicEffect(getPlayerPosition(cid), 15)

elseif item.actionid == 9880 and isSorcerer(cid) == TRUE then
doCreatureAddHealth(cid, -zabierz)
doSendAnimatedText(topos, zabierz, kolor)
doSendMagicEffect(getPlayerPosition(cid), 15)
end

return 1
end