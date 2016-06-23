-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 28 then
return 0
end

   if (item2.itemid >= 3805 and item2.itemid <= 3806) or
   (item2.itemid >= 1446 and item2.itemid <= 1447) or
   (item2.itemid >= 1460 and item2.itemid <= 1465) then
   rand = math.random(1,10)
   if rand == 10 then
   doRemoveItem(item2.uid,1)
   doCreateItem(2259,1,topos) --objetos de pedra--
   else
   doSendMagicEffect(topos,2)
   end
   elseif (item2.itemid >= 1646 and item2.itemid <= 1661) or
   (item2.itemid >= 1666 and item2.itemid <= 1677) or
   (item2.itemid >= 3813 and item2.itemid <= 3820) then
   rand = math.random(1,10)
   if rand == 10 then
   doRemoveItem(item2.uid,1)
   doCreateItem(2253,1,topos)
   doSendMagicEffect(topos,2) --cadeiras--
   else
   doSendMagicEffect(topos,2)
   end
   elseif (item2.itemid >= 1614 and item2.itemid <= 1616) or
   (item2.itemid == 1619) or
   (item2.itemid >= 3807 and item2.itemid <= 3810) then
   rand = math.random(1,10)
   if rand == 10 then
   doRemoveItem(item2.uid,1)
   doCreateItem(2255,1,topos)
   doSendMagicEffect(topos,2) --mesas--
   else
   doSendMagicEffect(topos,2)
   end
   elseif (item2.itemid >= 1714 and item2.itemid <= 1717) or
   (item2.itemid >= 1724 and item2.itemid <= 1735)
   then
   rand = math.random(1,10)
   if rand == 10 then
   doRemoveItem(item2.uid,1)
   doCreateItem(2251,1,topos)
   doSendMagicEffect(topos,2) --containers--
   else
   doSendMagicEffect(topos,2)
   end
   elseif (item2.itemid == 1738 or item2.itemid == 1739 or item2.itemid == 1741) or
   (item2.itemid >= 1750 and item2.itemid <= 1753)
   then
   rand = math.random(1,10)
   if rand == 10 then
   doRemoveItem(item2.uid,1)
   doCreateItem(2252,1,topos)
   doSendMagicEffect(topos,2) --cofres--
   else
   doSendMagicEffect(topos,2)
   end
   elseif (item2.itemid == 1770) or
   (item2.itemid == 1774) or
   (item2.itemid == 1775) or
   (item2.itemid >= 2080 and item2.itemid <= 2085)
   then
   rand = math.random(1,10)
   if rand == 10 then
   doRemoveItem(item2.uid,1)
   doCreateItem(2250,1,topos)
   doSendMagicEffect(topos,2) --accessorios--
   else
   doSendMagicEffect(topos,2)
   end
   else
   return 0
   end
   return 1
   end