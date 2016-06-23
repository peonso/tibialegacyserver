dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'small purple pillow'}, 					ID_purplepillow, 20)
shopModule:addBuyableItem({'small green pillow'}, 					ID_greenpillow, 20)
shopModule:addBuyableItem({'small red pillow'}, 					ID_redpillow, 20)
shopModule:addBuyableItem({'small blue pillow'}, 					ID_bluepillow, 20)
shopModule:addBuyableItem({'small orange pillow'}, 					ID_orangepillow, 20)
shopModule:addBuyableItem({'small turqoise pillow'}, 					ID_turqoisepillow, 20)
shopModule:addBuyableItem({'small white pillow'}, 					ID_whitepillow, 20)
shopModule:addBuyableItem({'heart pillow'}, 					ID_heartpillow, 30)
shopModule:addBuyableItem({'round blue pillow'}, 					ID_blueroundpillow, 25)
shopModule:addBuyableItem({'round red pillow'}, 					ID_redroundpillow, 25)
shopModule:addBuyableItem({'round purple pillow'}, 					ID_purpleroundpillow, 25)
shopModule:addBuyableItem({'round turqoise pillow'}, 					ID_turqoiseroundpillow, 25)
shopModule:addBuyableItem({'square blue pillow'}, 					ID_bluesquarepillow, 30)
shopModule:addBuyableItem({'square red pillow'}, 					ID_redsquarepillow, 30)
shopModule:addBuyableItem({'square green pillow'}, 					ID_greensquarepillow, 30)
shopModule:addBuyableItem({'square yellow pillow'}, 					ID_yellowsquarepillow, 30)

shopModule:addBuyableItem({'green tapestry'}, 					ID_greentapestry, 25)
shopModule:addBuyableItem({'yellow tapestry'}, 					ID_yellowtapestry, 25)
shopModule:addBuyableItem({'orange tapestry'}, 					ID_orangetapestry, 25)
shopModule:addBuyableItem({'red tapestry'}, 					ID_redtapestry, 25)
shopModule:addBuyableItem({'blue tapestry'}, 					ID_bluetapestry, 25)
shopModule:addBuyableItem({'white tapestry'}, 					ID_whitetapestry, 25)

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

return TRUE
end	
		
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())