function onUse(cid, item, fromPosition, itemEx, toPosition)

Player = Actor.create(cid)
Item = Item.create(item.uid)

if Item:GetItem().uid == 1023 then
	Player:SetQuest("chest", 1023, 2384, 1)
end	

	return true
end