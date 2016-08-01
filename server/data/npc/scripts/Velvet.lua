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

shopModule:addBuyableItem({'small purple pillow'}, 1678, 20)
shopModule:addBuyableItem({'small green pillow'}, 1679, 20)
shopModule:addBuyableItem({'small red pillow'}, 1680, 20)
shopModule:addBuyableItem({'small blue pillow'}, 1681, 20)
shopModule:addBuyableItem({'small orange pillow'}, 1682, 20)
shopModule:addBuyableItem({'small turqoise pillow'}, 1683, 20)
shopModule:addBuyableItem({'small white pillow'}, 1684, 20)
shopModule:addBuyableItem({'heart pillow'}, 1685, 30)
shopModule:addBuyableItem({'round blue pillow'}, 1690, 25)
shopModule:addBuyableItem({'round red pillow'}, 1691, 25)
shopModule:addBuyableItem({'round purple pillow'}, 1692, 25)
shopModule:addBuyableItem({'round turqoise pillow'}, 1693, 25)
shopModule:addBuyableItem({'square blue pillow'}, 1686, 30)
shopModule:addBuyableItem({'square red pillow'}, 1687, 30)
shopModule:addBuyableItem({'square green pillow'}, 1688, 30)
shopModule:addBuyableItem({'square yellow pillow'}, 1689, 30)

shopModule:addBuyableItem({'green tapestry'}, 1860, 25)
shopModule:addBuyableItem({'yellow tapestry'}, 1863, 25)
shopModule:addBuyableItem({'orange tapestry'}, 1866, 25)
shopModule:addBuyableItem({'red tapestry'}, 1869, 25)
shopModule:addBuyableItem({'blue tapestry'}, 1872, 25)
shopModule:addBuyableItem({'white tapestry'}, 1880, 25)

keywordHandler:addKeyword({'tapestry'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell green, yellow, orange, red, blue and white tapestry."})
keywordHandler:addKeyword({'tapestries'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell green, yellow, orange, red, blue and white tapestry."})
keywordHandler:addKeyword({'pillow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell small purple, green, red, blue, orange, turqoise and white pillows. and round blue, red, purple and turqoise pillows. and square blue, red, green and yellow pillows. and also heart pillows."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Velvet. How can I help you?"})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I'm working here in this shop. Are you interested in any of our goods?"})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell pillows and tapestries."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell pillows and tapestries."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell pillows and tapestries."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell pillows and tapestries."})
keywordHandler:addKeyword({'furniture'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell pillows and tapestries."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell pillows and tapestries."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	if msgcontains(msg, 'time') then
		if getPlayerSex(cid) == 1 then
			npcHandler:say('It\'s '.. getTibiaTime() ..', sire.')
		else
			npcHandler:say('It\'s '.. getTibiaTime() ..', my lady.')
		end
	end		

return true
end	
		
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())