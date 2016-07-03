function onStepIn(cid, item, pos)
    if item.uid == 10274 then
        if getPlayerStorageValue(cid,10274) == -1 then
            setPlayerStorageValue(cid,10274,1)
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Verminor큦 throne and absorbed some of his spirit.')
			doPlayerSay(cid, "You have touched Verminor큦 throne and absorbed some of his spirit.", TALKTYPE_ORANGE)
        else
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Veminor큦 spirit.')
			doPlayerSay(cid, "You have already absorbed some of Veminor큦 spirit.", TALKTYPE_ORANGE)
        end
    elseif item.uid == 10275 then
        if getPlayerStorageValue(cid,10275) == -1 then
            setPlayerStorageValue(cid,10275,1)
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Infernatil큦 throne and absorbed some of his spirit.')
			doPlayerSay(cid, "You have touched Infernatil큦 throne and absorbed some of his spirit.", TALKTYPE_ORANGE)
        else
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Infernatil큦 spirit.')
			doPlayerSay(cid, "You have already absorbed some of Infernatil큦 spirit.", TALKTYPE_ORANGE)
        end
    elseif item.uid == 10276 then
        if getPlayerStorageValue(cid,10276) == -1 then
            setPlayerStorageValue(cid,10276,1)
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Tafariel큦 throne and absorbed some of his spirit.')
			doPlayerSay(cid, "You have touched Tafariel큦 throne and absorbed some of his spirit.", TALKTYPE_ORANGE)
        else
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Tafariel큦 spirit.')
			doPlayerSay(cid, "You have already absorbed some of Tafariel큦 spirit.", TALKTYPE_ORANGE)
        end
    elseif item.uid == 10277 then
        if getPlayerStorageValue(cid,10277) == -1 then
            setPlayerStorageValue(cid,10277,1)
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Apocalypse큦 throne and absorbed some of his spirit.')
			doPlayerSay(cid, "You have touched Apocalypse큦 throne and absorbed some of his spirit.", TALKTYPE_ORANGE)
		else
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Apocalypse큦 spirit.')
			doPlayerSay(cid, "You have already absorbed some of Apocalypse큦 spirit.", TALKTYPE_ORANGE)
        end
    elseif item.uid == 10278 then
        if getPlayerStorageValue(cid,10278) == -1 then
            setPlayerStorageValue(cid,10278,1)
           --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Pumin큦 throne and absorbed some of his spirit.')
			doPlayerSay(cid, "You have touched Pumin큦 throne and absorbed some of his spirit.", TALKTYPE_ORANGE)
		else
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Pumin큦 spirit.')
			doPlayerSay(cid, "You have already absorbed some of Pumin큦 spirit.", TALKTYPE_ORANGE)
        end
    elseif item.uid == 10279 then
        if getPlayerStorageValue(cid,10279) == -1 then
            setPlayerStorageValue(cid,10279,1)
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Bazir큦 throne and absorbed some of his spirit.')
			doPlayerSay(cid, "You have touched Bazir큦 throne and absorbed some of his spirit.", TALKTYPE_ORANGE)
		else
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Bazir큦 spirit.')
			doPlayerSay(cid, "You have already absorbed some of Bazir큦 spirit.", TALKTYPE_ORANGE)
        end
    elseif item.uid == 10280 then
        if getPlayerStorageValue(cid,10280) == -1 then
            setPlayerStorageValue(cid,10280,1)
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Ashfalor큦 throne and absorbed some of his spirit.')
			doPlayerSay(cid, "You have touched Ashfalor큦 throne and absorbed some of his spirit.", TALKTYPE_ORANGE)
	   else
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Ashfalor큦 spirit.')
			doPlayerSay(cid, "You have already absorbed some of Ashfalor큦 spirit.", TALKTYPE_ORANGE)
        end
    end
    return true
end