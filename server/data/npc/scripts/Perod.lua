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

shopModule:addBuyableItem({'torch'}, 2050, 2)
shopModule:addBuyableItem({'bag'}, 3939, 5)
shopModule:addBuyableItem({'backpack'}, 3940, 20)
shopModule:addBuyableItem({'present'}, 1990, 10)
shopModule:addBuyableItem({'scroll'}, 1949, 5)
shopModule:addBuyableItem({'document'}, 1968, 12)
shopModule:addBuyableItem({'parchment'}, 1967, 8)
shopModule:addBuyableItem({'brown book'}, 1971, 15)
shopModule:addBuyableItem({'black book'}, 1972, 15)
shopModule:addBuyableItem({'small book'}, 1973, 15)
shopModule:addBuyableItem({'bucket'}, 2005, 4, 0)
shopModule:addBuyableItem({'bottle'}, 2007, 3, 0)
shopModule:addBuyableItem({'mug'}, 2012, 4, 0)
shopModule:addBuyableItem({'cup'}, 2013, 2)
shopModule:addBuyableItem({'jug'}, 2014, 10)
shopModule:addBuyableItem({'plate'}, 2035, 6)
shopModule:addBuyableItem({'watch'}, 2036, 20)
shopModule:addBuyableItem({'football'}, 2109, 111)
shopModule:addBuyableItem({'rope'}, 2120, 50)
shopModule:addBuyableItem({'machete'}, 2420, 40)
shopModule:addBuyableItem({'scythe'}, 2550, 50)
shopModule:addBuyableItem({'pick'}, 2553, 50)
shopModule:addBuyableItem({'shovel'}, 2554, 50)
shopModule:addBuyableItem({'rod'}, 2580, 150, 0, 'fishing rod')
shopModule:addBuyableItem({'worm'}, 3976, 1)
shopModule:addBuyableItem({'crossbow'}, 2455, 500)
shopModule:addBuyableItem({'bow'}, 2456, 400)
shopModule:addBuyableItem({'arrow'}, 2544, 2)
shopModule:addBuyableItem({'bolt'}, 2543, 3)



keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell general goods which are, if I am allowed to say that, crucial when you explore the jungle."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I won't tell you, but you can buy one of my quality watches to find out."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king is far away and yet we are still his subjects. Strange, isn't it?"})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "After I had left Thais I found a new home in Venore and I never regreted it."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais lacked any prospect for a change. I quickly figured out that Venore is the place to be."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Carlin is a dull city with strange habits."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I lived in Edron as a treasure hunter for a while, but then the place became too crowded."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have travelled a lot and still I have not seen everything. So I abandoned my life as an explorer and became an employee of a trading company domiciled in Venore."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The hidden city of the dwarves can be quite confusing for a newcomer. I got lost there a dozen times before I became familiar with that city."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some dwarves live in the city, you'll find them in the tavern."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some dwarves live in the city, you'll find them in the tavern."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The elves of Ab'Dendriel built a city seemingly out of trees. I wonder how they can stand the winter in those odd houses."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The elves of Ab'Dendriel built a city seemingly out of trees. I wonder how they can stand the winter in those odd houses."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The elves of Ab'Dendriel built a city seemingly out of trees. I wonder how they can stand the winter in those odd houses."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A new continent means new chances. But my days as an adventurer are over. My new chances lie in trade and commerce."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My trips there were very short, I don't like the desert and I did not like that town."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's one of the few cities I have never visited and no one will ever get me even close to that city of undeads and mummies."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "During my days as an adventurer, I was thrilled by the thought to fight him. Looking back I must say it is better that I have never met him."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh boy, how long have we searched for that weapon. I still wonder sometimes where it might be hidden, but I have no clue."})
keywordHandler:addKeyword({'ape'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Their occasional raids give me a chance to train my fighting skills."})
keywordHandler:addKeyword({'lizard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I bet those lizards hide some ancient treasures in their settlements."})
keywordHandler:addKeyword({'dworc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's the jungle variant of the orcs. I guess no matter where you go, there is always some orc waiting behind some bush, ready to thrust his blade in your body."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I offer fishing rods, worms, shovels, picks, scythes, bags, ropes, backpacks, plates, jugs, mugs, cups, bottles, buckets, scrolls, documents, parchments, footballs, watches, books, torches, machetes, presents and ammunition."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I offer fishing rods, worms, shovels, picks, scythes, bags, ropes, backpacks, plates, jugs, mugs, cups, bottles, buckets, scrolls, documents, parchments, footballs, watches, books, torches, machetes, presents and ammunition."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I offer fishing rods, worms, shovels, picks, scythes, bags, ropes, backpacks, plates, jugs, mugs, cups, bottles, buckets, scrolls, documents, parchments, footballs, watches, books, torches, machetes, presents and ammunition."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I offer fishing rods, worms, shovels, picks, scythes, bags, ropes, backpacks, plates, jugs, mugs, cups, bottles, buckets, scrolls, documents, parchments, footballs, watches, books, torches, machetes, presents and ammunition."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I offer fishing rods, worms, shovels, picks, scythes, bags, ropes, backpacks, plates, jugs, mugs, cups, bottles, buckets, scrolls, documents, parchments, footballs, watches, books, torches, machetes, presents and ammunition."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ask somwhere else in the market."})
keywordHandler:addKeyword({'fluid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ask somwhere else in the market."})
keywordHandler:addKeyword({'book'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I offer different kind of books: brown, black and small books. Which book do you want?"})
keywordHandler:addKeyword({'ammo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do you need arrows for a bow, or bolts for a crossbow?"})
keywordHandler:addKeyword({'ammunition'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do you need arrows for a bow, or bolts for a crossbow?"})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
if msgcontains(msg, 'name') or msgcontains(msg, 'Name') then
	npcHandler:say("I am Perod, how could you forget that, ".. getPlayerName(cid) .."? We fought back-to-back in those troll caves on Rookgard a long time ago.", 1)
	talk_state = 0
			
elseif msgcontains(msg, 'jungle') or msgcontains(msg, 'Jungle') then
	npcHandler:say("The jungle is full of adventures and secrets that wait to be explored. Some years ago I would have surely enjoyed that. ...", 1)
	npcHandler:say("But now that I setteled down here, I don't feel excited anymore by the thought of exploring an inhospitable forest full of animals that want to kill me.", 5)
	talk_state = 0

end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())