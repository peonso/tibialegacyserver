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

shopModule:addSellableItem({'serpent sword'}, 2409, 900)
shopModule:addSellableItem({'dragon hammer'}, 2434, 2000)
shopModule:addSellableItem({'giant sword'}, 2393, 17000)
shopModule:addSellableItem({'poison dagger'}, 2411, 50)
shopModule:addSellableItem({'scimitar'}, 2419, 150)
shopModule:addSellableItem({'skull staff'}, 2436, 6000)
shopModule:addSellableItem({'knight axe'}, 2430, 2000)
shopModule:addSellableItem({'tower shield'}, 2528, 8000)
shopModule:addSellableItem({'black shield'}, 2529, 800)
shopModule:addSellableItem({'ancient shield'}, 2532, 900)
shopModule:addSellableItem({'vampire shield'}, 2534, 15000)
shopModule:addSellableItem({'warrior helmet'}, 2475, 5000)
shopModule:addSellableItem({'knight armor'}, 2476, 5000)
shopModule:addSellableItem({'knight legs'}, 2477, 5000)
shopModule:addSellableItem({'strange helmet'}, 2479, 500)
shopModule:addSellableItem({'dark armor'}, 2489, 400)
shopModule:addSellableItem({'dark helmet'}, 2490, 250)
shopModule:addSellableItem({'mystic turban'}, 2663, 150)

shopModule:addBuyableItem({'ice rapier'}, 2396, 5000)
shopModule:addBuyableItem({'serpent sword'}, 2409, 6000)
shopModule:addBuyableItem({'ancient shield'}, 2532, 5000)
shopModule:addBuyableItem({'dark armor'}, 2489, 1500)
shopModule:addBuyableItem({'dark helmet'}, 2490, 1000)

