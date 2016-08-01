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
shopModule:addBuyableItem({'cookie'}, 2687, 5, 0, 'cookies')
shopModule:addBuyableItem({'lemonade'}, 2012, 2, 5, 'mug of lemonade')
shopModule:addBuyableItem({'beer'}, 2012, 2, 3, 'mug of beer')
shopModule:addBuyableItem({'wine'}, 2012, 3, 7, 'mug of wine')
shopModule:addBuyableItem({'water'}, 2012, 1, 1, 'mug of water')

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the bartender here at the racing track."})
keywordHandler:addKeyword({'tavern'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the bartender here at the racing track."})
keywordHandler:addKeyword({'frodo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heard about his tiny tavern in Thais."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just call me Boozer. Everyone does that."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king is far away, so who cares?"})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The king is far away, so who cares?"})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Good customers."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Guess he'd be bad news for business."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Heard about it now and then. Then again I also hear there a bogeyman somewhere in the swamps."})
keywordHandler:addKeyword({'bogeyman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just a tale to scare the kids."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If you like that Thais that much just go there."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "People from all over Tibia come here to buy, sell, gamble, and get drunk until they puke."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Heard about that women there. Must visit that wenches someday."})
keywordHandler:addKeyword({'amazon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I guess they just have not met the right man yet."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The swampelves, down at Shadowthorn, are up to some trouble again."})
keywordHandler:addKeyword({'rumo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The swampelves, down at Shadowthorn, are up to some trouble again."})
keywordHandler:addKeyword({'swampelves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some elves gone evil so to say. They now live in a small village to the south called Shadowthorn. No big deal. Who cares about some carrot-eating musicians at all?"})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you food and drinks. Get anything else somewhere else and don't bother me."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you food and drinks. Get anything else somewhere else and don't bother me."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you food and drinks. Get anything else somewhere else and don't bother me."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you food and drinks. Get anything else somewhere else and don't bother me."})
keywordHandler:addKeyword({'drink'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you beer, wine, lemonade, and water."})


function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
if msgcontains(msg, 'time') then
	if getPlayerSex(cid) == 1 then
	npcHandler:say("No clue, boy.", 1)	
	else
	npcHandler:say("No clue, girl.", 1)	
	end
	talk_state = 0

end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())