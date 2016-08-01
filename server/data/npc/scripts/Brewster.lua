local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

	function FocusModule:init(handler)
	FOCUS_GREETSWORDS = {'hi', 'hello'}
	FOCUS_FAREWELLSWORDS = {'bye', 'farewell'}
		self.npcHandler = handler
		for i, word in pairs(FOCUS_GREETSWORDS) do
			local obj = {}
			table.insert(obj, word)
			obj.callback = FOCUS_GREETSWORDS.callback or FocusModule.messageMatcher
			handler.keywordHandler:addKeyword(obj, FocusModule.onGreet, {module = self})
		end
		
		for i, word in pairs(FOCUS_FAREWELLSWORDS) do
			local obj = {}
			table.insert(obj, word)
			obj.callback = FOCUS_FAREWELLSWORDS.callback or FocusModule.messageMatcher
			handler.keywordHandler:addKeyword(obj, FocusModule.onFarewell, {module = self})
		end
		
		return true
	end
	
function greetCallback(cid)
	npcHandler:setMessage(MESSAGE_GREET, "G...greetings <hicks>.")
	return true
end	
npcHandler:setCallback(CALLBACK_GREET, greetCallback)

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)
 
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am a priest. <hicks> The worldly representative of the gods so to speak. <hicks> Not that I would say such a thing of course. <hicks> This would be vanity after all."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am ... ah, yes, Brewster. That's me, my name I mean <hicks>."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Uhm ... Uh ... No idea, sorry."})
keywordHandler:addKeyword({'temple'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hehe! <hicks> Well if you call this hut a temple you are not a devoted churchgoer I guess. But never mind, I won't tell anyone and the gods know it anyway ... if they care."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ah the king, how lucky he must be - being the ruler of this lovely little piece of dirt here. Hehe."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Venore, Venore, city of splendour. Hm, the best thing about that city is its brewery."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais!! My beloved hometown! Oh how I miss my good, old Thais."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ha! That's probably even worse than this dump of a jungle here that they call a colony."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They would never appoint a priest of such a low rank like me to Edron."})
keywordHandler:addKeyword({'jungle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This jungle must be the way of the gods to give us mortals a taste of hell <hicks>."})
keywordHandler:addKeyword({'gods'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Oh come on, just leave me alone. <hicks> Read a book to find out more."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If Tibia is a fallen god, make your guess what bodypart you are on now. <hicks> I have my assumptions ... but I won't tell. Hehe."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves I met can't stop to praise the dwarven beer. That wakes the urge in me to ... uhm spread the word of our gods in that city of Kazordoon."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves I met can't stop to praise the dwarven beer. That wakes the urge in me to ... uhm spread the word of our gods in that city of Kazordoon."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarves I met can't stop to praise the dwarven beer. That wakes the urge in me to ... uhm spread the word of our gods in that city of Kazordoon."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Was never there <hicks> For all what I have heard it's not that much different from this ugly little settlement."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "After being in that jungle for a while, I can't trust people that love trees anymore."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "After being in that jungle for a while, I can't trust people that love trees anymore."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The teachings of our temple counts little on this continent. I think it's a sign from the gods to abandon it. But why should anyone listen to poor old Brewster?"})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just to think about this cursed town and its inhabitants makes me shiver. I better take a quick drink to forget about it."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "<hicks> Oh well, he is just that what I'd expect next in all my misery."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Who knows if it is real or just some myth? <hicks> And who cares at all?"})
keywordHandler:addKeyword({'ape'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They don't believe me but I have seen them. There are pink apes! They come when I am sleeping and try to steal my beer and wine <hicks>."})
keywordHandler:addKeyword({'lizard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They usually stay away from here so who cares?"})
keywordHandler:addKeyword({'dworc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Heard enough of them to dislike them."})
keywordHandler:addKeyword({'cough syrup'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The only person who might have some cough syrup is this druid Ustan. You find him in the tavern. Hmmm the tavern ... <hicks>"})
keywordHandler:addKeyword({'blessing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The vital force of this world is waning. There are no more blessings available on this world."})
keywordHandler:addKeyword({'bless'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The vital force of this world is waning. There are no more blessings available on this world."})

function creatureSayCallback(cid, type, msg)
	if(cid ~= npcHandler.focus) then
		return false
	end

	if msgcontains(msg, 'heal') then
		if hasCondition(cid, CONDITION_FIRE) == true then
			npcHandler:say('You are burning. I will help you.')
			doRemoveCondition(cid, CONDITION_FIRE)
			doSendMagicEffect(getCreaturePosition(cid), 14)
		elseif hasCondition(cid, CONDITION_POISON) == true then
			npcHandler:say('You are poisoned. I will help you.')
			doRemoveCondition(cid, CONDITION_POISON)
			doSendMagicEffect(getCreaturePosition(cid), 13)
		elseif getCreatureHealth(cid) < 40 then
			npcHandler:say('You are looking really bad. Let me heal your wounds.')
			doCreatureAddHealth(cid, 40 - getCreatureHealth(cid))
			doSendMagicEffect(getCreaturePosition(cid), 12)
		else
			npcHandler:say('You aren\'t looking that bad. Sorry, I can\'t help you. But if you are looking for additional protection you should go on the pilgrimage of ashes.')
		end
	end
	
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())