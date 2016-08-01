dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One day I'll go and look."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Me parents live here before town was. Me not care about lil' ones."})
keywordHandler:addKeyword({'old'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Mountain in south. Lil' lil' ones living there."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Me not fight them, they not fight me."})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Always asking me for stuff they can't afford."})
keywordHandler:addKeyword({'orc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Silly ones. Not talk much. Always screaming and hitting."})
keywordHandler:addKeyword({'minotaur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They were friend with me parents. Long before elves here, they often made visit. No longer come here."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Lil' lil' ones are so fun. We often chat."})
keywordHandler:addKeyword({'lil lil'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Lil' lil' ones are so fun. We often chat."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You shut up. Me not want to hear."})
keywordHandler:addKeyword({'smith'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Working steel is my profession."})
keywordHandler:addKeyword({'steel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Manny kinds of. Like Mesh Kaha Rogh, Za'Kalortith, Uth'Byth, Uth'Morc, Uth'Amon, Uth'Maer, Uth'Doon, and Zatragil"})
keywordHandler:addKeyword({'Mesh Kaha Rogh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Steel that is singing when forged. No one knows where find today."})
keywordHandler:addKeyword({"Za'Kalortith"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's evil. Demon iron is. No good cyclops goes where you can find and need evil flame to melt."})
keywordHandler:addKeyword({"Uth'Byth"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Not good to make stuff off. Bad steel it is. But eating magic, so useful is."})
keywordHandler:addKeyword({"Uth'Morc"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Lil' ones it thieves' steel call sometimes. It's dark and making not much noise."})
keywordHandler:addKeyword({"Uth'Amon"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Brigthsteel is. Much art made with it. Sorcerers to lazy and afraid to enchant much."})
keywordHandler:addKeyword({"Uth'Maer"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Heartiron from heart of big old mountain, found very deep. Lil' lil ones fiercely defend. Not wanting to have it used for stuff but holy stuff."})
keywordHandler:addKeyword({"Uth'Doon"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's high steel called. Only lil' lil' ones know how make."})
keywordHandler:addKeyword({'Zatragil'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Most ancients use dream silver for different stuff. Now ancients most gone. Most not know about."})
keywordHandler:addKeyword({'Teshial'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Is one of elven family or such thing. Me not understand lil' ones and their busisness."})
keywordHandler:addKeyword({'Deraisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Is one of elven family or such thing. Me not understand lil' ones and their busisness."})
keywordHandler:addKeyword({'Cenath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Is one of elven family or such thing. Me not understand lil' ones and their busisness."})
keywordHandler:addKeyword({'Kuridai'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Is one of elven family or such thing. Me not understand lil' ones and their busisness."})
keywordHandler:addKeyword({'cyclops'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Me people not live here much. Most are far away."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Me wish I could make weapon like it."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
if msgcontains(msg, 'fire sword') then
	npcHandler:say("Do lil' one want to trade a fire sword?", 1)
	talk_state = 1
			
elseif msgcontains(msg, 'bright sword') then
	npcHandler:say("Do lil' one want to trade a bright sword?", 1)
	talk_state = 1

elseif msgcontains(msg, 'warlord sword') then
	npcHandler:say("Do lil' one want to trade a warlord sword?", 1)
	talk_state = 1

elseif msgcontains(msg, 'sword of valor') then
	npcHandler:say("Do lil' one want to trade a sword of valor?", 1)
	talk_state = 1

elseif msgcontains(msg, 'serpent sword') then
	npcHandler:say("Do lil' one want to trade a serpent sword?", 1)
	talk_state = 1

elseif msgcontains(msg, 'enchanted plate') then
	npcHandler:say("Do lil' one want to trade an enchanted plate armor?", 1)
	talk_state = 1
	
elseif msgcontains(msg, 'dragon shield') then
	npcHandler:say("Do lil' one want to trade a dragon shield?", 1)
	talk_state = 1

elseif talk_state == 1 and msgcontains(msg, 'yes') then
	npcHandler:say("You not have stuff me want for.", 1)
	talk_state = 1
elseif talk_state == 1 and msgcontains(msg, '') then
	npcHandler:say("Silly lil' one you are.", 1)
	talk_state = 1
	
end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())