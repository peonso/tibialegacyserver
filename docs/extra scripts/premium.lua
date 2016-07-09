-- by Nottinghster
--	actions.xml
-- 	<action itemid="2571" script="premium.lua" />
--	<action itemid="2572" script="premium.lua" />
--	<action itemid="2573" script="premium.lua" />
--	<action itemid="2345" script="premium.lua" />

function onUse(cid, item, frompos, item, topos)

	-- green bowl
	if item.itemid == 2572 then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You received 7 days of premium account. Please login again!")
		doPlayerAddPremiumDays(cid, 7)
		doRemoveItem(item.uid,1)

	-- silver bowl
	elseif item.itemid == 2571 then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You received 15 days of premium account. Please login again!")
		doPlayerAddPremiumDays(cid, 15)
		doRemoveItem(item.uid,1)

	-- gold bowl
	elseif item.itemid == 2573 then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You received 30 days of premium account. Please login again!")
		doPlayerAddPremiumDays(cid, 30)
		doRemoveItem(item.uid,1)

	-- spy report
	elseif item.itemid == 2345 then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You received 60 days of premium account. Please login again!")
		doPlayerAddPremiumDays(cid, 60)
		doRemoveItem(item.uid,1)
	end

	return true
end