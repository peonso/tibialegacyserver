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
if getCreatureHealth(cid) <= 39 then
	npcHandler:setMessage(MESSAGE_GREET, "You are looking really bad, ".. getPlayerName(cid) ..". Let me heal your wounds.")
	doCreatureAddHealth(cid, -getCreatureHealth(cid)+40)
	doSendMagicEffect(getPlayerPosition(cid), 12)
	talk_state = 0
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Welcome ".. getPlayerName(cid) .."! May earth protect you!")
	return true
	end
end	
npcHandler:setCallback(CALLBACK_GREET, greetCallback)


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the great geomancer of dwarvenkind."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Kawill Marbleeye, Son of Earth, from the Molten Rock."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Nice world in general. It's a shame there is so much water ruining the general impression."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "By using the powers of fire and earth we forced the river that once wound its way through the big old one in other directions, and created our home."})
keywordHandler:addKeyword({'old'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The mountain we live in is called the big old one. It's the mountain of mountains, and it isand like a friend and protector to our race."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Who cares for that silly people."})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are allied with this young race, though they seldom have the wisdom to listen to us."})
keywordHandler:addKeyword({'orc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Stupid beasts. Their savagery is only rivalled by their smell."})
keywordHandler:addKeyword({'minotaur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They lost their way long ago. Now they are lost and doomed. It should be a warning to all of us."})
keywordHandler:addKeyword({'geomancer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We investigate the will of the earth. It is our duty to make sure things to work in their natural way."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The gods are treacherous and vain. They want to use us like they did in the past. Only the elements can be trusted, because all they want is for nature to run its set course."})
keywordHandler:addKeyword({'earth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The lifegiving earth protects us, feeds us and takes us home after death."})
keywordHandler:addKeyword({'fire'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where earth is giving, fire is taking. That is the way of the elements."})
keywordHandler:addKeyword({'life'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Life is born by earth and fed by earth."})
keywordHandler:addKeyword({'plant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Plants are minor messengers of earth. If you understand the soil you understand the plants."})
keywordHandler:addKeyword({'citizen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Many people are living in the embracement of earth in Kazordoon."})
keywordHandler:addKeyword({'kroox'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is a fine smith and his armour may save your neck one day."})
keywordHandler:addKeyword({'jimbin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is a jolly fellow and one of the oldest dwarves alive."})
keywordHandler:addKeyword({'maryza'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She is a fine cook, jawoll."})
keywordHandler:addKeyword({'bezil'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bezil and Nezil have pawn and equpiment shop with an amazing stock."})
keywordHandler:addKeyword({'nezil'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bezil and Nezil have pawn and equpiment shop with an amazing stock."})
keywordHandler:addKeyword({'uzgod'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Uzgod is a blacksmith and understands the ways of his element well."})
keywordHandler:addKeyword({'etzel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I fear the sorcerers focus on the destructive forces of fire. They forget about the protection earth could provide."})
keywordHandler:addKeyword({'motos'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The scars in this dwarf's face tell the tale of many a great battle."})
keywordHandler:addKeyword({'durin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The celestial paladin, the protector of our race. The only divine being we care for and the only one who still cares for dwarfs."})
keywordHandler:addKeyword({'duria'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The first knight of dwarvenkind is a fine woman."})
keywordHandler:addKeyword({'emperor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The emperor has rarely visited the temple district in the last years. He should care more about spirituality then about politics. Jawoll."})
keywordHandler:addKeyword({'kruzak'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The emperor has rarely visited the temple district in the last years. He should care more about spirituality then about politics. Jawoll."})
keywordHandler:addKeyword({'pyromancer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are the followers of the great flame."})
keywordHandler:addKeyword({'technomancer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "FOOLS! FOOLS! ALL OF THEM! MAY EARTH SWALLOW THEM ALL!"})
keywordHandler:addKeyword({'motos'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He finally made his peace with his own heart."})
keywordHandler:addKeyword({'general'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He finally made his peace with his own heart."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our fortresses are strong and easy to defend. Any aggressor will be smashed by our armies. Most intruders will not get manage to pass the colossus."})
keywordHandler:addKeyword({'colossus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The big fortress that guards our realm is shaped like a dwarf."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The day will come when he finally bites the dust."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, a weapon to be feared by man, beast and god alike, jawoll. He who wields it will be both blessed and cursed at the same time."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There will be nothing new, but every pain and every pleasure will return to you, and all in the same order. The eternal hour glass of existence will be turned again and again, and you will be turned with it, little speck of dust."})
keywordHandler:addKeyword({'Nietzsche'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In his mind he might have been a giant, but in his heart he was a dwarf."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "May the earth swallow them all!"})
keywordHandler:addKeyword({'stone golem'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These beings are filled with the power of earth. Therefore they, too, are sacred in a way."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a mere diviner of earth's will and not allowed to help you."})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There's nothing I need, better ask others."})
keywordHandler:addKeyword({'task'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There's nothing I need, better ask others."})
keywordHandler:addKeyword({'what'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There's nothing I need, better ask others."})
keywordHandler:addKeyword({'gold'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "gold is one of earth's treasures. To have gold is to be blessed by earth. To be rich is to be favoured by earth."})
keywordHandler:addKeyword({'money'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "gold is one of earth's treasures. To have gold is to be blessed by earth. To be rich is to be favoured by earth."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can buy equiment in Bezil's and Nezil's little shop."})
keywordHandler:addKeyword({'fight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Never forget your defence when fighting."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time is not of importance."})


function creatureSayCallback(cid, type, msg) msg = string.lower(msg)

if msgcontains(msg, 'heal') then
if getCreatureHealth(cid) <= 64 then
	npcHandler:say("You are looking really bad. Let me heal your wounds.", 1)
	doCreatureAddHealth(cid, -getCreatureHealth(cid)+65)
	doSendMagicEffect(getPlayerPosition(cid), 12)
	talk_state = 0
	return true
	else
	npcHandler:say("You aren't looking really bad. Sorry, I can't help you.", 1)
	return true
	end
	talk_state = 0
end		
	if(npcHandler.focus ~= cid) then
		return false
	end	
	
if msgcontains(msg, 'bless') then
	npcHandler:say("There are five different blessings available in five sacred places. These blessings are: the spiritual shielding, the spark of the phoenix, the embrace of tibia, the fire of the suns and the wisdom of solitude.", 1)
	talk_state = 0

elseif msgcontains(msg, 'spark') or msgcontains(msg, 'phoenix') then
	npcHandler:say("The spark of the phoenix is given by me and by the great pyromancer in the nearby firetemple. Do you wish to receive my part of the blessing of the phoenix?", 1)
	talk_state = 1394


elseif talk_state == 1394 and msgcontains(msg, 'yes') then
	if getPlayerStorageValue(cid, 1339) <= 0 then
	setPlayerStorageValue(cid, 1339, 1)
	npcHandler:say("So receive the blessing of the live-giving earth, pilgrim.", 1)
	doSendMagicEffect(getPlayerPosition(cid), 13)
	talk_state = 0		
	else
	npcHandler:say("You already possess my blessing.", 1)
	talk_state = 0			
	end
	
elseif talk_state == 1394 and msgcontains(msg, '') then
	npcHandler:say("Ok. If you don't want it ... .", 1)
	talk_state = 0	
	
elseif msgcontains(msg, 'phoenix') then
	npcHandler:say("The spark of the phoenix is given by the dwarven priests of earth and fire in Kazordoon.", 1)
	talk_state = 0
	
elseif msgcontains(msg, 'embrace') then
	npcHandler:say("The druids north of Carlin will provide you with the embrace of tibia.", 1)
	talk_state = 0
	
elseif msgcontains(msg, 'suns') then
	npcHandler:say("You can ask for the blessing of the two suns in the suntower near Ab'Dendriel.", 1)
	talk_state = 0
	
elseif msgcontains(msg, 'wisdom') then
	npcHandler:say("Talk to the hermit Eremo on the isle of Cormaya about this blessing.", 1)
	talk_state = 0
	
elseif msgcontains(msg, 'spiritual') then
	npcHandler:say("You can ask for the blessing of spiritual shielding the whiteflower temple south of Thais.", 1)
	talk_state = 0
end	
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())