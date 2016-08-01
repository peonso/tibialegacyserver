dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

keywordHandler:addKeyword({'prisoner'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think Lorbas liked the idea to 'convert' me to their twisted cult and saw it as a test for their leaders. Now that the magic symbols are turned off, I will gather my strength within some hours and teleport to safety."})
keywordHandler:addKeyword({'humble'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are no records about the foundation of this order, and it is unknown where its 'monks' come from. Yet, travellers told us that they are living near the remains of the dark cathedral."})
keywordHandler:addKeyword({'path'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are no records about the foundation of this order, and it is unknown where its 'monks' come from. Yet, travellers told us that they are living near the remains of the dark cathedral."})
keywordHandler:addKeyword({'monk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I learnt that these monks are impostors that use false promises to lure unwary ones into the arms of their strange cult which seems to have more political than religious agendas."})
keywordHandler:addKeyword({'power'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have no idea who is the mastermind behind all this, but it seems too big and too well organised to be the work of only a handful of false monks."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king is a wise ruler but his realm is large and we all need to work hard to make the world a better place."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sadly the trade barons care more about wealth than the gods."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Many see Thais as a fallen city but it is only the loudness of an ugly minority that gives people this impression."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The druids have their own way to interpret the gods' will and this has to be respected."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The downfall of some of the most noble knights there should serve us as a warning to stay on guard for the evil that wants to lure us on the wrong path."})
keywordHandler:addKeyword({'gods'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would love to discuss the teachings of the gods with you but this is neither the time nor the place."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We all have to help to make this world a better place."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves carry bitterness and pain in their souls. But it is them that have forgotten about the gods and not the other way around."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves carry bitterness and pain in their souls. But it is them that have forgotten about the gods and not the other way around."})
keywordHandler:addKeyword({'dwarfs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves carry bitterness and pain in their souls. But it is them that have forgotten about the gods and not the other way around."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The elves have lost their balance and identity. In this unstable state they can easily be misled or might draw the wrong conclusions."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The elves have lost their balance and identity. In this unstable state they can easily be misled or might draw the wrong conclusions."})
keywordHandler:addKeyword({'elfs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The elves have lost their balance and identity. In this unstable state they can easily be misled or might draw the wrong conclusions."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A far away continent that will widen our view of the wonders the gods provide us with."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I know only little about the teachings of Daraman but as far as I heard they concentrate too much on the single individual instead on the world as a whole."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This city is the best example where godless philosophies might lead to."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is only one of the many servants of the evil. Eventually he will fall but there will be others to take his place."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One day this weapon will be unearthed and then it will be wielded against the servants of the evil."})
keywordHandler:addKeyword({'assassin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The assassins are the eyes and the long arm of this damnable cult. They eliminate the enemies and those who found out too much about their plans. Be aware of that and always watch your back."})
keywordHandler:addKeyword({'dark monk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dark monks are the teachers and seducers of this cult. They work covertly in the cities and train thieves and assassins in the underground base here."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
--Give Destination--
if msgcontains(msg, 'teleport') and npcHandler.focus == cid then
	bcprice = 0
	bcdestination = {x=32626, y=32402, z=10}
	npcHandler:say("I am still gathering my strength for a teleport home, but some power already has returned. Do you wish to be teleported out of this cell?", 1)
	talk_state = 9166
--End of Give Destination--
	
--System that does the job after confirm destination--
elseif talk_state == 9166 and msgcontains(msg, 'yes') and npcHandler.focus == cid then
		if doPlayerRemoveMoney(cid, bcprice) == true then
		doTeleportThing(cid, bcdestination)
		doSendMagicEffect(bcdestination, 10)
		npcHandler:say("So be it!", 1)
		talk_state = 0
		else
		npcHandler:say("You don't have enough money.", 1)
		talk_state = 0
		end
--End of the System that does the job after confirm destination--


elseif talk_state == 0 and msgcontains(msg, 'job') and npcHandler.focus == cid then
	npcHandler:say("I am a priestess and I travelled here to learn about that order of the humble path I heard about. ...", 1)
	npcHandler:say('But when I started my investigations, this false monk Lorbas thought that I was suspicious and so he ordered his minions to take me as prisoner.', 5)

elseif talk_state == 0 and msgcontains(msg, 'cult') and npcHandler.focus == cid then
	npcHandler:say("The cult is secretly looking for the unsatisfied, disgrunteled and poor. Its members promise such sad individuals wealth, revenge and a cause. ...", 1)
	npcHandler:say("They lure them into the cells of their cult. Here they learn how to undermine the authorities of their cities. They are trained as thieves, spies and smugglers first. ...", 5)
	npcHandler:say("Those who prove themselves as the most promising candidates are recruited to a special hidden circle. There they learn the dark arts of poisoning and murder, or elocution and agitation to become assassins and recruiters for the cult. ...", 9)
	npcHandler:say("I know nothing about their agenda but I am quite sure there has to be some higher power behind all of this.", 13)

elseif talk_state == 0 and msgcontains(msg, 'cathedral') and npcHandler.focus == cid then
	npcHandler:say("The cathedral was meant to be a centre of piety and believe. A prayer to the gods that had become solid. ...", 1)
	npcHandler:say("The construction works started at the height of the Order of the Nightmare Knights, right after they had won a major battle near the place where the cathedral was to be built. ...", 5)
	npcHandler:say("The cathedral was meant to become a monument of the victory of good over evil. ...", 9)
	npcHandler:say("Sadly it was just not meant to be. ...", 13)
	npcHandler:say("As the cathedral was nearly finished, most of the monks had already moved in and even a small town for all the workers and suppliers had established itself. ...", 17)
	npcHandler:say("But then the structure was struck by an earthquake and the work of two generations was destroyed. ...", 21)
	npcHandler:say("Later the dwarven constructors explained that this was caused by volcanic activities and a massive cave-in. ...", 25)
	npcHandler:say("Since the gods did not interfere and the setting was close to the notorious Pits of Inferno, it was assumed that this was the work of secret demonic powers.", 29)	
end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())