local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)	npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)	npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg) end
function onThink()	npcHandler:onThink() end

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if msgcontains(msg, 'heal') or msgcontains(msg, 'help') then
		if hasCondition(cid, CONDITION_FIRE) == true then
			npcHandler:say('You are burning. I will help you.')
			doRemoveCondition(cid, CONDITION_FIRE)
			doSendMagicEffect(getCreaturePosition(cid), 14)
		elseif hasCondition(cid, CONDITION_POISON) == true then
			npcHandler:say('You are poisoned. I will help you.')
			doRemoveCondition(cid, CONDITION_POISON)
			doSendMagicEffect(getCreaturePosition(cid), 13)
		elseif getCreatureHealth(cid) < 40 then
			npcHandler:say('You are looking really bad. Let me heal your wounds.')
			doCreatureAddHealth(cid, 40 - getCreatureHealth(cid))
			doSendMagicEffect(getCreaturePosition(cid), 12)
		else
			npcHandler:say('You aren\'t looking that bad. Sorry, I can\'t help you. But if you are looking for additional protection you should go on the pilgrimage of ashes.')
		end
	end	
	
	if msgcontains(msg, 'my heart belongs to') and getPlayerSex(cid) == PLAYER_MALE then
	npcHandler:say('I ask thee, '.. getPlayerName(cid) ..', wille you honor your bride and stay at her side even in the darkest hours life could bring upon you?')
	topic = 9
	
	elseif msgcontains(msg, 'my heart belongs to') and getPlayerSex(cid) == PLAYER_FEMALE then
	npcHandler:say('I ask thee, '.. getPlayerName(cid) ..', will you honor your groom and stay at his side even in the darkest hours life could bring upon you?",')
	topic = 9	
	
	elseif msgcontains(msg, 'gold') or msgcontains(msg, 'money') or msgcontains(msg, 'donation') then
	npcHandler:say('Do you want to make a donation?')
	topic = 1
	
	elseif msgcontains(msg, 'sin') or msgcontains(msg, 'sins') then
	npcHandler:say('Do you whish to confess your sins?')
	topic = 3
	
	elseif msgcontains(msg, 'yes') and topic == 3 then
	npcHandler:say('So tell me what shadows your soul, my child')
	topic = 4
	
	elseif msgcontains(msg, '') and topic == 3 then
	npcHandler:say('As you wish.')
	topic = 0
	
	elseif msgcontains(msg, '') and topic == 4 then
	npcHandler:say('Meditate on that and pray for your soul.')
	topic = 0	
	
	elseif msgcontains(msg, 'yes') and getPlayerMoney(cid) >= 15 and topic == 1 then
	doPlayerRemoveMoney(cid, 15)
	npcHandler:say('May the gods bless you!')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and getPlayerMoney(cid) < 15 and topic == 1 then
	npcHandler:say('Dont be ashamed, but you lack the gold.')
	topic = 0
	
	elseif msgcontains(msg, 'no') and topic == 1 then
	npcHandler:say('As you wish.')
	topic = 0
	
	elseif msgcontains(msg, 'marriage') or msgcontains(msg, 'ceremony') then
	npcHandler:say('You want me to initiate a marriage ceremony?')
	topic = 5
	
	elseif msgcontains(msg, 'yes') and topic == 5 or msgcontains(msg, 'I will') and topic == 5 then
	npcHandler:say('In the Name of the Gods of good, I ask thee, if both of you are prepared and ready!')
	topic = 6
	
	elseif msgcontains(msg, '') and topic == 5 then
	npcHandler:say('Perhaps another time. Marriage isn\'t a step one should consider without love in the heart.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 6 or msgcontains(msg, 'I will') and topic == 6 then
	npcHandler:say('Silence please! I hereby invoke the attention of the eternal powers looking over our souls and lives. May the gods bless us!')
	topic = 7
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)
	
	elseif msgcontains(msg, 'may god bless us') and getPlayerSex(cid) == PLAYER_MALE and topic == 7 then
	npcHandler:say('I ask thee, '.. getPlayerName(cid) ..', will you honor your bride and stay at her side even in the darkest hours life could bring upon you?')
	topic = 8
	
	elseif msgcontains(msg, 'may god bless us') and getPlayerSex(cid) == PLAYER_FEMALE and topic == 7 then
	npcHandler:say('I ask thee, '.. getPlayerName(cid) ..', will you honor your groom and stay at his side even in the darkest hours life could bring upon you?')
	topic = 8
	
	elseif topic == 8 and getPlayerSex(cid) == PLAYER_MALE and msgcontains(msg, 'yes') or msgcontains(msg, 'I will') then
	npcHandler:say('So by the powers of the gods your soul is now bound to your bride. Bride, step forward and tell me to whom your heart belongs!')
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_RED)
	topic = 0
 	
	elseif topic == 8  and getPlayerSex(cid) == PLAYER_FEMALE and msgcontains(msg, 'yes') or msgcontains(msg, 'I will') then
	npcHandler:say('So by the powers of the gods your soul is now bound to your groom. Groom, step forward and tell me to whom your heart belongs!')
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_RED)
	topic = 0
	
	elseif topic == 9 and msgcontains(msg, 'yes') or msgcontains(msg, 'I will') then
	npcHandler:say('So by the powers of the gods your souls are now bound together for eternity. May the gods watch with grace over your further life as a married couple. Go now and celebrate your marriage!')
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_RED)
	
	elseif msgcontains(msg, 'no') and topic == 9 then
	npcHandler:say('Your neglection of love hurts my heart. Leave now!')	
	topic = 0
	end
	
	return true
