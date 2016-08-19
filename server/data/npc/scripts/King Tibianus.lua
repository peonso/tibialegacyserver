local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

	function FocusModule:init(handler)
	FOCUS_GREETSWORDS = {'hi king', 'hello king', 'hail king', 'hail the king'}
	FOCUS_FAREWELLSWORDS = {'bye', 'farewell'}
		self.npcHandler = handler
		for i, word in pairs(FOCUS_GREETSWORDS) do
			local obj = {}
			table.insert(obj, word)
			obj.callback = FOCUS_GREETSWORDS.callback or FocusModule.messageMatcher
			handler.keywordHandler:addKeyword(obj, FocusModule.onGreet, {module = self})
		end
		
		for i, word in pairs(FOCUS_FAREWELLSWORDS) do
			local obj = {}
			table.insert(obj, word)
			obj.callback = FOCUS_FAREWELLSWORDS.callback or FocusModule.messageMatcher
			handler.keywordHandler:addKeyword(obj, FocusModule.onFarewell, {module = self})
		end
		
		return true
	end

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am your sovereign, King Tibianus III, and it's my duty to provide justice and guidance for my subjects."})
keywordHandler:addKeyword({'justice'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I try my best to be just and fair to our citizens. The army and the TBI are a great help for fulfilling this duty."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's hard to believe that you don't know your own king!"})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The latest news are usually brought to our magnificent town by brave adventurers. They spread tales of their journeys at Frodo's tavern."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Soon the whole land will be ruled by me once again!"})
keywordHandler:addKeyword({'land'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Soon the whole land will be ruled by me once again!"})
keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thank you, I'm fine."})
keywordHandler:addKeyword({'castle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Rain Castle is my home."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sell? Sell what? My kingdom isn't for sale!"})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Honor the gods and pay your taxes."})
keywordHandler:addKeyword({'zathroth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Please ask a priest about the gods."})
keywordHandler:addKeyword({'citizen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The citizens of Tibia are my subjects. Ask the old monk Quentin to learn more about them."})
keywordHandler:addKeyword({'sam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is a skilled blacksmith and a loyal subject."})
keywordHandler:addKeyword({'frodo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is the owner of Frodo's Hut and a faithful tax-payer."})
keywordHandler:addKeyword({'gorn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He was once one of Tibia's greatest fighters. Now he is selling equipment."})
keywordHandler:addKeyword({'benjamin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He was once my greatest general. Now he is very old and senile but we entrusted him with work for the Royal Tibia Mail."})
keywordHandler:addKeyword({'harkath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Harkath Bloodblade is the general of our glorious army."})
keywordHandler:addKeyword({'bloodblade'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Harkath Bloodblade is the general of our glorious army."})
keywordHandler:addKeyword({'noodles'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The royal poodle Noodles is my greatest treasure!"})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is a follower of the evil god Zathroth and responsible for many attacks on us. Kill him on sight!"})
keywordHandler:addKeyword({'bozo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is my royal jester and cheers me up now and then."})
keywordHandler:addKeyword({'treasure'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The royal poodle Noodles is my greatest treasure!"})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Go and hunt them! For king and country!"})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Visit Quentin, the monk, for help."})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I will call for heroes as soon as the need arises again and then reward them appropriately."})
keywordHandler:addKeyword({'mission'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I will call for heroes as soon as the need arises again and then reward them appropriately."})
keywordHandler:addKeyword({'gold'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "To pay your taxes, visit the royal tax collector."})
keywordHandler:addKeyword({'money'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "To pay your taxes, visit the royal tax collector."})
keywordHandler:addKeyword({'sewer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What a disgusting topic!"})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Dungeons are no places for kings."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Feel free to buy it in our town's fine shops."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ask the royal cook for some food."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a time for heroes, that's for sure!"})
keywordHandler:addKeyword({'hero'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a time for heroes, that's for sure!"})
keywordHandler:addKeyword({'adventurer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a time for heroes, that's for sure!"})
keywordHandler:addKeyword({'collector'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He has been lazy lately. I bet you have not payed any taxes at all."})
keywordHandler:addKeyword({'tax'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "To pay your taxes, visit the royal tax collector."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the king, so mind your words!"})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ask the soldiers about that topic."})
keywordHandler:addKeyword({'enem'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our enemies are numerous. The evil minotaurs, Ferumbras, and the renegade city of Carlin to the north are just some of them."})
keywordHandler:addKeyword({'north'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They dare to reject my reign over the whole continent!"})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They dare to reject my reign over the whole continent!"})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our beloved city has some fine shops, guildhouses, and a modern system of sewers."})
keywordHandler:addKeyword({'city'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our beloved city has some fine shops, guildhouses, and a modern system of sewers."})
keywordHandler:addKeyword({'shop'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Visit the shops of our merchants and craftsmen."})
keywordHandler:addKeyword({'merchant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ask around about them."})
keywordHandler:addKeyword({'craftsmen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ask around about them."})
keywordHandler:addKeyword({'guild'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The four major guilds are the knights, the paladins, the druids, and the sorcerers."})
keywordHandler:addKeyword({'minotaur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Vile monsters, but I must admit they are strong and sometimes even cunning ... in their own bestial way."})
keywordHandler:addKeyword({'paladin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The paladins are great protectors for Thais."})
keywordHandler:addKeyword({'elane'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The paladins are great protectors for Thais."})
keywordHandler:addKeyword({'knight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The brave knights are necessary for human survival in Thais."})
keywordHandler:addKeyword({'gregor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The brave knights are necessary for human survival in Thais."})
keywordHandler:addKeyword({'sorcerer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The magic of the sorcerers is a powerful tool to smite our enemies."})
keywordHandler:addKeyword({'muriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The magic of the sorcerers is a powerful tool to smite our enemies."})
keywordHandler:addKeyword({'druid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We need the druidic healing powers to fight evil."})
keywordHandler:addKeyword({'marvik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We need the druidic healing powers to fight evil."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The forces of good are hard pressed in these dark times."})
keywordHandler:addKeyword({'evil'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We need all strength we can muster to smite evil!"})
keywordHandler:addKeyword({'order'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We need order to survive!"})
keywordHandler:addKeyword({'chaos'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Chaos arises from selfishness, and that's its weakness."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's the sword of the kings. If you could return this weapon to me I would reward you beyond your dreams."})
keywordHandler:addKeyword({'reward'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, if you want a reward, go on a quest to bring me Excalibug!"})
keywordHandler:addKeyword({'chester'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A very competent person. A little nervous but very competent."})
keywordHandler:addKeyword({'tbi'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This organisation is important in holding our enemies in check. Its headquarter is located in the bastion in the northwall."})
keywordHandler:addKeyword({'eremo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is said that he lives on a small island near Edron. Maybe the people there know more about him."})


function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

	if msgcontains(msg, 'promotion') or msgcontains(msg, 'promote') then
		npcHandler:say("Do you want to be promoted in your vocation for 20000 gold?", 1)
		talk_state = 2578	

	elseif talk_state == 2578 and msgcontains(msg, 'yes') then
		if getPlayerVocation(cid) >= 1 and getPlayerVocation(cid) <= 4 then
			if getPlayerLevel(cid) >= 20 then
				if isPremium(cid) == true then
					if doPlayerRemoveMoney(cid, 20000) == true then
					doPlayerSetVocation(cid, getPlayerVocation(cid)+4)
					CheckPlayerBlessings(cid)
					npcHandler:say("Congratulations! You are now promoted. Visit the sage Eremo for new spells.", 1)
					talk_state = 0		
					else
					npcHandler:say("You do not have enough money.", 1)
					talk_state = 0			
					end
				else
				npcHandler:say("You need a premium account in order to promote.", 1)
				talk_state = 0				
				end
			else
			npcHandler:say("You need to be at least level 20 in order to be promoted.", 1)
			talk_state = 0			
			end
		else
		npcHandler:say("You are already promoted.", 1)
		talk_state = 0	
		end
	end	
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())