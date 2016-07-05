-- NPC Converter System - developed by Utroz <utroz@oakcoders.com>
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)	npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)	npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg) end
function onThink()	npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'WHERE SHOULD I HOP?'})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I HAVE NO TIME FOR A GAME!'})
keywordHandler:addKeyword({'hall ancients'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'JUST A BUNCH OF BONES.'})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'CAN\'T TELL MUCH ABOUT IT. SELDOM GET OUT HERE, I AM A BUSY DWARF.'})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'WHAT?'})
keywordHandler:addKeyword({'big old'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'THIS IS THE NAME OF THIS MOUNTAIN!'})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'NO. I DON\'T NEED ANY SHELVES!'})
keywordHandler:addKeyword({'humans'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'A PROMISING RACE, SOME OF THEM ACTUALLY ADMIRE MECHANICS.'})
keywordHandler:addKeyword({'orcs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'LET THEM COME, I AM WORKING ON A LITTLE SURPRISE FOR THEM! <chukles madly>'})
keywordHandler:addKeyword({'pyromancer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'OLD FOOLS, TO MUCH CONCERNED ABOUT TRADITION.'})
keywordHandler:addKeyword({'technomancer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'WE ARE THE FUTURE. WE WILL BECOME A MAJOR POWER IN DWARFEN SOCIETY SOON! THEY WILL SEE, THEY WILL ALL SEE! <chuckles and rolls his eyes>'})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'GODS, WHO NEEDS GODS, WHEN WE CAN BUILD THE CORRECT MACHINE FOR EVERY OCCASION?'})
keywordHandler:addKeyword({'fire'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'NICE RESOURCE FOR OUR MACHINES, BUT NO NEED TO MAKE A BIG DEAL ABOUT IT, JAWOLL!'})
keywordHandler:addKeyword({'earth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'SORRY, BUT JUST DUST AND MUD TO ME.'})
keywordHandler:addKeyword({'durin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I AM SURE HE WOULD BE SMART ENOUGH TO SEE THE CHANCES WE PROVIDE FOR DWARFENHOOD.'})
keywordHandler:addKeyword({'life'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'WHAT HIVE?'})
keywordHandler:addKeyword({'plant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'HEY! HOW DID YOU LEARN ABOUT OUR SECRET PLANT?'})
keywordHandler:addKeyword({'citizen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'YOU CAN BECOME CITIZEN IN THE HALL OF ANCIENTS.'})
keywordHandler:addKeyword({'kroox'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'WE COULD TEACH HIM MUCH IF HE LISTENED.'})
keywordHandler:addKeyword({'jimbin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'HIS BREWERY SAVED OUR DAY MORE THEN ONCE IN MANY WAYS.'})
keywordHandler:addKeyword({'maryza'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'LOVELY, BUT PREDJUDICED AS MOST DWARFS ARE.'})
keywordHandler:addKeyword({'bezil'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'BEZIL AND NEZIL ARE RUNNING A SHOP.'})
keywordHandler:addKeyword({'uzgod'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'WE COULD MAKE FOR HIM MACHINES TO DO HIS WORK IN HALF THE TIME I BET.'})
keywordHandler:addKeyword({'etzel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'WHO NEEDS MAGIC? PAH!'})
keywordHandler:addKeyword({'duria'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'KNIGHTS DO NOT HAVE THE BRAIN TO EVEN UNDERSTAND WHAT WE ARE OFFERING THEM.'})
keywordHandler:addKeyword({'offering'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'YES, THE MOST SOPHISTICATED ITEMS THEY BUY ARE CROSSBOWS.'})

shopModule:addBuyableItem({'crossbow'}, 2455, 1150, 1, 'crossbow')
shopModule:addBuyableItem({'bolt'}, 2543, 5, 1, 'bolt')

keywordHandler:addKeyword({'emperor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'AT LEAST HES SMART ENOUGH TO LEAVE US ALONE, SO THERES HOPE FOR HIM.'})
keywordHandler:addKeyword({'motos'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'STUPID IDIOT, WITH SOME MORE RESOURCES I COULD BUILD FOR HIM WARMACHINES BEYOND HIS WILDEST DREAMS! <insane laughter>'})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'ONE DAY OUR MACHINES WILL CHANGE THE ARMY STRUCTURES DRASTICALLY, JAWOLL!'})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I BET I COULD BUILD A MACHINE TO SHRED HIM INTO PIECES!'})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'OLD FASHIONED BUTTERKNIFE! IF THEY LET ME, I WOULD CREATE WEAPONS THAT LEVEL ENTIRE CITIES!'})
keywordHandler:addKeyword({'news'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'ASK JIMBIN ABOUT HIS BREWS, NOT ME!'})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I COULDN\'T CARE LESS ABOUT THEM.'})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'WHOM YOU ARE CALLING A WHELP, YOU &$(&*#!'})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'BRING ME THE SCREWDRIVER OF KURIK AND I WILL REWARD YOU WITH A STEAMPOWERED SPIKESWORD!'})
keywordHandler:addKeyword({'gold'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'DONATIONS ARE ALWAYS WELCOME!'})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'YOU ARE TOO STUPID FOR MOST OF OUR STUFF, BUT I COULD SELL YOU SOME CROSSBOWS.'})
keywordHandler:addKeyword({'fight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'NO, DONT SWITCH OUT THE LIGHT.'})
keywordHandler:addKeyword({'technical details'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'TECH DETAILS ABOUT WHAT???'})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'ONE DAY I WILL CREATE A CLOCK FOR THE COLOSSUS'})
keywordHandler:addKeyword({'colossus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'NICE PIECE OF WORK. WOULD BE MORE FUN IF IT COULD MOVE AROUND... WE HAVE PLANS...'})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	-- The Postman Missions Quest
	if msgcontains(msg, 'dress pattern') and topic == 6 then
	npcHandler:say('A PRESS LANTERN? NEVER HEARD ABOUT IT!')
	topic = 7
	
	elseif msgcontains(msg, 'dress pattern') and topic == 7 then
	npcHandler:say('CHESS? I DONT PLAY CHESS!')
	topic = 8
	
	elseif msgcontains(msg, 'dress pattern') and topic == 8 then
	npcHandler:say('A PATTERN IN THIS MESS?? HEY DON\'T INSULT MY MACHINEHALL!')
	topic = 9
	
	elseif topic == 9 and msgcontains(msg, 'uniform') or msgcontains(msg, 'dress pattern') then
	npcHandler:say('AH YES! I WORKED ON THE DRESS PATTERN FOR THOSE UNIFORMS. STAINLESS TROUSERS, STEAM DRIVEN BOOTS! ANOTHER MARVEL TO BEHOLD! I\'LL SEND A COPY TO KEVIN IMEDIATELY!')
	setPlayerStorageValue(cid, 233, 4)
	
	elseif msgcontains(msg, 'dress pattern') and getPlayerStorageValue(cid,233) == 3 then
	npcHandler:say('DRESS FLATTEN? WHO WANTS ME TO FLATTEN A DRESS?')
	topic = 6
	
	elseif msgcontains(msg, 'dress pattern') and getPlayerStorageValue(cid,233) ~= 3 then
	npcHandler:say('DRESS FLATTEN? WHO WANTS ME TO FLATTEN A DRESS?')
	topic = 0
	
	elseif msgcontains(msg, 'uniform') then
	npcHandler:say('NO, HERE IS NO UNICORN!')
	topic = 0
	
	elseif msgcontains(msg, 'heal') then
	npcHandler:say('I AM AN ENGINEER, NOT A DOCTOR!')
	
	elseif msgcontains(msg, 'heal') and hasCondition(cid, CONDITION_FIRE) == true then
	npcHandler:say('YOU ARE BURNING! THAT\'S FUN, HOW DO YOU DO THAT?')
	doRemoveCondition(cid, CONDITION_FIRE)
    doSendMagicEffect(getCreaturePosition(cid), 14)
	
	elseif msgcontains(msg, 'heal') and hasCondition(cid, CONDITION_POISON) == true then
	npcHandler:say('YOU ARE POISONED! HAVE YOU DRUNK THE STUFF IN A GREEN BOTTLE? THAT\'S SUPERGLUE, NOT SUPPER-GLUE, STUPID!')
	doRemoveCondition(cid, CONDITION_POISON)
	doSendMagicEffect(getCreaturePosition(cid), 13)
	end

return true
end	
	
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())