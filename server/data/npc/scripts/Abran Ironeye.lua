dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Abran Ironeye."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a busy man. I run the Ironhouse."})
keywordHandler:addKeyword({'ironhouse'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do you think? Here weapons and armor are forged, repaired, and sold."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You should know that on your own!"})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would like to see a true warrior-king in Thais... like in the old days. But who knows, perhaps one day the tides of fate will bring such a man to power. Who knows..."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would like to see a true warrior-king in Thais... like in the old days. But who knows, perhaps one day the tides of fate will bring such a man to power. Who knows..."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Such a great tool wasted for garrison duties, a shame."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Quite a challenge, but his bets for power were made without the finesse of a true warrior."})
keywordHandler:addKeyword({'finesse'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I won't give away my tricks, learn your own."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If someone would bring me that weapon I could reshape the realm... and reward this hero beyond his dreams."})
keywordHandler:addKeyword({'ironeye'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care if you like it or not. Stop staring at it!"})
keywordHandler:addKeyword({'teddy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't know anything about a teddy... and if you are smart you shouldn't either..."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais has outlived its usefulness since years. Its star is sinking."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The world is ready for a significant change."})
keywordHandler:addKeyword({'warehouse'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My Ironhouse is more than a warehouse."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Their independence is a proof for the weakness of Thais."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In Venore nothing comes for free and you could not afford my 'news'."})
keywordHandler:addKeyword({'tax'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The taxing keeps the Thaian kingdom alive, but it also might break its neck one day."})
keywordHandler:addKeyword({'banor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As a man that grows up needs no mommy, a warrior has to outgrow his need for gods."})
keywordHandler:addKeyword({'privilege'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Venore's privileges are hard earned."})
keywordHandler:addKeyword({'gambling'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I trust only in skill, not luck."})

npcHandler:addModule(FocusModule:new())