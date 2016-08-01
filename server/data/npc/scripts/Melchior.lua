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
	npcHandler:setMessage(MESSAGE_GREET, "Greetings, ".. getPlayerName(cid) ..". I do not see your face, but I can read a thousand things in your voice!")
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Welcome, ".. getPlayerName(cid) .."! The lovely sound of your voice shines like a beam of light through my solitary darkness!")
	return true
	end	
end	
npcHandler:setCallback(CALLBACK_GREET, greetCallback)


keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My late father, may he rest in peace, chose to call me Melchior."})
keywordHandler:addKeyword({'melchior'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That is my name."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a poor beggar. I try to make a meagre living here since a cruel fate has left me a blind man."})
keywordHandler:addKeyword({'blind'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, I am. I was not born that way, but a cruel fate caused me to lose my eyesight."})
keywordHandler:addKeyword({'gabel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is the leader of the Marid! I have never met him myself, but everybody was full of praise for him back at Ashta'daramai. The legend has it that it was him who introduced the djinns to wise Daraman's teachings."})
keywordHandler:addKeyword({"fa'hradin"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I know that name. He is a Marid, right? I have met him once. He seemed pretty important."})
keywordHandler:addKeyword({"baa'leal"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Cursed be that djinn! It was him who blinded me, and I bet casting me out into the Kha'labal was his idea, too. Believe me, I would try to kill him if only I could."})
keywordHandler:addKeyword({'haroun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A Marid trader. I have often had dealings with him. He drove me mad because he never accepted any haggling, but then he never ever tried to trick me. He was not really a trader at heart, I suppose. He was more of a monk or maybe a preacher."})
keywordHandler:addKeyword({"bas'saam"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, I know him. He is an Efreet trader. I met him often during my travels, and even though there was no real sympathy we had a certain mutual respect for each other. But all that changed when he found out I had dealings with the Marid."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Tibia is such a beautiful place. I would give it all if I could see it again."})
keywordHandler:addKeyword({'daraman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Daraman was a holy man, a true prophet. He showed us how we can master grief and affliction through dignity and brotherliness. It is a shame I only came to fully appreciate his teachings when fate had cast me into darkness."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "<Sighs> Aah yes... Darashia. I would give anything if I could see it again."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have never been to cities on other continents. And I suppose now I never will. I would be glad enough to leave this place."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have never been to cities on other continents. And I suppose now I never will. I would be glad enough to leave this place."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have never been to cities on other continents. And I suppose now I never will. I would be glad enough to leave this place."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have never been to cities on other continents. And I suppose now I never will. I would be glad enough to leave this place."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have never been to cities on other continents. And I suppose now I never will. I would be glad enough to leave this place."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have never been to cities on other continents. And I suppose now I never will. I would be glad enough to leave this place."})
keywordHandler:addKeyword({"pharaoh"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The pharaoh? He is always in the palace, so I have heard only rumors about him. But I know one thing for sure - he is mad. End of story."})
keywordHandler:addKeyword({'ruler'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The pharaoh? He is always in the palace, so I have heard only rumors about him. But I know one thing for sure - he is mad. End of story."})
keywordHandler:addKeyword({'place'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The palace lies to the south of the arena and to the west of the temple. Better stay clear of that place. If but half the things I have heard about it are true this palace is not a place for the living anymore."})
keywordHandler:addKeyword({'arena'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah yes, the arena. I do not really know what's going on there, because I have never seen it myself. However, I often hear strange noises from there, cheers and jeers and sometimes pityful screams."})
keywordHandler:addKeyword({'temple'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That temple is very old, and for centuries it used to be a place of worship and of contemplation. Now that the priests there are fanatic followers of the pharaoh this is no longer a holy place."})
keywordHandler:addKeyword({'ascension'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The concept of ascension is central to the pharaoh's creed. I am not sure I really understand it, but apparently it has to do with transformation to undeath. Nice, isn't it?"})
keywordHandler:addKeyword({'rah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah yes - I recognise that. According to the pharaoh that is a living being's soul."})
keywordHandler:addKeyword({'uthun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "According to the pharaoh's teachings this is the total of a living being's memories and personal experiences."})
keywordHandler:addKeyword({'akh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In the pharaoh's creed, this is what the physical body is called."})
keywordHandler:addKeyword({'mourn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Spare me that inane twaddle, will you? I am glad enough to be alive, thank you."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())