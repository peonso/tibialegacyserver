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

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a monk, collecting healing herbs."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Loui."})
keywordHandler:addKeyword({'monk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a humble servant of the gods."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Everything around us, that is Tibia."})
keywordHandler:addKeyword({'rook'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is the place where everything starts."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They created Tibia and all lifeforms. Talk to other monks and priests to learn more about them."})
keywordHandler:addKeyword({'life'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The gods blessed Tibia with abundant forms of life."})
keywordHandler:addKeyword({'herb'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I was looking for some herbs as I foolishly entered this unholy hole."})
keywordHandler:addKeyword({'obi'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He owns a shop in the town."})
keywordHandler:addKeyword({'al dee'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He owns a shop in the town."})
keywordHandler:addKeyword({'seymour'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Seymour is the headmaster of the local academy."})
keywordHandler:addKeyword({'academy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Most adventurers take their first steps there."})
keywordHandler:addKeyword({'willie'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The gods may protect me from his foul language."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There must be an army of them, just down this hole."})
keywordHandler:addKeyword({'rabbit'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "So it must have been some magic wielding beasts using creature illusion. Good thing you escaped."})
keywordHandler:addKeyword({'quest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have no quests but to stay away from that hole and I'd recomend you to do the same."})
keywordHandler:addKeyword({'task'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have no quests but to stay away from that hole and I'd recomend you to do the same."})
keywordHandler:addKeyword({'gold'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am pennyless and poor as it is fit for a humble monk like me."})
keywordHandler:addKeyword({'money'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am pennyless and poor as it is fit for a humble monk like me."})
keywordHandler:addKeyword({'rat'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The good thing is, those horrible rats stay in the town mostly. The bad thing is, they do so because outside the bigger Monsters devour them."})
keywordHandler:addKeyword({'hole'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "While looking for herbs I found that hole. I went down though I had no torch. And then I heard THEM! There must be dozens!"})
keywordHandler:addKeyword({'story'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "While looking for herbs I found that hole. I went down though I had no torch. And then I heard THEM! There must be dozens!"})
keywordHandler:addKeyword({'them'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They were so many, EVERYWHERE! I could barely escape alive. I have no clue what THEY were but one more second down there and I'd be dead!"})
keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry I am out of mana and ingredients, please visit Cipfried in the town."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Now, it is |TIME|, my child."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())