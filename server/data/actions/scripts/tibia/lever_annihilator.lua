-- Annihilator by Shawak v2.1
-- Modified by Nottinghster

        -- CONFIG --
		
		local playersOnly = "yes"
        local questLevel = 100

        local room = {     -- room with demons
        fromX = 33219,
        fromY = 31657,
        fromZ = 13,
        --------------
        toX = 33222,
        toY = 31661,
        toZ = 13
        }

        local monster_pos = {
        [1] = {pos = {33219, 31657, 13}, monster = "Demon"},
        [2] = {pos = {33221, 31657, 13}, monster = "Demon"},
        [3] = {pos = {33220, 31661, 13}, monster = "Demon"},
        [4] = {pos = {33222, 31661, 13}, monster = "Demon"},
        [5] = {pos = {33223, 31659, 13}, monster = "Demon"},
        [6] = {pos = {33224, 31659, 13}, monster = "Demon"}
        }

        local players_pos = {
        {x = 33222, y =31671, z = 13, stackpos = 253},
        {x = 33223, y =31671, z = 13, stackpos = 253},
        {x = 33224, y =31671, z = 13, stackpos = 253},
        {x = 33225, y =31671, z = 13, stackpos = 253}
        }

        local new_player_pos = {
        {x = 33219, y = 31659, z = 13},
        {x = 33220, y = 31659, z = 13},
        {x = 33221, y = 31659, z = 13},
        {x = 33222, y = 31659, z = 13}
        }

        ------------------------------------------------------
        --- CONFIG END ---------------------------------------
        ------------------------------------------------------

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local all_ready, monsters, player, level = 0, 0, {}, 0
	if item.uid == 7000 then
        if item.itemid == 1946 then
                for i = 1, #players_pos do
                        table.insert(player, 0)
                end
                for i = 1, #players_pos do
                        player[i] = getThingfromPos(players_pos[i])
                        if player[i].itemid > 0 then
                                if string.lower(playersOnly) == "yes" then
                                        if isPlayer(player[i].uid) == true then
                                                all_ready = all_ready+1
                                        else
                                                monsters = monsters+1
                                        end
                                else
                                        all_ready = all_ready+1
                                end
                        end
                end
                if all_ready == #players_pos then
                        for i = 1, #players_pos do
                                player[i] = getThingfromPos(players_pos[i])
                                if isPlayer(player[i].uid) == true then
                                        if getPlayerLevel(player[i].uid) >= questLevel then
                                                level = level+1
                                        end
                                else
                                        level = level+1
                                end
                        end
                        if level == #players_pos then
                                if string.lower(playersOnly) == "yes" and monsters == 0 or string.lower(playersOnly) == "no" then
                                        for _, area in pairs(monster_pos) do
                                                        doSummonCreature(area.monster,{x=area.pos[1],y=area.pos[2],z=area.pos[3]})
                                        end
                                        for i = 1, #players_pos do
                                                doSendMagicEffect(players_pos[i], CONST_ME_POFF)
                                                doTeleportThing(player[i].uid, new_player_pos[i])
                                                doSendMagicEffect(new_player_pos[i], CONST_ME_ENERGYAREA)
                                                doTransformItem(item.uid,1945)
                                        end
                                else
                                        doPlayerSendTextMessage(cid,19,"Only players can do this quest.")
                                end
                        else
                                doPlayerSendTextMessage(cid,19,"All Players have to be level "..questLevel.." to do this quest.")
                        end
                else
                        doPlayerSendCancel(cid,"You need "..table.getn(players_pos).." players to do this quest.")
                end
        elseif item.itemid == 1945 then
                local player_room = 0
                for x = room.fromX, room.toX do
                        for y = room.fromY, room.toY do
                                for z = room.fromZ, room.toZ do
                                        local pos = {x=x, y=y, z=z,stackpos = 253}
                                        local thing = getThingfromPos(pos)
                                        if thing.itemid > 0 then
                                                if isPlayer(thing.uid) == true then
                                                        player_room = player_room+1
                                                end
                                        end
                                end
                        end
                end
                if player_room >= 1 then
                        doPlayerSendTextMessage(cid,19,"There is already a team in the quest room.")          
                elseif player_room == 0 then
                        for x = room.fromX, room.toX do
                                for y = room.fromY, room.toY do
                                        for z = room.fromZ, room.toZ do
                                                local pos = {x=x, y=y, z=z,stackpos = 253}
                                                local thing = getThingfromPos(pos)
                                                if thing.itemid > 0 then
                                                        doRemoveCreature(thing.uid)
                                                end
                                        end
                                end
                        end
                        doTransformItem(item.uid,1946)
                end
        end
	end	
        return true
end