local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end
local fire = createConditionObject(CONDITION_FIRE)
setConditionParam(fire, CONDITION_PARAM_DELAYED, 10)
addDamageCondition(fire, 1, 2000, -10)

	function FocusModule:init(handler)
	FOCUS_GREETSWORDS = {'hail general', 'salutations general'}
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

keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our reports are only for internal use."})
keywordHandler:addKeyword({'join army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, we dont recruit foreigners. Perhaps you can join by doing a quest for the queen."})
keywordHandler:addKeyword({'report'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our reports are only for internal use."})
keywordHandler:addKeyword({'queen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "HAIL TO QUEEN ELOISE, OUR NOBLE LEADER!"})
keywordHandler:addKeyword({'leader'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Queen Eloise is a fine leader for our fair town, indeed!"})
keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are in constant training and in perfect health."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The army protects the defenceless males of our city. Our elite forces are the Green Ferrets."})
keywordHandler:addKeyword({'guard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The army protects the defenceless males of our city. Our elite forces are the Green Ferrets."})
keywordHandler:addKeyword({'green ferrets'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our elite forces are trained by rangers and druids. In the woods they are only second to some elves."})
keywordHandler:addKeyword({'castle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The castle is not meant for defence but as a residence for the royal family."})
keywordHandler:addKeyword({'subject'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our citizens have the luck to live under the wise rule of our beloved queen!"})
keywordHandler:addKeyword({'dogs of war'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are a men's club, mainly concerned about bragging and drinking alcohol."})
keywordHandler:addKeyword({'knights of noodles'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are rumoured to be skilled fighters. Then again, in the land of the blind..."})
keywordHandler:addKeyword({'druid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are our main magic support and play a major role in our battletactics."})
keywordHandler:addKeyword({'battletactics'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our tactic is to kiss."})
keywordHandler:addKeyword({'tactics'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our tactic is to kiss."})
keywordHandler:addKeyword({'kiss'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "K.I.S.S.! Keep It Simple, Stupid! Complicated tactics are to easy to be crushed by a twist of fate."})
keywordHandler:addKeyword({'bloodblade'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Old man. I can't tell what's worse for the shape of Thais' army."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's just a rotten hideout for drunks and men too lazy to do some serious work."})
keywordHandler:addKeyword({'city'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our city blends in with the nature surrounding it. Our druids take care of that."})
keywordHandler:addKeyword({'bonecrusher'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our family serves in the Carlin army since uncounted generations!"})
keywordHandler:addKeyword({'sister'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our family serves in the Carlin army since uncounted generations!"})
keywordHandler:addKeyword({'bambi'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She is one of my beloved sisters and serves Carlin as a town guard."})
keywordHandler:addKeyword({'blossom'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She is one of my beloved sisters and serves Carlin as a town guard."})
keywordHandler:addKeyword({'busty'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She is one of my beloved sisters and serves Carlin as a town guard."})
keywordHandler:addKeyword({'family'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She is one of my beloved sisters and serves Carlin as a town guard."})
keywordHandler:addKeyword({'fenbala'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She is one of our Green Ferrets and one of the queen's bodyguards."})
keywordHandler:addKeyword({'barbara'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She is one of our Green Ferrets and one of the queen's bodyguards."})
keywordHandler:addKeyword({'cornelia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Cornelia forges the armor necessary for our troops."})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Cornelia forges the armor necessary for our troops."})
keywordHandler:addKeyword({'rowenna'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Rowenna is responsible for our troops' supply with weapons."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Rowenna is responsible for our troops' supply with weapons."})
keywordHandler:addKeyword({'legola'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She is a distant cousin of mine and my sisters."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Believe it or not. I killed him two times with my own bow, but some unholy forces rise him again and again."})
keywordHandler:addKeyword({'join'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Join what?"})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I whorship Banor, the first warrior!"})
keywordHandler:addKeyword({'banor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is the idol for all fighting women and a reminder of what a man could become, if he could jump over his own shadow!"})
keywordHandler:addKeyword({'zathroth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't mention the dark one in the city of life!"})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We cleared the woods around Carlin from most of them. But lately more and more showed up again."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am sure only a woman could muster the courage and strength to wield this weapon of myth."})
keywordHandler:addKeyword({'graveyard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah! Just men's tales! Who believes in such bullshit? Perhaps we should put some men there over night and see what happens. Hehehe!"})
keywordHandler:addKeyword({'cemetary'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah! Just men's tales! Who believes in such bullshit? Perhaps we should put some men there over night and see what happens. Hehehe!"})
keywordHandler:addKeyword({'crypt'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah! Just men's tales! Who believes in such bullshit? Perhaps we should put some men there over night and see what happens. Hehehe!"})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
if msgcontains(msg, 'hi') or msgcontains(msg, 'hello') then
	npcHandler:say("Address me properly ".. getPlayerName(cid) .."!", 1)
	talk_state = 0
			
elseif msgcontains(msg, 'hail') or msgcontains(msg, 'salutations') then
	npcHandler:say("Address me with my title, commoner ".. getPlayerName(cid) .."!", 1)
	talk_state = 0

elseif msgcontains(msg, 'job') and npcHandler.focus == cid then
	if getPlayerSex(cid) == 1 then
	npcHandler:say("I am the general of the queen's army and have not the time to explain this concept to you.", 1)
	else
	npcHandler:say("I am the general of the queen's army! You really should consider to join, sister.", 1)
	end
	talk_state = 0

elseif msgcontains(msg, 'quest') and npcHandler.focus == cid or msgcontains(msg, 'mission') and npcHandler.focus == cid then
	if getPlayerSex(cid) == 1 then
	npcHandler:say("Yeah. Entrusting a male with an important quest. Get serious!", 1)
	else
	npcHandler:say("Sometimes the queen calls for heroines. Keep eyes and ears open!", 1)
	end
	talk_state = 0
	
elseif msgcontains(msg, 'sell') and npcHandler.focus == cid then
	npcHandler:say("Are you suggesting I am corruptible?", 1)
	talk_state = 2

elseif talk_state == 2 and msgcontains(msg, 'yes') and npcHandler.focus == cid then
	doSendMagicEffect(getCreaturePosition(getNpcCid(  )), 13)
	doSendMagicEffect(getPlayerPosition(cid), 15)
	doAddCondition(cid, fire)
	npcHandler:say("Take this!", 0.5)
	talk_state = 0
elseif talk_state == 2 and msgcontains(msg, '') and npcHandler.focus == cid then
	npcHandler:say("You should be careful with your words!", 1)
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
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())