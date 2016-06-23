-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

function onUse(cid, item, frompos, item2, topos)

-- Bowl Verde
if item2.itemid == 2572 then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You received 7 days of premium account. Please login again!")
doPlayerAddPremiumDays(cid, 7)
doPlayerAddVipDays(cid, 7)
doRemoveItem(item.uid,1)
setPlayerStorageValue(cid, 30011, 1)

-- Bowl Prata
elseif item2.itemid == 2571 then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You received 15 days of premium account. Please login again!")
doPlayerAddPremiumDays(cid, 15)
doPlayerAddVipDays(cid, 15)
doRemoveItem(item.uid,1)
setPlayerStorageValue(cid, 30011, 1)

-- Bowl Ouro
elseif item2.itemid == 2573 then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You received 30 days of premium account. Please login again!")
doPlayerAddPremiumDays(cid, 30)
doPlayerAddVipDays(cid, 30)
doRemoveItem(item.uid,1)
setPlayerStorageValue(cid, 30011, 1)

-- Spy Report
elseif item2.itemid == 2345 then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You received 60 days of premium account. Please login again!")
doPlayerAddPremiumDays(cid, 60)
doPlayerAddVipDays(cid, 60)
doRemoveItem(item.uid,1)
setPlayerStorageValue(cid, 30011, 1)

end

return TRUE
end