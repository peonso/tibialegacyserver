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
	if getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 5 then
		if getPlayerSex(cid) == 1 then
		npcHandler:setMessage(MESSAGE_GREET, "<mumbles> Greetings, brother ".. getPlayerName(cid) ..".")
		return true		
		else
		npcHandler:setMessage(MESSAGE_GREET, "<mumbles> Greetings, sister ".. getPlayerName(cid) ..".")
		return true		
		end
	else
	npcHandler:setMessage(MESSAGE_GREET, "<mumbles> Greetings, ".. getPlayerName(cid) ..".")
	return true
	end	
end	
npcHandler:setCallback(CALLBACK_GREET, greetCallback)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the kings new courtmage and advisor in arcane matters."})
keywordHandler:addKeyword({'courtmage'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The last courtmage was killed by Ferumbras in one of his attacks."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am commonly known as Trimegis."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time does not matter in the end."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our king frequently relies on my divinations and spells of protection."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our king frequently relies on my divinations and spells of protection."})
keywordHandler:addKeyword({'muriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He's quite good in magical theories, but lacks practice in the field."})
keywordHandler:addKeyword({'quentin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Mixing up magic with religion can't do any good."})
keywordHandler:addKeyword({'lynda'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Gods are not as reliable as something you mastered on your own."})
keywordHandler:addKeyword({'harkath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king listens to the advice of this swordsman far too often."})
keywordHandler:addKeyword({'general'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king listens to the advice of this swordsman far too often."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In the long run, it would pay off to focus all resources on a magicians corps, but the king is not convinced of that. Not yet."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He failed in his quest for power since he ultimately forfeited greater powers for a quick but limited powerboost by enslaving himself to some dark entities."})
keywordHandler:addKeyword({'sam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A man as mundane as a rock."})
keywordHandler:addKeyword({'xodet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He made the best he could of his limited abilities."})
keywordHandler:addKeyword({'frodo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A bar is fine to distract the mundanes from doing something foolish."})
keywordHandler:addKeyword({'elane'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Paladins are another example that diversing one's resources between goods, mundane weapons, and magic does not make a good mixture."})
keywordHandler:addKeyword({'gregor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Limited in his vision as all knights are."})
keywordHandler:addKeyword({'marvik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Since intelligence can't be substituted by passion, all druids are nothing but hedgemages."})
keywordHandler:addKeyword({'bozo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "At least one mundane who knows his proper place."})
keywordHandler:addKeyword({'baxter'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Brawns but no brain."})
keywordHandler:addKeyword({'oswald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A truly disgusting fellow."})
keywordHandler:addKeyword({'sherry'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have certainly no business with such persons."})
keywordHandler:addKeyword({'donald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have certainly no business with such persons."})
keywordHandler:addKeyword({'mcronald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have certainly no business with such persons."})
keywordHandler:addKeyword({'lugri'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Another bogeyman. Who's afraid of someone who is that 'powerful' that he hides in some dirthole?"})
keywordHandler:addKeyword({'lungelen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She has the 'know how', but sadly does not really know how to use it efficitenly."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The only weapon I need is my magic."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care about mundane gossip."})
keywordHandler:addKeyword({'pits of inferno'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some dumb holes for adventurers seeking trouble."})
keywordHandler:addKeyword({'nightmare'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some dumb holes for adventurers seeking trouble."})
keywordHandler:addKeyword({'wisdom'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Wisdom is only an excuse for the lack of consequence."})
keywordHandler:addKeyword({'sorcerer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Many call themselves a sorcerer, but only a few truly understand what that means."})
keywordHandler:addKeyword({'power'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Power comes to those who have the intelligence to claim it."})
keywordHandler:addKeyword({'rune'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have no need for runes anymore. Runes are tools for beginners."})
keywordHandler:addKeyword({'spell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My spells are my personal secret."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())