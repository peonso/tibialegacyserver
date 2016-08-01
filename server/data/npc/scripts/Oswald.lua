dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end


keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If there weren't so many people harassing me, life could be great."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hey, I am not a shopkeeper, I am an important man!"})
keywordHandler:addKeyword({'harassing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You need not ask me about that, you are perfect in that."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am honored to be the assistant of the great, the illustrious, the magnificent Durin!"})
keywordHandler:addKeyword({'durin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just between you and me, he can be quite a tyrant."})
keywordHandler:addKeyword({'important'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am honored to be the assistant of the great, the illustrious, the magnificent Durin!"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Oswald, but let's proceed, I am a very busy man."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is nearly tea time, so please hurry!"})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I inform higher officials of your need... sometimes."})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you want to see dungeons just don't pay your taxes."})
keywordHandler:addKeyword({'sewer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our sewer system is very modern, but crowded with rats and wannabe heroes."})
keywordHandler:addKeyword({'assistant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have a job of great responsibility, mostly I keep annoying persons away from my boss."})
keywordHandler:addKeyword({'annoying'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You better don't ask, you wouldn't like the answer."})
keywordHandler:addKeyword({'thank'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You are... uhm... welcome. Are you finished already?"})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think the gods are too busy to care about us mortals, hmm... that makes me feel godlike, too."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah, yes, yes, hail to King Tibianus! Long live the king and so on..."})
keywordHandler:addKeyword({'sam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A simple shopkeeper with minor intelligence."})
keywordHandler:addKeyword({'benjamin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do you expect from ex-soldiers? He is nuts! Hacked on the head far too often."})
keywordHandler:addKeyword({'gorn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He sells his scrolls far too expensive."})
keywordHandler:addKeyword({'quentin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heard he was a ladies' man in younger days. In our days he is rumoured to wear women clothes now and then."})
keywordHandler:addKeyword({'bozo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Isn't he the artist formerly known as the prince?"})
keywordHandler:addKeyword({'mud'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heared Sam dated a female mud-wrestler once."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's rumoured that Sam does not forge all weapons himself, but buys them from his cousin, who is married to a cyclops."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I overheard a conversation of officials, that magic will be forbidden soon."})
keywordHandler:addKeyword({'power'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are people who talk about a rebellion against King Tibianus."})
keywordHandler:addKeyword({'rebellion'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are people who talk about a rebellion against King Tibianus."})
keywordHandler:addKeyword({'spell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I was told sometimes that sorcerers are toasted by misfired spells of their own."})
keywordHandler:addKeyword({'muriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is rumoured to summon kinky demons to... well you know."})
keywordHandler:addKeyword({'elane'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They say she killed over a dozen husbands already."})
keywordHandler:addKeyword({'marvik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Who knows what this old man is up to in his hideout when no one is watching?"})
keywordHandler:addKeyword({'gregor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I was told he lost a body part or two in duels... if you know what I mean."})
keywordHandler:addKeyword({'lugri'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some say he is Ferumbras in disguise."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's beyond all doubt that certain sinister elements in our city have certain knowledge about this myth."})
keywordHandler:addKeyword({'chester'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I never found any rumour concerning him, isn't that odd?"})
keywordHandler:addKeyword({'ardua'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She's a bitch, trust me. She was the girlfriend of the evil Partos some time ago."})
keywordHandler:addKeyword({'partos'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What a shame. He claimed to be the king of thiefs and was caught stealing some fruit."})
keywordHandler:addKeyword({'gamel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This man lives in the darkness like a rat and is also as handsome as one of them. He surely is up to no good and often consorts with sinister strangers."})
keywordHandler:addKeyword({'strangers'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just last week a one eyed man, who had a room at Frodo's, met him in the middle of the night."})
keywordHandler:addKeyword({'goshnar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They say he isn't truly dead. He was... or is a necromant after all."})
keywordHandler:addKeyword({'necromant nectar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You are not the first one to ask about that. Am I the only one that preferes wine to such disgusting stuff?"})



function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
if msgcontains(msg, 'monster') or msgcontains(msg, 'Monster') then
npcHandler:say("AHHHH!!! WHERE??? WHERE???", 1)
npcHandler:releaseFocus()
npcHandler:resetNpc()

elseif msgcontains(msg, 'rumo') or msgcontains(msg, 'Rumo') or msgcontains(msg, 'gossip') or msgcontains(msg, 'new') then
npcHandler:say("You know a rumour? TELL ME! TELL ME! TELL ME!", 1)
talk_state = 3

elseif talk_state == 3 and msgcontains(msg, '') then
npcHandler:say("Fascinating! Absolutely fascinating!", 1)	
talk_state = 0
end
    return true
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())