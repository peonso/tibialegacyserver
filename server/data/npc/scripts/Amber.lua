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

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if msgcontains(msg, 'book') or msgcontains(msg, 'notebook') then
	npcHandler:say('Do you bring me my notebook?')
	talk_state = 1
	
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerItemCount(cid,1955) >= 1 then
	npcHandler:say('Excellent. Here, take this short sword, that might serve you well.')
	doPlayerAddItem(cid, 2406)
	doPlayerRemoveItem(cid,1955, 1)
	talk_state = 0
	elseif msgcontains(msg, 'yes') and talk_state == 1 and getPlayerItemCount(cid,1955) == 0 then
	npcHandler:say('Hm, you don\'t have it.')
	talk_state = 0
	elseif msgcontains(msg, 'no') and talk_state == 1 then
	npcHandler:say('Too bad.')
	talk_state = 0
	
	elseif msgcontains(msg, 'orcish') or msgcontains(msg, 'language') or msgcontains(msg, 'prisoner') then
	npcHandler:say('I speak some orcish words, not much though, just \'yes\' and \'no\' and such basic.')
	talk_state = 2
	
	elseif msgcontains(msg, 'yes') and talk_state == 2 then
	npcHandler:say('It\'s \'mok\' in orcish. I help you more about that if you have some food.')
	elseif msgcontains(msg, 'no') and talk_state == 2 then
	npcHandler:say('In orcish that\'s \'burp\'. I help you more about that if you have some food.')
	
	elseif msgcontains(msg, 'food') then
	npcHandler:say('My favorite dish is salmon. Oh please, bring me some of it.')
	
	elseif msgcontains(msg, 'salmon') then
	npcHandler:say('Yeah! If you give me some salmon I will tell you more about the orcish language.')
	talk_state = 3
	
	elseif msgcontains(msg, 'yes') and talk_state == 3 and getPlayerItemCount(cid,2668) >= 1 then
	npcHandler:say('Thank you. Orcs call arrows \'pixo\'.')
	doPlayerRemoveItem(cid,2668,1)
	elseif msgcontains(msg, 'yes') and talk_state == 3 and getPlayerItemCount(cid,2668) == 0 then
	npcHandler:say('You don\'t have one!')
	talk_state = 0
	
	elseif msgcontains(msg, 'bye') and (talk_state >= 1 and talk_state <= 3) then
	npcHandler:say('See you later.')
	talk_state = 0
	
	end

	return true
end

keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am recovering from a sea journey."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I explore and seek adventure."})
keywordHandler:addKeyword({'explore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have been almost everywhere in Tibia."})
keywordHandler:addKeyword({'adventure'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I fought fierce monsters, climbed the highest mountains, and crossed the sea on a raft."})
keywordHandler:addKeyword({'sea'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My trip over the sea was horrible. The weather was bad, the waves high and my raft quite simple."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I lost my watch in a storm."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can't help you much beyond information."})
keywordHandler:addKeyword({'information'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just ask and I'll try to answer."})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have not had the time to explore the dungeons of this isle, but I have seen two big caves in the east, and there is a ruined tower in the northwest."})
keywordHandler:addKeyword({'sewer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I like sewers. I made my very first battle experience in the Thais sewers. The small sewersystem of Rookgaard has some nasty rats to fight."})
keywordHandler:addKeyword({'assistant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have a job of great responsibility. Mostly I keep annoying persons away from my boss."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, I fought orcs, cyclopses, minotaurs, and even green dragons."})
keywordHandler:addKeyword({'cyclops'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Horrible monsters they are."})
keywordHandler:addKeyword({'minotaur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Horrible monsters they are."})
keywordHandler:addKeyword({'dragon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Horrible monsters they are."})
keywordHandler:addKeyword({'raft'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I left my raft at the south eastern shore. I forgot my private notebook on it. If you could return it to me I would be very grateful."})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I left my raft at the south eastern shore. I forgot my private notebook on it. If you could return it to me I would be very grateful."})
keywordHandler:addKeyword({'mission'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I left my raft at the south eastern shore. I forgot my private notebook on it. If you could return it to me I would be very grateful."})
keywordHandler:addKeyword({'seymour'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think this poor guy was a bad choice as the head of the academy."})
keywordHandler:addKeyword({'academy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A fine institution, but it needs definitely more funds from the king."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "King Tibianus is the ruler of Thais."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A fine city, but the king has some problems enforcing the law."})
keywordHandler:addKeyword({'cipfried'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A gentle person. You should visit him, if you have problems."})
keywordHandler:addKeyword({'dallheim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "An extraordinary warrior. He's the first and last line of defense of Rookgaard."})
keywordHandler:addKeyword({'hyacinth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hyacinth is a great healer. He lives somewhere hidden on this isle."})
keywordHandler:addKeyword({'willie'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He's funny in his own, gruffy way."})
keywordHandler:addKeyword({'obi'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He's a funny little man."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The best weapons on this isle are just toothpicks, compared with the weapons warriors of the mainland wield."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can learn spells only in the guildhalls of the mainland."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I try to explore each spot of Tibia, and one day I will succeed."})
keywordHandler:addKeyword({'castle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you travel to Thais, you really should visit the marvelous castle."})
keywordHandler:addKeyword({'language'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I speak some orcish words, not much though, just 'yes' and 'no' and such basic."})
keywordHandler:addKeyword({'prisoner'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I speak some orcish words, not much though, just 'yes' and 'no' and such basic."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My favorite dish is salmon. Oh please, bring me some of it."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())