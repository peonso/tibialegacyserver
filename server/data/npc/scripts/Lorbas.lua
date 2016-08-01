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
 local starting = {x = (pos.x - 5), y = (pos.y - 5), z = pos.z, stackpos = stack} 
 local ending = {x = (pos.x + 5), y = (pos.y + 5), z = pos.z, stackpos = stack} 
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
if math.random(1,2) == 1 then
   monster_table = getMonstersfromArea(getCreaturePosition(getNpcCid(  )), radiusx, radiusy, 253) 
    if #monster_table >= 1 then
        for i = 1, #monster_table do  
		if getCreatureMaxHealth(monster_table[i]) >= 401 and isPlayer(monster_table[i]) == false then
		doRemoveCreature(monster_table[i])
		npcHandler:say('Get lost your beast!', 0.5) 
		end
        end 
    elseif table.getn(monster_table) < 1 then  
    end 
end
 end
 

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am just a humble monk and responsible to maintain this little outpost that is leftover from our grand order."})
keywordHandler:addKeyword({'monk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We monks of the humble path feel that we are not worthy to spread the word of the gods. We live in humility and poverty to serve the gods. Most of us have vowed an oath of silence and I humbly took the burden to become the spokesperson."})
keywordHandler:addKeyword({'order'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our order was once the greatest and richest in the whole known world. Kings, traders and knights of various orders were our supporters and the gods smiled upon us ... or at least that's what we thought until the day of doom."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I own no watch and only a small number of other worldly possessions."})
keywordHandler:addKeyword({'doom'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "On the day of doom, our dream of building the greatest and most opulent cathedral was shattered."})
keywordHandler:addKeyword({'shattered'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The cathedral was already high and impressive, the order had started to move in although there was still much left to be done. Then the great earthquake came."})
keywordHandler:addKeyword({'earthquake'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some say it was just the unstable ground or volcanic activity, some even claim it was the work of demons, but we know it was the will of the gods to punish our vanity."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king is a worldly ruler, and we don't burden ourselves with worldly concerns anymore."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The gracious tradesmen from Venore send us provisions from time to time."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais is far and we have little contact with the kingdom's capital."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We have no relations with that town."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hope the knightly order there fares better than our own."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am not worthy to speak about the gods."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The world is in the hand of the gods."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves are far from being humble. At least this ancient folk knows that there is nothing to gain in the cathedral's ruins and their treasure hunters stay away from there."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves are far from being humble. At least this ancient folk knows that there is nothing to gain in the cathedral's ruins and their treasure hunters stay away from there."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves are far from being humble. At least this ancient folk knows that there is nothing to gain in the cathedral's ruins and their treasure hunters stay away from there."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They will have to learn on their own."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They will have to learn on their own."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They will have to learn on their own."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Another continent that has to be seen as a present of the gods to us."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I will not judge those people."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am not the right person to discuss this subject."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He will discover where his path will lead him to. But no matter how ruthless he is, even he stays away from the ruins of the cathedral."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is rumoured to be hidden somewhere beneath Edron."})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
if msgcontains(msg, 'vanity') or msgcontains(msg, 'Vanity') then
	npcHandler:say("In our vanity we thought that we could impress the gods with our money and show piety by building them a monument. ...", 1)
	npcHandler:say("We were wrong and the gods punished us by sending the worst earthquake that mankind has seen. ...", 5)
	npcHandler:say("Its ground motions could still be felt in Thais and as the dust settled, little had remained of that what we had built. ...", 9)
	npcHandler:say("Most members of our order were dead, others turned mad or lost faith. We are all that is left from our glorious order.", 13)
	talk_state = 0
	
elseif msgcontains(msg, 'cathedral') or msgcontains(msg, 'Cathedral') then
	npcHandler:say("What was once planned as the most impressive cathedral of all times, lies now in ruins. ...", 1)
	npcHandler:say("All what the earthquake has left over is a heap of rubble. The ruins are cursed and everybody who dares to go there will draw the ire of heaven on himself. ...", 5)
	npcHandler:say("All those that travel there are infested with bad luck. But only few have returned from this treacherous ground. Noxious fumes are killing intruders almost unnoticed. ...", 9)
	npcHandler:say("Crumbling structures might kill you instantly. ...", 13)
	npcHandler:say("Those who survive the dangers of nature will face the soul-eating ghosts of those who have died in the catastrophe. ...", 17)
	npcHandler:say("It's not worth to go there, there are no richnesses or treasures left in the ruins, the gold of our order melted away in funding the cathedral's construction. ...", 21)
	npcHandler:say("I urge you to stay away from the cursed ground and the ruins. For the safety of your body and your soul keep away from there.", 25)
	talk_state = 0

elseif msgcontains(msg, 'assassin') or msgcontains(msg, 'dark monk') then
	npcHandler:say("I know nothing about that topic. If you would excuse me, I have things to attend.", 1)
	npcHandler:releaseFocus()
	npcHandler:resetNpc()
	
end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())