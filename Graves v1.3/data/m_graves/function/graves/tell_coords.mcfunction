## Tell this player their coordinates unless they are in the void
data modify storage multipack:graves LastDeathLocation set from entity @s LastDeathLocation
execute store result score &x mp.temp run data get storage multipack:graves LastDeathLocation.pos[0]
execute store result score &y mp.temp run data get storage multipack:graves LastDeathLocation.pos[1]
execute store result score &z mp.temp run data get storage multipack:graves LastDeathLocation.pos[2]

execute if data storage multipack:graves {LastDeathLocation:{dimension:"minecraft:overworld"}} run return run tellraw @s [\
  {text:"You died at ",color:"yellow"},{text:"X: ",color:"green"},{score:{name:"&x",objective:"mp.temp"},color:"green"},{text:", Z: ",color:"green"},{score:{name:"&z",objective:"mp.temp"},color:"green"},\
  {text:" in ",color:"yellow"},{text:"The Overworld",color:"green"}]
execute if data storage multipack:graves {LastDeathLocation:{dimension:"minecraft:the_nether"}} run return run tellraw @s [\
  {text:"You died at ",color:"yellow"},{text:"X: ",color:"green"},{score:{name:"&x",objective:"mp.temp"},color:"green"},{text:", Z: ",color:"green"},{score:{name:"&z",objective:"mp.temp"},color:"green"},\
  {text:" in ",color:"yellow"},{text:"The Nether",color:"green"}]
execute if score &grave_spawned mp.temp matches 0 if data storage multipack:graves {LastDeathLocation:{dimension:"minecraft:the_end"}} run return run tellraw @s [\
  {text:"You died at ",color:"yellow"},{text:"X: ",color:"green"},{score:{name:"&x",objective:"mp.temp"},color:"green"},{text:", Z: ",color:"green"},{score:{name:"&z",objective:"mp.temp"},color:"green"},\
  {text:" in ",color:"yellow"},{text:"The End Void ",color:"green"},{text:"(Items cannot be retrieved)",color:"gray"}]
execute if data storage multipack:graves {LastDeathLocation:{dimension:"minecraft:the_end"}} run return run tellraw @s [\
  {text:"You died at ",color:"yellow"},{text:"X: ",color:"green"},{score:{name:"&x",objective:"mp.temp"},color:"green"},{text:", Z: ",color:"green"},{score:{name:"&z",objective:"mp.temp"},color:"green"},\
  {text:" in ",color:"yellow"},{text:"The End",color:"green"}]
tellraw @s [{text:"You died at ",color:"yellow"},{text:"X: ",color:"green"},{score:{name:"&x",objective:"mp.temp"},color:"green"},{text:", Z: ",color:"green"},{score:{name:"&z",objective:"mp.temp"},color:"green"}]


