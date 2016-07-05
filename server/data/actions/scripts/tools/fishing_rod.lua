-- by Nottinghster

local ITEM_WORM = 3976
local ITEM_FISH = 2667
local SKILL_FISHING = 6
local useWorms = true
local waterIds = {493, 4608, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625}
function onUse(cid, item, frompos, item2, topos)
        if isInArray(waterIds, item2.itemid) == true then
                if item2.itemid ~= 493 then
                        if useWorms == false or useWorms == true and doPlayerRemoveItem(cid, ITEM_WORM, 1) == true then
                                if math.random(1,(100+(getPlayerSkill(cid, SKILL_FISHING)/10))) <= getPlayerSkill(cid, SKILL_FISHING) then
                                    doPlayerAddItem(cid, ITEM_FISH, 1)
                                end
                                doPlayerAddSkillTry(cid, SKILL_FISHING, 1)
                        end
                end
                doSendMagicEffect(topos, CONST_ME_LOSEENERGY)
            return true
        end
    return false
end