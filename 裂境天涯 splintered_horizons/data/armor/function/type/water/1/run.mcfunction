particle minecraft:campfire_cosy_smoke ~ ~4 ~ 0.5 0.25 0.5 0 80 force @a
particle dust{color:[1.000,0.765,0.000],scale:1} ~0.75 ~3 ~ 0 0.75 0 1 40 force @a
particle dust{color:[1.000,0.765,0.000],scale:1} ~-0.75 ~3 ~0.75 0 0.5 0 1 40 force @a
particle dust{color:[1.000,0.765,0.000],scale:1} ~0.75 ~3 ~-0.75 0 0.25 0 1 40 force @a
particle minecraft:item{item: "minecraft:light_blue_concrete"} ~ ~3 ~ 0.5 0.25 0.5 0 40 normal @a
particle minecraft:dripping_water ~ ~3.5 ~ 0.5 0.25 0.5 0 40 normal @a


particle minecraft:item{item: "minecraft:light_blue_concrete"} ~ ~1 ~ 0 0 0 0.2 80 normal @a
particle minecraft:splash ~ ~1 ~ 0.5 0.5 0.5 1 80 normal @a
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.25 10 normal @a
particle sonic_boom ~ ~1 ~ 0 0 0 0 1 normal @a

playsound minecraft:block.respawn_anchor.set_spawn voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.player.splash voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.lightning_bolt.thunder voice @a ~ ~1 ~ 1 2
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1

effect give @s regeneration 1 3 false
effect give @s resistance 5 0 false
effect give @s haste 5 1 false

tag @s remove armor.water.water_shelter.use