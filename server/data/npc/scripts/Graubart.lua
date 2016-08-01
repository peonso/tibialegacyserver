dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

function greetCallback(cid)
	if getPlayerSex(cid) == 1 then
	npcHandler:setMessage(MESSAGE_GREET, "Ahoi, young man ".. getPlayerName(cid) ..". Looking for work on my ship?")
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Ahoi, young lady ".. getPlayerName(cid) ..". Looking for work on my ship?")
	return true
	end	
end	
npcHandler:setCallback(CALLBACK_GREET, greetCallback)


keywordHandler:addKeyword({'work'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm sorry, but it is too dangerous nowadays. Too many storms out there. Come back in some months and we will see."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Graubart, captain of the great Seahawk!"})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm a merchant. I sail all over the world with my ship and trade with many different races!"})
keywordHandler:addKeyword({'races'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You know; elves, dwarfs, lizardmen, minotaurs and many others."})
keywordHandler:addKeyword({'ship'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, my whole proud: My ship named Seahawk. We rode out so many stormy nights together. I think I couldn't live without it."})
keywordHandler:addKeyword({'seahawk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, my whole proud: My ship named Seahawk. We rode out so many stormy nights together. I think I couldn't live without it."})
keywordHandler:addKeyword({'trade'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I trade nearly everything, for example weapons, food, water, and even magic runes."})
keywordHandler:addKeyword({'merchant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A merchant is someone who trades goods with other people and tries to make a little profit. *laughs*"})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, sold out."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, sold out. Ask Bruno."})
keywordHandler:addKeyword({'water'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, sold out."})
keywordHandler:addKeyword({'magic runes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, sold out."})
keywordHandler:addKeyword({'bruno'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bruno is one of the best sailors I know. He is nearly as good as me. *laughs loudly*"})
keywordHandler:addKeyword({'aneus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hmm, I don't know him very well. But he has a very nice story to tell."})
keywordHandler:addKeyword({'marlene'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Pssst. Marlene is not near right now...? You know... she is a lovely woman, but she talks too much! So I always try to keep distance from her because she can't stop talking."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())