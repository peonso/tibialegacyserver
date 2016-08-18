-- by Nottinghster

function onStepIn(cid, item, pos)

	local trap = {x=32497, y=31888, z=7, stackpos=1}
		
	if item.actionid == 50006 then
		doCreatureAddHealth(cid, -200)
		doSendMagicEffect(trap,16)
		doSendAnimatedText(getCreaturePosition(cid), '200', TEXTCOLOR_RED)
	end
	
	return true
end