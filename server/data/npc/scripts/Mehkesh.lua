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

shopModule:addBuyableItem({'life'}, 2006, 60, 10, 'life fluid')
shopModule:addBuyableItem({'mana'}, 2006, 55, 7, 'mana fluid')


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a trader. I sell potions brewed by the foremost alchemists of the land."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the mourned Mehkesh."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time is but one of the hardships our mortal flesh has to endure."})
keywordHandler:addKeyword({'temple'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The temple spreads the word of our wise pharaoh."})
keywordHandler:addKeyword({'pharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The pharaoh alone has achieved godhood. But in his infinite mercy he chose to stay with his people to offer them guidance."})
keywordHandler:addKeyword({'arkhothep'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The pharaoh alone has achieved godhood. But in his infinite mercy he chose to stay with his people to offer them guidance."})
keywordHandler:addKeyword({'ashmunrah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Even though his merciful son offered him undeath I doubt the old pharaoh will ever find his way to ascension."})
keywordHandler:addKeyword({'scarab'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The scarabs are more then just enormous insects. They are keepers of ancient secrets."})
keywordHandler:addKeyword({'chosen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If we serve the pharaoh during our life time he might allow us to serve him in undeath. Only then can truly start our search for ascension."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One day our world will be freed from the false gods and accept the guidance of our pharaoh."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those citys are only pawns of the false gods and their misguided priests."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those citys are only pawns of the false gods and their misguided priests."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those citys are only pawns of the false gods and their misguided priests."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those citys are only pawns of the false gods and their misguided priests."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves should know better then to praise the mortal essence of the elements."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves should know better then to praise the mortal essence of the elements."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves should know better then to praise the mortal essence of the elements."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves are foolish and their obsession with life damns them to eternal death."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves are foolish and their obsession with life damns them to eternal death."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves are foolish and their obsession with life damns them to eternal death."})
keywordHandler:addKeyword({'daraman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The prophet caught a glimpse of ascension, but he did not understand it."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These are the lands of old secrets where the mortals will be shown the true revelations."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A city of misguided fools."})
keywordHandler:addKeyword({'mortality'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Only if we leave our mortality behind can we achieve salvation and ascension."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The false gods use our mortal flesh to enslave us."})
keywordHandler:addKeyword({'ascension'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ascension is a difficult process. As long as we are mortal we are too distracted to even think about it."})
keywordHandler:addKeyword({"Akh'rah Uthun"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Akh'rah Uthun is the union of that which once was separate."})
keywordHandler:addKeyword({'Akh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our Akh is our mortal flesh until it is replaced with something better - with an undead body."})
keywordHandler:addKeyword({'undea'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Undeath is the victory over the weaknesses of mortal flesh."})
keywordHandler:addKeyword({'Rah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Rah is our essence. The divine part in all of us."})
keywordHandler:addKeyword({'uthun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Uthun is the knowledge we gather in the course of time."})
keywordHandler:addKeyword({'mourn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are so pathetic in our mortality."})
keywordHandler:addKeyword({'arena'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The arena is a challenge for every skilled fighter."})
keywordHandler:addKeyword({'palace'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You can find the palace to the east of this market hall."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling life and mana fluids."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling life and mana fluids."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm selling life and mana fluids."})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

	if msgcontains(msg, 'vial') or msgcontains(msg, 'deposit') or msgcontains(msg, 'flask') then
		npcHandler:say("I will pay you 5 gold for every empty vial. Ok?", 1)
		talk_state = 857
	elseif talk_state == 857 and msgcontains(msg, 'yes') then
		if sellPlayerEmptyVials(cid) == true then
			npcHandler:say("Here's your money!", 1)
			talk_state = 0
		else
			npcHandler:say("You don't have any empty vials!", 1)
			talk_state = 0
		end
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())