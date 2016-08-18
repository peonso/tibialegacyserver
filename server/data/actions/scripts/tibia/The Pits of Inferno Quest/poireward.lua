-- 10544 = PoI Arcane Staff.
-- 10545 = PoI Epee.
-- 10546 = PoI Crystal Arrow.
-- 10547 = PoI Soft Boots.
-- 10548 = PoI BackPack of Holding.
-- 10549 = PoI Panda Bear.
-- 10550 = PoI Frozen Starlight.
-- 10551 = PoI Ornamented Ankh
-- 10552 = Holy Tible

function onUse(cid, item, fromPosition, itemEx, toPosition)

	if item.uid == 10544 then
if getPlayerStorageValue(cid,10544) == -1 and getPlayerAccess(cid) == 0 then
 	doPlayerSendTextMessage(cid,22,"You have chosen an arcane staff.")
 	doPlayerAddItem(cid,2453,1)
 	setPlayerStorageValue(cid,10544,1)
 else
 	doPlayerSendTextMessage(cid,22,"The chest is empty.")
 end
 
	elseif item.uid == 10545 then
if getPlayerStorageValue(cid,10544) == -1 and getPlayerAccess(cid) == 0 then
 	doPlayerSendTextMessage(cid,22,"You have chosen an epee.")
 	doPlayerAddItem(cid,2438,1)
 	setPlayerStorageValue(cid,10544,1)
 else
 	doPlayerSendTextMessage(cid,22,"The chest is empty.")
 end
 
 	elseif item.uid == 10546 then
if getPlayerStorageValue(cid,10544) == -1 and getPlayerAccess(cid) == 0 then
 	doPlayerSendTextMessage(cid,22,"You have chosen a crystal arrow.")
 	doPlayerAddItem(cid,2352,1)
 	setPlayerStorageValue(cid,10544,1)
 else
 	doPlayerSendTextMessage(cid,22,"The chest is empty.")
 end
 
	elseif item.uid == 10547 then
if getPlayerStorageValue(cid,10547) == -1 and getPlayerAccess(cid) == 0 then
 	doPlayerSendTextMessage(cid,22,"You have found a pair of soft boots.")
 	doPlayerAddItem(cid,2358,1)
 	setPlayerStorageValue(cid,10547,1)
 else
 	doPlayerSendTextMessage(cid,22,"The chest is empty.")
 end

	elseif item.uid == 10548 then
ids = {2273, 2268, 2313, 2311}
charges = {10, 10, 30, 50}
if getPlayerStorageValue(cid,10548) == -1 and getPlayerAccess(cid) == 0 then
 	setPlayerStorageValue(cid,10548,1)
	doPlayerSendTextMessage(cid,22,"You have found a backpack.")
		bp = doPlayerAddItem(cid, 1988, 1)
		for i = 1, #ids do
			doAddContainerItem(bp, ids[i], charges[i])
		end
	else
doPlayerSendTextMessage(cid,22,"The chest is empty.")
	end 


	elseif item.uid == 10549 then
if getPlayerStorageValue(cid,10549) == -1 and getPlayerAccess(cid) == 0 then
 	doPlayerSendTextMessage(cid,22,"You have found a panda bear.")
 	doPlayerAddItem(cid,5080,1)
 	setPlayerStorageValue(cid,10549,1)
 else
 	doPlayerSendTextMessage(cid,22,"The chest is empty.")
 end
	elseif item.uid == 10550 then
if getPlayerStorageValue(cid,10550) == -1 and getPlayerAccess(cid) == 0 then
 	doPlayerSendTextMessage(cid,22,"You have found a frozen starlight.")
 	doPlayerAddItem(cid,2361,1)
 	setPlayerStorageValue(cid,10550,1)
 else
 	doPlayerSendTextMessage(cid,22,"The chest is empty.")
 end
 
 	elseif item.uid == 10551 then
if getPlayerStorageValue(cid,10551) == -1 and getPlayerAccess(cid) == 0 then
 	doPlayerSendTextMessage(cid,22,"You have found a ornamented ankh.")
 	doPlayerAddItem(cid,2354,1)
 	setPlayerStorageValue(cid,10551,1)
 else
 	doPlayerSendTextMessage(cid,22,"The chest is empty.")
 end
	elseif item.uid == 10552 then
 
if getPlayerStorageValue(cid,10552) == -1 then
 	doPlayerSendTextMessage(cid,22,"You have found the Holy Tible.")
 	local book = doPlayerAddItem(cid,1970,1)
 	doSetItemText(book,"Banor I praise your name.\nBe with me in the battle.\nBe my shield, let me be your sword.\nI will honour the godly spark in my soul. May it flourish and grow.")
 	setPlayerStorageValue(cid,10552,1)
 else
 	doPlayerSendTextMessage(cid,22,"The chest is empty.")
 end

end
return true
end