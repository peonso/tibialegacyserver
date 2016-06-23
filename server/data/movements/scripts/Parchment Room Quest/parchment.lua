function onRemoveItem(item, tileItem, pos)

demonpos1 = {x=33061, y=31622, z=15}
demonpos2 = {x=33065, y=31622, z=15}
demonpos3 = {x=33061, y=31628, z=15}
demonpos4 = {x=33065, y=31628, z=15}
posicaoX = 33063
posicaoY = 31624
posicaoZ = 15
-----------------------

if pos.x == posicaoX and pos.y == posicaoY and pos.z == posicaoZ then
  doSummonCreature("Demon", demonpos1)  
  doSummonCreature("Demon", demonpos2)  
  doSummonCreature("Demon", demonpos3)  
  doSummonCreature("Demon", demonpos4)
end

return 1
end