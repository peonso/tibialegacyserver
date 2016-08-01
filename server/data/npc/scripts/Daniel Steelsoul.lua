dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local fire = createConditionObject(CONDITION_FIRE)
setConditionParam(fire, CONDITION_PARAM_DELAYED, 10)
addDamageCondition(fire, 1, 3000, -10)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Nothing new from the north."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "LONG LIVE THE KING!"})
keywordHandler:addKeyword({'leader'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "King Tibianus III is our wise and just leader."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Sir Daniel Steelsoul of the Sacred Order of Banor's Blood."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the governor of this isle, Edron, and grandmaster of the Knights of Banor's Blood."})
keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I did not have much sleep lately, but I am fine."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The army protects the Thaian realm. The order of the Knights of Banor's Blood supports them with all our skills."})
keywordHandler:addKeyword({'guard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The army protects the Thaian realm. The order of the Knights of Banor's Blood supports them with all our skills."})
keywordHandler:addKeyword({'general'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Harkath Bloodblade declined the governorship because he's needed more in Thais."})
keywordHandler:addKeyword({'enemies'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Evil challenges the forces of good in any shape. Be it the claws of vicious monsters or the seductive dark secrets of rotten power."})
keywordHandler:addKeyword({'enemy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Evil challenges the forces of good in any shape. Be it the claws of vicious monsters or the seductive dark secrets of rotten power."})
keywordHandler:addKeyword({'banors blood'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We believe that the blood of Banor runs through the veins of all humans. Therefore, we are responsible to live up to Banors standards and not to stain his legacy with sinful acts."})
keywordHandler:addKeyword({'castle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The castle was built on elder foundations we found on this isle."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This isle is rumoured to have been the home of a powerful ancient race which became extinct before the corpsewars. It was up to King Tibianus III to reclaim it for humanity and to found this colony."})
keywordHandler:addKeyword({'colony'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "With the Thaian army bound to other duties, our order was entrusted to secure the area. We defeated the evil minotaurs living right here and cleansed the isle of their unholy presence."})
keywordHandler:addKeyword({'minotaur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The minotaurs, though evil, were worthy opponents. After the treason of the man who is now known as Kaine Kinslayer, we lack the manpower to crush their cyclopean allies, too."})
keywordHandler:addKeyword({'cyclop'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They live in an underground city, known as cyclopolis in the north of the isle. Constantly forging weapons for the servants of darkness."})
keywordHandler:addKeyword({'allies'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They live in an underground city, known as cyclopolis in the north of the isle. Constantly forging weapons for the servants of darkness."})
keywordHandler:addKeyword({'kaine'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He was my second in command. After learning about the forbidden ruins, he, the priestess Agaltha, and their followers freed the criminals we brought here as workers and headed to the north."})
keywordHandler:addKeyword({'ruins'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "An ancient taboo forbids to enter the northern ruins."})
keywordHandler:addKeyword({'taboo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We thought it was only superstition and no one bothered that Kaine and his friends went there to hunt servants of evil that might have hidden there. So we did not notice the dark cult they started."})
keywordHandler:addKeyword({'cult'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We know only little about them. Kaine and his fallen knights were joined by criminal scum and remaining forces of darkness that escaped us. They were joined by some ominous dark monks."})
keywordHandler:addKeyword({'monk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We don't know if they came here or already hid in the ruins as we arrived. Maybe they seduced Kaine or Agaltha, maybe they were theirs for years."})
keywordHandler:addKeyword({'agaltha'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She was beautiful but seemed cold hearted. She spoke little to me, prefered the company of Kaine."})
keywordHandler:addKeyword({'eremo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Eremo is a very wise man. I visit him sometimes on his little island near Edron. Just ask a fisherman for a passage."})
keywordHandler:addKeyword({'fisherman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Pemaret is a fisherman on Cormaya."})
keywordHandler:addKeyword({'cormaya'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is a peaceful isle next to Edron with a nice village. There, you should visit the wonderful garden."})
keywordHandler:addKeyword({'falk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A promising young fellow."})
keywordHandler:addKeyword({'horn plenty'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hardly find the time to visit the tavern."})
keywordHandler:addKeyword({'mirabell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hardly find the time to visit the tavern."})
keywordHandler:addKeyword({'willard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "When he was young, Willard served in the royal army."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Look for Willard, our local blacksmith."})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Look for Willard, our local blacksmith."})
keywordHandler:addKeyword({'academy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "After the treason of Kaine, we observe these mages closely. If even a knight falls prey to the seduction of the forbidden ruins, no one can tell how easy some of these mystics might betray his people."})
keywordHandler:addKeyword({'amanda'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think this nun might be a bit young for this position, but I won't question the decisions of the church of Banor's Blood."})
keywordHandler:addKeyword({'benjamin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He and his men fought against Ferumbras somewhere in the north of this isle, long before there were even plans of a colony. Only old Ben returned alive from the battle, but his mind was broken."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He searched something in the north of the isle years ago. Probably he needed something from the forbidden ruins. He was chased and fought by the troops of General Benjamin."})
keywordHandler:addKeyword({'join'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You may join the order of Banor's blood if you prove your honor."})
keywordHandler:addKeyword({'honor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Only those who live a life of bravery, honor, and piety may join our sacred order."})
keywordHandler:addKeyword({'piety'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Only those who live a life of bravery, honor, and piety may join our sacred order."})
keywordHandler:addKeyword({'bravery'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Only those who live a life of bravery, honor, and piety may join our sacred order."})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A life in bravery, honor, and piety should be every man's most important quest."})
keywordHandler:addKeyword({'mission'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A life in bravery, honor, and piety should be every man's most important quest."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I worship Banor, the first champion of good!"})
keywordHandler:addKeyword({'banor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "His spirit and blood are within us. Honor this fact or be cast into hell."})
keywordHandler:addKeyword({'brog'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The rotten cyclopses whorship the raging giant of hell."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We cleansed the south of any major enemy, but watch out while travelling the north."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "With this weapon in my hand, I would teach the servants of darkness the true meaning of the word fear."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Now and then a dwarf comes to this isle. Most behave secretive about their reason to come here. As far as I can tell they are looking for some dwarfish artifact which was lost in ancient times."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Now and then a dwarf comes to this isle. Most behave secretive about their reason to come here. As far as I can tell they are looking for some dwarfish artifact which was lost in ancient times."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I belong to a sacred order and don't bother about mundane politics."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
if talk_state == 2 and msgcontains(msg, 'yes') then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
elseif talk_state == 2 and msgcontains(msg, '') then
	npcHandler:say("Then be more careful with your words!", 1)
	talk_state = 0
elseif msgcontains(msg, 'zathroth') or msgcontains(msg, 'Zathroth') then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Do not mention the name of the cursed one!", 1)
	talk_state = 0
elseif msgcontains(msg, "idiot") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "asshole") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "retard") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "sucker") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "fag") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "fuck") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "shut up") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "shit") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0		
	elseif msgcontains(msg, "ugly") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "smell") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "blow") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "cock") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "dick") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "pussy") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0	
	elseif msgcontains(msg, "vagina") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "bitch") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
	elseif msgcontains(msg, "nigger") then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0	
end	
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())