local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)	npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)	npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg) end
function onThink()	npcHandler:onThink() end

function greetCallback(cid)
	if getPlayerStorageValue(cid,222) == -1 then
		npcHandler:say('No! The hornless have reached my city! BODYGUARDS TO ME!')
		
		pos = getCreaturePosition(getNpcCid())
		local northEast = {x=pos.x+1,y=pos.y-1,z=pos.z}
		local northWest = {x=pos.x-1,y=pos.y-1,z=pos.z}
		local southEast = {x=pos.x+1,y=pos.y+1,z=pos.z}
		local southWest = {x=pos.x-1,y=pos.y+1,z=pos.z}
		local East = {x=pos.x+1,y=pos.y,z=pos.z}
		local West = {x=pos.x-1,y=pos.y,z=pos.z}
		local South = {x=pos.x,y=pos.y+1,z=pos.z}
		local North = {x=pos.x,y=pos.y-1,z=pos.z}

		doSummonCreature('Minotaur Archer', northWest)
		doSummonCreature('Minotaur Archer', West)
		doSummonCreature('Minotaur Archer', southWest)
		doSummonCreature('Minotaur Archer', South)
		doSummonCreature('Minotaur Guard', southEast)
		doSummonCreature('Minotaur Guard', East)
		doSummonCreature('Minotaur Mage', northEast)
		doSummonCreature('Minotaur Mage', North)
		setPlayerStorageValue(cid,222,1)
	else
		npcHandler:setMessage(MESSAGE_GREET, 'Well ... you defeated my guards! Now everything is over! I guess I will have to answer your questions now.')
		return true
	end
	
	if getPlayerStorageValue(cid,245) == 2 then
		npcHandler:setMessage(MESSAGE_GREET, 'Oh, it\'s you again. What do you want, hornless messenger?')
		return true
	end
end

npcHandler:setCallback(CALLBACK_GREET, greetCallback)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I am the king of all minotaurs. I have been the king for more than 320 years.'})
keywordHandler:addKeyword({'real'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Yes, I am the real king. Palkar is the leader of the outcasts.'})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I am Markwin, the old and real king of this city.'})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Don\'t ask me such stupid questions. My time is over right now.'})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I am the real king!'})
keywordHandler:addKeyword({'outcast'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Those are no minos any longer. They left the city and killed their brothers. And they stole the key to my secret lab.'})
keywordHandler:addKeyword({'mintwallin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The former glorious city lies in the dirt. It is my home. I founded it about 180 years ago, when we found this lovely place.'})
keywordHandler:addKeyword({'chronicle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I am one of the minotaurs that are able to write. So I wrote most of the history of my beloved city Mintwallin in some books.'})
keywordHandler:addKeyword({'prisoner'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'He is totally mad. I don\'t know how he could find the way through the labyrinth. I arrested him in the prison.'})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I hate them all. Minotaurs have no own spelling, so I used the speech of the humans. Once I was a prisoner of them. Since then I hate them - and since then I can speak and write in their language.'})
keywordHandler:addKeyword({'labyrinth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'It protected us for a long time. There are lots of traps in it. And many long tunnels. There haven\'t been many foes that found their way through it. Only that prisoner once arrived.'})
keywordHandler:addKeyword({'kaplar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I really don\'t know what it means. But ALL minos say it! Terrible!'})
keywordHandler:addKeyword({'secret lab'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Hehe - you will never find a way to enter it. The outcast stole the key. You are too weak to conquer it. HARHARHAR.'})
keywordHandler:addKeyword({'enter'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'To enter the laboratory is pretty difficult.'})
keywordHandler:addKeyword({'enter lab'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'First of all you will need a second fellow to help you.'})
keywordHandler:addKeyword({'second fellow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Yeah - he has to step on a special tile and an entrance will appear at a very poisenous place!'})
keywordHandler:addKeyword({'place'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Na! You will have to find it yourself!'})
keywordHandler:addKeyword({'second'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'After you entered the first area you will need the key from the outcasts.'})
keywordHandler:addKeyword({'minotaurs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'My fellows all are minotaurs. It is my folk. I am the king of all minos.'})
keywordHandler:addKeyword({'key'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'There are many keys. The outcast stole the key to our secret lab! They should burn!'})
keywordHandler:addKeyword({'demon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'He was the beginning of our end. He is mighty and powerful. He killed many brave minos and after his arrival we weren\'t able to go up to the surface.'})
keywordHandler:addKeyword({'light'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I would like to see the light of the sun again, but you will probably kill me. Go away!'})
keywordHandler:addKeyword({'palkar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'He is the leader of the outcast. In former times he was my best warrior, but now he is my worst enemy.'})
keywordHandler:addKeyword({'riddle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Riddle? I don\'t know riddles!'})
keywordHandler:addKeyword({'karl'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The man who explored this part of the map first. Strange guy. He likes to be announced as hunter. I don\'t like him. He is a human.'})
keywordHandler:addKeyword({'milk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'No! I won\'t tell you the powers of our milk!'})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	-- The Postman Missions Quest
	if msgcontains(msg, 'letter') and getPlayerStorageValue(cid,245) == 1 then
	npcHandler:say('A letter from my Moohmy?? Do you have a letter from my Moohmy to me?')
	topic = 1
	
	elseif topic == 1 and msgcontains(msg, 'yes') and getPlayerItemCount(cid,2333) >= 1 then
	npcHandler:say('Uhm, well thank you, hornless beeing.')
	doPlayerRemoveItem(cid,2333,1)
	setPlayerStorageValue(cid,245,2)
	topic = 0
	
	elseif topic == 1 and msgcontains(msg, 'yes') and getPlayerItemCount(cid,2333) < 1 then
	npcHandler:say('Don\'t mock the king of the minotaurs or you will regret that!')
	topic = 0
	
	elseif topic == 1 and msgcontains(msg, '') then
	npcHandler:say('Uh? What??')
	topic = 0
	end
	
	return true
end
	
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())