end

	keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I am a priest of the great pantheon.'})
	keywordHandler:addKeyword({'news'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Sorry, I had no enlightening visions lately.'})
	keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'My name is Lynda. And the spirits tell me that you are |PLAYERNAME|.'})
	keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The world of Tibia is the creation of the gods.'})
	keywordHandler:addKeyword({'life'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Life is a gift of the gods, honor life and don\'t destroy it.'})
	keywordHandler:addKeyword({'citizen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The things I know about our citizens are confidential.'})
	keywordHandler:addKeyword({'lugri'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'He is a follower of evil. May the gods punish him.'})
	keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'King Tibianus is our benevolent sovereign.'})
	keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'They are creatures of the gods of evil!'})
	keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'It is my mission to spread knowledge about the gods.'})
	keywordHandler:addKeyword({'fight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'It is MY mission to teach, it is YOUR mission to fight!'})
	keywordHandler:addKeyword({'pilgrimage'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Whenever you receive a lethal wound your lifeforce is damaged. With every single of the five blessings you have this damage will be reduced.'})
	keywordHandler:addKeyword({'blessing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'There are five different blessings available in five sacred places. These blessings are: the spiritual shielding, the spark of the phoenix, the embrace of tibia, the fire of the suns and the wisdom of solitude.'})
	keywordHandler:addKeyword({'sacred places'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Just ask in which of the five blessings you are interested in.'})
	keywordHandler:addKeyword({'spiritual'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'You can receive the spiritual shielding in the whiteflower temple south of Thais.'})
	keywordHandler:addKeyword({'spark'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The spark of the phoenix is given by the dwarven priests of earth and fire in Kazordoon.'})
	keywordHandler:addKeyword({'embrace'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The druids north of Carlin can provide you with the embrace of tibia.'})
	keywordHandler:addKeyword({'fire suns'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Ask for the blessing of the two suns in the suntower near Ab\'Dendriel .'})
	keywordHandler:addKeyword({'wisdom'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Talk to the hermit Eremo on the isle of Cormaya about this blessing.'})
	keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'He is a favourite of the gods of evil and one of the champions of evil.'})
	keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Now, it is |TIME|.'})
	keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'This fabled weapon was lost in ancient times. If someone found it, this person would be nearly invincible.'})
	keywordHandler:addKeyword({'fardos'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Fardos is the creator, the great obsever. He is our caretaker.'})
	keywordHandler:addKeyword({'uman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Uman is the positive aspect of magic. He brings us the secrets of the arcane arts.'})
	keywordHandler:addKeyword({'suon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Suon is the lifebringing sun. He observes the creation with love.'})
	keywordHandler:addKeyword({'crunor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Crunor, the great tree, is the father of all plantlife. He is a prominent god for many druids.'})
	keywordHandler:addKeyword({'nornur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Nornur is the mysterious god of fate. Who knows if he is its creator or just a chronist?'})
	keywordHandler:addKeyword({'bastesh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Bastesh, the deep one, is the goddess of the sea and its creatures.'})
	keywordHandler:addKeyword({'kirok'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Kirok, the mad one, is the god of scientists and jesters.'})
	keywordHandler:addKeyword({'toth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Toth, lord of death, is the keeper of the souls, the guardian of the afterlife.'})
	keywordHandler:addKeyword({'banor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Banor, the heavenly warrior, is the patron of all fighters against evil. He is the gift of the gods to inspire humanity.'})
	keywordHandler:addKeyword({'tibiasula'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Tibiasula lost her life, but out of her essence the world was created.'})
	keywordHandler:addKeyword({'sula'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Sula is the essence of the elemental power of water.'})
	keywordHandler:addKeyword({'air'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Air is one of the primal elemental forces, sometimes worshipped by tribal shamans.'})
	keywordHandler:addKeyword({'fire'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Fire is one of the primal elemental forces, sometimes worshipped by tribal shamans.'})
	keywordHandler:addKeyword({'zathroth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Zathroth is the destructive aspect of magic. He is the deceiver and the thief of souls.'})
	keywordHandler:addKeyword({'fafnar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Fafnar is the scorching sun. She observes the creation with hate and jealousy.'})
	keywordHandler:addKeyword({'brog'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Brog, the raging one, is the great destroyer. The berserk of darkness.'})
	keywordHandler:addKeyword({'urgith'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The bonemaster Urgith is the lord of the undead and keeper of the damned souls.'})
	keywordHandler:addKeyword({'archdemons'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The demons are followers of Zathroth. The cruelest are known as the ruthless seven.'})
	keywordHandler:addKeyword({'ruthless seven'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I dont want to talk about that subject!'})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())