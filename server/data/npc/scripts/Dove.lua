dofile(getDataDir() .. 'npc/scripts/lib/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions
function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

keywordHandler:addKeyword({'kevin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Mr. Postner is one of the most honorable men I know."})
keywordHandler:addKeyword({'postner'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Mr. Postner is one of the most honorable men I know."})
keywordHandler:addKeyword({'postmasters guild'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As long as everyone lives up to our standarts our guild will be fine."})
keywordHandler:addKeyword({'join'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are always looking able recruits. Just speak to Mr.Postner in our headquarter."})
keywordHandler:addKeyword({'headquarter'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Its easy to be found. Its on the road from Thais to Kazordoon and Ab'dendriel."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am responsible for this post office. If you have questions about the mail system or the depots, just ask me."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Dove."})
keywordHandler:addKeyword({'dove'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Yes, like the bird. <giggles>"})
keywordHandler:addKeyword({'depot'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The depots are very easy to use. Just step in front of them and you will find your items in them. They are free for all Tibian citizens."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Even the king can be reached by the mailsystem."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Even the king can be reached by the mailsystem."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The soldiers get a lot of letters and parcels from Thais each week."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Try to contact him by mail."})
keywordHandler:addKeyword({'general'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Try to contact him by mail."})
keywordHandler:addKeyword({'sam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ham? No thanks, I ate fish already."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If i find it in an undeliverable parcel, I will contact you."})
keywordHandler:addKeyword({'news'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, there are rumours about the swampelves and the amazons, as usual."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "All cities are covered by our mail system."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "All cities are covered by our mail system."})
keywordHandler:addKeyword({'swampelves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They live somewhere in the swamp and usually stay out of our city. Only now and then some of them dare to interfere with us."})
keywordHandler:addKeyword({'amazon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These women are renegades from Carlin, and one of their hidden villages or hideouts might be in the swamp."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Now it's |TIME|."})

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

	-- The Postman Missions Quest
	elseif msgcontains(msg, 'measurements') and getPlayerStorageValue(cid,234) > 0 and getPlayerStorageValue(cid,238) < 1 then
	npcHandler:say('Oh no! I knew that day would come! I am slightly above the allowed weight and if you can\'t supply me with some grapes to slim down I will get fired. Do you happen to have some grapes with you?')
	topic = 5
	
	elseif msgcontains(msg, 'grapes') and getPlayerStorageValue(cid,234) > 0 and getPlayerStorageValue(cid,238) < 1 then	
	npcHandler:say('Do you happen to have some grapes with you?')
	topic = 5
	
	elseif topic == 5 and msgcontains(msg, 'yes') and getPlayerItemCount(cid,2681) >= 1 then
	npcHandler:say('Oh thank you! Thank you so much! So listen ... <whispers her measurements>')
	doPlayerRemoveItem(cid,2681,1)
	setPlayerStorageValue(cid,238,1)
	setPlayerStorageValue(cid,234,getPlayerStorageValue(cid,234)+1)
	
	elseif topic == 5 and msgcontains(msg, 'yes') and getPlayerItemCount(cid,2681) < 1 then
	npcHandler:say('Don\'t tease me! You don\'t have any.')
	topic = 0
	
	elseif topic == 5 and msgcontains(msg, '') then
	npcHandler:say('Oh, no! I might loose my job.')
	topic = 0
	
end		
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())