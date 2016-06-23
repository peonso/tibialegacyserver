-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

function onUse(cid, item, frompos, item2, topos)

-- Variáveis
local Player = Actor.create(cid)
local bagContainer = Item.create(doCreateItemEx(1987))

if item.uid == 1655 then
	if Player:HasQuestValue(1655) == FALSE or Player:GetAccess() == 0 then
		bagContainer:AddContainerItem(2396,1)
		bagContainer:AddContainerItem(2409,1)
		Player:SetQuestValue(1655,1)
	else
		Player:SendMessage(MESSAGE_INFO_DESCR, "The chest is empty.")
	end
end

	return TRUE
end	