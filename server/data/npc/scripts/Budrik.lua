dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the foreman of this mine."})
keywordHandler:addKeyword({'shop'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the foreman of this mine."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Budrik Deepdigger, son of Earth, from the Molten Rock."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a miner, ask someone else."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We understand the ways of the earth like nobody else does."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In the deeper mines we discover some nasty beasts now and then."})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is no funhouse. Leave the miners and their drilling-worms alone and get out! We have already enough trouble without you."})
keywordHandler:addKeyword({'mine'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is no funhouse. Leave the miners and their drilling-worms alone and get out! We have already enough trouble without you."})
keywordHandler:addKeyword({'trouble'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Horned Fox is leading his bandits in sneak attacks and raids on us."})
keywordHandler:addKeyword({'horned fox'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A minotaur they threw out at Mintwallin. He must have some kind of hideout nearby."})
keywordHandler:addKeyword({'hideout'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The hideout of the Horned Fox is probably a dangerous if not lethal place for the unexperienced ones."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Precisely |TIME|, young one."})

npcHandler:addModule(FocusModule:new())