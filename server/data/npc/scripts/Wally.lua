-- NPC Converter System - developed by Utroz <utroz@oakcoders.com>
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)	npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)	npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg) end
function onThink()	npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I\'m Wally the post officer.'})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I am working here at the post office for Kevin.'})
keywordHandler:addKeyword({'kevin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Oh, our boss is upstairs. Better only disturb him with important issues though.'})
keywordHandler:addKeyword({'postmasters guild'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'We are an organization of importance for the whole of Tibia. Even kings tremble before our might.'})
keywordHandler:addKeyword({'join'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'You have to talk with the exalted archpostman Kevin Postner if you want to join our prestigeous guild.'})
keywordHandler:addKeyword({'markwin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'This minotaur is quite moody. Better make sure not to anger him. He\'s likely to call for his guards as soon as he notices a stranger, so you are on tough luck if you ever find him.'})
keywordHandler:addKeyword({'santa claus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'This old whitebeard lives on some hill on the western coast of Vega as far as I know.'})
keywordHandler:addKeyword({'brassacres'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'This guy might be hard to find. Hes likely disguising himself. If you see someone suspicious, try to ask other people who are around about him. That might give you some clue.'})
keywordHandler:addKeyword({'mission'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Ask Mr. Postner about your current missions.'})
keywordHandler:addKeyword({'ben'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Old Ben lost some of his marbles in some battle long ago. He is still a quite capable postman though ... on second thought thats some disturbing fact.'})
keywordHandler:addKeyword({'lokur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Dwarfs make quite good postmen. They are stubborn, strong and ... sturdy. Its a waste that he prefers a job behind the counter.'})
keywordHandler:addKeyword({'dove'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Dove is as good as a dozend pigeons. He He He.'})
keywordHandler:addKeyword({'olrik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'This Olrik was made postman only for convenience. He is quite aware that his attitude and affiliation with the thaian government makes it impossible for him to rise in rank. This leads only to him behaving even worse tough.'})
keywordHandler:addKeyword({'liane'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Although I never met her in person we became penpals over the time.'})
keywordHandler:addKeyword({'wally'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Yes, thats me, Wally!'})
keywordHandler:addKeyword({'advancement'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The exalted archpostman Kevin Postner alone decides about advancement of our members. All ranks come with certain privileges.'})
keywordHandler:addKeyword({'privileges'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Our privileges are top secret, other people envy us enough already for beeing members in this splendid guild.'})
keywordHandler:addKeyword({'uniform'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'We could badly need new uniforms.'})
keywordHandler:addKeyword({'dress pattern'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I vaguely remember the last dress pattern of our uniforms was dependend on certain key elements. It had some technical gadgets, a special smell and was uniquely colored.'})
keywordHandler:addKeyword({'crowbar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Most general stores should sell crowbars. I think the store in Edron sells some for instance.'})
keywordHandler:addKeyword({'hint'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can\'t help you much with your missions. Of course we tell you everything we know and do\'t make our missions needlesly difficult.'})
keywordHandler:addKeyword({'headquarter'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Its humble and practical. Considering we have bases all over the known world we don\'t need a bigger base anyways. On the other hand Mr. Postner is dreaming about a postman academy now and then.'})
keywordHandler:addKeyword({'bones'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'If I would be looking for bones I\'d inspect some skeletons ... If I weren\'t so affraid of them that is.'})
keywordHandler:addKeyword({'banana skin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Uh? How disgusting. Look for this rubbish in some places where waste is dumped .. and don\'t ever tell me what you need it for.'})
keywordHandler:addKeyword({'fur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'As far as I heard some of the minor orcs carry a pice of fur as a fetish or lucky charm with them.'})
keywordHandler:addKeyword({'moldy cheese'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'What a disgusting taste you have. Like those Goblins who carry this stuff with them.'})
keywordHandler:addKeyword({'noodles'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'This dog is his majestys most priced possesion and heavily guarded. Anger the dog and you anger the king.'})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'One of the oldest holdings of humanity that still exist and the heart of the biggest kingdom in the known world.'})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Carlin is an upcoming power in theese days. Albeit its ambitions it still dwarfs the old kingdom of thais in power and influence.'})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I think no longer is king Tibianus reigning this city, nor are the merchants ruling it, regardless what they might think. The true monarch before whom all there bow is the money.'})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I gues Edron isn\'t the source of wealth and rescources as the thaians hoped. The defection of those knights did cause the expansion and exploitation there to an halt.'})
keywordHandler:addKeyword({'defection'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I know nothing special about that story. I only heared that a good part of the knightly order the king sent there succumbed to their lust for wealth and power and turned against their swordbrethren.'})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'A far away place with strange customs and an even stranger philosophy. One day I might travel there to see it on my own.'})
keywordHandler:addKeyword({'ab\'dendriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Elven volunteers for becoming a postofficer are quite rare. We had to rely on a human living there to ensure our postsystems function. Most elvish members of the guild prefer to work as courriers.'})
keywordHandler:addKeyword({'Kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'The city of the dwarfs is a bit hidden and new postoficers often get lost while looking for it. Just look for a hidden passage to a western valley in the mountaion called the big old one.'})
keywordHandler:addKeyword({'big old one'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Its a huge Mountain, north of here, just across the river.'})
keywordHandler:addKeyword({'posthorn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'A posthorn is a postmens bride ... or a postwomans husband. The only true friend a lonly postofficer has in the foregin lands and dangerous places he has to visit.'})
keywordHandler:addKeyword({'cap'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'A cap is what shows you are a postofficer. But your heart and your state of mind are what you makes a postofficer.'})
keywordHandler:addKeyword({'mailbox'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Our mailboxes are quite reliable but know and then one has to be fixed. Especually in the more rough climates.'})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end

if msgcontains(msg, 'parcel') or msgcontains(msg, 'Parcel') then
	itemname = "parcel"
	itemprice = 10
	npcHandler:say("Would you like to buy a parcel for 10 gold?", 1)
	talk_state = 8595
	
elseif msgcontains(msg, 'letter') or msgcontains(msg, 'Letter') then
	itemname = "letter"
	itemprice = 5
	npcHandler:say("Would you like to buy a letter for 5 gold?", 1)
	talk_state = 8596	
	
			
elseif talk_state == 8595 and msgcontains(msg, 'yes') or talk_state == 8595 and msgcontains(msg, 'Yes') then
	if doPlayerRemoveMoney(cid, 10) == true then
		npcHandler:say("Here you are. Don't forget to write the name and the address of the receiver on the label. The label has to be in the parcel before you put the parcel in a mailbox.", 1)
		doPlayerAddItem(cid, 2595)
		doPlayerAddItem(cid, 2599)
	else
	npcHandler:say("Oh, you do not have enough gold to buy a ".. itemname ..".", 1)
	end
elseif talk_state == 8596 and msgcontains(msg, 'yes') or talk_state == 8596 and msgcontains(msg, 'Yes') then
	if doPlayerRemoveMoney(cid, 5) == true then
		npcHandler:say("Here it is. Don't forget to write the name of the receiver in the first line and the address in the second one before you put the letter in a mailbox.", 1)
		doPlayerAddItem(cid, 2597)
	else
	npcHandler:say("Oh, you do not have enough gold to buy a ".. itemname ..".", 1)
	end
	
elseif talk_state == 8595 and msgcontains(msg, '') then
npcHandler:say("Ok.", 1)
elseif talk_state == 8596 and msgcontains(msg, '') then
npcHandler:say("Ok.", 1)

elseif  msgcontains(msg, 'mail') then
    npcHandler:say('Our mail system is unique! And everyone can use it. Do you want to know more about it?', 1)
    talk_state = 505   

        elseif talk_state == 505 and msgcontains(msg, 'yes') then
		npcHandler:say('The Tibia Mail System enables you to send and receive letters and parcels. You can buy them here if you want.', 1)
		talk_state = 0
        elseif talk_state == 505 and msgcontains(msg, 'no') then
		npcHandler:say('Is there anything else I can do for you?', 1)
		talk_state = 0		

end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())