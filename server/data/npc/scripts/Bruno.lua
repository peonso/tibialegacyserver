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

shopModule:addBuyableItem({'fish'}, 2667, 5, 0, 'fresh fish')
 
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Bruno."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My job is to catch fish and to sell them here."})
keywordHandler:addKeyword({'graubart'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I like this old salt. I learned much from him. Whatever. You like some fish? *grin*"})
keywordHandler:addKeyword({'marlene'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah yes, my lovely wife. God forgive her, but she can't stop talking. So my work is a great rest for my poor ears. *laughs loudly*"})
keywordHandler:addKeyword({'aneus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hmm, I don't know him very well. But he has a very nice story to tell."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I sell freshly caught fish. You like some? Of course, you can buy more than one at once. *grin*"})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, I sell freshly caught fish. You like some? Of course, you can buy more than one at once. *grin*"})

npcHandler:addModule(FocusModule:new())