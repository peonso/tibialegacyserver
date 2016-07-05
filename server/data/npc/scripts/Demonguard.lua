local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local fire = createConditionObject(CONDITION_FIRE)
setConditionParam(fire, CONDITION_PARAM_DELAYED, 10)
addDamageCondition(fire, 8, 3000, -25)
-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
 
 function getMonstersfromArea(pos, radiusx, radiusy, stack)
 local monsters = { } 
 local starting = {x = (pos.x - 5), y = (pos.y - 5), z = pos.z, stackpos = stack} 
 local ending = {x = (pos.x + 5), y = (pos.y + 5), z = pos.z, stackpos = stack} 
 local checking = {x = starting.x, y = starting.y, z = starting.z, stackpos = starting.stackpos} 
  repeat 
      creature = getThingfromPos(checking) 
       if creature.itemid > 0 then 
     if isCreature(creature.uid) == true then
      if isPlayer(creature.uid) == true then
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
if getWorldUpTime() == 5 then
doMoveCreature(getNpcCid(  ), 0)
elseif getWorldUpTime() == 10 then
doMoveCreature(getNpcCid(  ), 2)
end
   monster_table = getMonstersfromArea(getCreaturePosition(getNpcCid(  )), radiusx, radiusy, 253) 
    if #monster_table >= 1 then
        for i = 1, #monster_table do  
		if math.random(1,10) == 1 then
	if isPlayer(monster_table[i]) == true then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(monster_table[i]), 15)
	doAddCondition(monster_table[i], fire)
	npcHandler:say("Die, intruder!", 1)
	end
		end
        end 
    elseif table.getn(monster_table) < 1 then  
    end 
 end

	function FocusModule:init(handler)
	FOCUS_GREETSWORDS = {'codexninezxyqwa'}
	FOCUS_FAREWELLSWORDS = {'bye'}
		self.npcHandler = handler
		for i, word in pairs(FOCUS_GREETSWORDS) do
			local obj = {}
			table.insert(obj, word)
			obj.callback = FOCUS_GREETSWORDS.callback or FocusModule.messageMatcher
			handler.keywordHandler:addKeyword(obj, FocusModule.onGreet, {module = self})
		end
		
		for i, word in pairs(FOCUS_FAREWELLSWORDS) do
			local obj = {}
			table.insert(obj, word)
			obj.callback = FOCUS_FAREWELLSWORDS.callback or FocusModule.messageMatcher
			handler.keywordHandler:addKeyword(obj, FocusModule.onFarewell, {module = self})
		end
		
		return true
	end

npcHandler:addModule(FocusModule:new())