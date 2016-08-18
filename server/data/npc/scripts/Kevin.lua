local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)	npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)	npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg) end
function onThink()	npcHandler:onThink() end

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'My name is Kevin. Kevin Postner, that is.'})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I am the head of the Tibian Postmaster\'s Guild.'})
keywordHandler:addKeyword({'guild'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'We are a powerful organisation that is vital part of Tibian society. It\'s a honour and a privilege to be a member.'})
keywordHandler:addKeyword({'academy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Ah, yes! One day I will found a postofficers academy. Perhaps with the help of our most able members. But rhats a task for another day.'})
keywordHandler:addKeyword({'wally'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Wally is my right hand, so to say. He is the head to our guilds office branch.'})
keywordHandler:addKeyword({'branch'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Well, thers the depot branch, the office brance, the delivery branch and some officers for special operations.'})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
	-- The Postman Missions Quest by Rodrigo (Nottinghster)
	if msgcontains(msg, 'special operations') and getPlayerStorageValue(cid,STORAGE_POSTMAN_DOOR) < 4 then
	npcHandler:say('Sorry but I won\'t talk about this matter with someone of your rank.')
	topic = 0
	
	elseif msgcontains(msg, 'special operations') and getPlayerStorageValue(cid,STORAGE_POSTMAN_DOOR) > 3 then
	npcHandler:say('We have a secret branch, called \'the stamps of the gods\'. They secretly supervise our members reliability and have an eye on certain groups of interest that want to gain influence over our guild.')
	topic = 0
	
	elseif msgcontains(msg, 'member') and getPlayerStorageValue(cid,227) < 1 then
	npcHandler:say('We have high standards for our members. To rise in our guild is a difficult but rewarding task. Why do you ask? Are you interested in joining?')
	topic = 1
	
	elseif msgcontains(msg, 'member') and getPlayerStorageValue(cid,227) > 0 then
	npcHandler:say('You are already a member, '.. getPlayerName(cid).. '.')
	topic = 0
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,227) < 1 then
	npcHandler:say('You are not a member of our guild yet! We have high standards for our members. To rise in our guild is a difficult but rewarding task. Are you interested in joining?')
	topic = 1
	
	elseif msgcontains(msg, 'advancement') and getPlayerStorageValue(cid,STORAGE_POSTMAN_DOOR) < getPlayerStorageValue(cid,249) then
	npcHandler:say('You are worthy indeed. Do you want to advance in our guild?')
	topic = 23
	
	elseif msgcontains(msg, 'advancement') and getPlayerStorageValue(cid,STORAGE_POSTMAN_DOOR) >= getPlayerStorageValue(cid,249) then
	npcHandler:say('Sorry, but you are not yet ready for advancement.')
	
	elseif msgcontains(msg, 'yes') and topic == 23 and getPlayerStorageValue(cid,249) == 2 then
	npcHandler:say('I grant you the title of postman. You are now a full member of our guild. Here have your own officers hat and wear it with pride.')
	setPlayerStorageValue(cid,STORAGE_POSTMAN_DOOR,2)
	doPlayerAddItem(cid,2665,1)
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 23 and getPlayerStorageValue(cid,249) == 3 then
	npcHandler:say('From now on it shall be known that you are a grand postman. You are now a privileged member until the end of days. Most captains around the world have an agreement with our guild to transport our privileged members, like you, for less gold.')
	setPlayerStorageValue(cid,STORAGE_POSTMAN_DOOR,3)
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 23 and getPlayerStorageValue(cid,249) == 4 then
	npcHandler:say('From now on you are a grand postman for special operations. You are an honoured member of our guild and earned the privilege of your own post horn. Here, take it.')
	setPlayerStorageValue(cid,STORAGE_POSTMAN_DOOR,4)
	doPlayerAddItem(cid,2332,1)
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 23 and getPlayerStorageValue(cid,249) == 5 then
	npcHandler:say('I grant you the title of archpostman. You are a legend in our guild. As privilege of your newly aquired status you are allowed to make use of certain mailboxes in dangerous areas. Just look out for them and you\'ll see.')
	setPlayerStorageValue(cid,STORAGE_POSTMAN_DOOR,5)
	topic = 0
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,248) == 1 and getPlayerStorageValue(cid,STORAGE_POSTMAN_DOOR) < getPlayerStorageValue(cid,249) then
	npcHandler:say('Your eagerness is a virtue, young one, but first lets talk about advancement.')
	topic = 0
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,248) == 1 then
	npcHandler:say('You have mastered all our current missions. There\'s nothing left to be done ... for now.')
	topic = 0

	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,245) == 1 then
	npcHandler:say('You are not done with your current mission. Deliver that letter to king Markwin. Please report back when you are ready.')
	topic = 0
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,245) == 2 then
	npcHandler:say('You have delivered that letter? You are a true postofficer. All over the land bards shall praise your name. There are no missions for you left right now.')
	setPlayerStorageValue(cid,248,1)
	setPlayerStorageValue(cid,249,5)
	topic = 0

	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,244) == 1 then
	npcHandler:say('You are not done with your current mission. Deliver those letters to Santa. Please report back when you are ready.')
	topic = 0
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,244) == 2 then
	npcHandler:say('You did it? I hope you did not catch a flu in the cold! However theres another mission for you. Are you interested?')
	topic = 21
	
	elseif msgcontains(msg, 'yes') and topic == 21 then
	npcHandler:say('Excellent. Here is a letter for you to deliver. Well, to be honest, no one else volunteered. It\'s a letter from the mother of Markwin, the king of Mintwallin. Deliver that letter to him, but note that you will not be welcome there.')
	setPlayerStorageValue(cid,245,1)
	doPlayerAddItem(cid,2333,1)
	topic = 0
	
	elseif msgcontains(msg, '') and topic == 21 then
	npcHandler:say('Too bad, perhaps another time then.')
	topic = 0
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,246) == 1 and getPlayerStorageValue(cid,244) == 0 then
	npcHandler:say('So are you ready for another Mission?')
	topic = 20
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,243) == 0 and getPlayerStorageValue(cid,242) == 1 then
	npcHandler:say('You are not done with your current mission. Search for the whereabout of Postofficer Waldo. Please report back when you are ready.')
	topic = 0
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,243) == 1 then
	npcHandler:say('So Waldo is dead? This is grave news indeed. Did you recover his posthorn?')
	topic = 19
	
	elseif msgcontains(msg, 'yes') and topic == 19 and getPlayerItemCount(cid,2332) >= 1 then
	npcHandler:say('Thank you. We will honour this. Your next mission will be a very special one. Good thing you are a special person as well. Are you ready?')
	doPlayerRemoveItem(cid,2332,1)
	setPlayerStorageValue(cid,246,1)
	setPlayerStorageValue(cid,249,4)
	topic = 20
	
	elseif msgcontains(msg, 'yes') and topic == 19 and getPlayerItemCount(cid,2332) < 1 then
	npcHandler:say('Hm, no, you don\'t have it. Too bad, go and look for it.')
	topic = 0
	
	elseif msgcontains(msg, '') and topic == 19 then
	npcHandler:say('Too bad, go and look for it.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 20 and getPlayerStorageValue(cid,STORAGE_POSTMAN_DOOR) < getPlayerStorageValue(cid,249) then
	npcHandler:say('Your eagerness is a virtue, young one, but first lets talk about advancement.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 20 then
	npcHandler:say('So listen well. Behind the lower left door you will find a bag. The letters in the bag are for none other than Santa Claus! Deliver them to his house on the isle of Vega, USE the bag on his mailbox and report back here.')
	setPlayerStorageValue(cid,244,1)
	topic = 0
	
	elseif msgcontains(msg, '') and topic == 20 then
	npcHandler:say('Too bad, perhaps another time then.')
	topic = 0
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,234) > 0 and getPlayerStorageValue(cid,234) < 7 then
	npcHandler:say('You are not done with your current mission. We still need the measurements of several postofficers. Please report back when you are ready.')
	topic = 0
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,234) == 7 then
	npcHandler:say('Once more you have impressed me! Are you willing to do another job?')
	topic = 17
	
	elseif msgcontains(msg, 'yes') and topic == 17 then
	npcHandler:say('Ok but your next assignment might be dangerous. Our Courier Waldo has been missing for a while. I must assume he is dead. Can you follow me so far?')
	topic = 18
	
	elseif msgcontains(msg, '') and topic == 17 then
	npcHandler:say('Too bad, perhaps another time then.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 18 then
	npcHandler:say('Find out about his whereabouts and retrieve him or at least his posthorn. He was looking for a new underground passage that is rumoured to be found underneath the troll-infested Mountain east of Thais.')
	setPlayerStorageValue(cid,242,1)
	topic = 0
	
	elseif msgcontains(msg, '') and topic == 18 then
	npcHandler:say('Too bad, perhaps you will try some other time then.')
	topic = 0
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,233) > 0 and getPlayerStorageValue(cid,233) < 10 then
	npcHandler:say('You are not done with your current mission. Make sure Hugo chief is tailoring our new uniforms. Please report back when you are ready.')
	topic = 0
	
	elseif getPlayerStorageValue(cid,233) == 10 and msgcontains(msg, 'mission') then
	npcHandler:say('Excellent! Another job well done! Would you accept another mission?')
	setPlayerStorageValue(cid,249,3)
	--[[ getPlayerStorageValue(cid,233) == 10 ]]-- Cheap travels
	topic = 16
	
	elseif msgcontains(msg, 'yes') and topic == 16 and getPlayerStorageValue(cid,STORAGE_POSTMAN_DOOR) < getPlayerStorageValue(cid,249) then
	npcHandler:say('Your eagerness is a virtue, young one, but first let\'s talk about advancement.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 16 then
	npcHandler:say('Good, so listen. Hugo Chief informed me that he needs the measurements of our postofficers. Go and bring me the measurements of Ben, Lokur, Dove, Liane, Chrystal and Olrik.')
	setPlayerStorageValue(cid,234,1)
	topic = 0
	
	elseif msgcontains(msg, '') and topic == 16 then
	npcHandler:say('Too bad, perhaps another time then.')
	topic = 0
	
	elseif getPlayerStorageValue(cid,233) == 6 and msgcontains(msg, 'dress pattern') or msgcontains(msg, 'uniform') then
	npcHandler:say('The queen has sent me the samples we needed. The next part is tricky. We need the uniforms to emanate some odor that dogs hate.The dog with the best \'taste\' in that field is Noodles, the dog of King Tibianus. Do you understand so far?')
	topic = 15
	amount = math.random(1,3)
	
	elseif msgcontains(msg, 'yes') and topic == 15 then
	npcHandler:say('Good. Go there and find out what taste he dislikes most: moldy cheese, a piece of fur or a bananaskin. Tell him to SNIFF, then the object. Show him the object and ask \'Do you like that?\'. DONT let the guards know what you are doing.')
	setPlayerStorageValue(cid,233,7)
	setPlayerStorageValue(cid,251,amount)
	topic = 0
	
	elseif msgcontains(msg, '') and topic == 15 then
	npcHandler:say('Too bad, perhaps you can try doing it some other time then.')
	topic = 0
	
	elseif msgcontains(msg, 'dress pattern') and getPlayerStorageValue(cid,233) == 2 then
	npcHandler:say('Oh yes, where did we get that from ...? Let\'s see, first ask the great technomancer in Kazordoon for the technical details. Return here afterwards.')
	setPlayerStorageValue(cid,233,3)
	topic = 0
	
	elseif msgcontains(msg, 'dress pattern') and getPlayerStorageValue(cid,233) == 8 then
	npcHandler:say('Fine, fine. I think that should do it. Tell Hugo that we order those uniforms. The completed dress pattern will soon arrive in Venore. Report to me when you have talked to him.')
	setPlayerStorageValue(cid,233,9)
	topic = 0	
	
	elseif msgcontains(msg, 'dress pattern') and getPlayerStorageValue(cid,233) == 4 then
	npcHandler:say('The mail with Talphion\'s instructions just arrived. I remember we asked Queen Eloise of Carlin for the perfect colours. Go there, ask her about the UNIFORMS and report back here.')
	setPlayerStorageValue(cid,233,5)
	topic = 0
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,231) == 1 then
	npcHandler:say('You are not done with your current mission. Deliver that present to Fibula. Please report back when you are ready.')
	topic = 0
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,231) == 2 then
	npcHandler:say('Splendid, I knew we could trust you. I would like to ask for your help in another matter. Are you interested?')
	topic = 14
	
	elseif msgcontains(msg, 'yes') and topic == 14 then
	npcHandler:say('Ok. We need a new set of uniforms, and only the best will do for us. Please travel to Venore and negotiate with Hugo Chief a contract for new uniforms.')
	setPlayerStorageValue(cid,233,1)
	topic = 0
	
	elseif msgcontains(msg, '') and topic == 14 then
	npcHandler:say('Too bad, perhaps another time then.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid,STORAGE_POSTMAN_DOOR) < getPlayerStorageValue(cid,STORAGE_POSTMAN_DOOR) and topic == 13 then
	npcHandler:say('Your eagerness is a virtue, young one, but first lets talk about advancement.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 13 then
	npcHandler:say('Since I am convinced I can trust you, this time you must deliver a valuable present to Dermot on Fibula. Do NOT open it!!! You will find the present behind the door here on the lower right side of this room.')
	setPlayerStorageValue(cid,231,1)
	topic = 0
	
	elseif msgcontains(msg, '') and topic == 13 then
	npcHandler:say('Too bad, perhaps another time then.')
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,230) == 1 then
	npcHandler:say('Do you bring ONE bone for our officers\' safety fund or ALL bones at once?')
	topic = 24
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,230) > 1 and getPlayerStorageValue(cid,230) < 20 then
	npcHandler:say('Do you bring a bone for our officers\' safety fund?')
	topic = 12
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,230) > 1 and getPlayerStorageValue(cid,230) == 20 then
	npcHandler:say('Do you bring a bone for our officers\' safety fund?')
	topic = 22
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,230) > 20 then
	npcHandler:say('You have made it! We have enough bones for the fund! You remind me of myself when I was young! Interested in another mission?')
	topic = 13
	
	elseif msgcontains(msg, 'yes') and topic == 12 and getPlayerItemCount(cid,2230) >= 1 then
	npcHandler:say('Excellent! You have collected 1 bone. Just report about your mission again if you find  more.')
	doPlayerRemoveItem(cid,2230,1)
	setPlayerStorageValue(cid,getPlayerStorageValue(cid,230)+1)
	amount = (getPlayerStorageValue(cid,230)-1)
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 12 and getPlayerItemCount(cid,2230) < 1 then
	npcHandler:say('You have no suitable bone with you. Too bad, but you surely will find some more.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 22 and getPlayerItemCount(cid,2230) >= 1 then
	npcHandler:say('You have collected all the 20 bones needed. Excellent! Now let\'s talk about further missions if you are interested.')
	doPlayerRemoveItem(cid,2230,1)
	setPlayerStorageValue(cid,getPlayerStorageValue(cid,230)+1)
	amount = (getPlayerStorageValue(cid,230)-1)
	setPlayerStorageValue(cid,249,2)
	topic = 0

	elseif msgcontains(msg, 'yes') and topic == 22 and getPlayerItemCount(cid,2230) < 1 then
	npcHandler:say('You have no suitable bone with you. Too bad, but you surely will find some more.')
	topic = 0
	
	elseif msgcontains(msg, 'one') and topic == 24 and getPlayerItemCount(cid,2230) >= 1 then
	npcHandler:say('Excellent! You have collected 1 bone. Just report about your mission again if you find more.')
	doPlayerRemoveItem(cid,2230,1)
	setPlayerStorageValue(cid,getPlayerStorageValue(cid,230)+1)
	amount = (getPlayerStorageValue(cid,230)-1)
	topic = 0

	elseif msgcontains(msg, 'all') and topic == 24 then
	npcHandler:say('Are you sure you have collected all the 20 bones needed?')
	topic = 25
	
	elseif msgcontains(msg, 'yes') and topic == 25 and getPlayerItemCount(cid,2230) >= 20 then
	npcHandler:say('You have collected all the 20 bones needed. Excellent! Now let\'s talk about further missions if you are interested.')
	doPlayerRemoveItem(cid,2230,20)
	setPlayerStorageValue(cid,230,21)
	setPlayerStorageValue(cid,249,2)
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 25 and getPlayerItemCount(cid,2230) < 20 then
	npcHandler:say('You have not enough bones with you. Too bad, but you surely will find some more.')
	topic = 0
	
	elseif getPlayerStorageValue(cid,229) == 3 and msgcontains(msg, 'mission') then
	npcHandler:say('You truly got him? Quite impressive. You are a very prommising candidate! I think I have another mission for you. Are you interested?')
	topic = 11	
	
	elseif getPlayerStorageValue(cid,229) > 0 and getPlayerStorageValue(cid,229) < 3 and msgcontains(msg, 'mission') then
	npcHandler:say('You are not done with your current mission. Find David Brassacres and hand him that bill. Report when you are ready.')
	topic = 0
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,228) == 1 then
	npcHandler:say('You are not done with your current mission. The mailbox is still not fixed. Report if you are ready.')
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,228) == 2 then
	npcHandler:say('Excellent, you got it fixed! This will teach this mailbox a lesson indeed! Are you interested in another assignment?')
	topic = 9
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,227) > 5 then
	npcHandler:say('You are not done with your current mission. Make sure all the passages are secure. Report if you are ready.')
	topic = 0
	
	elseif msgcontains(msg, 'mission') and getPlayerStorageValue(cid,227) == 5 then
	npcHandler:say('So you have finally made it! I did not think that you would have it in you ... However: are you ready for another assignment?')
	topic = 8
	
	elseif msgcontains(msg, 'yes') and topic == 11 then
	npcHandler:say('Ok, listen: we have some serious trouble with agressive dogs lately. We have accumulated some bones as a sort of pacifier but we need more. Collect 20 Bones like the one in my room to the left and report here.')
	setPlayerStorageValue(cid,230,1)
	topic = 0
	
	elseif msgcontains(msg, '') and topic == 11 then
	npcHandler:say('Too bad, perhaps another time then.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 9 then
	npcHandler:say('For your noble deeds I grant you the title Assistant Postofficer. All Postofficers will charge you less money from now on. After every second mission ask me for an ADVANCEMENT. Your next task will be a bit more challenging. Do you feel ready for it?')
	setPlayerStorageValue(cid,STORAGE_POSTMAN_DOOR,1) -- cheap parcel
	setPlayerStorageValue(cid,249,1) -- cheap letter
	topic = 10
	
	elseif msgcontains(msg, '') and topic == 9 then
	npcHandler:say('Too bad, perhaps another time then.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 10 then
	npcHandler:say('I need you to deliver a bill to the stage magician David Brassacres. He\'s hiding from his creditors somewhere in Venore. It\'s likely you will have to trick him somehow to reveal his identity. Report back when you delivered this bill.')
	doPlayerAddItem(cid,1952,1)
	setPlayerStorageValue(cid,229,1)
	topic = 0
	
	elseif msgcontains(msg, '') and topic == 10 then
	npcHandler:say('')
	npcHandler:say('Too bad, perhaps another time then.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 8 then
	npcHandler:say('I am glad to hear that. One of our mailboxes was reported to be jammed. It is located on the so called \'mountain\' on the isle Folda. Get a crowbar and fix the mailbox. Report about your mission when you have done so.')
	setPlayerStorageValue(cid,228,1)
	topic = 9
	
	--[[ elseif msgcontains(msg, 'yes') and topic == 8 then
	npcHandler:say('I am glad to hear that. One of our mailboxes was reported to be jammed. It is located on the so called \'mountain\' on the isle Folda. Get a crowbar and fix the mailbox. Report about your mission when you have done so.')
	setPlayerStorageValue(cid,228,1)
	topic = 0 ]]--
	
	elseif msgcontains(msg, '') and topic == 8 then
	npcHandler:say('I thought so. The mail service is not for just anyone.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 1 then
	npcHandler:say('Hm, I might consider your proposal, but first you will have to prove your worth by doing some tasks for us. Are you willing to do that?')
	topic = 2
	
	elseif msgcontains(msg, '') and topic == 1 then
	npcHandler:say('I thought so. The mail service is not for just anyone.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 2 then
	npcHandler:say('Excellent! Your first task will be quite simple. But you should better write my instructions down anyways. You can read and write?')
	topic = 3
	
	elseif msgcontains(msg, '') and topic == 2 then
	npcHandler:say('I thought so. The mail service is not for just anyone.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 3 then
	npcHandler:say('So listen, you will check certain tours our members have to take to see if there is some trouble. First travel with Captain Bluebear\'s ship from Thais to Carlin, understood?')
	topic = 4
	
	elseif msgcontains(msg, '') and topic == 3 then
	npcHandler:say('I am sorry, but being illiterate disqualifies you from joining.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 4 then
	npcHandler:say('Excellent! Once you have done that you will travel with Uzon to Edron. You will find him in the Femor Hills. Understood?')
	topic = 5
	
	elseif msgcontains(msg, '') and topic == 4 then
	npcHandler:say('I thought so. The mail service is not for just anyone.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 5 then
	npcHandler:say('Fine, fine! Next, travel with Captain Seahorse to the city of Venore. Understood?')
	topic = 6
	
	elseif msgcontains(msg, '') and topic == 5 then
	npcHandler:say('I thought so. The mail service is not for just anyone.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 6 then
	npcHandler:say('Good! Finally, find the technomancer Brodrosch and travel with him to the Isle of Cormaya. After this passage report back to me here. Understood?')
	topic = 7
	
	elseif msgcontains(msg, '') and topic == 6 then
	npcHandler:say('I thought so. The mail service is not for just anyone.')
	topic = 0
	
	elseif msgcontains(msg, 'yes') and topic == 7 then
	npcHandler:say('Ok, remember: the Tibian mail service puts trust in you! Don\'t fail and report back soon. Just tell me about your MISSION.')
	setPlayerStorageValue(cid,227,1)
	topic = 0
	
	elseif msgcontains(msg, '') and topic == 7 then
	npcHandler:say('I thought so. The mail service is not for just anyone.')
	topic = 0
	
	end
	return true
end
	
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())