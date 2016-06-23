function onUse(cid, item, frompos, item2, topos)

levers = {
         leverpos1  = {x=32846, y=32318, z=12, stackpos=1},
		 leverpos2  = {x=32843, y=32359, z=12, stackpos=1},
		 leverpos3  = {x=32874, y=32334, z=12, stackpos=1},
         leverpos4  = {x=32887, y=32330, z=12, stackpos=1},
		 leverpos5  = {x=32847, y=32332, z=13, stackpos=1},
		 leverpos6  = {x=32850, y=32366, z=13, stackpos=1},
         leverpos7  = {x=32860, y=32364, z=13, stackpos=1},
		 leverpos8  = {x=32874, y=32365, z=13, stackpos=1},
		 leverpos9  = {x=32887, y=32355, z=13, stackpos=1},
         leverpos10 = {x=32886, y=32337, z=13, stackpos=1},
		 leverpos11 = {x=32843, y=32352, z=14, stackpos=1},
		 leverpos12 = {x=32853, y=32359, z=14, stackpos=1},
         leverpos13 = {x=32874, y=32354, z=14, stackpos=1},
		 leverpos14 = {x=32891, y=32328, z=14, stackpos=1},
		 leverpos15 = {x=32889, y=32349, z=15, stackpos=1},
         wall1      = {x=32851, y=32333, z=12, stackpos=1},
		 wall2      = {x=32852, y=32333, z=12, stackpos=1}, 
		 text = "You have not pulled all 15 levers.",
         pos = getPlayerPosition(cid)}
		 
cfg =    {        
         lever1  = getThingfromPos(levers.leverpos1),  lever2   = getThingfromPos(levers.leverpos2),  lever3  = getThingfromPos(levers.leverpos3),
         lever4  = getThingfromPos(levers.leverpos4),  lever5   = getThingfromPos(levers.leverpos5),  lever6  = getThingfromPos(levers.leverpos6),
         lever7  = getThingfromPos(levers.leverpos7),  lever8   = getThingfromPos(levers.leverpos8),  lever9  = getThingfromPos(levers.leverpos9),
         lever10 = getThingfromPos(levers.leverpos10), lever11  = getThingfromPos(levers.leverpos11), lever12 = getThingfromPos(levers.leverpos12),
         lever13 = getThingfromPos(levers.leverpos13), lever14  = getThingfromPos(levers.leverpos14), lever15 = getThingfromPos(levers.leverpos15),
         wall    = getThingfromPos(levers.wall1),      wallb    = getThingfromPos(levers.wall2)}

if item.uid == 10284 and item.itemid == 1945 and
cfg.lever1.itemid  == 1946 and cfg.lever2.itemid  == 1946 and cfg.lever3.itemid  == 1946 and
cfg.lever4.itemid  == 1946 and cfg.lever5.itemid  == 1946 and cfg.lever6.itemid  == 1946 and
cfg.lever7.itemid  == 1946 and cfg.lever8.itemid  == 1946 and cfg.lever9.itemid  == 1946 and
cfg.lever10.itemid == 1946 and cfg.lever11.itemid == 1946 and cfg.lever12.itemid == 1946 and
cfg.lever13.itemid == 1946 and cfg.lever14.itemid == 1946 and cfg.lever15.itemid == 1946 and
cfg.wall.itemid == 1304 and cfg.wallb.itemid == 1304 then
doRemoveItem(cfg.wall.uid,1)
doRemoveItem(cfg.wallb.uid,1)
doSendMagicEffect(levers.wall1,6)
doSendMagicEffect(levers.wall2,6)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 10284 and item.itemid == 1946 then
doCreateItem(1304,1,levers.wall1)
doCreateItem(1304,1,levers.wall2)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,levers.text)
doSendMagicEffect(levers.pos,2)
        end
   return 1
end