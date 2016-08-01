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
	if getPlayerItemCount(cid, 2199) >= 1 then
	npcHandler:setMessage(MESSAGE_GREET, "Chhhh ... Sorry, I'm busy. <cough>")
	return false
	else
	npcHandler:setMessage(MESSAGE_GREET, "I am Vladruc Urghain and welcome you, ".. getPlayerName(cid) ..", to my house.")
	return true
	end	
end

npcHandler:setCallback(CALLBACK_GREET, greetCallback)

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Vladruc Urghain. Welcome to my house!"})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a humble merchant of little importance to the beautiful Venore."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sadly only through books I have come to know your great Thais, and to know her is to love her."})
keywordHandler:addKeyword({'book'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These companions have been good friends and teachers to me."})
keywordHandler:addKeyword({'adventure'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The time I sought out adventure is long gone indeed."})
keywordHandler:addKeyword({'shop'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, feel free to browse and buy in my humble shop below."})
keywordHandler:addKeyword({'market'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, feel free to browse and buy in my humble shop below."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am of noble blood myself. I have been so long master that none other should be master of me."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am of noble blood myself. I have been so long master that none other should be master of me."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What a wonderful world we do live in ... so full of life."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our ways are not your ways, and there shall be to you many strange things."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Thaian garrsion serves its purpose very well."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You think he is of ancient evil? Little you know about ancientness or evilness."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A terrifying weapon if it does exist at all."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a reclusive person and learn little of the local gossip of the peasants."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am sorry, but I can't be of much assistance to you."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh yes, the children of the night ... you dwellers in the city cannot enter into the feelings of the hunter."})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Such lovely places, unjustly shunned by the people."})
keywordHandler:addKeyword({'vampire'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Please don't talk about such creatures. You are scaring me."})
keywordHandler:addKeyword({'thank'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's nothing worth to be mentioned."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Please check my humble market downstairs for the wares that are offered."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Magic is a tool to be mastered."})
keywordHandler:addKeyword({'spell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I know a spell or two. You might want to buy some spells downstairs in the market."})
keywordHandler:addKeyword({'alchemy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can buy some potions downstairs."})
keywordHandler:addKeyword({'blood'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I like blood ... only the color, that is, of course ... <chuckles>"})
keywordHandler:addKeyword({'undea'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is not dead, which can eternal lie, and in strange aeons, even death may die."})
keywordHandler:addKeyword({'necroman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Death is the final frontier. Necromancers boldly go, where no one has gone before."})
keywordHandler:addKeyword({'coffin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The final restingplace for all of us, isn't it?"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is |TIME|."})

npcHandler:addModule(FocusModule:new())