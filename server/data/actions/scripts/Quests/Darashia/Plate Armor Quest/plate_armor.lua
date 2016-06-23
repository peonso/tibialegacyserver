function onUse(cid, item, frompos, item2, topos)

local queststatus = getPlayerStorageValue(cid,10066)
local itemWeight = getItemWeightById(item.uid, 1)
local playerCap = getPlayerFreeCap(cid)

if item.uid == 10066 then
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
	if playerCap >= itemWeight then
		doPlayerSendTextMessage(cid,22,'You have found a ' .. getItemName(item.uid) .. '.')
		item_uid = doPlayerAddItem(cid,2463,1)
		setPlayerStorageValue(cid,10066,1)
	else
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'You have found a ' .. getItemName(item.uid) .. ' weighing ' .. itemWeight .. ' oz it\'s too heavy.')
	end	
  else
	doPlayerSendTextMessage(cid,22,"The wooden coffin is empty.")
  end
else
  return FALSE
end

return TRUE
end