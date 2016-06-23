function onUse(cid, item, frompos, item2, topos)

Player = Actor.create(cid)
Item = Item.create(item.uid)

if Item:GetItem().uid == 1023 then
	Player:SetQuest("chest", 1023, 2384, 1)
end	

	return TRUE
end