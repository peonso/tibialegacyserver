dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

function greetCallback(cid)
	if getPlayerSex(cid) == 1 then
	npcHandler:setMessage(MESSAGE_GREET, "Hmmm. I buy weapons, armor, and other stuff. What do you want, ".. getPlayerName(cid) .."?")
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "I don't serve brats. Sod off!")
	return false
	end	
end

npcHandler:setCallback(CALLBACK_GREET, greetCallback)

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addSellableItem({'two handed sword'}, 					ID_twohandedsword, 60)
shopModule:addSellableItem({'battle axe'}, 					ID_battleaxe, 40)
shopModule:addSellableItem({'hand axe'}, 					ID_handaxe, 5)
shopModule:addSellableItem({'spike sword'}, 					ID_spikesword, 25)
shopModule:addSellableItem({'rapier'}, 					ID_rapier, 5)
shopModule:addSellableItem({'sabre'}, 					ID_sabre, 6)
shopModule:addSellableItem({'double axe'}, 					ID_doubleaxe, 70)
shopModule:addSellableItem({'hatchet'}, 					ID_hatchet, 7)
shopModule:addSellableItem({'spear'}, 					ID_spear, 2)
shopModule:addSellableItem({'magic longsword'}, 					ID_magiclongsword, 460)
shopModule:addSellableItem({'war hammer'}, 					ID_warhammer, 90)
shopModule:addSellableItem({'fire sword'}, 					ID_firesword, 335)
shopModule:addSellableItem({'giant sword'}, 					ID_giantsword, 100)
shopModule:addSellableItem({'morning star'}, 					ID_morningstar, 50)
shopModule:addSellableItem({'carlin sword'}, 					ID_carlinsword, 5)
shopModule:addSellableItem({'ice rapier'}, 					ID_icerapier, 250)
shopModule:addSellableItem({'longsword'}, 					ID_longsword, 8)
shopModule:addSellableItem({'throwing star'}, 					ID_throwingstar, 2)
shopModule:addSellableItem({'magic sword'}, 					ID_magicsword, 350)
shopModule:addSellableItem({'staff'}, 					ID_staff, 1)
shopModule:addSellableItem({'silver dagger'}, 					ID_silverdagger, 1)
shopModule:addSellableItem({'combat knife'}, 					ID_combatknife, 1)
shopModule:addSellableItem({'knife'}, 					ID_weaponknife, 1)
shopModule:addSellableItem({'sickle'}, 					ID_sickle, 1)
shopModule:addSellableItem({'short sword'}, 					ID_shortsword, 3)
shopModule:addSellableItem({'bright sword'}, 					ID_brightsword, 280)
shopModule:addSellableItem({'warlord sword'}, 					ID_warlordsword, 360)
shopModule:addSellableItem({'serpent sword'}, 					ID_serpentsword, 15)
shopModule:addSellableItem({'throwing knife'}, 					ID_throwingknife, 2)
shopModule:addSellableItem({'poison dagger'}, 					ID_poisondagger, 5)
shopModule:addSellableItem({'katana'}, 					ID_katana, 8)
shopModule:addSellableItem({'broadsword'}, 					ID_broadsword, 10)
shopModule:addSellableItem({'dragon lance'}, 					ID_dragonlance, 90)
shopModule:addSellableItem({'great axe'}, 					ID_greataxe, 300)
shopModule:addSellableItem({'crowbar'}, 					ID_crowbar, 1)
shopModule:addSellableItem({'battle hammer'}, 					ID_battlehammer, 40)
shopModule:addSellableItem({'golden sickle'}, 					ID_goldensickle, 10)
shopModule:addSellableItem({'scimitar'}, 					ID_scimitar, 10)
shopModule:addSellableItem({'machete'}, 					ID_machete,  6)
shopModule:addSellableItem({'thunder hammer'}, 					ID_thunderhammer, 450)
shopModule:addSellableItem({'iron hammer'}, 					ID_ironhammer, 9)
shopModule:addSellableItem({'clerical mace'}, 					ID_clericalmace, 30)
shopModule:addSellableItem({'silver mace'}, 					ID_silvermace, 2)
shopModule:addSellableItem({'obsidian lance'}, 					ID_obsidianmace, 50)
shopModule:addSellableItem({'naginata'}, 					ID_naginata, 80)
shopModule:addSellableItem({'guardian halberd'}, 					ID_guardianhalberd, 120)
shopModule:addSellableItem({'orcish axe'}, 					ID_orcishaxe, 12)
shopModule:addSellableItem({'barbarian axe'}, 					ID_barbarianaxe, 30)
shopModule:addSellableItem({'knight axe'}, 					ID_knightaxe, 2)
shopModule:addSellableItem({'stonecutter axe'}, 					ID_stonecutteraxe, 320)
shopModule:addSellableItem({'fire axe'}, 					ID_fireaxe, 280)
shopModule:addSellableItem({'crossbow'}, 					ID_crossbow, 20)
shopModule:addSellableItem({'bow'}, 					ID_bow, 15)
shopModule:addSellableItem({'steel helmet'}, 					ID_steelhelmet, 60)
shopModule:addSellableItem({'chain helmet'}, 					ID_chainhelmet, 4)
shopModule:addSellableItem({'iron helmet'}, 					ID_ironhelmet, 30)
shopModule:addSellableItem({'brass helmet'}, 					ID_brasshelmet, 8)
shopModule:addSellableItem({'leather helmet'}, 					ID_leatherhelmet, 1)
shopModule:addSellableItem({'devil helmet'}, 					ID_devilhelmet, 80)
shopModule:addSellableItem({'chain armor'}, 					ID_chainarmor, 30)
shopModule:addSellableItem({'brass armor'}, 					ID_brassarmor, 50)
shopModule:addSellableItem({'golden armor'}, 					ID_goldenarmor, 580)
shopModule:addSellableItem({'leather armor'}, 					ID_leatherarmor, 2)
shopModule:addSellableItem({'studded legs'}, 					ID_studdedlegs, 15)
shopModule:addSellableItem({'dragon scale legs'}, 					ID_dragonscalelegs, 180)
shopModule:addSellableItem({'golden legs'}, 					ID_goldenlegs, 120)
shopModule:addSellableItem({'golden helmet'}, 					ID_goldenhelmet, 420)
shopModule:addSellableItem({'magic plate armor'}, 					ID_magicplatearmor, 720)
shopModule:addSellableItem({'viking helmet'}, 					ID_vikinghelmet, 12)
shopModule:addSellableItem({'winged helmet'}, 					ID_wingedhelmet, 320)
shopModule:addSellableItem({'warrior helmet'}, 					ID_warriorhelmet, 75)
shopModule:addSellableItem({'knight armor'}, 					ID_knightarmor, 140)
shopModule:addSellableItem({'knight legs'}, 					ID_knightlegs, 130)
shopModule:addSellableItem({'brass legs'}, 					ID_brasslegs, 15)
shopModule:addSellableItem({'strange helmet'}, 					ID_strangehelmet, 55)
shopModule:addSellableItem({'legion helmet'}, 					ID_legionhelmet, 8)
shopModule:addSellableItem({'soldier helmet'}, 					ID_soldierhelmet, 16)
shopModule:addSellableItem({'studded helmet'}, 					ID_studdedhelmet, 2)
shopModule:addSellableItem({'scale armor'}, 					ID_scalearmor, 75)
shopModule:addSellableItem({'studded armor'}, 					ID_studdedarmor, 18)
shopModule:addSellableItem({'doublet'}, 					ID_doublet, 1)
shopModule:addSellableItem({'rose armor'}, 					ID_noblearmor, 140, 'noble armor')
shopModule:addSellableItem({'crown armor'}, 					ID_crownarmor, 210)
shopModule:addSellableItem({'crown legs'}, 					ID_crownlegs, 60)
shopModule:addSellableItem({'dark armor'}, 					ID_darkarmor, 130)
shopModule:addSellableItem({'dark helmet'}, 					ID_darkhelmet, 40)
shopModule:addSellableItem({'crown helmet'}, 					ID_crownhelmet, 70)
shopModule:addSellableItem({'dragon scale mail'}, 					ID_dragonscalemail, 280)
shopModule:addSellableItem({'demon helmet'}, 					ID_demonhelmet, 95)
shopModule:addSellableItem({'demon armor'}, 					ID_demonarmor, 195)
shopModule:addSellableItem({'demon legs'}, 					ID_demonlegs, 84)
shopModule:addSellableItem({'horned helmet'}, 					ID_hornedhelmet, 155)
shopModule:addSellableItem({'steel shield'}, 					ID_steelshield, 30)
shopModule:addSellableItem({'plate shield'}, 					ID_plateshield, 25)
shopModule:addSellableItem({'brass shield'}, 					ID_brassshield, 15)
shopModule:addSellableItem({'wooden shield'}, 					ID_woodenshield, 1)
shopModule:addSellableItem({'battle shield'}, 					ID_battleshield, 50)
shopModule:addSellableItem({'mastermind shield'}, 					ID_mastermindshield, 550)
shopModule:addSellableItem({'guardian shield'}, 					ID_guardianshield, 150)
shopModule:addSellableItem({'dragon shield'}, 					ID_dragonshield, 115)
shopModule:addSellableItem({'beholder shield'}, 					ID_beholdershield, 79)
shopModule:addSellableItem({'crown shield'}, 					ID_crownshield, 109)
shopModule:addSellableItem({'demon shield'}, 					ID_demonshield, 130)
shopModule:addSellableItem({'dark shield'}, 					ID_darkshield, 60)
shopModule:addSellableItem({'great shield'}, 					ID_greatshield, 480)
shopModule:addSellableItem({'blessed shield'}, 					ID_blessedshield, 650)
shopModule:addSellableItem({'ornamented shield'}, 					ID_ornamentedshield, 45)
shopModule:addSellableItem({'dwarven shield'}, 					ID_dwarvenshield, 55)
shopModule:addSellableItem({'studded shield'}, 					ID_studdedshield, 2)
shopModule:addSellableItem({'rose shield'}, 					ID_roseshield, 49)
shopModule:addSellableItem({'tower shield'}, 					ID_towershield, 90)
shopModule:addSellableItem({'black shield'}, 					ID_blackshield, 5)
shopModule:addSellableItem({'copper shield'}, 					ID_coppershield, 10)
shopModule:addSellableItem({'viking shield'}, 					ID_vikingshield, 35)
shopModule:addSellableItem({'ancient shield'}, 					ID_ancientshield, 49)
shopModule:addSellableItem({'griffin shield'}, 					ID_griffinshield, 59)
shopModule:addSellableItem({'vampire shield'}, 					ID_vampireshield, 119)
shopModule:addSellableItem({'sword'}, 					ID_sword, 7)
shopModule:addSellableItem({'axe'}, 					ID_axe, 6)
shopModule:addSellableItem({'club'}, 					ID_club, 1)
shopModule:addSellableItem({'mace'}, 					ID_mace, 8)
shopModule:addSellableItem({'dagger'}, 					ID_dagger, 1)
shopModule:addSellableItem({'halberd'}, 					ID_halberd, 50)
shopModule:addSellableItem({'plate armor'}, 					ID_platearmor, 110)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I buy all kinds of armory and weapons."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Won't tell you."})
keywordHandler:addKeyword({'h.l'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's me."})
keywordHandler:addKeyword({'snake eye'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Boss of the tavern. He's alright."})
keywordHandler:addKeyword({'boss'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Snake Eye isn't my boss."})
keywordHandler:addKeyword({'tavern'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Drink and eat there. What else do you do in a tavern!"})
keywordHandler:addKeyword({'brat'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah. Women are not good for fighting. I don't need them. And I don't like them."})
keywordHandler:addKeyword({'women'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah. Women are not good for fighting. I don't need them. And I don't like them."})
keywordHandler:addKeyword({'woman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bah. Women are not good for fighting. I don't need them. And I don't like them."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Forget the gods"})
keywordHandler:addKeyword({'durin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Forget Durin. He's the worst anyway."})
keywordHandler:addKeyword({'steve'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Forget Steve."})
keywordHandler:addKeyword({'guido'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Forget Guido."})
keywordHandler:addKeyword({'stephan'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Forget Stephan."})
keywordHandler:addKeyword({'cip'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Forget about Cip."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Tibia. At least there's one good place in Tibia. Here!"})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ha! Thais. I lived there. You know, I was in the royal army. But it's all wrong. I deserted."})
keywordHandler:addKeyword({'royal army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Good fighter training. But for the wrong cause."})
keywordHandler:addKeyword({'training'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes. Good training."})
keywordHandler:addKeyword({'cause'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't want to talk about it."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Dwarfs are good people. I like them."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I like them."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves. Hate them."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Might be a good place to live. But I'm afraid that the people are Thais friendly."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king should be dead."})
keywordHandler:addKeyword({'ruler'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Tibia doesn't need a ruler."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hang him."})
keywordHandler:addKeyword({'wild warior'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yeah. I'm a wild warrior. Well, to be honest, I left them. They became too aggressive. Attacking everyone is not good."})
keywordHandler:addKeyword({'camp'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Most people in the camp are no wild warriors."})
keywordHandler:addKeyword({'hideout'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I left the wild warriors, while we - well - they planned a new hideout."})
keywordHandler:addKeyword({'hid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Wild warriors have always something to hide."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's somewhere in the woods, of course. I don't know where."})
keywordHandler:addKeyword({'wood'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The woods are good to hide."})
keywordHandler:addKeyword({'traps'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Be careful out there."})
keywordHandler:addKeyword({'collapsed'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes. That's why we - well - they planned a new hideout. But I think they left the vault in the old hideout."})
keywordHandler:addKeyword({'vault'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Good stuff in there, I think."})
keywordHandler:addKeyword({'stuff'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ahm. I don't know what it is. Sorry."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I buy nearly everything. Just ask."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
if msgcontains(msg, '') and getPlayerSex(cid) == 0 then
	npcHandler:say("I don't serve brats. Sod off!", 1)
	npcHandler:releaseFocus()
	npcHandler:resetNpc()
			
elseif msgcontains(msg, 'talk') then
	npcHandler:say("I said, I do not want to talk about it", 1)
	talk_state = 1

elseif talk_state == 1 and msgcontains(msg, 'talk') then
	npcHandler:say("Ok. Get lost!", 1)
	talk_state = 0
	npcHandler:releaseFocus()
	npcHandler:resetNpc()

elseif msgcontains(msg, 'key') or msgcontains(msg, 'Key') then
KEYID = {2086, 2087, 2088, 2089, 2090, 2091, 2092}
INUSE = getPlayerItemCount(cid, KEYID)
	if isInArray(INUSE, KEYID) == 1 then
		if INUSE.actionid >= 1 then
		npcHandler:say("Oh. that's a new key. Hmmm. Must be for the new hideout.", 1)
		else
		npcHandler:say("What key? Show me!", 1)
		talk_state = 0	
		end
	else
	npcHandler:say("What key? Show me!", 1)
	talk_state = 0	
	end

elseif msgcontains(msg, 'building') or msgcontains(msg, 'Building') then
	npcHandler:say("You mean our old building in the southwest?", 1)
	talk_state = 2

elseif talk_state == 2 and msgcontains(msg, 'yes') then
	npcHandler:say("That's the old hideout. It's interesting down there. Lots of security mechanics and traps. But it collapsed partly.", 1)
	talk_state = 0
elseif talk_state == 2 and msgcontains(msg, '') then
	npcHandler:say("Sorry.", 1)
	talk_state = 0

elseif msgcontains(msg, 'mechanics') or msgcontains(msg, 'Mechanics') or msgcontains(msg, 'machines') or msgcontains(msg, 'Machines') then
	npcHandler:say("Yes. Security doors driven by POWERFUL machines. But I have no idea how it works.", 1)
	talk_state = 7

elseif talk_state == 7 and msgcontains(msg, 'broken') or talk_state == 7 and msgcontains(msg, 'Broken') then
	npcHandler:say("Hmmm. Let me think. I think, you need something big. And steel reinforced. A barrel, maybe.", 1)
	talk_state = 0

elseif talk_state == 7 and msgcontains(msg, 'damaged') or talk_state == 7 and msgcontains(msg, 'Damaged') then
	npcHandler:say("Hmmm. Let me think. I think, you need something big. And steel reinforced. A barrel, maybe.", 1)
	talk_state = 0

elseif talk_state == 7 and msgcontains(msg, 'repair') or talk_state == 7 and msgcontains(msg, 'Repair') then
	npcHandler:say("Hmmm. Let me think. I think, you need something big. And steel reinforced. A barrel, maybe.", 1)
	talk_state = 0	
	
end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())