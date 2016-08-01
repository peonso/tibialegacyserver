dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
 
 function getMonstersfromArea(pos, radiusx, radiusy, stack)
 local monsters = { } 
 local starting = {x = (pos.x - 2), y = (pos.y - 2), z = pos.z, stackpos = stack} 
 local ending = {x = (pos.x + 2), y = (pos.y + 2), z = pos.z, stackpos = stack} 
 local checking = {x = starting.x, y = starting.y, z = starting.z, stackpos = starting.stackpos} 
  repeat 
      creature = getThingfromPos(checking) 
       if creature.itemid > 0 then 
     if isCreature(creature.uid) == true then
      if isPlayer(creature.uid) == false then
        table.insert (monsters, creature.uid) 
      end 
     end 
       end 
       if checking.x == pos.x-1 and checking.y == pos.y then 
        checking.x = checking.x+2 
       else  
     checking.x = checking.x+1 
       end 
       if checking.x > ending.x then 
     checking.x = starting.x 
     checking.y = checking.y+1 
       end 
  until checking.y > ending.y 
 return monsters 
 end 
 
 function onThink()	npcHandler:onThink()
   monster_table = getMonstersfromArea(getCreaturePosition(getNpcCid(  )), radiusx, radiusy, 253) 
    if #monster_table >= 1 then
        for i = 1, #monster_table do  
		if getCreatureMaxHealth(monster_table[i]) >= 401 then
		doRemoveCreature(monster_table[i])
		selfSay('Get lost your beast!') 
		end
        end 
    elseif table.getn(monster_table) < 1 then  
    end 
 end

keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Visit Tibia's shopkeepers to buy their fine wares."})				
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Visit Tibia's shopkeepers to buy their fine wares."})				
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's my duty to protect the city."})				
keywordHandler:addKeyword({'city'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Behave while in the city or we get you! Do you want to know where to find a shop or a guild?"})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if msgcontains(msg, "idiot") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "asshole") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "retard") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "sucker") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "fag") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)	
	elseif msgcontains(msg, "fuck") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "shut up") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)	
	elseif msgcontains(msg, "shit") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)		
	elseif msgcontains(msg, "ugly") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "smell") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "blow") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "cock") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "dick") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "pussy") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)	
	elseif msgcontains(msg, "vagina") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "bitch") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
	elseif msgcontains(msg, "nigger") then
	selfSay("Take this!")
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())