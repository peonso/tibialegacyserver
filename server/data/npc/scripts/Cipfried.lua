dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

npcHandler:setMessage(MESSAGE_GREET, "Hello, |PLAYERNAME|! Feel free to ask me for help.")

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am just a humble monk. Ask me if you need help or healing."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Cipfried."})
keywordHandler:addKeyword({'monk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sacrifice my life to serve the good gods of Tibia."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's where we are. The world of Tibia."})
keywordHandler:addKeyword({'rook'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The gods have chosen this isle as the point of arrival for the newborn souls."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They created Tibia and all life on it. Visit our library and learn about them."})
keywordHandler:addKeyword({'life'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The gods decorated Tibia with various forms of life. Plants, the citizens, and even the monsters."})
keywordHandler:addKeyword({'plant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just walk around. You will see grass, trees, and bushes."})
keywordHandler:addKeyword({'citizen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Only few people live here. Walk around and talk to them."})
keywordHandler:addKeyword({'obi'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is a local shop owner."})
keywordHandler:addKeyword({'al dee'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is a local shop owner."})
keywordHandler:addKeyword({'seymour'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Seymour is a loyal follower of the king and responsibe for the academy."})
keywordHandler:addKeyword({'academy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You should visit Seymour in the academy and ask him about a mission."})
keywordHandler:addKeyword({'willie'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is a fine farmer. The farm is located to the left of the temple."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are a constant threat. Learn to fight by hunting rabbits, deers and sheeps. Then try to fight rats, bugs and perhaps spiders."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "First you should try to get some gold and buy better equipment."})
keywordHandler:addKeyword({'hint'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "First you should try to get some gold and buy better equipment."})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "First you should try to get some gold and buy better equipment."})
keywordHandler:addKeyword({'task'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "First you should try to get some gold and buy better equipment."})
keywordHandler:addKeyword({'what'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "First you should try to get some gold and buy better equipment."})
keywordHandler:addKeyword({'do'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "First you should try to get some gold and buy better equipment."})
keywordHandler:addKeyword({'gold'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You have to slay monsters and take their gold. Or sell food at Willie's farm."})
keywordHandler:addKeyword({'money'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you need money, you have to slay monsters and take their gold. Look for spiders and rats."})
keywordHandler:addKeyword({'rat'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In the north of this temple you find a sewer grate. Use it to enter the sewers if you feel prepared. Don't forget a torch; you'll need it."})
keywordHandler:addKeyword({'sewer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In the north of this temple you find a sewer grate. Use it to enter the sewers if you feel prepared. Don't forget a torch; you'll need it."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "First you need some armor and perhaps a better weapon or a shield. A real adventurer needs a rope, a shovel, and a fishing pole, too."})
keywordHandler:addKeyword({'fight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Take a weapon in your hand, activate your combat mode, and select a target. After a fight you should eat something to heal your wounds"})
keywordHandler:addKeyword({'slay'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Take a weapon in your hand, activate your combat mode, and select a target. After a fight you should eat something to heal your wounds"})
keywordHandler:addKeyword({'eat'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you want to heal your wounds you should eat something. Willie sells excellent meals. But if you are very weak, come to me and ask me to heal you."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you want to heal your wounds you should eat something. Willie sells excellent meals. But if you are very weak, come to me and ask me to heal you."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Now, it is |TIME|, my child."})

function creatureSayCallback(cid, type, msg)
	if(cid ~= npcHandler.focus) then
		return false
	end

	if msgcontains(msg, 'heal') then
		if hasCondition(cid, CONDITION_FIRE) == true then
			npcHandler:say('You are burning. I will help you.')
			doRemoveCondition(cid, CONDITION_FIRE)
			doSendMagicEffect(getCreaturePosition(cid), 14)
		elseif hasCondition(cid, CONDITION_POISON) == true then
			npcHandler:say('You are poisoned. I will help you.')
			doRemoveCondition(cid, CONDITION_POISON)
			doSendMagicEffect(getCreaturePosition(cid), 13)
		elseif getCreatureHealth(cid) < 65 then
			npcHandler:say('You are looking really bad. Let me heal your wounds.')
			doCreatureAddHealth(cid, 65 - getCreatureHealth(cid))
			doSendMagicEffect(getCreaturePosition(cid), 12)
		else
			npcHandler:say('You aren\'t looking really bad, ' .. getCreatureName(cid) .. '. I can only help in cases of real emergencies. Raise your health simply by eating food.')
		end
		return true
	end
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())