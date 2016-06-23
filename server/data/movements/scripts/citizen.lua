-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Movement Scripts)

function onStepIn(cid, item, position, fromPosition)

    -- Variáveis
    local Player = Actor.create(cid)

	if item.actionid == 6661 then
		Player:SetTown(1)
		Player:SendMessage(MESSAGE_INFO_DESCR, "You are the newest resident of Ab'Dendriel.")
	elseif item.actionid == 6662 then
		Player:SetTown(2)
		Player:SendMessage(MESSAGE_INFO_DESCR, "You are the newest resident of Kazordoon.")
	elseif item.actionid == 6663 then
		Player:SetTown(3)
		Player:SendMessage(MESSAGE_INFO_DESCR, "You are the newest resident of Thais.")
	elseif item.actionid == 6664 then
		Player:SetTown(4)
		Player:SendMessage(MESSAGE_INFO_DESCR, "You are the newest resident of Venore.")
	elseif item.actionid == 6665 then
		Player:SetTown(5)
		Player:SendMessage(MESSAGE_INFO_DESCR, "You are the newest resident of Carlin.")
	elseif item.actionid == 6666 then
		Player:SetTown(6)
		Player:SendMessage(MESSAGE_INFO_DESCR, "You are the newest resident of Ankrahmun.")
	elseif item.actionid == 6667 then
		Player:SetTown(7)
		Player:SendMessage(MESSAGE_INFO_DESCR, "You are the newest resident of Darashia.")
	elseif item.actionid == 6668 then
		Player:SetTown(8)
		Player:SendMessage(MESSAGE_INFO_DESCR, "You are the newest resident of Port Hope.")
	elseif item.actionid == 6669 then
		Player:SetTown(9)
		Player:SendMessage(MESSAGE_INFO_DESCR, "You are the newest resident of Edron.")
	end

	return true
end
