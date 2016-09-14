random_items = {
	{1,2112,1}, --  0.1% to get teddy bear
	{20,2214,1}, -- 2% to get ring of healing
	{40,2114,1}, -- 4% to get piggy bank
	{80,2111,5}, -- 8% to get 5 snowballs
	{80,2688,8}, -- 8% to get 8 candy canes
	{80,2110,1}, -- 8% to get doll
	{400,2674,15}, -- 40% to get 15 red apples
	{450,2675,10}, -- 45% to get 10 oranges
	{1000,2687,8} -- 100% to get 8 cookies
}
PRESENT_STORAGE = 26552 -- storage ID
minLevelReq = 20

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			 end
function onCreatureDisappear(cid)			 npcHandler:onCreatureDisappear(cid)		 end
function onCreatureSay(cid, type, msg)		 npcHandler:onCreatureSay(cid, type, msg)	 end
function onThink()							 npcHandler:onThink()						 end

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

	if msgcontains(msg, 'pre') then
		npcHandler:say('Were you good this year?')
		talk_state = 1

	elseif msgcontains(msg, 'yes') and talk_state == 1 then
		if (getPlayerLevel(cid) >= minLevelReq) then
			if (getPlayerStorageValue(cid, PRESENT_STORAGE) < 2016) then --fijar con el año en curso
				local item = {}
				local reward = 0
				local count = ""
				for i = 1, #random_items do
					item = random_items[i]
					if (math.random(0,999) < item[1]) then
						reward = item[2]
						subType = item[3]
						if subType > 1 then
							count = subType .. " "
						end
					break
					end
				end
				doPlayerAddItem(cid, reward, subType)
				setPlayerStorageValue(cid, PRESENT_STORAGE, 2016) --fijar con el año en curso
				npcHandler:say('HO HO HO! You were good like a little dwarf this year! I got ' .. count .. getItemNameById(reward) .. ' for you.', cid)
			else
				npcHandler:say('I gave you a present already.', cid)
			end
		else
			npcHandler:say('You need to be at least level 20 to claim your present.', cid)
		end
		talk_state = 0
	elseif msgcontains(msg, 'no') and talk_state == 1 then
		npcHandler:say('Come back when you start behaving good.', cid)
		talk_state = 0  
	end
	npcHandler:resetNpc()
	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Merry Christmas |PLAYERNAME|. I'm Santa Claus. I got presents for good children.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())