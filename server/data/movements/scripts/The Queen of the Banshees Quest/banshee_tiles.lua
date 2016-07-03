--Script by Slaktaren and modified by Nottinghster... Thanks Slaktaren ;]
local cfg =  {
        flame_pos = {x=32268, y=31856, z=15}, -- Pos to get teleported when you step on the blue flame
        fail_pos = {x=32184, y=31940, z=14}, -- Pos to get teleported to when you step on the wrong tile
        fail_effect = CONST_ME_MAGIC_RED, -- Effect when you step on the wrong tile
        pass_effect = CONST_ME_MAGIC_GREEN, -- Effect when you step on the correct tile
        flame_effect = CONST_ME_TELEPORT, -- Effect when you step on the flame
        action_pass = 889, -- Action id on the correct tiles
        action_fail = 888, -- Action id on the fail tiles
        action_flame = 890, -- Action id on the flame
        }

function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
        if isPlayer(cid) and item.actionid == cfg.action_fail then
                doTeleportThing(cid, cfg.fail_pos)
                doSendMagicEffect(getCreaturePosition(cid), cfg.fail_effect)
        end
       
                if isPlayer(cid) and item.actionid == cfg.action_pass then
                        doSendMagicEffect(getCreaturePosition(cid), cfg.pass_effect)
                end
                       
                        if isPlayer(cid) and item.actionid == cfg.action_flame then
                                doTeleportThing(cid, cfg.flame_pos)
								setPlayerStorageValue(cid, 20005,1)
                                doSendMagicEffect(getCreaturePosition(cid), cfg.flame_effect)
                        end
return true
end	