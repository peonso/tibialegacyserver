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
shopModule:addBuyableItem({'lemonade'}, 2012, 2, 5, 'mug of lemonade')
shopModule:addBuyableItem({'beer'}, 2012, 2, 3, 'mug of beer')
shopModule:addBuyableItem({'wine'}, 2012, 3, 7, 'mug of wine')
shopModule:addBuyableItem({'water'}, 2012, 1, 1, 'mug of water')

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am your host. I run this tavern."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Clyde, your host."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't worry about the time. Take a seat, have a drink. Time runs differently in Port Hope."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I wish the king would be a bit more concerned about this colony. I am convinced with a few more resources, we could improve Port Hope a lot."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's not always easy to deal with those Venoran tradesmen. I must admit they don't show any interest in my area of business. Just between you and me, my friend, sometimes they give me shivers."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sadly, Thais is far away and you will notice that in many places. You'll find out about this yourself, so lets talk about something else please."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I know only little about Carlin and here nobody cares about it for sure."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As I started business here, I was hoping for a second Edron. I have not abandoned my hope though. Afer all, this place is called Port Hope, isn't it?"})
keywordHandler:addKeyword({'jungle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This forest is not an ordinary forest. It's more like a force of nature, like a river or even a storm."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have seen only little of this world. Probably it should be you telling me about the world, and not the other way around."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you want to learn something about Kazordoon you should talk to our local dwarves."})
keywordHandler:addKeyword({'fwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There was a handful of dwarves that came here when the colony was founded. They were looking for treasures and gold as far as I know. After some argument a bunch of them left, they headed into the jungle and were never seen again."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There was a handful of dwarves that came here when the colony was founded. They were looking for treasures and gold as far as I know. After some argument a bunch of them left, they headed into the jungle and were never seen again."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sadly it is next to nothing that I know about the elves and their city."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sadly it is next to nothing that I know about the elves and their city."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sadly it is next to nothing that I know about the elves and their city."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's a continent full of extremes. The jungle in the humid east, the desert in the dry west."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I was there quite often, using the flying carpet. It's quite different from the other towns I have seen, but surely worth a trip."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If I were you I'd stay as far away from this town as I could. It is ruled by an undead abomination and its inhabitants worship death."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This incarnation of evil seems to concentrate his efforts on Thais and its surroundings, but who knows what comes next into the mind of this madman?"})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The rumours I overheard did not mention this continent as one of its hiding places."})
keywordHandler:addKeyword({'ape'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They seem to live in the depth of the jungle in ruins that show the markings of the lizard folk. I wonder if they now try to conquer our city too."})
keywordHandler:addKeyword({'lizard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The lizards are hostile to us. They probably see no big difference between us and the ape people."})
keywordHandler:addKeyword({'dworc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dworcs live in the south in an underground network consisting of caves. They use poisoned weapons and love to build all kind of traps. You don't want to know the fate of those that have been trapped, believe me."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you bread, cheese, ham, or meat as well as several drinks."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you bread, cheese, ham, or meat as well as several drinks."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you bread, cheese, ham, or meat as well as several drinks."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you bread, cheese, ham, or meat as well as several drinks."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Are you looking for food? I have bread, cheese, ham, and meat."})
keywordHandler:addKeyword({'drink'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you beer, wine, lemonade, and water."})

npcHandler:addModule(FocusModule:new())