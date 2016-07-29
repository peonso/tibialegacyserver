-- by Nottinghster

function onUse(cid, item, fromPosition, itemEx, toPosition)

-- Variáveis
local Player = Actor.create(cid)
local bagContainer = Item.create(doCreateItemEx(1987))

if item.uid == 1655 then
	if Player:HasQuestValue(1655) == false or Player:GetAccess() == 0 then
		bagContainer:AddContainerItem(2396,1)
		bagContainer:AddContainerItem(2409,1)
		Player:SetQuestValue(1655,1)
	else
		Player:SendMessage(MESSAGE_INFO_DESCR, "The chest is empty.")
	end
end

	return true
end	