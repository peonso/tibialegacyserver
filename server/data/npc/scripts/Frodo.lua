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

shopModule:addBuyableItem({'bread'}, 2689, 4)
shopModule:addBuyableItem({'cheese'}, 2696, 6)
shopModule:addBuyableItem({'meat'}, 2666, 5)
shopModule:addBuyableItem({'ham'}, 2671, 8)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the owner of this saloon. I call it Frodo's Hut. I am also selling food."})
keywordHandler:addKeyword({'saloon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the owner of this saloon. I call it Frodo's Hut. I am also selling food."})
keywordHandler:addKeyword({'hut'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hope you like it."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just call me Frodo."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, our beloved king! Thanks to him, alcohol is so cheap."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, our beloved king! Thanks to him, alcohol is so cheap."})
keywordHandler:addKeyword({'quentin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He hardly visits my humble tavern."})
keywordHandler:addKeyword({'harkath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Too disciplined to enjoy life."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hehe. Great customers."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Uhm, do not mention him. It may scare customers away."})
keywordHandler:addKeyword({'general'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Harkath Bloodblade is the royal general."})
keywordHandler:addKeyword({'sam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A loud neighbour, I get a lot of complaints about him."})
keywordHandler:addKeyword({'xodet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't know where he gets these fluids. If I could sell them here, the hut would be crowded."})
keywordHandler:addKeyword({'gorn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Many of his customers visit my Hut, too."})
keywordHandler:addKeyword({'elane'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Can you believe that she actually told her guildfellows that alcohol is a bad thing?"})
keywordHandler:addKeyword({'muriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Muriel has never visited this place."})
keywordHandler:addKeyword({'lungelen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A sorceress, you can find her in their guild sitting befor a book - always!"})
keywordHandler:addKeyword({'gregor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The knights have sometimes parties here after some arena fights."})
keywordHandler:addKeyword({'marvik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Marvik seldom leaves his guildhall at all."})
keywordHandler:addKeyword({'bozo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am trying to hire him for an evening or two."})
keywordHandler:addKeyword({'baxter'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He's able to drink a bottle or two."})
keywordHandler:addKeyword({'oswald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I hate him. Each of his visits here ends with a bar brawl."})
keywordHandler:addKeyword({'sherry'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The McRonalds are a nice couple. Donald is a dear friend of mine."})
keywordHandler:addKeyword({'mcronald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The McRonalds are a nice couple. Donald is a dear friend of mine."})
keywordHandler:addKeyword({'donald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is a little shy. In his youth he dreamed to become a druid."})
keywordHandler:addKeyword({'lurgi'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I overheared some conversations about his evilness. That's enough to hope, that I never ever meet him."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Nothing more than a tale for warriors."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Here in Thais is the center of Tibia."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Come on! You know that our world is called Tibia."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Many travellers tell funny stories about all the emancipated women in this northern town."})
keywordHandler:addKeyword({'rain castle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king's residence has been renovated lately."})
keywordHandler:addKeyword({'galuna'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "She makes excellent arrows and bows."})
keywordHandler:addKeyword({'hugo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think some time ago a stranger from Fibula with that name stayed here for some nights."})
keywordHandler:addKeyword({'todd'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That fellow is filthy rich. He rented a room upstairs for months in advance and always orders the best beer and wine i serve."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some travelers from Edron told about a great treasure guarded by cruel demons in the dungeons there."})
keywordHandler:addKeyword({'rumor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some travelers from Edron told about a great treasure guarded by cruel demons in the dungeons there."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you bread, cheese, ham, or meat."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you bread, cheese, ham, or meat."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you bread, cheese, ham, or meat."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Are you looking for food? I have bread, cheese, ham, and meat."})
keywordHandler:addKeyword({'satanic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hmm, I have heard of a 'satanic influence' theory by someone called Newton or something like that... Maybe there's more in the Royal Archives."})
keywordHandler:addKeyword({'cropwell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "No idea who that is, but maybe you'll find something in the Royal Archives..."})
keywordHandler:addKeyword({'alistair'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "No idea who that is, but maybe you'll find something in the Royal Archives..."})
keywordHandler:addKeyword({'archives'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh, the Royal Archives are in Rain Castle!"})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah yes, the graveyard dungeon. All I know is this riddle: His Grave to the south, the tree above, his soul in the shade. No idea what that means, though!"})
keywordHandler:addKeyword({'graveyard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah yes, the graveyard dungeon. All I know is this riddle: His Grave to the south, the tree above, his soul in the shade. No idea what that means, though!"})
keywordHandler:addKeyword({'riddle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heard it when I was a child."})
keywordHandler:addKeyword({'sunset homes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The sunset homes are a block of flats south of the harbour."})
keywordHandler:addKeyword({'one eyed stranger'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, I remember him. His name was Berfasmur."})
keywordHandler:addKeyword({'berfasmur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, he spoke only very little. I know nothing more about him."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is exactly |TIME|."})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
if msgcontains(msg, 'Lynda') or msgcontains(msg, 'lynda') then
	if getPlayerSex(cid) == 1 then
	npcHandler:say("Just between you and me: What a babe!", 1)
	else
	npcHandler:say("A very noble lady.", 1)
	end
	talk_state = 0
			
elseif msgcontains(msg, 'hengis wulfson') then
npcHandler:say("He is a great bard. He often graced my hut with his presence, songs, and rhymes. I wonder what happened to him lately.", 1)
talk_state = 2

elseif talk_state == 2 and msgcontains(msg, 'killed') or talk_state == 2 and msgcontains(msg, 'died') or talk_state == 2 and msgcontains(msg, 'dea') or talk_state == 2 and msgcontains(msg, 'slain') then
npcHandler:say("Oh, by the gods! What do you say happened to him?", 1)
talk_state = 3

elseif talk_state == 3 and msgcontains(msg, 'cyclops') then
npcHandler:say("That's horrible! I am in grief. I will never hear his songs again. I will even miss that strange rhyme he was obsessed with.", 1)
talk_state = 4

elseif talk_state == 4 and msgcontains(msg, 'rhyme') then
npcHandler:say("He recitated it that often that I learned it by heart myself. I would recitate it, but I am not skilled in that kind of things.", 1)
talk_state = 5

elseif talk_state == 5 and msgcontains(msg, 'recitate') then
npcHandler:say("Uhm. If you insist, but I am so awful. I will stop now and then and wait, so you can tell if I should proceed, ok?", 1)
talk_state = 6

elseif talk_state == 2 and msgcontains(msg, 'yes') then
npcHandler:say("Well ok, but don't blame me. Chhrrr... chhrrrr,... it goes like this... chhrrr: and when the dead feast at midnight...", 1)
talk_state = 7

elseif talk_state == 7 and msgcontains(msg, 'proceed') then
npcHandler:say("... the ancient enemy will no longer guard the place of his unlucky heir and the living will walk the paths of the old way...", 1)
talk_state = 8

elseif talk_state == 8 and msgcontains(msg, 'proceed') then
npcHandler:say("... Death awaits the greedy and the brave alike and many will be mourned until the long lost treasure is unearthed.", 1)
talk_state = 9

elseif talk_state == 9 and msgcontains(msg, 'proceed') then
npcHandler:say("That's all. He recitated it when he was in one of his melancholy moods.", 1)
talk_state = 0

elseif msgcontains(msg, '') then
npcHandler:say("Maybe next time.", 1)
talk_state = 0

end		
    return true
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())