keywordHandler:addKeyword({'wares'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell and buy weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell and buy weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell and buy weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'smith'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell and buy weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell and buy weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell and buy weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell and buy weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "At this time I'm only selling ice rapiers and serpent swords. But I would buy scimitars, giant swords, serpent swords, poison daggers, knight axes, dragon hammers and skull staffs from you."})
keywordHandler:addKeyword({'shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling only ancient shields. But I buy tower shields, black shields, ancient shields and vampire shields."})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am buying and selling dark armors. But I would also buy a knight armor from you."})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am buying and selling dark helmets. Furthermore I'm buying warrior helmets, strange helmets and mystic turbans."})
keywordHandler:addKeyword({'legs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "At this time I'm only buying knight legs."})

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is none of your business."})
keywordHandler:addKeyword({'alesar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That is my name. So what!"})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What does it look like, fool? I'm a guard! But I won't sell you anything until Malor orders me otherwise."})
keywordHandler:addKeyword({'trade'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I won't sell you anything, human. Malor doesn't want me to trade with strangers."})
keywordHandler:addKeyword({'permission'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I won't sell you anything, human. Malor doesn't want me to trade with strangers."})
keywordHandler:addKeyword({'daraman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't you dare mention Daraman in my presence, human. I am through with his insidious lies and through with your accursed race!"})
keywordHandler:addKeyword({'djinn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One day we will teach your race a lesson it will never forget."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We need a strong king to unite us in our struggle against the humans."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One day we djinn will rid this world of evil."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care about human cities. If I had my way, they would all be burnt to down today."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care about human cities. If I had my way, they would all be burnt to down today."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care about human cities. If I had my way, they would all be burnt to down today."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care about human cities. If I had my way, they would all be burnt to down today."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care about human cities. If I had my way, they would all be burnt to down today."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care about human cities. If I had my way, they would all be burnt to down today."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care about human cities. If I had my way, they would all be burnt to down today."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care about human cities. If I had my way, they would all be burnt to down today."})
keywordHandler:addKeyword({'pharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The pharaoh in Ankrahmun is a dangerous fool. Just your typical human, in other words."})
keywordHandler:addKeyword({'palace'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "So?"})
keywordHandler:addKeyword({'ascension'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What are you talking about? More human pseudo-philosophical flapdoodle?"})
keywordHandler:addKeyword({'rah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What are you talking about? More human pseudo-philosophical flapdoodle?"})
keywordHandler:addKeyword({'uthun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What are you talking about? More human pseudo-philosophical flapdoodle?"})
keywordHandler:addKeyword({'akh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What are you talking about? More human pseudo-philosophical flapdoodle?"})
keywordHandler:addKeyword({'scarab'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I like them. They are peaceful, but if they are provoked they fight ferociously. And they are know to eat humans!"})
keywordHandler:addKeyword({"kha'zeel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These mountains are our refuge from those pesky humans. Too bad there are always some who come up here anyway. You, for example."})
keywordHandler:addKeyword({"kha'labal"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The desert Kha'labal was once a beautiful land, but it was devastated in the course of the war. Damn humans! This is all your fault!"})
keywordHandler:addKeyword({'melchior'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I remember him. He was a greedy, double-dealing hyena. As far as I know his bleached bones are now lying somewhere in the Kha'labal."})
keywordHandler:addKeyword({'djema'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Djema? Well - I suppose she is the only human I still like. But she has been brought up by djinns. Who knows - perhaps humans can learn."})
keywordHandler:addKeyword({"baa'leal"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Baa'leal is Malor's lieutenant. Unflinchingly loyal, but not quite as clever as he thinks he is."})
keywordHandler:addKeyword({"bo'ques"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I miss Bo'ques' cooking, but not his pompous airs and graces."})
keywordHandler:addKeyword({"fa'hradin"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Fa'hradin, that old cynic is way too smart to believe in Daraman's lies. He should reconsider his loyalties."})

function creatureSayCallback(cid, type, msg)
	if(npcHandler.focus ~= cid) then
		return false
	end
	
if msgcontains(msg, 'haroun') or msgcontains(msg, 'Haroun') then
	selfSay("Haroun? What? You know ... where do you know that name from? Did he send you?")
	talk_state = 1
			
elseif talk_state == 1 and msgcontains(msg, 'yes') then
	selfSay("Treacherous liar! You would not be here if you had really talked to him. Get out of my sight or I will test my latest sabre on you!")
	talk_state = 0
	npcHandler:releaseFocus()
	npcHandler:resetNpc()
elseif talk_state == 1 and msgcontains(msg, '') then
	selfSay("<sighs> Of course not. How could you ... Well, at least you are honest, human. I appreciate that.")
	talk_state = 0

elseif msgcontains(msg, 'human') then
	npcHandler:story("I used to have illusions about you humans. I thought humans were good, noble creatures. ...")
	talk_state = 0
	addEvent(message11, 5000, pos)
elseif msgcontains(msg, 'efreet') then
	npcHandler:story("The efreet are those djinn who never fell for Daraman's insidious propaganda. I wish I would have been as smart from the start. ...")
	talk_state = 0
	addEvent(message21, 5000, pos)
elseif msgcontains(msg, 'marid') then
	npcHandler:story("Those among my brothers and sisters who still do not see the truth call themselves the Marid. I used to be one of them, but I left them when the truth dawned upon me. ...")
	talk_state = 0
	addEvent(message31, 5000, pos)
elseif msgcontains(msg, 'gabel') then
	npcHandler:story("Gabel is a kind-hearted, honest djinn. I would hate to see him die just because he believes in Daraman's lies. ...")
	talk_state = 0
	addEvent(message41, 5000, pos)
elseif msgcontains(msg, 'malor') then
	npcHandler:story("Malor is overambitious and unnecessarily cruel, but he is the only djinn who could unite our race, so I follow him. ...")
	talk_state = 0
	addEvent(message51, 5000, pos)
elseif msgcontains(msg, "mal'ouquah") then
	npcHandler:story("I do not like this place. But then it does not really matter where I am. I have a forge and I don't see any humans. That's all I need. ...")
	talk_state = 0
	addEvent(message61, 5000, pos)	
	
elseif msgcontains(msg, "ashta'daramai") then
	npcHandler:story("Ashta'daramai is Gabel's fortress which lies to the north. ...")
	talk_state = 0
	addEvent(message71, 5000, pos)	
elseif msgcontains(msg, "zathroth") then
	npcHandler:story("Legend has it that Zathroth was trying to make us beings of unalloyed evil, but he found us to be impure, so he abandoned us and started over. ...")
	talk_state = 0
	addEvent(message81, 5000, pos)	
	
end		
    return true
end

function message11(cid, type, msg)
npcHandler:say("I thought djinns and humans shared a destiny, and that we could live side by side peacefully. ...")
addEvent(message12, 5000, pos)
end
function message12(cid, type, msg)
npcHandler:say("But now I have learnt my lesson. I have had the privilege to look deep into the human mind, much deeper than most of my brothers. ...")
addEvent(message13, 5000, pos)
end
function message13(cid, type, msg)
npcHandler:say("And guess what! I did not like what I see. You are nothing but a race of cruel, perfidious bloodsuckers who hide their wickedness behind a thin layer of civilisation and so-called humanity. ...")
addEvent(message14, 5000, pos)
end
function message14(cid, type, msg)
npcHandler:say("Your race is a blemish on the face of Tibia. The sooner it is gone the better!")
end
function message21(cid, type, msg)
npcHandler:say("But errors can be corrected!")
end
function message31(cid, type, msg)
npcHandler:say("Now I follow Malor, although I would never fight against my kind.")
end
function message41(cid, type, msg)
npcHandler:say("After all, I believed them myself.")
end
function message51(cid, type, msg)
npcHandler:say("The truth is I despise him, but that is of no importance as long as you humans will be exterminated.")
end
function message61(cid, type, msg)
npcHandler:say("Of course, now you are here. Doesn't help me to feel myself at home here.")
end
function message61(cid, type, msg)
npcHandler:say("Of course you cannot enter it through the front door. ...")
addEvent(message62, 5000, pos)
end
function message62(cid, type, msg)
npcHandler:say("But from my time there, I know that there is also an unguarded back door in the north of the fortress.")
end
function message81(cid, type, msg)
npcHandler:say("It is not flattering to think we are nothing but examples of bad workmanship, but I see it from a different perspective: Since our god left us on our own it is up to ourselves to forge our destiny. ...")
addEvent(message82, 5000, pos)
end
function message82(cid, type, msg)
npcHandler:say("One day Zathroth will look at us in amazement.")
end
function message91(cid, type, msg)
npcHandler:say("Personally, I don't understand why you haven't been slaughtered right at the gates. ...")
addEvent(message92, 5000, pos)
end
function message92(cid, type, msg)
npcHandler:say("Anyway. Are you prepared to embark on a dangerous mission for us?")
end
function message101(cid, type, msg)
npcHandler:say("They are precious gemstones made of some unknown blue mineral and possess enormous magical power. ...")
addEvent(message102, 5000, pos)
end
function message102(cid, type, msg)
npcHandler:say("If you want to learn more about these gemstones don't forget to visit our library. ...")
addEvent(message103, 5000, pos)
end
function message103(cid, type, msg)
npcHandler:say("Anyway, one of them is enough to create thousands of our mighty djinn blades. ...")
addEvent(message104, 5000, pos)
end
function message104(cid, type, msg)
npcHandler:say("Unfortunately my last gemstone broke and therefore I'm not able to create new blades anymore. ...")
addEvent(message105, 5000, pos)
end
function message105(cid, type, msg)
npcHandler:say("To my knowledge there is only one place where you can find these gemstones - I know for a fact that the Marid have at least one of them. ...")
addEvent(message106, 5000, pos)
end
function message106(cid, type, msg)
npcHandler:say("Well... to cut a long story short, your mission is to sneak into Ashta'daramai and to steal it. ...")
addEvent(message107, 5000, pos)
end
function message108(cid, type, msg)
npcHandler:say("Needless to say, the Marid won't be too eager to part with it. Try not to get killed until you have delivered the stone to me.")
end

function message111(cid, type, msg)
npcHandler:say("Amazing how you humans are just impossible to get rid of. Incidentally, you have this character trait in common with many insects and with other vermin. ...")
addEvent(message112, 5000, pos)
end
function message112(cid, type, msg)
npcHandler:say("Nevermind. I hate to say it, but it you have done us a favour, human. That gemstone will serve us well. ...")
addEvent(message113, 5000, pos)
end
function message113(cid, type, msg)
npcHandler:say("Baa'leal, wants you to talk to Malor concerning some new mission. ...")
addEvent(message114, 5000, pos)
end
function message114(cid, type, msg)
npcHandler:say("Looks like you have managed to extended your life expectancy - for just a bit longer.")
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())