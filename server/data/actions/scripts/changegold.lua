-- by Nottinghster

function onUse(cid, item, frompos, item2, topos)
	if isPremium(cid) == TRUE then
		if item.itemid == 2148 and item.type == 100 then
			doChangeTypeItem(item.uid, item.type-item.type)
			doPlayerAddItem(cid, 2152, 1)
			doSendAnimatedText(frompos, "$$$", 89)
		elseif item.itemid == 2152 and item.type == 100 then
			doChangeTypeItem(item.uid, item.type-item.type)
			doPlayerAddItem(cid, 2160, 1)
			doSendAnimatedText(frompos, "$$$", 65)
		elseif item.itemid == 2152 and item.type < 100 then
			doChangeTypeItem(item.uid, item.type-1)
			doPlayerAddItem(cid, 2148, 100)
			doSendAnimatedText(frompos, "$$$", 210)
		elseif item.itemid == 2160 then
			doChangeTypeItem(item.uid, item.type-1)
			doPlayerAddItem(cid, 2152, 100)
			doSendAnimatedText(frompos, "$$$", 89)
		end
	else
		doPlayerSendCancel(cid, "Only premium players can change gold.")
	end		

	return true
end
